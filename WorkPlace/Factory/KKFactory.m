//
//  KKFactory.m
//  LImitFree
//
//  Created by MR.KING on 16/6/26.
//  Copyright © 2016年 KING. All rights reserved.
//

#import "KKFactory.h"

@implementation KKFactory

+(UILabel *)createLabelWithText:(NSString*)text
                       fontSize:(CGFloat)fontSize
                      textColor:(UIColor*)textColor{
 
    return [self createLabelWithText:text frame:CGRectZero numOfLines:1 fontSize:fontSize minScale:0.0 textColor:textColor textAlignment:NSTextAlignmentLeft];
}

+(UILabel *)createLabelWithText:(NSString*)text
                          frame:(CGRect)frame
                     numOfLines:(NSInteger)numofLines
                       fontSize:(CGFloat)fontSize
                    minScale:(CGFloat)minScale
                      textColor:(UIColor*)textColor
                  textAlignment:(NSTextAlignment)alignment{
    UILabel * label = [[ UILabel alloc]initWithFrame:frame];
    label.text = text;
    label.textAlignment = alignment;
    label.textColor = textColor;
    label.numberOfLines = numofLines;
    label.minimumScaleFactor = minScale;
    label.font = [UIFont systemFontOfSize:fontSize];
    return label;
}

@end
