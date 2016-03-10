//
//  LoginViewController.m
//  侧滑实现
//
//  Created by 123 on 15/12/14.
//  Copyright © 2015年 HST. All rights reserved.
//

#import "LoginViewController.h"
#import "LeftViewController.h"
#import "ViewController.h"
#import "RESideMenu.h"

@interface LoginViewController ()

@property(nonatomic,strong)UITextField *userN;
@property(nonatomic,strong)UITextField *pwdF;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *userName=[[UILabel alloc]init];
    CGFloat uX=100;
    CGFloat uY=self.view.frame.size.height*0.5-100;
    CGFloat uW=60;
    CGFloat uH=20;
    userName.frame=CGRectMake(uX, uY, uW, uH);
    userName.text=@"用户名：";
//    userName.backgroundColor=[UIColor orangeColor];
    userName.font=[UIFont systemFontOfSize:14.0f];
    [self.view addSubview:userName];
    
    self.userN=[[UITextField alloc]init];
    CGFloat uNX=uX+uW+10;
    CGFloat uNY=uY;
    CGFloat uNW=100;
    CGFloat uNH=uH;
    self.userN.frame=CGRectMake(uNX, uNY, uNW, uNH);
    self.userN.borderStyle=UITextBorderStyleRoundedRect;
    self.userN.placeholder=@"请输入用户名";
    self.userN.font=[UIFont systemFontOfSize:10.0f];
    
    [self.view addSubview:self.userN];
    
    UILabel *pwd=[[UILabel alloc]init];
    CGFloat pX=uX;
    CGFloat pY=uY+50;
    CGFloat pW=uW;
    CGFloat pH=uH;
    pwd.frame=CGRectMake(pX, pY, pW, pH);
    pwd.text=@"密码：";
    pwd.font=[UIFont systemFontOfSize:14.0f];
    [self.view addSubview:pwd];
    
    self.pwdF=[[UITextField alloc]init];
    CGFloat pwX=uNX;
    CGFloat pwY=pY;
    CGFloat pwW=uNW;
    CGFloat pwH=uNH;
    self.pwdF.frame=CGRectMake(pwX, pwY, pwW, pwH);
    self.pwdF.secureTextEntry=YES;
   self.pwdF.borderStyle=UITextBorderStyleRoundedRect;
    
    self.pwdF.placeholder=@"请输入密码";
    self.pwdF.font=[UIFont systemFontOfSize:10.0f];
    [self.view addSubview:self.pwdF];
    
    UIButton *login=[[UIButton alloc]init];
    CGFloat bX=pX;
    CGFloat bW=pW+pwW;
    CGFloat bY=pY+30;
    CGFloat bH=30;
    login.frame=CGRectMake(bX, bY, bW, bH);
//    login.backgroundColor=[UIColor redColor];
    [login setTitle:@"登录" forState:UIControlStateNormal];
//    login.titleLabel.text=@"登录";
    //login.titleLabel.textColor=[UIColor blackColor];
    [login setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [login setTitleColor:[UIColor greenColor] forState:UIControlStateHighlighted]
     ;
    [login addTarget:self action:@selector(loginClick) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:login];
}
-(void)loginClick
{
    if (!([self.userN.text isEqualToString:@""] && [self.pwdF.text isEqualToString:@""]))
    {
        ViewController *main=[[ViewController alloc]init];
        LeftViewController *leftVc=[[LeftViewController alloc]init];
        leftVc.username=self.userN.text;
        leftVc.password=self.pwdF.text;
        
        RESideMenu *sideMenuViewController=[[RESideMenu alloc]initWithContentViewController:main leftMenuViewController:leftVc rightMenuViewController:nil];
        
        sideMenuViewController.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
        [self presentViewController:sideMenuViewController animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
