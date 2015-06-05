//
//  HomeTopCell.h
//  TongQu
//
//  Created by Owen on 15/6/4.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeTopCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

+(void)registerCellWithCollectionView:(UICollectionView *)collectionView;

+(instancetype)cellWithCollectionView:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *) indexPath;

+(CGSize)sizeWithCollectionView:(UICollectionView *)collectionView data:(NSDictionary *)data num:(NSInteger) num;

-(void)setData:(NSDictionary *)data;

@end
