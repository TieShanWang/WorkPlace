//
//  KKRequest.m
//  WorkPlace
//
//  Created by KING_KE on 16/8/19.
//  Copyright © 2016年 KING_KE. All rights reserved.
//

#import "KKRequest.h"

#import "KKRequestTool.h"

#define KURLHomePage @"http://app.managershare.com/api/v3/?action=index"

@implementation KKRequest

+(void)requestWithURL:(NSString *)urlStr success:(void (^)(id))success faile:(void (^)(NSError *))faile{
    [KKRequestTool GET:urlStr paragram:nil success:^(id data) {
        if (success) {
            success(data);
        }
    } faile:^(NSError * error) {
        if (faile) {
            faile(error);
        }
    }];
}

+(void)requestHomeDataSuccess:(void (^)(id))success faile:(void (^)(NSError *))faile{
 [KKRequestTool GET:KURLHomePage success:^(id data) {
     if (success) {
         success(data);
     }
 } faile:^(NSError *error) {
     if (faile) {
         faile(error);
     }
 }];
}

@end
