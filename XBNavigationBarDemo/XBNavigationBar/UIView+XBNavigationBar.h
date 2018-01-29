//
//  UIView+XBNavigationBar.h
//  ahxbApp
//
//  Created by wx on 2017/12/14.
//  Copyright © 2017年 Zxs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

@interface UIView (XBNavigationBar)
//获取当前view的VC
@property (readonly) UIViewController *currentViewController;
//用来保存一个操作
- (void)xb_bringToFrontBlock:(dispatch_block_t)block;
@end
