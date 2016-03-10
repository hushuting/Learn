//
//  ViewController.m
//  侧滑实现
//
//  Created by 123 on 15/12/13.
//  Copyright © 2015年 HST. All rights reserved.
//

#import "ViewController.h"
#import "RESideMenu/RESideMenu.h"
#import "LeftViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor greenColor];
    
   
    UIButton *touxiang=[[UIButton alloc]init];
    [touxiang setBackgroundImage:[UIImage imageNamed:@"me"] forState:UIControlStateNormal];
    touxiang.frame=CGRectMake(50, 50, 50, 50);
    [touxiang addTarget:self action:@selector(presentLeftMenuViewController:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:touxiang];
    
}

@end
