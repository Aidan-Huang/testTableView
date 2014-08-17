//
//  ParentTableViewCell.h
//  testTableView
//
//  Created by Aidan on 14-8-16.
//  Copyright (c) 2014年 ideal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParentTableViewCell : UITableViewCell

@property (strong, nonatomic, readonly) NSString *name;


@property (nonatomic,strong) UIImageView *iconImage;
@property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UIImage *selectionIndicatorImg;
@property (nonatomic,strong) UIImageView *selectionIndicatorImgView;
@property (nonatomic) NSInteger parentIndex;

- (id)initWithReuseIdentifier:(NSString *)reuseIdentifier;
- (void)setupDisplay;
//- (void)rotateIconToExpanded;
//- (void)rotateIconToCollapsed;
- (void)selectionIndicatorState:(BOOL) visible;
- (void)setCellForegroundColor:(UIColor *) foregroundColor;
- (void)setCellBackgroundColor:(UIColor *) backgroundColor;

@end
