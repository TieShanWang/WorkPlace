//
//  KKTabViewCell.m
//  WorkPlace
//
//  Created by KING_KE on 16/8/19.
//  Copyright © 2016年 KING_KE. All rights reserved.
//

#import "KKTabViewCell.h"

#import "Masonry.h"

#import "UIImageView+WebCache.h"

#import "APPModel.h"

#import "Define.h"

@interface KKTabViewCell ()
{
    UIImageView * _imageView;
    UILabel * _lable;
}

@end

@implementation KKTabViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setViews];
    }
    return self;
}


-(void)showDataWithModel:(APPModel *)model index:(NSInteger)index{
    
    if (!model) {
        return;
    }
    
    [_imageView sd_setImageWithURL:[NSURL URLWithString:model.image_url] placeholderImage:[UIImage imageNamed:@""] options:SDWebImageLowPriority];
    _lable.text = [NSString stringWithFormat:@"%ld %@",index,model.post_title];
  }

-(void)setViews{
    
    UIImageView * backgrandView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"12.png"]];
    [self addSubview:backgrandView];
    
    CGFloat left_pad_icon = 15;
    CGFloat top_pad_image = 10;
    CGFloat icon_width_heigh = 50;
    
    _imageView = [[UIImageView alloc]init];
    _imageView.layer.masksToBounds = YES;
    _imageView.contentMode = UIViewContentModeScaleToFill;
    [self.contentView addSubview:_imageView];
    
    [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@(left_pad_icon));
        make.top.equalTo(@(top_pad_image));
        make.width.height.equalTo(@(icon_width_heigh));
        
    }];
    
    
    CGFloat lable_edg_right;
    KKWeak(_imageView)
    _lable = [KKFactory createLabelWithText:@"" fontSize:17 textColor:[UIColor blackColor]];
    [self.contentView addSubview:_lable];
    
    [_lable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(weak_imageView.mas_left).offset(left_pad_icon);
        make.top.equalTo(weak_imageView.mas_left).offset(left_pad_icon);
        make.right.equalTo(@(lable_edg_right));
        
    }];
    
}



@end
