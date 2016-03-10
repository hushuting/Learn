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

- (IBAction)Move:(UIButton*)btn
{
    CGRect tempF=self.head.frame;
    CGFloat delta=10;
    switch (btn.tag) {
        case 10://left
            tempF.origin.x-=delta;
            break;
        case 20://right
            tempF.origin.x+=delta;
            break;
        case 30://up
            tempF.origin.y-=delta;
            break;
        case 40://down
            tempF.origin.y+=delta;
            break;
    }
    self.head.frame=tempF;
}

- (IBAction)scale:(UIButton*)sbtn
{
    CGRect tempS=self.head.frame;
    CGFloat delta=20;
    if (sbtn.tag==50) {
        tempS.size.width+=delta;
        tempS.size.height+=delta;
    }
    else if (sbtn.tag==60){
        tempS.size.width-=delta;
        tempS.size.height-=delta;
    }
    self.head.frame=tempS;
}
@end
