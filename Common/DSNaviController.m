//
//  DSNaviController.m
//  LocalDS
//
//  Created by mac on 15/8/9.
//  Copyright (c) 2015年 Peng. All rights reserved.
//

#import "DSNaviController.h"
#define KNavStatusHeight 20
#define kNavButtonWidth 44
#define kNavButtonHeight 44

@implementation DSNaviController
-(void)viewDidLoad
{
    [super viewDidLoad];
    _navView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kUIScreenWidth, kUINavHeight)];
    _navView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:_navView];
    
    _leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _leftButton.frame = CGRectMake(0, KNavStatusHeight, kNavButtonWidth, kNavButtonHeight);
    [_leftButton setBackgroundImage:[UIImage imageNamed:@"nav_back"] forState:UIControlStateNormal];
    [_leftButton addTarget:self action:@selector(backMethod) forControlEvents:UIControlEventTouchUpInside];
    [_navView addSubview:_leftButton];
    
    
    _rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //_rightButton.frame = CGRectMake(kUIScreenWidth - kNavButtonWidth, KNavStatusHeight, kNavButtonWidth,kNavButtonHeight);
    //[_rightButton setBackgroundImage:[UIImage imageNamed:@"nav_user"] forState:UIControlStateNormal];
    [_rightButton addTarget:self action:@selector(loginMethod) forControlEvents:UIControlEventTouchUpInside];
    [_navView addSubview:_rightButton];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _titleLabel.font = [UIFont systemFontOfSize:18];
    _titleLabel.textColor = [UIColor whiteColor];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.text = @"电商";
    [_navView addSubview:_titleLabel];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.navigationBarHidden = YES;
    
    CGRect rect = [_titleLabel.text boundingRectWithSize:CGSizeZero options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:18]} context:nil];
    _titleLabel.frame = CGRectMake((kUIScreenWidth - rect.size.width) / 2, KNavStatusHeight + (44 - rect.size.height) / 2, rect.size.width, rect.size.height);
    
    //如果登录了
    //登录了
    if (NO) {
        
        [_rightButton setBackgroundImage:[UIImage imageNamed:@"nav_user"] forState:UIControlStateNormal];
        [_rightButton setTitle:@"" forState:UIControlStateNormal];
        
        _rightButton.frame = CGRectMake(kUIScreenWidth - kNavButtonWidth, KNavStatusHeight, kNavButtonWidth,kNavButtonHeight);
        
    }else{
        [_rightButton setBackgroundImage:nil forState:UIControlStateNormal];
        
        [_rightButton setTitle:@"登录/注册" forState:UIControlStateNormal];
        
        _rightButton.titleLabel.font = [UIFont systemFontOfSize:15];
        
        _rightButton.frame = CGRectMake(kUIScreenWidth - 2*kNavButtonWidth, KNavStatusHeight, 2*kNavButtonWidth, kNavButtonHeight);
    }
}
-(void)backMethod
{
    
}
-(void)loginMethod
{
    
}
@end
