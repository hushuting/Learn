//
//  STMainViewController.m
//  手势识别－拖拽
//
//  Created by 123 on 15/12/12.
//  Copyright © 2015年 HST. All rights reserved.
//

#import "STMainViewController.h"

@interface STMainViewController ()

@end

@implementation STMainViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        UIViewController *vc1=[[UIViewController alloc]init];
        UIViewController *vc2=[[UIViewController alloc]init];
        UIViewController *vc3=[[UIViewController alloc]init];
        
        vc1.view.backgroundColor=[UIColor greenColor];
        vc2.view.backgroundColor=[UIColor redColor];
        vc3.view.backgroundColor=[UIColor blueColor];
        
        vc1.tabBarItem=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:10];
        vc2.tabBarItem=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:11];
        vc3.tabBarItem=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemHistory tag:12];
        
        NSArray *collections=@[vc1,vc2,vc3];
        
        self.viewControllers=collections;
        NSLog(@"111");
        
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"123");
    
}

@end
