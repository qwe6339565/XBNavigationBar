//
//  SencondViewController.m
//  masnoryDemo
//
//  Created by wx on 2018/1/29.
//  Copyright © 2018年 ios. All rights reserved.
//

#import "SencondViewController.h"
#import "XBNavigationBar.h"

@interface SencondViewController ()
@property (nonatomic,strong) XBNavigationBar *navigationBar;
@end

@implementation SencondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _navigationBar = [XBNavigationBar new];
    _navigationBar.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:_navigationBar];
    [_navigationBar.btnLeft addTarget:self action:@selector(goback) forControlEvents:UIControlEventTouchUpInside];
    self.navigationBar.titleLabel.text = @"我是标题2";
    
    UIView *redV = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 180)];
    redV.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:redV];
    
}

-(void)goback
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
