//
//  UIView+Frame.m
//  PracticeViewControler
//
//  Created by KING on 16/6/17.
//  Copyright © 2016年 KING. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)


-(CGFloat)kk_left{
    return self.frame.origin.x;
}

-(void)setKk_left:(CGFloat)kk_left{
    CGRect frame = self.frame;
    frame.origin.x = kk_left;
    self.frame = frame;
}

-(CGFloat)kk_right{
    return CGRectGetMaxX(self.frame);
}

-(CGFloat)kk_height{
    return self.frame.size.height;
}

-(void)setKk_height:(CGFloat)kk_height{

    CGRect frame = self.frame;
    frame.size.height = kk_height;
    self.frame = frame;
}
-(CGFloat)kk_width{
    return self.frame.size.width;

}

-(void)setKk_width:(CGFloat)kk_width{

    CGRect frame = self.frame;
    frame.size.width = kk_width;
    self.frame = frame;

}

-(CGFloat)kk_top{
    return self.frame.origin.y;

}

-(void)setKk_top:(CGFloat)kk_top{
    CGRect frame = self.frame;
    frame.origin.y = kk_top;
    self.frame = frame;

}
-(CGFloat)kk_bottom{
    return CGRectGetMaxY(self.frame);
}

-(CGFloat)kk_x{

    return self.frame.origin.x;
}

-(void)setKk_x:(CGFloat)kk_x{
    CGRect frame = self.frame;
    frame.origin.x = kk_x;
    self.frame = frame;
}

-(CGFloat)kk_y{
    return self.frame.origin.y;


}

-(void)setKk_y:(CGFloat)kk_y{
    CGRect frame = self.frame;
    frame.origin.y = kk_y;
    self.frame = frame;

}
-(CGFloat)kk_centerX{
    return self.center.x;

}

-(void)setKk_centerX:(CGFloat)kk_centerX{

    CGRect frame = self.frame;
    frame.origin.x = kk_centerX;
    self.frame = frame;

}

-(CGFloat)kk_centerY{
    return self.center.y;


}

-(void)setKk_centerY:(CGFloat)kk_centerY{

    CGRect frame = self.frame;
    frame.origin.y = kk_centerY;
    self.frame = frame;

}


@end
