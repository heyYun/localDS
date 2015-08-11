//
//  DSTabBar.h
//  LocalDS
//
//  Created by mac on 15/8/10.
//  Copyright (c) 2015年 Peng. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol DSClickItemProtocol;

@interface DSTabBar : UIView

@property(weak,nonatomic)id<DSClickItemProtocol> delegate;

@end
