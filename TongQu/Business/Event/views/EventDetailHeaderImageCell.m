//
//  EventDetailHeaderImageCell.m
//  TongQu
//
//  Created by Owen on 15/6/8.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import "EventDetailHeaderImageCell.h"

static NSString * identifier = @"CellEventDetailHeaderImage";


@implementation EventDetailHeaderImageCell

+(void)registerCellWithCollectionView:(UICollectionView *)collectionView
{
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass(self) bundle:nil] forCellWithReuseIdentifier:identifier];

}

+(instancetype)cellWithCollectionView:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *) indexPath
{
    EventDetailHeaderImageCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    return cell;
}

+(CGFloat)height
{
    return 150.0f;
}


+(CGSize)sizeWithCollectionView:(UICollectionView *)collectionView
{
    return CGSizeMake(CGRectGetWidth(collectionView.bounds), [EventDetailHeaderImageCell height]);
}

-(void)setData:(NSDictionary *)data
{
    self.headerImgView.image = [data objectForKey:@"image"];
}

- (void)awakeFromNib {
    // Initialization code
}

@end
