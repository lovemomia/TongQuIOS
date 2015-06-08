//
//  EventContentCell.h
//  TongQu
//
//  Created by Owen on 15/6/5.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventContentCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *rollmentLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

+(void)registerCellWithTableView:(UITableView *)tableView;

+(instancetype)cellWithTableView:(UITableView *)tableView forIndexPath:(NSIndexPath *)indexPath;

-(void)setData:(NSDictionary *)data;

+(CGFloat)heightWithTableView:(UITableView *)tableView forIndexPath:(NSIndexPath *)indexPath data:(NSDictionary *)data;

@end
