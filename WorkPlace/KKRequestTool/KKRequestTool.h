//
//  KKRequestTool.h
//  WorkPlace
//
//  Created by KING_KE on 16/8/19.
//  Copyright © 2016年 KING_KE. All rights reserved.
//

#import "BaseObject.h"

@interface KKRequestTool : BaseObject

//   为什么要写两个？一个带参数？一个不带参数？

+(void)GET:(NSString *)urlStr
   success:(void(^)(id data))success
     faile:(void(^)(NSError *error))faile;

+(void)GET:(NSString *)urlStr
  paragram:(id)paragrams
   success:(void (^)(id))success
     faile:(void (^)(NSError *))faile;


@end
