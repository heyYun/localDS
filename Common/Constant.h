//
//  Constant.h
//  LocalDS
//
//  Created by mac on 15/8/9.
//  Copyright (c) 2015年 Peng. All rights reserved.
//

#ifndef LocalDS_Constant_h
#define LocalDS_Constant_h

#ifdef DEBUG
#define DSLog(...) NSLog(__VA_ARGS__)

#else

#define DSLog(...)

#endif

#define kUIScreenWidth [UIScreen mainScreen].bounds.size.width
#define kUIScreenHeight [UIScreen mainScreen].bounds.size.height
#define kUINavHeight 64

#define kTabBarHeight 55
#define kPopViewHeight 44

/******************枚举**************************/
typedef enum {
    DSNormalButton = 1000000,
    DSCornerButton ,
}DSButtonType;

#endif
