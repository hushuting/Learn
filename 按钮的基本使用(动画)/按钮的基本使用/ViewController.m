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
    [UIView beginAnimations:nil context:nil];
    //
    [UIView setAnimationDuration:2.0];
    CGPoint tempCenter=self.head.center;
    CGFloat delta=100;
    switch (btn.tag) {
        case 10://left
            tempCenter.x-=delta;
            break;
        case 20://right
            tempCenter.x+=delta;
            break;
        case 30://up
            tempCenter.y-=delta;
            break;
        case 40://down
            tempCenter.y+=delta;
            break;
    }
    self.head.center=tempCenter;
    [UIView commitAnimations];
}

- (IBAction)moveAndBig:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2.0];
    CGRect tempF=self.head.frame;
    tempF.origin.x+=50;
    tempF.origin.y+=50;
    
    tempF.size.width+=50;
    tempF.size.height+=50;
    self.head.frame=tempF;
    
    [UIView commitAnimations];
}

- (IBAction)scale:(UIButton*)sbtn
{
    
    [UIView beginAnimations:nil context:nil];
    //
    [UIView setAnimationDuration:2.0];
    CGRect tempBounds=self.head.bounds;
    CGFloat delta=50;
    if (sbtn.tag==50) {
        tempBounds.size.width+=delta;
        tempBounds.size.height+=delta;
    }
    else if (sbtn.tag==60){
        tempBounds.size.width-=delta;
        tempBounds.size.height-=delta;
    }
    self.head.bounds=tempBounds;
    [UIView commitAnimations];
}
@end
