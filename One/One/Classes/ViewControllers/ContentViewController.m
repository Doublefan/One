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

@interface ContentViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,retain)ContentModel *model;
@property(nonatomic,retain)ContenScrollView *conScrollView;

@property(nonatomic,retain)NSArray *array;


@property(nonatomic,assign)CGFloat hei;

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
        
        dispatch_async(dispatch_get_main_queue(), ^{
               [self.conScrollView.strContent reloadData];
        });
        
     
        
        
        self.conScrollView.strContMarketTimeLabel.text = self.model.strContMarketTime;
        
        self.conScrollView.strContTitleLabel.text = self.model.strContTitle;
        
        self.conScrollView.strContAuthorLabel.text = self.model.strContAuthor;
    

        NSString *str = self.model.strContent;
        
      
       self.array = [str componentsSeparatedByString:@"<br>"];
        
        //  NSLog(@"$$$$$$$$$$$$$$$$%@",self.array);
       
        
        self.conScrollView.strContent.delegate = self;
        
        self.conScrollView.strContent.dataSource = self;
        
        
        
//       self.conScrollView.strContentLabel.text = self.model.strContent;
//        
//        
//        //self.conScrollView.strContentLabel.text = [self.conScrollView.strContentLabel.text stringByReplacingOccurrencesOfString:@"<br>" withString:@"\n\n"];
//    
//        
//        self.conScrollView.strContentLabel.text = [self.conScrollView.strContentLabel.text stringByReplacingOccurrencesOfString:@"<br>" withString:@"\n"];
//
//       
//    
//        CGSize size = CGSizeMake(_conScrollView.strContentLabel.frame.size.width, MAXFLOAT);
//        
//        CGRect rect = [self.conScrollView.strContentLabel.text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14.0]} context:nil];
//        
//        CGFloat hei = rect.size.height;
//        CGRect frame = self.conScrollView.strContentLabel.frame;
//        
//        frame.size.height = hei;
//        
//        self.conScrollView.strContentLabel.frame = frame;
//        
//        
//  
//      NSLog(@"++++++++++++%f",self.conScrollView.strContentLabel.frame.size.height);

//        _conScrollView.contentSize = CGSizeMake(0, hei + 120);
        
        
        
        self.conScrollView.sAuthLabel.text = [NSString stringWithFormat:@"%@ %@",self.model.sAuth,self.model.sWbN];
        
        
        
    } failed:^(NSError *error) {
        
        NSLog(@"************");
        
    }];
    

}




-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.array.count;
}




-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                     reuseIdentifier:@"cell"];
     
    }
    
    
    self.conScrollView.strContent.separatorStyle = NO;
    
    cell.backgroundColor = [UIColor clearColor];
    
    cell.textLabel.text = self.array[indexPath.row];
   
    cell.textLabel.numberOfLines = 0;
    
    cell.textLabel.font = [UIFont systemFontOfSize:15.0];
    
    

    //设置行间距
    NSMutableAttributedString * attributedString1 = [[NSMutableAttributedString alloc] initWithString:cell.textLabel.text];
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:8];
    [attributedString1 addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [cell.textLabel.text length])];
    [cell.textLabel setAttributedText:attributedString1];
    [cell.textLabel sizeToFit];
    
   
    
    return cell;
}



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
      NSString *str =  self.array[indexPath.row];
    
      CGRect rect = [str boundingRectWithSize:CGSizeMake(200, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15.0]} context:nil];
  //  NSLog(@"##############%@",str);
    
    if ([str isEqualToString:@" "]) {
        return 0;
    }
    return rect.size.height + 8;
    
   
    
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
