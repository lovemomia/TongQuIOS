//
//  EventDetailHeaderCell.m
//  TongQu
//
//  Created by Owen on 15/6/8.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import "EventDetailHeaderCell.h"
#import "EventDetailHeaderImageCell.h"

#define contentLineSpacing 0

static NSString * identifier = @"CellEventDetailHeader";

@implementation EventDetailHeaderCell

#pragma mark - collectionView dataSource & dataDelegate
- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)collectionViewLayout
minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    
    return contentLineSpacing;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.data count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell;
    
    EventDetailHeaderImageCell * imageCell = [EventDetailHeaderImageCell cellWithCollectionView:collectionView forIndexPath:indexPath];
    imageCell.data = self.data[indexPath.item];
    cell = imageCell;
    
    return cell;
    
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    return [EventDetailHeaderImageCell sizeWithCollectionView:collectionView];
}


#pragma mark - instance method

+(instancetype)cellWithTableView:(UITableView *)tableView forIndexPath:(NSIndexPath *) indexPath
{
    EventDetailHeaderCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    return cell;
}

+(void)registerCellWithTableView:(UITableView *)tableView
{
    [tableView registerNib:[UINib nibWithNibName:NSStringFromClass(self) bundle:nil] forCellReuseIdentifier:identifier];
}

+(CGFloat)height
{
    return [EventDetailHeaderImageCell height];
}



-(void)setData:(NSArray *)data
{
    _data = data;
    self.headerCollectionView.dataSource = self;
    self.headerCollectionView.delegate = self;
    self.headerCollectionView.backgroundColor = MO_APP_VCBackgroundColor;
    [EventDetailHeaderImageCell registerCellWithCollectionView:self.headerCollectionView];
    [self.headerCollectionView reloadData];
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
