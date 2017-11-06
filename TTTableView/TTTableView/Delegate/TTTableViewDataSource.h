//
//  TTTableViewDataSource.h
//  TTTableView
//
//  Created by TAO on 2017/11/3.
//  Copyright © 2017年 tTao. All rights reserved.
//
/**
     设置好数据源的基类
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TTTableViewBaseItem;

@protocol TTTableViewDataSource <UITableViewDataSource>

@optional

- (TTTableViewBaseItem *)tableView:(UITableView *)tableView itemForRowAtIndexPath:(NSIndexPath *)indexPath;
- (Class)tableView:(UITableView *)tableView cellClassForItem:(TTTableViewBaseItem *)item;

@end

@interface TTTableViewDataSource : NSObject <TTTableViewDataSource>

/**
     二维数组, 每个元素都是一个 sectionModel
 */
@property (nonatomic, strong) NSMutableArray *sections;

@end
