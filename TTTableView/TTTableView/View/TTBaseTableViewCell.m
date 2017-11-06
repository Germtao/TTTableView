//
//  TTBaseTableViewCell.m
//  TTTableView
//
//  Created by TAO on 2017/11/3.
//  Copyright © 2017年 tTao. All rights reserved.
//

#import "TTBaseTableViewCell.h"
#import "TTTableViewBaseItem.h"
#import "UIView+Frame.h"

@implementation TTBaseTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - 子类在此方法中解析数据
- (void)setItem:(TTTableViewBaseItem *)item {
    self.height = [[self class] tableView:nil rowHeightForItem:item];
    self.width = [UIScreen mainScreen].bounds.size.width;
    
    self.contentView.height = self.height;
    self.contentView.width = self.width;
    
    self.textLabel.text = item.itemTitle;
    self.imageView.image = item.itemImage;
    self.detailTextLabel.text = item.itemSubTitle;
    self.accessoryView = [[UIImageView alloc] initWithImage:item.itemAccessoryImage];
}

+ (CGFloat)tableView:(UITableView *)tableView rowHeightForItem:(TTTableViewBaseItem *)item {
    return 44.f;
}

@end
