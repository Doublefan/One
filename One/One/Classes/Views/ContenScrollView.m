//
//  ContenScrollView.m
//  One
//
//  Created by lanou3g on 15/8/25.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "ContenScrollView.h"

@implementation ContenScrollView


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
       
        
        [self addAllViews];
       // self.contentSize = CGSizeMake(0, self.frame.size.height * 5);
        
    }
    return self;
}

-(void)addAllViews
{
    
    
     self.backgroundColor = [UIColor whiteColor];
    self.strContMarketTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, self.frame.size.width - 20, 20)];
    self.strContMarketTimeLabel.backgroundColor = [UIColor redColor];
    self.strContMarketTimeLabel.alpha = 0.75;
    self.strContMarketTimeLabel.font = [UIFont systemFontOfSize:12];
    
    [self addSubview:self.strContMarketTimeLabel];
    
   
    self.strContTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(self.strContMarketTimeLabel.frame) + 5, self.frame.size.width - 20, 45)];
    self.strContTitleLabel.backgroundColor = [UIColor redColor];
    [self addSubview:self.strContTitleLabel];

    
    
    
    self.strContAuthorLabel = [[UILabel alloc]initWithFrame:CGRectMake(10,  CGRectGetMaxY(self.strContTitleLabel.frame) + 5, self.frame.size.width - 20, 20)];
    self.strContAuthorLabel.backgroundColor = [UIColor redColor];
    self.strContAuthorLabel.alpha = 0.75;
    self.strContAuthorLabel.font = [UIFont systemFontOfSize:12];

    [self addSubview:self.strContAuthorLabel];

    
    
    self.strContentLabel = [[UILabel alloc]initWithFrame:CGRectMake(10,  CGRectGetMaxY(self.strContAuthorLabel.frame) + 15, self.frame.size.width - 20, 1000)];
//    self.strContentLabel.backgroundColor = [UIColor cyanColor];
    self.strContentLabel.alpha = 0.90;
    self.strContentLabel.font = [UIFont systemFontOfSize:14];
    self.strContentLabel.numberOfLines = 0;
    [self addSubview:self.strContentLabel];

    
    self.sAuthLabel = [[UILabel alloc]initWithFrame:CGRectMake(10,  CGRectGetMaxY(self.strContentLabel.frame) + 20, self.frame.size.width - 20, 100)];
    self.sAuthLabel.backgroundColor = [UIColor redColor];
    [self addSubview:self.sAuthLabel];
    

    
}








@end
