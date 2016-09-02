//
//  KKTabViewCell.h
//  WorkPlace
//
//  Created by KING_KE on 16/8/19.
//  Copyright © 2016年 KING_KE. All rights reserved.
//
#import "APPModel.h"

@interface KKTabViewCell : UITableViewCell

-(void)showDataWithModel:(APPModel *)model index:(NSInteger)index;

@end
