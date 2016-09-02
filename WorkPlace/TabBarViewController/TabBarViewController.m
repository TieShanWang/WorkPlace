//
//  TabBarViewController.m
//  WorkPlace
//
//  Created by KING_KE on 16/8/19.
//  Copyright © 2016年 KING_KE. All rights reserved.
//

#import "TabBarViewController.h"

#import "ImageManger.h"

#import "HomeViewController.h"



#define KURLProblem @"http://app.managershare.com/api/v3/?action=ask&uid=&p=1&cate_id=0 "

#define KURLBaiKe @"http://app.managershare.com/api/v3/"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self initViewController];
    
    // Do any additional setup after loading the view.
}


-(void)initViewController{
    NSArray * titles = @[
                         @"首页",
                         @"主题",
                         @"百科",
                         @"问题"
                        ];
    
    NSArray * norImage = @[
                           HomePageNormalImage,
                           ThemeNormalImage,
                           EncyclopediaNormalImage,
                           ProblemNormalImage

                          ];
    
    NSArray * seleImage = @[
                            HomePageSelectImage,
                            ThemeSelectImage,
                            EncyclopediaSelectImage,
                            ProblemSelectImage
                            ];
    
    NSArray * nameVC = @[
                         @"HomePageViewController",
                         @"ThemeViewController",
                         @"EncylopediaViewController",
                         @"ProblemViewController"
                        
                         ];
    
//    NSArray * arrURl = @[
//                        
//                         ];
    
    NSMutableArray * arrVC = [[NSMutableArray alloc]init];
    for (int i = 0; i < titles.count; i ++) {
        Class oneClass = NSClassFromString(nameVC[i]);
        HomeViewController * homeVC = [[oneClass alloc]init];
        homeVC.title = titles[i];
//        [homeVC.tabBarItem setImage:[UIImage imageNamed:norImage[i]]];
//        [homeVC.tabBarItem setSelectedImage:[UIImage imageNamed:seleImage[i]]];
        UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:homeVC];
        [arrVC addObject:nav];
    }
    self.viewControllers = arrVC;
    
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
