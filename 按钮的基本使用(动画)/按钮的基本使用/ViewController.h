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

- (IBAction)Move:(id)sender;
- (IBAction)moveAndBig:(id)sender;
- (IBAction)move:(id)sender;
- (IBAction)Up:(id)sender;
- (IBAction)scale:(id)sender;
- (IBAction)Down:(id)sender;
- (IBAction)Left:(id)sender;
- (IBAction)Right:(id)sender;
- (IBAction)Big:(id)sender;
- (IBAction)Small:(id)sender;

@end

