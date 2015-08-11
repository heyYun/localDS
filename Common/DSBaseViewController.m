//
//  DSBaseViewController.m
//  LocalDS
//
//  Created by mac on 15/8/9.
//  Copyright (c) 2015年 Peng. All rights reserved.
//

#import "DSBaseViewController.h"
#import "UIView+Toast.h"

@interface DSBaseViewController()

@end

@implementation DSBaseViewController
-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:rand()%255/255.0 green:rand()%255/255.0 blue:rand()%255/255.0 alpha:1.0];
}
-(void)showLoadingView
{
    
}
-(void)hideLoadingView
{
    
}
-(void)showErrorMessage:(NSString *)message
{
    [self.view makeToast:message];
}
@end
