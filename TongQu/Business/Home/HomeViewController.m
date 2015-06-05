//
//  HomeViewController.m
//  TongQu
//
//  Created by Owen on 15/6/4.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTopCell.h"

#define sectionHeight 20.0f

static NSString * identifier = @"CellHomeTop";

@interface HomeViewController ()

@property (nonatomic,strong) NSArray * topArray;

@end

@implementation HomeViewController

#pragma mark - collectionView dataSource & dataDelegate

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 2;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if(section == 0)
    {
        [HomeTopCell registerCellWithCollectionView:collectionView];
        return [self.topArray count];
    }
    return 0;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger section = indexPath.section;
    UICollectionViewCell * cell;
    if(section == 0) {
        HomeTopCell * top = [HomeTopCell cellWithCollectionView:collectionView forIndexPath:indexPath];
        top.data = self.topArray[indexPath.item];
        cell = top;
        
    }
    return cell;

}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(1, sectionHeight);
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger section = indexPath.section;
    NSInteger item = indexPath.item;
    if(section == 0)
        return [HomeTopCell sizeWithCollectionView:collectionView data:self.topArray[item] num:3];
    return CGSizeMake(0,0);
}


#pragma event response
-(void)onSpreadClick
{
    NSLog(@"onSpreadClick");
}


#pragma view life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"小手艺";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"推广" style:UIBarButtonItemStylePlain target:self action:@selector(onSpreadClick)];
    
    NSDictionary * dic1 = @{@"title":@"今日订单",@"content":@"100单"};
    
    NSDictionary * dic2 = @{@"title":@"日程安排(周)",@"content":@"15个"};
    
    NSDictionary * dic3 = @{@"title":@"累计收入",@"content":@"8100元"};
    
    self.topArray = @[dic1,dic2,dic3];
    
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
