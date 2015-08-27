
//
//  FirstViewController.m
//  One
//
//  Created by lanou3g on 15/8/24.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//


#define kUrl @"http://onewp.sinaapp.com/api/2015-08-24.json"

#import "FirstViewController.h"
#import "HomeView.h"
#import "HomeModel.h"
#import "NetWorkManger.h"
#import "UIImageView+WebCache.h"


@interface FirstViewController ()



@property(nonatomic,retain)HomeModel *model;

@property(nonatomic,retain)HomeView *homeView;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"首页";

    
    self.homeView = [[HomeView alloc]initWithFrame:self.view.bounds];
    
    self.view = _homeView;
    
    [self loadData];
    


}


-(void)loadData
{
    NetWorkManger *manger = [[NetWorkManger alloc]init];
    
    NSString *url = [kUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    [manger requestWithUrlString:url success:^(id object) {
        
        NSDictionary *dic = [object objectForKey:@"homepage"];
            
           // NSLog(@"+++++%@",dic);
            
            self.model = [[HomeModel alloc]init];
            [_model setValuesForKeysWithDictionary:dic];
            
           // NSLog(@"-------%@",self.model);
        
        [_homeView.imgView sd_setImageWithURL:[NSURL URLWithString:self.model.strOriginalImgUrl] placeholderImage:nil];
        
        _homeView.imgNameLabel.text = self.model.strAuthor;
        
        
          _homeView.textViewLabel.numberOfLines = 0;
        _homeView.textViewLabel.text = self.model.strContent;
        
        CGSize size = [_homeView.textViewLabel sizeThatFits:CGSizeMake(_homeView.textViewLabel.frame.size.width, MAXFLOAT)];
        
        _homeView.textViewLabel.frame= CGRectMake(_homeView.textViewLabel.frame.origin.x,_homeView.textViewLabel.frame.origin.y , size.width, size.height + 20);
        

        _homeView.HptitleLabel.text = self.model.strHpTitle;
        
        _homeView.timeLabel.text = self.model.strMarketTime;
        
        
        } failed:^(NSError *error) {
        
      //  NSLog(@"************");
        
    }];
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
