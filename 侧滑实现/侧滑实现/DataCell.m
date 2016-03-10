//
//  DataCell.m
//  侧滑实现
//
//  Created by 123 on 15/12/13.
//  Copyright © 2015年 HST. All rights reserved.
//

#import "DataCell.h"

@implementation DataCell

+(instancetype)cellViewWithTableView:(UITableView *)tableview
{
    static NSString *ID=@"cell";
    DataCell *cell=[tableview dequeueReusableCellWithIdentifier:ID];
    if (cell==nil) {
        cell=[[DataCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID
              ];
    }
    return cell;
}

- (void)awakeFromNib
{
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
