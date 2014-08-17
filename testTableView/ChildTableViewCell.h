//
//  ChildTableViewCell.h
//  testTableView
//
//  Created by Aidan on 14-8-17.
//  Copyright (c) 2014年 ideal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChildTableViewCell : UITableViewCell <UITableViewDataSource>

@property (strong, nonatomic, readonly) NSString *name;

@property (strong, nonatomic) UITableView *tableView;

@property (nonatomic) NSInteger childNum;

@end
