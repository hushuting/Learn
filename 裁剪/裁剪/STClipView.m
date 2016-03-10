//
//  STClipView.m
//  裁剪
//
//  Created by 123 on 15/11/24.
//  Copyright © 2015年 HST. All rights reserved.
//

#import "STClipView.h"

@implementation STClipView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

*/
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    
    CGContextSaveGState(ctx);
    CGContextAddEllipseInRect(ctx, CGRectMake(100, 100, 50, 50));
    
    //裁剪
    CGContextClip(ctx);
    
    CGContextFillPath(ctx);

    //1.显示图片
    UIImage *image=[UIImage imageNamed:@"me"];
    [image drawAtPoint:CGPointMake(100, 100)];
    
    CGContextRestoreGState(ctx);
    
    CGContextAddRect(ctx, CGRectMake(0, 0, 50, 50));
    CGContextFillPath(ctx);
    
}
@end
