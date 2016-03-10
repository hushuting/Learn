//
//  STViewController.h
//  手势识别－拖拽
//
//  Created by 123 on 15/12/11.
//  Copyright © 2015年 HST. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STViewController : UIViewController

@property(nonatomic,strong)UIViewController *mainVC;
@property(nonatomic,strong)UIViewController *leftVC;

@property(nonatomic,assign)BOOL canShowLeft;
@property(nonatomic,assign)BOOL leftContentScale;

@property(nonatomic,assign)BOOL leftOpenDuration;
@property(nonatomic,assign)BOOL leftCloseDuration;

@end
