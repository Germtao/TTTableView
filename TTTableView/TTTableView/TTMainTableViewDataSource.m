//
//  TTMainTableViewDataSource.m
//  TTTableView
//
//  Created by TAO on 2017/11/3.
//  Copyright © 2017年 tTao. All rights reserved.
//

#import "TTMainTableViewDataSource.h"
#import "TTMainTableViewCell.h"
#import "TTTableViewBaseItem.h" // 对应使用子类
#import "TTTableViewSectionModel.h" // 同上

@implementation TTMainTableViewDataSource

- (instancetype)init {
    self = [super init];
    
    if (self) {
        
        NSMutableArray *items = [NSMutableArray arrayWithObjects:
                                 [[TTTableViewBaseItem alloc] initWithImage:nil title:@"第一条消息" subTitle:nil accessoryImage:nil],
                                 [[TTTableViewBaseItem alloc] initWithImage:nil title:@"第二条消息" subTitle:nil accessoryImage:nil],
                                 [[TTTableViewBaseItem alloc] initWithImage:nil title:@"第三条消息" subTitle:nil accessoryImage:nil],
                                 [[TTTableViewBaseItem alloc] initWithImage:nil title:@"第四条消息" subTitle:nil accessoryImage:nil],
                                 [[TTTableViewBaseItem alloc] initWithImage:nil title:@"第五条消息" subTitle:nil accessoryImage:nil], nil];
        
        TTTableViewSectionModel *sectionModel_0 = [[TTTableViewSectionModel alloc] initWithItems:items];
        
        self.sections = [NSMutableArray arrayWithObject:sectionModel_0];
    }
    
    return self;
}

- (Class)tableView:(UITableView *)tableView cellClassForItem:(TTTableViewBaseItem *)item {
    return [TTMainTableViewCell class];
}

@end
