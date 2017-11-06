//
//  TTBaseTableViewCell.h
//  TTTableView
//
//  Created by TAO on 2017/11/3.
//  Copyright © 2017年 tTao. All rights reserved.
//
/**
     基类 cell
 */

#import <UIKit/UIKit.h>

@class TTTableViewBaseItem;

@interface TTBaseTableViewCell : UITableViewCell

@property (nonatomic, strong) TTTableViewBaseItem *item;

+ (CGFloat)tableView:(UITableView *)tableView rowHeightForItem:(TTTableViewBaseItem *)item;

@end
