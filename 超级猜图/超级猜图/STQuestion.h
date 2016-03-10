//
//  STQuestion.h
//  超级猜图
//
//  Created by 123 on 15/10/17.
//  Copyright © 2015年 HST. All rights reserved.
//题目模型（一个STQuestion对象对应一道题目）

#import <Foundation/Foundation.h>

@interface STQuestion : NSObject
@property(nonatomic,copy)NSString *answer;
@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *icon;
@property(nonatomic,copy)NSArray *options;
-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)questionWithDict:(NSDictionary *)dict;
@end
