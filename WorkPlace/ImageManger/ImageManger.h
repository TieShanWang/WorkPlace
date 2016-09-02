//
//  ImageManger.h
//  WorkPlace
//
//  Created by KING_KE on 16/8/19.
//  Copyright © 2016年 KING_KE. All rights reserved.
//

#import "BaseObject.h"

@class TabBarImage;

@interface ImageManger : BaseObject

@property(nonatomic,copy)TabBarImage * tabbarVC;

@end

@interface TabBarImage : BaseObject

@property(nonatomic,copy)NSString * NormalImage;

@property(nonatomic,copy)NSString * SelectImage;

@end

/***=====================================
 ===            TabBarImage           ===
 ***===================================*/

// 首页
extern NSString *  const HomePageNormalImage;
extern NSString *  const HomePageSelectImage;

// 主题
extern NSString *  const ThemeNormalImage;
extern NSString *  const ThemeSelectImage;

// 百科
extern NSString * const EncyclopediaNormalImage;
extern NSString * const EncyclopediaSelectImage;

// 我的
extern NSString * const MyNormalImage;
extern NSString * const MySelectImage;

// 问题
extern NSString * const ProblemNormalImage;
extern NSString * const ProblemSelectImage;


extern NSString * const NavgationItemBagImage;

