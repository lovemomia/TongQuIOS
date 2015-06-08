//
//  HomeContentCell.h
//  TongQu
//
//  Created by Owen on 15/6/5.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeContentCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

+(void)registerCellWithCollectionView:(UICollectionView *)collectionView;

+(instancetype)cellWithCollectionView:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *) indexPath;

+(CGSize)sizeWithCollectionView:(UICollectionView *)collectionView data:(NSDictionary *)data interItemSpacing:(CGFloat) spacing sectionEdge:(UIEdgeInsets) edge;

-(void)setData:(NSDictionary *)data;

@end
