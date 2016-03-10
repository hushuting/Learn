//
//  STQuestion.m
//  超级猜图
//
//  Created by 123 on 15/10/17.
//  Copyright © 2015年 HST. All rights reserved.
//

#import "STQuestion.h"

@implementation STQuestion
-(instancetype)initWithDict:(NSDictionary *)dict
{
    if (self=[super init]) {
        self.icon=dict[@"icon"];
        self.title=dict[@"title"];
        self.answer=dict[@"answer"];
        self.options=dict[@"options"];
    }
    return self;
}
+(instancetype)questionWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}
@end
