//
//  UIView+XBNavigationBar.m
//  ahxbApp
//
//  Created by wx on 2017/12/14.
//  Copyright © 2017年 Zxs. All rights reserved.
//

#import "UIView+XBNavigationBar.h"
#import <objc/runtime.h>
#import "XBNavigationBar.h"

@implementation UIView (XBNavigationBar)

- (UIViewController *)currentViewController {
    UIResponder *responder = self.nextResponder;
    do {
        if ([responder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)responder;
        }
        responder = responder.nextResponder;
    } while (responder);
    return nil;
}

+ (void)load{
    [self exchangeInstanceMethod1:@selector(didMoveToSuperview) method2:@selector(xb_didMoveToSuperview)];
}

+ (void)exchangeInstanceMethod1:(SEL)method1 method2:(SEL)method2
{
    method_exchangeImplementations(class_getInstanceMethod(self, method1), class_getInstanceMethod(self, method2));
}

- (void)xb_didMoveToSuperview{
    [self xb_didMoveToSuperview];
    dispatch_block_t block = objc_getAssociatedObject(self, @selector(xb_bringToFrontBlock:));
    block ? block() : nil;
}

- (void)xb_bringToFrontBlock:(dispatch_block_t)block{
    objc_setAssociatedObject(self, _cmd, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
