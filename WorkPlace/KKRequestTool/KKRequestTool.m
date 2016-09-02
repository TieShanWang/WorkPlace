//
//  KKRequestTool.m
//  WorkPlace
//
//  Created by KING_KE on 16/8/19.
//  Copyright © 2016年 KING_KE. All rights reserved.
//

#import "KKRequestTool.h"

#import "AFNetworking.h"

@implementation KKRequestTool



+(void)GET:(NSString *)urlStr success:(void (^)(id))success faile:(void (^)(NSError *))faile{
    [self GET:urlStr paragram:nil success:success faile:faile];
}

+(void)GET:(NSString *)urlStr paragram:(id)paragrams success:(void (^)(id))success faile:(void (^)(NSError *))faile{
    
    NSURLSessionConfiguration * configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFHTTPSessionManager * session = [[AFHTTPSessionManager alloc]initWithSessionConfiguration:configuration];
    session.responseSerializer = [AFHTTPResponseSerializer serializer];
    session.securityPolicy = [AFSecurityPolicy defaultPolicy];
    [session GET:urlStr parameters:paragrams progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        if (success) {
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        if (faile) {
            faile(error);
        }
    }];

}

@end
