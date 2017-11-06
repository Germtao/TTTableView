//
//  TTTableViewBaseItem.h
//  TTTableView
//
//  Created by TAO on 2017/11/3.
//  Copyright © 2017年 tTao. All rights reserved.
//
/**
 存储了每个 cell 所需要的 BaseItem
 tableView 基类 item
 */
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

FOUNDATION_EXPORT CGFloat const CellInvalidHeight; // cell无效高度

@interface TTTableViewBaseItem : NSObject

@property (nonatomic, assign) CGFloat cellHeight;

@property (nonatomic, copy) NSString *itemID;

@property (nonatomic, strong) UIImage *itemImage;
@property (nonatomic, copy) NSString *itemTitle;
@property (nonatomic, copy) NSString *itemSubTitle;
@property (nonatomic, strong) UIImage *itemAccessoryImage;

- (instancetype)initWithImage:(UIImage *)image
                        title:(NSString *)title
                     subTitle:(NSString *)subTitle
               accessoryImage:(UIImage *)accessoryImage;

@end
