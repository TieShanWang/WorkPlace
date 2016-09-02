//
//  KKRequest.h
//  WorkPlace
//
//  Created by KING_KE on 16/8/19.
//  Copyright © 2016年 KING_KE. All rights reserved.
//

#import "BaseObject.h"

@interface KKRequest : BaseObject
+(void)requestWithURL:(NSString *)urlStr
              success:(void(^)(id data))success
                faile:(void(^)(NSError *error))faile;

/**
 *  请求首页的数据
 *
 *  @param success 成功回调
 *  @param faile   失败回调
 */
+(void)requestHomeDataSuccess:(void(^)(id data))success
                        faile:(void(^)(NSError *error))faile;

@end
