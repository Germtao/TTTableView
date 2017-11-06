//
//  TTTableViewBaseItem.m
//  TTTableView
//
//  Created by TAO on 2017/11/3.
//  Copyright © 2017年 tTao. All rights reserved.
//

#import "TTTableViewBaseItem.h"

CGFloat const CellInvalidHeight = -1;

@implementation TTTableViewBaseItem

- (instancetype)init {
    
    self = [self initWithImage:nil title:nil subTitle:nil accessoryImage:nil];
    
    return self;
}

- (instancetype)initWithImage:(UIImage *)image title:(NSString *)title subTitle:(NSString *)subTitle accessoryImage:(UIImage *)accessoryImage {
    
    self = [super init];
    
    if (self) {
        _cellHeight = CellInvalidHeight;
        _itemImage = image;
        _itemTitle = title;
        _itemSubTitle = subTitle;
        _itemAccessoryImage = accessoryImage;
    }
    return self;
}

@end
