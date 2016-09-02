//
//  KKFactory.h
//  LImitFree
//
//  Created by MR.KING on 16/6/26.
//  Copyright © 2016年 KING. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface KKFactory : NSObject


+(UILabel *)createLabelWithText:(NSString*)text
                       fontSize:(CGFloat)fontSize
                      textColor:(UIColor*)textColor;

+(UILabel *)createLabelWithText:(NSString*)text
                          frame:(CGRect)frame
                     numOfLines:(NSInteger)numofLines
                       fontSize:(CGFloat)fontSize
                       minScale:(CGFloat)minScale
                      textColor:(UIColor*)textColor
                  textAlignment:(NSTextAlignment)alignment;

@end
