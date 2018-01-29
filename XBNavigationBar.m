//
//  XBNavigationBar.m
//  ahxbApp
//
//  Created by XP on 2017/11/15.
//  Copyright © 2017年 Zxs. All rights reserved.
//

#import "XBNavigationBar.h"
#import "UIView+XBNavigationBar.h"

#define NAV_HEIGHT 64

@implementation XBNavigationBar

- (instancetype)initWithFrame:(CGRect)frame{
    if ([super initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, NAV_HEIGHT)]) {
        [self setupView];
    }
    return self;
}

- (void)setupView{
    self.backgroundColor = [UIColor clearColor];
    
    _backgroundView = [[UIView alloc] init];
    _backgroundView.backgroundColor = [UIColor clearColor];
    [self addSubview:_backgroundView];
    [_backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.offset(0);
        make.width.height.equalTo(self);
    }];
    
    _btnLeft = [[UIButton alloc] init];
//    _btnLeft.backgroundColor = [UIColor redColor];
    _btnLeft.titleLabel.font = [MyAdapter lfontADapter:15];
    [_btnLeft setImage:[UIImage imageNamed:@"go_left"] forState:UIControlStateNormal];
    [_btnLeft setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:_btnLeft];
    [_btnLeft mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(0);
        make.top.offset(20);
        make.width.offset(60);
        make.height.offset(NAV_HEIGHT-20);
    }];
    
    _btnRight = [[UIButton alloc] init];
//    _btnRight.backgroundColor = [UIColor redColor];
    _btnRight.titleLabel.font = [MyAdapter lfontADapter:14];
    _btnRight.titleLabel.textAlignment = NSTextAlignmentCenter;
    [_btnRight setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:_btnRight];
    [_btnRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.offset(-5);
        make.centerY.equalTo(_btnLeft);
        make.width.offset(50);
        make.height.offset(NAV_HEIGHT-20);
    }];
    
    _centerView = [[UIView alloc] init];
//    _centerView.backgroundColor = [UIColor yellowColor];
    [self addSubview:_centerView];
    [_centerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(20);
        make.centerX.equalTo(self);
        make.width.offset(SCREEN_WIDTH-120);
        make.height.offset(NAV_HEIGHT-20);
    }];
    
    _titleLabel = [[UILabel alloc] init];
    _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.font = [MyAdapter lfontADapter:18];
    [self addSubview:_titleLabel];
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(_btnLeft);
        make.centerX.equalTo(_centerView);
    }];
    
    _btnRightStandBy = [[UIButton alloc] init];
    _btnRightStandBy.titleLabel.font = [MyAdapter lfontADapter:15];
    [_btnRightStandBy setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self addSubview:_btnRightStandBy];
    [_btnRightStandBy mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(_btnRight.mas_left).offset(-10);
        make.centerY.equalTo(_btnLeft);
    }];
}

#pragma mark - navbar添加到父试图时添加一个操作
- (void)didMoveToSuperview{
    [super didMoveToSuperview];

    if (!self.currentViewController.navigationController.navigationBarHidden) {
        self.currentViewController.navigationController.navigationBarHidden = YES;
    }
    WS(wself);
    [self.superview xb_bringToFrontBlock:^{
        __strong typeof(wself) sself = wself;
        [sself.superview bringSubviewToFront:wself];
    }];
}


@end
