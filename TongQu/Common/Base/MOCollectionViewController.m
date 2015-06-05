//
//  MOCollectionViewController.m
//  TongQu
//
//  Created by Owen on 15/6/4.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import "MOCollectionViewController.h"

@interface MOCollectionViewController ()

@end

@implementation MOCollectionViewController

#pragma mark - collectionView dataSource & delegate
#pragma mark - dataSource&delegate




//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
//{
//    if(section == 0)
//        return CGSizeMake(20, 20);
//    return CGSizeMake(20, 20);
//}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(0, 0);
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 0;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 0;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 0;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}



-(BOOL)collectionViewAlwaysBounceVertial
{
    return YES;
}


-(instancetype)initWithParams:(NSDictionary *)params
{
    self = [super initWithNibName:@"MOCollectionViewController" bundle:nil];
    if(self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.collectionView.backgroundColor = MO_APP_VCBackgroundColor;
    self.collectionView.alwaysBounceVertical = [self collectionViewAlwaysBounceVertial];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
