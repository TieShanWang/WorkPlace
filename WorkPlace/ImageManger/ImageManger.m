//
//  ImageManger.m
//  WorkPlace
//
//  Created by KING_KE on 16/8/19.
//  Copyright © 2016年 KING_KE. All rights reserved.
//

#import "ImageManger.h"


@implementation ImageManger

-(TabBarImage *)tabBarVC{
    return [[TabBarImage alloc]init];
    
}


@end


@implementation TabBarImage


@end

// 首页
 NSString *  const HomePageNormalImage = @"tab_index_normal.png";
 NSString *  const HomePageSelectImage = @"tab_index_hover.png";

// 主题
 NSString *  const ThemeNormalImage = @"tab_zhuti_normal.png";
 NSString *  const ThemeSelectImage = @"tab_zhuti_hover.png";

// 百科
 NSString * const EncyclopediaNormalImage = @"tab_baike_normal.png";
 NSString * const EncyclopediaSelectImage = @"tab_baike_hover.png";

// 我的
 NSString * const MyNormalImage = @"tab_mine_normal.png";
 NSString * const MySelectImage = @"tab_mine_hover.png";

// 问题
 NSString * const ProblemNormalImage = @"tab_ques_normal.png";
 NSString * const ProblemSelectImage = @"tab_ques_hover.png";

 NSString * const  NavgationItemBagImage = @"nav_bg@2x.png";
