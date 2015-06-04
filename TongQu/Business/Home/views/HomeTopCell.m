//
//  HomeTopCell.m
//  TongQu
//
//  Created by Owen on 15/6/4.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import "HomeTopCell.h"

#define contentFont [UIFont systemFontOfSize:20.0f]
#define contentUnitFont [UIFont systemFontOfSize:12.0f]

#define titleFont [UIFont systemFontOfSize:14.0f]

static NSString * identifier = @"CellHomeTop";

@interface HomeTopCell ()

@end

@implementation HomeTopCell

+(void)registerCellWithCollectionView:(UICollectionView *)collectionView
{
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass(self) bundle:nil] forCellWithReuseIdentifier:identifier];
}

+(instancetype)cellWithCollectionView:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *) indexPath
{
    HomeTopCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

+(CGSize)sizeWithCollectionView:(UICollectionView *)collectionView data:(NSDictionary *)data num:(NSInteger) num
{
    CGFloat width = 0;
    CGFloat height = 0;
    
    width = CGRectGetWidth(collectionView.bounds)/3;
    
    NSString * content = [data objectForKey:@"content"];
    NSMutableAttributedString * contentString = [[NSMutableAttributedString alloc] initWithString:[content substringToIndex:content.length - 1]];
    [contentString addAttribute:NSFontAttributeName value:contentFont range:NSMakeRange(0, contentString.length)];
    
    NSMutableAttributedString * unitString = [[NSMutableAttributedString alloc] initWithString:[content substringFromIndex:content.length - 1]];
    [unitString addAttribute:NSFontAttributeName value:contentUnitFont range:NSMakeRange(0, unitString.length)];
    
    [contentString appendAttributedString:unitString];
    
    height += [UILabel heightForMutableAttributedString:contentString withWidth:width].size.height;
    
    height += 45;
    
    return CGSizeMake(width, height);
}

-(void)setData:(NSDictionary *)data
{
    self.titleLabel.text = [data objectForKey:@"title"];
    NSString * content = [data objectForKey:@"content"];
    NSMutableAttributedString * contentString = [[NSMutableAttributedString alloc] initWithString:[content substringToIndex:content.length - 1]];
    [contentString addAttribute:NSFontAttributeName value:contentFont range:NSMakeRange(0, contentString.length)];
    
    NSMutableAttributedString * unitString = [[NSMutableAttributedString alloc] initWithString:[content substringFromIndex:content.length - 1]];
    [unitString addAttribute:NSFontAttributeName value:contentUnitFont range:NSMakeRange(0, unitString.length)];
    
    [contentString appendAttributedString:unitString];
    
    self.contentLabel.attributedText = contentString;
//    self.contentLabel.text = [data objectForKey:@"content"];
}


@end
