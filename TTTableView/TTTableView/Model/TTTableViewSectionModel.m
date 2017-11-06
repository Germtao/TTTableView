//
//  TTTableViewSectionModel.m
//  TTTableView
//
//  Created by TAO on 2017/11/3.
//  Copyright © 2017年 tTao. All rights reserved.
//

#import "TTTableViewSectionModel.h"

@implementation TTTableViewSectionModel

- (instancetype)init {
    self = [super init];
    if (self) {
        self.headerTitle = @"";
        self.footerTitle = @"";
        
        self.items = [NSMutableArray array];
    }
    return self;
}

- (instancetype)initWithItems:(NSMutableArray *)items {
    self = [self init];
    
    if (self) {
        [self.items addObjectsFromArray:items];
    }
    return self;
}

@end
