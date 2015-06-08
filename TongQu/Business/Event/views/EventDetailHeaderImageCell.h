//
//  EventDetailHeaderImageCell.h
//  TongQu
//
//  Created by Owen on 15/6/8.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventDetailHeaderImageCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *headerImgView;

+(void)registerCellWithCollectionView:(UICollectionView *)collectionView;

+(instancetype)cellWithCollectionView:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *) indexPath;


+(CGFloat)height;

+(CGSize)sizeWithCollectionView:(UICollectionView *)collectionView;

-(void)setData:(NSDictionary *)data;

@end
