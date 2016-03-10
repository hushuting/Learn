//
//  ViewController.h
//  按钮的基本使用
//
//  Created by 123 on 15/10/10.
//  Copyright (c) 2015年 HST. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *head;
-(IBAction)Move:(UIButton*)btn;
- (IBAction)scale:(UIButton*)sbtn;
- (IBAction)moveAndBig:(id)sender;
@end

