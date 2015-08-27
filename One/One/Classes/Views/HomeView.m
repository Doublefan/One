//
//  HomeView.m
//  One
//
//  Created by lanou3g on 15/8/24.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self addAllViews];
    }
    return self;
}



-(void)addAllViews
{
    self.backgroundColor = [UIColor whiteColor];

 
    self.imgView = [[UIImageView alloc]initWithFrame:CGRectMake(15,75, self.frame.size.width - 30, self.frame.size.height / 2 - 75)];
    _imgView.backgroundColor = [UIColor redColor];
    [self addSubview:_imgView];
    
    self.imgNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.imgView.frame) - 100, CGRectGetMaxY(self.imgView.frame) + 10, 100, 80)];
    
    self.imgNameLabel.backgroundColor = [UIColor yellowColor];
    self.imgNameLabel.numberOfLines = 0;
  
    
    [self addSubview:self.imgNameLabel];
    
    
    
    self.textViewLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetWidth(self.imgView.frame) / 3, CGRectGetMaxY(self.imgNameLabel.frame) + 20, (CGRectGetWidth(self.imgView.frame) / 3) * 2, 180)];
    
    self.textViewLabel.backgroundColor = [UIColor blueColor];
    [self addSubview:self.textViewLabel];
    
    
    self.HptitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMinX(self.imgView.frame), CGRectGetMinY(self.textViewLabel.frame), CGRectGetWidth(self.imgView.frame) / 3 -25, 45)];
    
    self.HptitleLabel.backgroundColor = [UIColor yellowColor];
    [self addSubview:self.HptitleLabel];
    
    self.timeLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMinX(self.HptitleLabel.frame), CGRectGetMaxY(self.HptitleLabel.frame) + 10, CGRectGetWidth(self.HptitleLabel.frame), 45)];
    
    self.timeLabel.backgroundColor = [UIColor yellowColor];
    [self addSubview:self.timeLabel];
    
    
    
    
    
    
    
}






@end
