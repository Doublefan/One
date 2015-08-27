//
//  RootTabBarViewController.m
//  One
//
//  Created by lanou3g on 15/8/24.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "RootTabBarViewController.h"
#import "FirstViewController.h"
#import "ContentViewController.h"
#import "ThingViewController.h"
#import "QuestionViewController.h"
@interface RootTabBarViewController ()

//添加Controls
-(void)p_setUpControllers;

@end

@implementation RootTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   self.title = @"One_一个";

    
    [self p_setUpControllers];
}




//添加控制器

-(void)p_setUpControllers
{
    
    
    FirstViewController *firstVC = [[FirstViewController alloc]init];
    UINavigationController *firstNC = [[UINavigationController alloc]initWithRootViewController:firstVC];
    firstNC.tabBarItem.title = @"首页";
    
    
    ContentViewController *contentVC = [[ContentViewController alloc]init];
    UINavigationController *contentNC = [[UINavigationController alloc]initWithRootViewController:contentVC];
    contentNC.tabBarItem.title = @"内容";

    
    QuestionViewController *questionVC = [[QuestionViewController alloc]init];
    UINavigationController *questionNC = [[UINavigationController alloc]initWithRootViewController:questionVC];
    questionNC.tabBarItem.title = @"问题";

    
    ThingViewController *thingVC = [[ThingViewController alloc]init];
    UINavigationController *thingNC = [[UINavigationController alloc]initWithRootViewController:thingVC];
    thingNC.tabBarItem.title = @"东西";

 
    
    self.viewControllers = @[firstNC,contentNC,questionNC,thingNC];
    
    
    
    
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
