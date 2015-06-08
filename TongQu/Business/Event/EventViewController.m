//
//  EventViewController.m
//  TongQu
//
//  Created by Owen on 15/6/5.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import "EventViewController.h"
#import "EventContentCell.h"

@interface EventViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSArray * contentArray;

@end

@implementation EventViewController

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.contentArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    EventContentCell * cell = [EventContentCell cellWithTableView:tableView forIndexPath:indexPath];
    cell.data = self.contentArray[indexPath.row];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [EventContentCell heightWithTableView:tableView forIndexPath:indexPath data:self.contentArray[indexPath.row]];
}

- (IBAction)onSegmentClick:(id)sender {
    
    UISegmentedControl * segControl = sender;
    NSLog(@"%ld",segControl.selectedSegmentIndex);
}

-(instancetype)initWithParams:(NSDictionary *)params
{
    self = [super initWithNibName:NSStringFromClass(self.class) bundle:nil];
    if(self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"活动管理";
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    
    NSDictionary * dic1 = @{@"image":[UIImage imageNamed:@"icon"],
                            @"title":@"可是大家发垃圾萨克拉飞机SD卡乱打附加赛拉空房间来上课交罚款零售价付款了四大件法律的撒娇的反馈等是否了解",
                            @"time":@"6月5日 13:00-15:00",
                            @"rollment":@"5人已报名",
                            @"price":@"50元"};
    NSDictionary * dic2 = @{@"image":[UIImage imageNamed:@"icon"],
                            @"title":@"亲子露营，和孩!",
                            @"time":@"6月5日 14:00-16:00",
                            @"rollment":@"5人已报名",
                            @"price":@"50元"};
    self.contentArray = @[dic1,dic2];
    [EventContentCell registerCellWithTableView:self.tableView];
    
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
