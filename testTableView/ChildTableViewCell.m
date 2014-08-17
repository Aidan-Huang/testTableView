//
//  ChildTableViewCell.m
//  testTableView
//
//  Created by Aidan on 14-8-17.
//  Copyright (c) 2014年 ideal. All rights reserved.
//

#import "ChildTableViewCell.h"

@implementation ChildTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.tableView = [[UITableView alloc] init];
        self.tableView.dataSource = self;
        
        self.tableView.frame = self.frame;
        
        self.tableView.allowsSelection = NO;
        
        [self addSubview:self.tableView];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (NSString *)name{
    
    return @"child cell";
}

- (void)setChildNum:(NSInteger)childNum
{
    _childNum = childNum;
    
    self.tableView.frame = CGRectMake(0, 0, self.frame.size.width, childNum * self.frame.size.height);
}


#pragma mark - UITableViewDatasSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

        
        NSString *identifier = @"childCellCell";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
        if(cell == nil){
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        }
        
        cell.backgroundColor = [UIColor greenColor] ;
        
        
        cell.textLabel.text = @"My name is:childCellCell";        
        
        return cell;
    
}

#pragma mark - UITableViewDelegate


@end
