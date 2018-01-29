//
//  XBNavigationBar.h
//  ahxbApp
//
//  Created by XP on 2017/11/15.
//  Copyright © 2017年 Zxs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XBNavigationBar : UIView
/**
 * 左侧按钮
 */
@property(nonatomic,strong)UIButton * btnLeft;
/**
* 右侧按钮
*/
@property(nonatomic,strong)UIButton * btnRight;
/**
 * 右侧按钮 备用
 */
@property(nonatomic,strong)UIButton * btnRightStandBy;
/**
 * 中间的view
 */
@property(nonatomic,strong)UIView * centerView;
/**
 * 标题的label
 */
@property(nonatomic,strong)UILabel * titleLabel;
/**
 * 背景
 */
@property(nonatomic,strong)UIView * backgroundView;

@end
