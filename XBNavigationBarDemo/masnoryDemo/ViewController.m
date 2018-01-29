//
//  ViewController.m
//  masnoryDemo
//
//  Created by ios on 16/9/24.
//  Copyright © 2016年 ios. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "XBNavigationBar.h"

#import "SencondViewController.h"

#define ScreenWidth  [UIScreen mainScreen].bounds.size.width

@interface ViewController ()
@property (strong, nonatomic)  UILabel *leftLabel;
@property (strong, nonatomic)  UILabel *rigthLabel;

@property (nonatomic,strong) XBNavigationBar *navigationBar;
@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBar.hidden = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _navigationBar = [XBNavigationBar new];
    
    [self.view addSubview:_navigationBar];
    
    self.navigationBar.titleLabel.text = @"我是标题";

//    self.title = @"我是标题";//系统导航
    
    UIView *contView = [UIView new];
    contView.backgroundColor = [UIColor cyanColor];
    _leftLabel = [UILabel new];
    _rigthLabel = [UILabel new];
    _leftLabel.backgroundColor = [UIColor yellowColor];
    _rigthLabel.backgroundColor = [UIColor grayColor];

    [self.view addSubview:contView];
    [contView addSubview:_leftLabel];
    [contView addSubview:_rigthLabel];

    [contView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.height.equalTo(@200);
        make.width.equalTo(@300);
    }];

    [_leftLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(contView).offset(100);
        make.left.equalTo(contView).offset(10);
        make.right.lessThanOrEqualTo(_rigthLabel.mas_left).offset(-10);
    }];

    [_rigthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(contView).offset(100);
        make.right.equalTo(contView).offset(-10);
        make.width.lessThanOrEqualTo(@80);
    }];

    NSString *str1 = @"安利斯柯达极乐空间阿斯加德卡视收到是大家爱仕达角";
    NSString *str2 = @"了但是近大家哦我撒激动加速度计哦视角";
    _leftLabel.text = str1;
    _rigthLabel.text = str2;
    
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100,100, 100, 30)];
    [btn setTitle:@"push" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

-(void)btnAction
{
    SencondViewController *second = [SencondViewController new];
    [self.navigationController pushViewController:second animated:YES];
}

@end
