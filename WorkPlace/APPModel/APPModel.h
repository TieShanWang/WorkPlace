//
//  APPModel.h
//  WorkPlace
//
//  Created by KING_KE on 16/8/19.
//  Copyright © 2016年 KING_KE. All rights reserved.
//

#import "BaseModel.h"

@interface APPModel : BaseModel

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *post_excerpt;

@property (nonatomic, copy) NSString *hits_count;

@property (nonatomic, copy) NSString *post_title;

@property (nonatomic, copy) NSString *post_thumbnail;

@property (nonatomic, copy) NSString *comment_count;

@property (nonatomic,copy) NSString *image_url;

@end
