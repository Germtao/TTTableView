//
//  TTTableViewSectionModel.h
//  TTTableView
//
//  Created by TAO on 2017/11/3.
//  Copyright © 2017年 tTao. All rights reserved.
//
/**
     数据源的基类
 */

#import <Foundation/Foundation.h>

@interface TTTableViewSectionModel : NSObject

/**
 section 的标题
 */
@property (nonatomic, copy) NSString *headerTitle;
@property (nonatomic, copy) NSString *footerTitle;

/**
 给 cell 用的数组
 */
@property (nonatomic, strong) NSMutableArray *items;

- (instancetype)initWithItems:(NSMutableArray *)items;

@end
