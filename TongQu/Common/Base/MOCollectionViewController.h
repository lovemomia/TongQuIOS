//
//  MOCollectionViewController.h
//  TongQu
//
//  Created by Owen on 15/6/4.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import "MOViewController.h"

@interface MOCollectionViewController : MOViewController<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

-(BOOL)collectionViewAlwaysBounceVertial;//默认内容少了还是可以滑动


@end
