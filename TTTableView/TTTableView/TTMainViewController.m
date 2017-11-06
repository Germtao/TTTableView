//
//  TTMainViewController.m
//  TTTableView
//
//  Created by TAO on 2017/11/3.
//  Copyright © 2017年 tTao. All rights reserved.
//

#import "TTMainViewController.h"
#import "TTMainTableViewDataSource.h"
#import "TTMainTableViewCell.h"

@interface TTMainViewController () <UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *items;
@property (nonatomic, strong) TTMainTableViewDataSource *dataSource;

@end

@implementation TTMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.items = [NSMutableArray arrayWithObjects:@"第一条消息", @"第二条消息", @"第三条消息", @"第四条消息", @"第五条消息", nil];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.view addSubview:self.tableView];
    
    self.tableView.delegate = self;
    
    self.dataSource = [[TTMainTableViewDataSource alloc] init];  // 创建数据源
    self.tableView.dataSource = self.dataSource;  // 绑定数据源
    self.tableView.tableFooterView = [UIView new];  // 去掉多余分线
    
}



@end
