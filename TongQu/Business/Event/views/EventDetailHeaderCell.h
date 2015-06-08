//
//  EventDetailHeaderCell.h
//  TongQu
//
//  Created by Owen on 15/6/8.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventDetailHeaderCell : UITableViewCell<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *headerCollectionView;
@property (nonatomic, strong) NSArray * data;

+(instancetype)cellWithTableView:(UITableView *)tableView forIndexPath:(NSIndexPath *) indexPath;
+(void)registerCellWithTableView:(UITableView *)tableView;

+(CGFloat)height;

@end
