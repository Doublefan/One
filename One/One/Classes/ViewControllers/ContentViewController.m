//
//  ContentViewController.m
//  One
//
//  Created by lanou3g on 15/8/24.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//


#define kUrl @"http://onewp.sinaapp.com/api/2015-08-24.json"


#import "ContentViewController.h"
#import "ContenScrollView.h"
#import "ContentModel.h"
#import "NetWorkManger.h"

@interface ContentViewController ()

@property(nonatomic,retain)ContentModel *model;
@property(nonatomic,retain)ContenScrollView *conScrollView;


@end

@implementation ContentViewController


- (void)viewDidLoad
{
   
    [super viewDidLoad];
    self.conScrollView = [[ContenScrollView alloc]initWithFrame:self.view.frame];
    
    self.view = _conScrollView;
    
    [self loadData];
    
    
}


-(void)loadData
{
    NetWorkManger *manger = [[NetWorkManger alloc]init];
    
    NSString *url = [kUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    [manger requestWithUrlString:url success:^(id object) {
        
        NSDictionary *dic = [object objectForKey:@"content"];
        
        //NSLog(@"+++++%@",dic);
        
        self.model = [[ContentModel alloc]init];
        [_model setValuesForKeysWithDictionary:dic];
        
        NSLog(@"-------%@",self.model);
        
        
        self.conScrollView.strContMarketTimeLabel.text = self.model.strContMarketTime;
        
        self.conScrollView.strContTitleLabel.text = self.model.strContTitle;
        
        self.conScrollView.strContAuthorLabel.text = self.model.strContAuthor;
        

        
       self.conScrollView.strContentLabel.text = self.model.strContent;
        
        
        self.conScrollView.strContentLabel.text = [self.conScrollView.strContentLabel.text stringByReplacingOccurrencesOfString:@"<br>" withString:@"\n\n"];
    
        
        

        CGSize size = CGSizeMake(_conScrollView.strContentLabel.frame.size.width, MAXFLOAT);
        

        
        CGRect rect = [self.conScrollView.strContentLabel.text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil];
        
        CGFloat hei = rect.size.height;
        CGRect frame = self.conScrollView.strContentLabel.frame;
        
        frame.size.height = hei;
        
        self.conScrollView.strContentLabel.frame = frame;
        
 




        

//        _conScrollView.contentSize = CGSizeMake(0, hei + 120);
//        
//        
//        
//        self.conScrollView.sAuthLabel.text = [NSString stringWithFormat:@"%@ %@",self.model.sAuth,self.model.sWbN];
//        
        
        
          
        
    } failed:^(NSError *error) {
        
        NSLog(@"************");
        
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
