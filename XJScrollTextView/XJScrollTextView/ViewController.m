//
//  ViewController.m
//  XJScrollTextView
//
//  Created by Dear on 16/9/23.
//  Copyright © 2016年 Dear. All rights reserved.
//

#import "ViewController.h"
#import "XJScrollTextView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet XJScrollTextView *ContinuousScrollTextView;
@property (weak, nonatomic) IBOutlet XJScrollTextView *SpaceScrollTextView;
@property (weak, nonatomic) IBOutlet XJScrollTextView *RoundScrollTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self creatTextView];
    [self startScroll];
    
}

- (void)creatTextView
{
    //设置连续滚动
    self.ContinuousScrollTextView.textScrollMode = MyTextScrollContinuous;
    self.ContinuousScrollTextView.textScrollDirection = MyTextScrollMoveLeft;
    self.ContinuousScrollTextView.textColor = [UIColor orangeColor];
    self.ContinuousScrollTextView.textFont = [UIFont systemFontOfSize:17.f];
    self.ContinuousScrollTextView.text = @"我是连续滚动呀,滚呀滚";
    
    //设置间隔滚动
    self.SpaceScrollTextView.textScrollMode = MyTextScrollSpace;
    self.SpaceScrollTextView.textScrollDirection = MyTextScrollMoveLeft;
    self.SpaceScrollTextView.textColor = [UIColor greenColor];
    self.SpaceScrollTextView.textFont = [UIFont systemFontOfSize:17.f];
    self.SpaceScrollTextView.text = @"我是间隔的滚动呀,滚呀滚";
    
    //往复的滚动 不需要设置方向
    self.RoundScrollTextView.textScrollMode = MyTextScrollRound;
    self.RoundScrollTextView.textColor = [UIColor blueColor];
    self.RoundScrollTextView.textFont = [UIFont systemFontOfSize:17.f];
    self.RoundScrollTextView.text = @"我是往复滚动呀,滚呀滚";
    
}

- (void)startScroll
{
    [self.ContinuousScrollTextView startScroll];
    [self.SpaceScrollTextView startScroll];
    [self.RoundScrollTextView startScroll];
}


@end
