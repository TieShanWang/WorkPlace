//
//  HomePageViewController.m
//  WorkPlace
//
//  Created by KING_KE on 16/8/19.
//  Copyright © 2016年 KING_KE. All rights reserved.
//

#import "HomePageViewController.h"

#import "KKTabViewCell.h"

#import "ImageManger.h"

#import "APPModel.h"

#import "JHRefresh.h"

#import "KKTabViewCell.h"


@interface HomePageViewController()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView * tableView;

@property(nonatomic,assign)BOOL Refreshing;

@property(nonatomic,assign)BOOL Loading;


@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setView];
    [self setNavgationBar];
    [self setTablView];
    [self addRefreshAction];
}

-(void)setView{
    UIImageView * backgrandView = [[UIImageView alloc]initWithImage:
                                   [UIImage imageNamed:@"12.png"]];
    backgrandView.frame = CGRectMake(0, 0, 320, 160);
    [self.view addSubview:backgrandView];
    
}



-(void)setNavgationBar{
    [self.navigationController.navigationBar setBackgroundImage:
     [UIImage imageNamed:@"nav_bg_320x44"] forBarPosition:UIBarPositionTop barMetrics:UIBarMetricsDefault];
}

-(void)setTablView{
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 160, self.view.kk_width, self.view.kk_height - 64) style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.estimatedRowHeight = 200;
    [self.view addSubview:self.tableView];
    
}

// 添加刷新功能

-(void)addRefreshAction{
    __weak typeof(self)weakSelf = self;
    [self.tableView addRefreshHeaderViewWithAniViewClass:
     [JHRefreshCommonAniView class] beginRefresh:^{
        if (weakSelf.Refreshing) {
            return ;
        }
        weakSelf.Refreshing = YES;
        [weakSelf beginRefresh];
    }];
    
    [self.tableView addRefreshFooterViewWithAniViewClass:
     [JHRefreshCommonAniView class] beginRefresh:^{
        if (weakSelf.Loading) {
            return ;
        }
        weakSelf.Loading = YES;
        [weakSelf beginLoad];
    }];
    
}

// 开始刷新
-(void)beginRefresh{
    
    [KKRequest requestHomeDataSuccess:^(id data) {
        [self endRefresh:JHRefreshResultSuccess];
        [self dealRequestBackData:data isRefresh:YES];
    } faile:^(NSError *error) {
        [self endRefresh:JHRefreshResultFailure];
    }];
    
}

// 处理请求回来的数据
// 不理解
-(void)dealRequestBackData:(NSData *)data isRefresh:(BOOL)isRefresh{
    if (_arrData) {
        [_arrData removeAllObjects];
    }
    NSError * error;
    NSMutableDictionary * dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    NSArray * arrApps = [dic objectForKey:@""];
    for (NSDictionary * dicApp in arrApps) {
        APPModel * model = [[APPModel alloc]init];
        [model setValuesForKeysWithDictionary:dicApp];
        [self.arrData addObject:model];
        [self.tableView reloadData];
    }
}

//  开始加载
-(void)beginLoad{
    [KKRequest requestWithURL:[self getRequestEithUrlSrt:YES] success:^(id data) {
        [self endLoad];
        [self dealRequestBackData:data isRefresh:NO];
    } faile:^(NSError *error) {
        [self endLoad];
        self.pageNum--;
    }];

}

// 结束刷新
-(void)endRefresh:(JHRefreshResult)result{
    self.Refreshing = NO;
    [self.tableView headerEndRefreshingWithResult:result];
}

// 结束加载
-(void)endLoad{
    self.Refreshing = NO;
    [self.tableView footerEndRefreshing];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.arrData.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 150;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    KKTabViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    cell = [[KKTabViewCell alloc]
                              initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    if (!cell) {
        cell = [[KKTabViewCell alloc]init];
    }
     APPModel * model = self.arrData[indexPath.row];
    [cell showDataWithModel:model index:indexPath.row];
    
    return cell;
    
}



-(NSMutableArray *)arrData{
    if (!_arrData) {
        _arrData = [[NSMutableArray alloc]init];
    }
    return _arrData;
}

-(int)countPerPage{
    return self.arrData.count;
}

-(NSString *)getRequestEithUrlSrt:(BOOL)isRefresh{
    self.pageNum = (isRefresh)?1:(self.pageNum +1);
    NSString * urlStr = [NSString stringWithFormat:@"page=%d&nubum=%d",self.pageNum,self.countPerPage];
    return urlStr;
}



@end
