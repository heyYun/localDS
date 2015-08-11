//
//  DSBaseViewController.h
//  LocalDS
//
//  Created by mac on 15/8/9.
//  Copyright (c) 2015年 Peng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSBaseViewController : UIViewController

/**
 *  传递属性
 */
@property(strong,nonatomic) NSMutableDictionary *para;
/**
 *  数据源数组
 */
@property(strong,nonatomic) NSMutableArray *array;

-(void)showLoadingView;
-(void)hideLoadingView;
-(void)showErrorMessage:(NSString *)message;

@end
