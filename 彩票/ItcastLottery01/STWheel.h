//
//  STWheel.h
//  转盘
//
//  Created by 123 on 15/12/4.
//  Copyright © 2015年 HST. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STWheel : UIView
+(instancetype)wheel;
-(void)startRotating;
-(void)stopRotatng;
@end
