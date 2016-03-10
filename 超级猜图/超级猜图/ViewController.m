//
//  ViewController.m
//  超级猜图
//
//  Created by 123 on 15/10/16.
//  Copyright © 2015年 HST. All rights reserved.
//

#import "ViewController.h"
#import "STQuestion.h"

@interface ViewController ()
- (IBAction)tip;
- (IBAction)bigImg;
- (IBAction)help;
- (IBAction)nextQuestion;
- (IBAction)iconClick;



@property (weak, nonatomic) IBOutlet UILabel *numLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *iconBtn;
@property (weak, nonatomic) IBOutlet UIButton *nextQuestionBtn;

/**所有的题目*/
@property(nonatomic,strong)NSArray *questions;
/**当前是第几题（当前题目的序号）*/
@property(nonatomic,assign)int index;
/**遮盖*/
@property(nonatomic,weak)UIButton* cover;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.index=-1;
    [self nextQuestion];
}
-(NSArray *)questions
{
    if (_questions==nil) {
        //1.加载plist
        NSArray * dictArray=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"questions" ofType:@"plist"]];
        
        //2.字典转模型
        NSMutableArray *questionArray=[NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            STQuestion *question=[STQuestion questionWithDict:dict];
            [questionArray addObject:question];
        }
        //3.赋值
        _questions=questionArray;
    }
    return _questions;
}
/**
 控制状态栏的样式
 */
-(UIStatusBarStyle)preferredStatusBarStyle
{
    //白色
    return UIStatusBarStyleLightContent;
}
/**下一题*/
- (IBAction)nextQuestion
{
    //1.增加索引
    self.index++;
    //2.取出模型
    STQuestion *question=self.questions[self.index];
    //3.设置控件的数据
    //3.1设置序号
    self.numLabel.text=[NSString stringWithFormat:@"%d/%d",self.index+1,self.questions.count];
    
    //3.2设置标题
    self.titleLabel.text=question.title;
    //3.3设置图片
    [self.iconBtn setImage:[UIImage imageNamed:question.icon] forState:UIControlStateNormal];
    //4.设置下一题按钮的状态
    self.nextQuestionBtn.enabled=self.index!=self.questions.count-1;
   
}
/**点击头像*/
- (IBAction)iconClick
{
    if (self.cover==nil) {//没有遮盖，要放大
        [self bigImg];
    }else{//有遮盖，要缩小
        [self smallImg];
    }
}

- (IBAction)tip
{
    
}
/**大图*/
- (IBAction)bigImg
{
    //1.添加阴影
    UIButton *cover=[[UIButton alloc]init];
    cover.frame=self.view.bounds;
    cover.backgroundColor=[UIColor blackColor];
    cover.alpha=0;
    [cover addTarget:self action:@selector(smallImg) forControlEvents:UIControlEventTouchUpInside];
    self.cover=cover;
    [self.view addSubview:cover];
    //2.更换阴影和头像的位置
    [self.view bringSubviewToFront:self.iconBtn];
    
     //3.执行动画
     [UIView animateWithDuration:1.0 animations:^{
        //3.1阴影慢慢显示出来
        cover.alpha=0.7;
        //3.2头像慢慢变大。慢慢移动到屏幕的中间
        CGFloat iconW=self.view.frame.size.width;
        CGFloat iconH=iconW;
        CGFloat iconY=(self.view.frame.size.height-iconH)*0.5;
        self.iconBtn.frame=CGRectMake(0, iconY, iconW, iconH);
    }];
    //[UIView beginAnimations:nil context:nil];
    //[UIView commitAnimations];
}
/**小图*/
-(void)smallImg
{
    //执行动画
    [UIView animateWithDuration:1.0 animations:^{
        //存放需要执行动画的代码
        //1.头像慢慢变为原来的位置和尺寸
        self.iconBtn.frame=CGRectMake(85, 100, 150, 150);
        //2.阴影慢慢消失
        self.cover.alpha=0.0;
    } completion:^(BOOL finished) {
        //动画执行完毕后会自动调用block内部的代码
        [self.cover removeFromSuperview];
        self.cover=nil;
    }];
    //1.删除阴影
    //[self.cover removeFromSuperview];
    //self.cover=nil;
    //2.恢复头像原来的位置
    //[UIView beginAnimations:nil context:nil];
    //[UIView setAnimationDuration:1.0];
    //[UIView setAnimationDelegate:self];
    //[UIView setAnimationDidStopSelector:@selector(removeCover)];
    
    //[UIView commitAnimations];
}

- (IBAction)help {
}
@end
