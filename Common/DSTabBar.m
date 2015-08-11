//
//  DSTabBar.m
//  LocalDS
//
//  Created by mac on 15/8/10.
//  Copyright (c) 2015年 Peng. All rights reserved.
//

#import "DSTabBar.h"
#import "DSClickItemProtocol.h"

@implementation DSTabBar
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initView];
    }
    return self;
}
-(void)initView
{
    //添加按钮
    //for添加Button
    for (int i = 0; i< 5; i++) {
        
        UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
        
        bt.frame = CGRectMake(i * (kUIScreenWidth)/5, 0, (kUIScreenWidth)/5, kTabBarHeight);
        
        NSString *normal = [NSString stringWithFormat:@"home_%d",i];
        [bt setBackgroundImage:[UIImage imageNamed:normal] forState:UIControlStateNormal];
        NSString *select = [NSString stringWithFormat:@"home_%d_pressed",i];
        [bt setBackgroundImage:[UIImage imageNamed:select] forState:UIControlStateSelected];
        
        [bt addTarget:self action:@selector(changeVC:) forControlEvents:UIControlEventTouchUpInside];
        bt.tag = i;
        if (bt.tag == 0) {
            bt.selected = YES;
        }
        [self addSubview:bt];
    }
}
- (void)changeVC:(UIButton *)bt{
    [self.subviews enumerateObjectsUsingBlock:^(UIButton *item, NSUInteger idx, BOOL *stop) {
        
        item.selected = NO;
        
    }];
    
    bt.selected = YES;
    
    if ([_delegate respondsToSelector:@selector(didClickIndex:)]) {
        [_delegate didClickIndex:bt.tag];
    }
    
}

@end
