//
//  EventDetailViewController.m
//  TongQu
//
//  Created by Owen on 15/6/8.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import "EventDetailViewController.h"
#import "EventDetailHeaderCell.h"

@interface EventDetailViewController ()

@property(nonatomic,strong) NSArray * headerArray;

@end

@implementation EventDetailViewController



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
        return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [EventDetailHeaderCell height];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    EventDetailHeaderCell * headerCell = [EventDetailHeaderCell cellWithTableView:tableView forIndexPath:indexPath];
    headerCell.data = self.headerArray;
    return headerCell;
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"活动详情";
    NSDictionary * dic1 = @{@"image":[UIImage imageNamed:@"mc_news"]};
    NSDictionary * dic2 = @{@"image":[UIImage imageNamed:@"mc_push"]};
    NSDictionary * dic3 = @{@"image":[UIImage imageNamed:@"mc_tel"]};
    
    self.headerArray = @[dic1,dic2,dic3];
    [EventDetailHeaderCell registerCellWithTableView:self.tableView];
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
