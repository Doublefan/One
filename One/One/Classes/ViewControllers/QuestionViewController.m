//
//  QuestionViewController.m
//  One
//
//  Created by lanou3g on 15/8/24.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "QuestionViewController.h"
#import "QuestionScrollView.h"

@interface QuestionViewController ()

@end

@implementation QuestionViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    QuestionScrollView *questionView = [[QuestionScrollView alloc]initWithFrame:self.view.frame];
    
    self.view = questionView;
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
