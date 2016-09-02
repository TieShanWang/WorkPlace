//
//  HomePageViewController.h
//  WorkPlace
//
//  Created by KING_KE on 16/8/19.
//  Copyright © 2016年 KING_KE. All rights reserved.
//

#import "HomeViewController.h"

@interface HomePageViewController : HomeViewController

@property(nonatomic,strong)NSMutableArray * arrData;

@property(nonatomic,assign)int pageNum;

@property(nonatomic,assign)int countPerPage;

@property(nonatomic,copy)NSString * urlStr;


@end
