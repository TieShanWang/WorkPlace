//
//  UIView+Frame.h
//  PracticeViewControler
//
//  Created by KING on 16/6/17.
//  Copyright © 2016年 KING. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)
@property (nonatomic,assign         ) CGFloat kk_left;

@property (nonatomic,assign,readonly) CGFloat kk_right;

@property (nonatomic,assign,        ) CGFloat kk_height;

@property (nonatomic,assign         ) CGFloat kk_width;

@property (nonatomic,assign         ) CGFloat kk_top;

@property (nonatomic,assign,readonly) CGFloat kk_bottom;

@property (nonatomic,assign         ) CGFloat kk_x;

@property (nonatomic,assign         ) CGFloat kk_y;

@property (nonatomic,assign         ) CGFloat kk_centerX;

@property (nonatomic,assign         ) CGFloat kk_centerY;

@end
