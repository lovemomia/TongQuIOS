//
//  HomeContentCell.m
//  TongQu
//
//  Created by Owen on 15/6/5.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import "HomeContentCell.h"

static NSString * identifier = @"CellHomeContent";

@implementation HomeContentCell

- (void)awakeFromNib {
    // Initialization code
}

+(void)registerCellWithCollectionView:(UICollectionView *)collectionView
{
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass(self) bundle:nil] forCellWithReuseIdentifier:identifier];
}

+(instancetype)cellWithCollectionView:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *) indexPath
{
    HomeContentCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

+(CGFloat)heightWithImage:(UIImage *)image instrictWidth:(CGFloat)width
{
    CGFloat height = 0;
    height += image.size.height * width / image.size.width;
    return height;
}

-(void)setData:(NSDictionary *)data
{
    self.titleLabel.text = [data objectForKey:@"title"];
    self.titleLabel.textColor = [UIColor lightGrayColor];
    self.imageView.image = [data objectForKey:@"image"];
}


+(CGSize)sizeWithCollectionView:(UICollectionView *)collectionView data:(NSDictionary *)data interItemSpacing:(CGFloat) spacing sectionEdge:(UIEdgeInsets) edge;
{
    CGFloat width = 0;
    CGFloat height = 0;
    
    width = (CGRectGetWidth(collectionView.bounds) - spacing * 2 - edge.left - edge.right)/3;
    height += [HomeContentCell heightWithImage:[data objectForKey:@"image"] instrictWidth:width];
    height += 40;
    return CGSizeMake(width, height);
    
}

@end
