//
//  LeftViewController.m
//  侧滑实现
//
//  Created by 123 on 15/12/13.
//  Copyright © 2015年 HST. All rights reserved.
//

#import "LeftViewController.h"
#import "DataCell.h"

@interface LeftViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)NSMutableArray *imageArray;
//文字描述数组
@property(nonatomic,strong)NSMutableArray *descArray;

@end

@implementation LeftViewController


-(NSMutableArray *)imageArray
{
    if(!_imageArray)
    {
        _imageArray=[[NSMutableArray alloc]initWithObjects:@"handShake",@"MoreHelp",@"MoreMessage",@"MoreMessage",@"MoreMessage", nil];
    }
    return _imageArray;
}

-(NSMutableArray *)descArray
{
    if(!_descArray)
    {
        _descArray=[[NSMutableArray alloc]initWithObjects:@"切换网络",@"修改头像",@"修改密码",@"修改邮箱",@"账号注销", nil];
    }
    return _descArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.view.backgroundColor=[UIColor blueColor];
    
    UIButton *touxiang=[UIButton buttonWithType:UIButtonTypeCustom];
    
    [touxiang setUserInteractionEnabled:NO];
    
    [touxiang setBackgroundImage:[UIImage imageNamed:@"me"] forState:UIControlStateNormal];
    touxiang.frame=CGRectMake(30, 24, 50, 50);
    [self.view addSubview:touxiang];
    
    //名字
    UILabel *nameLabel=[[UILabel alloc]init];
    nameLabel.frame=CGRectMake(30, 94, 100, 20);
    nameLabel.backgroundColor=[UIColor orangeColor];
    [nameLabel setText:self.username];
    [self.view addSubview:nameLabel];
    
    //邮箱
    UILabel *mailLabel=[[UILabel alloc]init];
    mailLabel.font=[UIFont systemFontOfSize:14.0f];
    mailLabel.frame=CGRectMake(30, 114, 170, 30);
    mailLabel.backgroundColor=[UIColor redColor];
    [mailLabel setText:self.password];
    [self.view addSubview:mailLabel];
    
    UITableView *tableView=[[UITableView alloc]init];
    tableView.delegate=self;
    tableView.dataSource=self;
//    tableView.backgroundColor=[UIColor grayColor];
    tableView.frame=CGRectMake(0, 164, self.view.frame.size.width*0.5, self.view.frame.size.height-514);
    [self.view addSubview:tableView];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.imageArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DataCell *cell=[DataCell cellViewWithTableView:tableView];
    cell.imageView.image=[UIImage imageNamed:self.imageArray[indexPath.row]];
    cell.textLabel.text=self.descArray[indexPath.row];
    
    return cell;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
