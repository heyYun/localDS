//
//  DSNaviController.h
//  LocalDS
//
//  Created by mac on 15/8/9.
//  Copyright (c) 2015年 Peng. All rights reserved.
//

#import "DSBaseViewController.h"

@interface DSNaviController : DSBaseViewController
/**
 *  自定义导航视图
 */
@property(nonatomic,strong) UIView *navView;
@property(nonatomic,strong) UIButton *leftButton;
@property(nonatomic,strong) UIButton *rightButton;
@property(nonatomic,strong) UILabel *titleLabel;
/**
 *  返回按钮方法
 */
-(void)backMethod;

/**
 *  登录按钮方法
 */
-(void)loginMethod;
@end
