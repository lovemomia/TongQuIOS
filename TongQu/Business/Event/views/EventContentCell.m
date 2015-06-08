//
//  EventContentCell.m
//  TongQu
//
//  Created by Owen on 15/6/5.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import "EventContentCell.h"
#import "UITableView+FDTemplateLayoutCell.h"
static NSString * identifier = @"CellEventContent";

@implementation EventContentCell

+(void)registerCellWithTableView:(UITableView *)tableView
{
    [tableView registerNib:[UINib nibWithNibName:NSStringFromClass(self) bundle:nil] forCellReuseIdentifier:identifier];
}

+(instancetype)cellWithTableView:(UITableView *)tableView forIndexPath:(NSIndexPath *)indexPath
{
    EventContentCell * eventContent = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    return eventContent;
}

-(void)setData:(NSDictionary *)data
{
    self.imgView.image = [data objectForKey:@"image"];
    self.titleLabel.text = [data objectForKey:@"title"];
    self.timeLabel.text = [data objectForKey:@"time"];
    self.rollmentLabel.text = [data objectForKey:@"rollment"];
    self.priceLabel.text = [data objectForKey:@"price"];
}

+(CGFloat)heightWithTableView:(UITableView *)tableView forIndexPath:(NSIndexPath *)indexPath data:(NSDictionary *)data
{
    return [tableView fd_heightForCellWithIdentifier:identifier cacheByIndexPath:indexPath configuration:^(EventContentCell * cell) {
        cell.data = data;
    }];
    
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
