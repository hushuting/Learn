//
//  ViewController.m
//  按钮的基本使用
//
//  Created by 123 on 15/10/10.
//  Copyright (c) 2015年 HST. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Up:(id)sender
{
    //不允许直接修改 对象 的 结构体属性 的成员
    //允许直接修改 对象 的结构体 属性
    CGRect tempFrame=self.head.frame;
    tempFrame.origin.y-=10;
    self.head.frame=tempFrame;
}

- (IBAction)Down:(id)sender
{
    CGRect tempFrame=self.head.frame;
    tempFrame.origin.y+=10;
    self.head.frame=tempFrame;
}

- (IBAction)Left:(id)sender
{
    CGRect tempFrame=self.head.frame;
    tempFrame.origin.x-=10;
    self.head.frame=tempFrame;
}

- (IBAction)Right:(id)sender
{
    CGRect tempFrame=self.head.frame;
    tempFrame.origin.x+=10;
    self.head.frame=tempFrame;
}

- (IBAction)Big:(id)sender
{
    CGRect tempFrame=self.head.frame;
    tempFrame.size.width+=20;
    tempFrame.size.height+=20;
    self.head.frame=tempFrame;
}

- (IBAction)Small:(id)sender
{
    CGRect tempFrame=self.head.frame;
    tempFrame.size.width-=20;
    tempFrame.size.height-=20;
    self.head.frame=tempFrame;
}
@end
