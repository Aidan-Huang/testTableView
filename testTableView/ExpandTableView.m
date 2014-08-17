//
//  ExpandTableView.m
//  testTableView
//
//  Created by Aidan on 14-8-16.
//  Copyright (c) 2014年 ideal. All rights reserved.
//

#import "ExpandTableView.h"
#import "ParentTableViewCell.h"
#import "ChildTableViewCell.h"

@implementation ExpandTableView

#define HEIGHT_FOR_CELL 44.0

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super initWithCoder:aDecoder];
    if(self){
        self.dataSource = self;
        self.delegate = self;
        
        self.allowsSelection = NO;
        self.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        
        UIView *footer = [[UIView alloc] initWithFrame:CGRectZero];
        self.tableFooterView = footer;

    }
    
    return  self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

#pragma mark - UITableViewDataSouce

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.row == 0){
        
        NSString *identifier = @"parentCell";
        ParentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if(cell == nil){
            cell = [[ParentTableViewCell alloc] initWithReuseIdentifier:identifier];
        }
        
        [cell setCellBackgroundColor:[UIColor redColor]];
        
        
        cell.label.text = [[NSString alloc] initWithFormat:@"My name is:%@", cell.name];
        
        [cell.iconImage setImage:[UIImage imageNamed:@"heart"]];
        
        [cell selectionIndicatorImgView].image = [UIImage imageNamed:@"green_checkmark"];
        
        
        return cell;
        
    }else {
        
        NSString *identifier = @"childCell";
        ChildTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if(cell == nil){
            cell = [[ChildTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        }
        
        
//        cell.textLabel.text = [[NSString alloc] initWithFormat:@"My name is:%@", cell.name];
//        cell.backgroundColor = [UIColor greenColor];
        
        cell.childNum = 2;
        
        return cell;
        
        
    }
    
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    long row = indexPath.row;
    
    if(row == 0) return HEIGHT_FOR_CELL;
    if(row == 1) return 2 * HEIGHT_FOR_CELL;
    
    return HEIGHT_FOR_CELL;
    
}


@end
