//
//  TTTableViewDataSource.m
//  TTTableView
//
//  Created by TAO on 2017/11/3.
//  Copyright © 2017年 tTao. All rights reserved.
//

#import "TTTableViewDataSource.h"
#import "TTBaseTableViewCell.h"
#import "TTTableViewBaseItem.h"
#import "TTTableViewSectionModel.h"

#import <objc/runtime.h>

@implementation TTTableViewDataSource

#pragma mark - TTTableViewDataSource

- (TTTableViewBaseItem *)tableView:(UITableView *)tableView itemForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (self.sections.count > indexPath.section) {
        TTTableViewSectionModel *sectionModel = [self.sections objectAtIndex:indexPath.section];
        
        if (sectionModel.items.count > indexPath.row) {
            return [sectionModel.items objectAtIndex:indexPath.row];
        }
    }
    return nil;
}

// 这个方法会子类有机会重写, 默认的 Cell 类型是 KtBaseTableViewCell
- (Class)tableView:(UITableView *)tableView cellClassForItem:(TTTableViewBaseItem *)item {
    return [TTBaseTableViewCell class];
}

#pragma mark - UITableViewDataSource @required

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (self.sections.count > section) {
        TTTableViewSectionModel *sectionModel = [self.sections objectAtIndex:section];
        return sectionModel.items.count;
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TTTableViewBaseItem *item = [self tableView:tableView itemForRowAtIndexPath:indexPath];
    Class cellClass = [self tableView:tableView cellClassForItem:item];
    NSString *className = [NSString stringWithUTF8String:class_getName(cellClass)];
    
    TTBaseTableViewCell *cell = (TTBaseTableViewCell *)[tableView dequeueReusableCellWithIdentifier:className];
    if (cellClass == nil) {
        cell = [[cellClass alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:className];
    }
    [cell setItem:item];
    
    return cell;
}

#pragma mark - UITableViewDataSource @optional

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.sections ? self.sections.count : 0;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (self.sections.count > section) {
        TTTableViewSectionModel *sectionModel = [self.sections objectAtIndex:section];
        return sectionModel.headerTitle;
    }
    return nil;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    if (self.sections.count > section) {
        TTTableViewSectionModel *sectionModel = [self.sections objectAtIndex:section];
        if (sectionModel && sectionModel.footerTitle && [sectionModel.footerTitle isEqualToString:@""]) {
            return sectionModel.footerTitle;
        }
    }
    return nil;
}

@end
