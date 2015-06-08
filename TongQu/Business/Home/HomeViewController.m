//
//  HomeViewController.m
//  TongQu
//
//  Created by Owen on 15/6/4.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTopCell.h"
#import "SectionBackgroundLayout.h"
#import "HomeContentCell.h"


#define contentInterItemSpacing 20
#define contentLineSpacing 30

#define topSectionEdge UIEdgeInsetsMake(5,10,5,10)
#define contentSectionEdge UIEdgeInsetsMake(10, 20,10, 20)



#define sectionHeight 20.0f

static NSString * identifier = @"CellHomeTop";

@interface HomeViewController ()

@property (nonatomic,strong) NSArray * topArray;
@property (nonatomic,strong) NSArray * contentArray;

@end

@implementation HomeViewController

#pragma mark - collectionView dataSource & dataDelegate

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger section = indexPath.section;
    NSInteger item = indexPath.item;
    if(section == 1) {
        switch (item) {
            case 0:
                
                break;
            case 1:
            {
                NSURL *url = [NSURL URLWithString:@"tq://event"];
                [[UIApplication sharedApplication ] openURL:url];
                NSLog(@"%ld -- %ld",section,item);
            }
                break;
                
            default:
                break;
        }
    }
}


- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)collectionViewLayout
minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    if(section == 1) {
        return contentLineSpacing;
    }
    return 0;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(UICollectionViewLayout *)collectionViewLayout
minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    if(section == 1) {
        return contentInterItemSpacing;
    }
    return 0;
}



- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView
                        layout:(UICollectionViewLayout *)collectionViewLayout
        insetForSectionAtIndex:(NSInteger)section
{
    SectionBackgroundLayout * layout = (SectionBackgroundLayout *)collectionViewLayout;
    if(section == 0) {
        [layout.sectionInsetsArray addObject:[NSValue valueWithUIEdgeInsets:topSectionEdge]];
        return topSectionEdge;
    } else if(section == 1) {
       [layout.sectionInsetsArray addObject:[NSValue valueWithUIEdgeInsets:contentSectionEdge]];
        return contentSectionEdge;
    }
    return UIEdgeInsetsZero;
}

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
    } else if(section == 1) {
        [HomeContentCell registerCellWithCollectionView:collectionView];
        return [self.contentArray count];
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
    } else if(section == 1) {
        HomeContentCell * content = [HomeContentCell cellWithCollectionView:collectionView forIndexPath:indexPath];
        content.data = self.contentArray[indexPath.item];
        cell = content;
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
    else if(section == 1) {
        return [HomeContentCell sizeWithCollectionView:collectionView data:self.contentArray[item] interItemSpacing:contentInterItemSpacing sectionEdge:contentSectionEdge];
    }
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
    
    NSDictionary * tdic1 = @{@"title":@"今日订单",@"content":@"100单"};
    
    NSDictionary * tdic2 = @{@"title":@"日程安排(周)",@"content":@"15个"};
    
    NSDictionary * tdic3 = @{@"title":@"累计收入",@"content":@"8100元"};
    
    self.topArray = @[tdic1,tdic2,tdic3];
    
    NSDictionary * cdic1 = @{@"title":@"订单管理",@"image":[UIImage imageNamed:@"icon"]};
    
    NSDictionary * cdic2 = @{@"title":@"活动管理",@"image":[UIImage imageNamed:@"icon"]};
    
    NSDictionary * cdic3 = @{@"title":@"活动日程",@"image":[UIImage imageNamed:@"icon"]};
    
    NSDictionary * cdic4 = @{@"title":@"场地预约",@"image":[UIImage imageNamed:@"icon"]};
    
    NSDictionary * cdic5 = @{@"title":@"用户评价",@"image":[UIImage imageNamed:@"icon"]};
    
    NSDictionary * cdic6 = @{@"title":@"我的",@"image":[UIImage imageNamed:@"icon"]};
    
    self.contentArray= @[cdic1,cdic2,cdic3,cdic4,cdic5,cdic6];
    
    SectionBackgroundLayout * layout = [[SectionBackgroundLayout alloc] init];
    layout.decorationViewOfKinds = @[@"SectionBackgroundView1",@"SectionBackgroundView1", [NSNull null]];
    self.collectionView.collectionViewLayout = layout;
    
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
