//
//  DSClickItemProtocol.h
//  LocalDS
//
//  Created by mac on 15/8/10.
//  Copyright (c) 2015年 Peng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DSClickItemProtocol <NSObject>
//按钮点击的代理方法
-(void)didClickIndex:(NSInteger ) index;
@end
