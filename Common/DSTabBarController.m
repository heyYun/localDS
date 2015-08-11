//
//  DSTabBarController.m
//  LocalDS
//
//  Created by mac on 15/8/9.
//  Copyright (c) 2015年 Peng. All rights reserved.
//

#import "DSTabBarController.h"
#import "DSTabBar.h"
#import "DSPopView.h"
#import "DSClickItemProtocol.h"

@interface DSTabBarController()<DSClickItemProtocol>
@property (nonatomic,strong) DSTabBar *tabBarView;
@property (nonatomic,strong) DSPopView *popView;
@end

@implementation DSTabBarController
-(void)viewDidLoad
{
    [super viewDidLoad];
    _tabBarView = [[DSTabBar alloc] initWithFrame:CGRectMake(0, kUIScreenHeight - kTabBarHeight, kUIScreenWidth, kTabBarHeight)];
    _tabBarView.backgroundColor = [UIColor redColor];
    //实现代理
    _tabBarView.delegate = self;
    
    [self.view addSubview:_tabBarView];
    
    //2 创建popView
    
    _popView = [[DSPopView alloc]initWithFrame:CGRectMake(0, kUIScreenHeight - kTabBarHeight - kPopViewHeight, kUIScreenWidth, kPopViewHeight)];
    _popView.delegate = self;
    _popView.hidden = YES;
    [self.view addSubview:_popView];
    
    
}

#pragma mark - DSClickItemProtocol
-(void)didClickIndex:(NSInteger)index
{
    _popView.hidden = YES;
    if (index < 4) {
                self.selectedIndex = index;
            }else if (index == 4) {
                //改变显示值
                _popView.hidden = NO;
            }else if (index > 4){
                self.selectedIndex = index - 1;
            }
}
@end
