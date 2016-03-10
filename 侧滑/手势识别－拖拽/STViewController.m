//
//  STViewController.m
//  手势识别－拖拽
//
//  Created by 123 on 15/12/11.
//  Copyright © 2015年 HST. All rights reserved.
//

#import "STViewController.h"

@interface STViewController ()
{
    BOOL showingLeft;
    
    UIView *leftView;
    UIView *mainView;
    
    UITapGestureRecognizer *tapGesture;
    UIPanGestureRecognizer *panGesture;
    
    //根据大小缩放比例，算出停止的偏移量
    float leftContentOffset;
    
    //原视图与完全缩小后的视图差
    float mml;
}
@end

@implementation STViewController


-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self=[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _leftCloseDuration=.4;
        _leftOpenDuration=.5;
        _leftContentScale=.7;
        _canShowLeft=YES;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initSubviews];
    
    [self initControllers];
    
    tapGesture=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
    
    [mainView addGestureRecognizer:tapGesture];
    tapGesture.enabled=NO;
    
    panGesture=[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panAction:)];
    [mainView addGestureRecognizer:panGesture];
    
    
    [tapGesture requireGestureRecognizerToFail:panGesture];
    
    //初始化一些全局变量
    [self resetSubviewsTransform];
}

-(void)initSubviews
{
    leftView=[[UIView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:leftView];
    
    mainView=[[UIView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:mainView];
}

-(void)initControllers
{
    NSLog(@"leftVc是否初始化：%d",_leftVC!=nil);
    if (_canShowLeft && _leftVC!=nil) {
        [self addChildViewController:_leftVC];
        _leftVC.view.frame=_leftVC.view.bounds;
        [leftView addSubview:_leftVC.view];
    }
    
    if (_mainVC==nil) {
        _mainVC=[[NSClassFromString(@"STMainViewController")alloc]init];
    }
    [mainView addSubview:_mainVC.view];
}

-(void)resetSubviewsTransform
{
    
}

#pragma mark-Action
-(void)tapAction:(UITapGestureRecognizer *)tapGest
{
    NSLog(@"tapAction");
}
-(void)panAction:(UIPanGestureRecognizer *)panGest
{
    NSLog(@"panAction");
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
