//
//  QuestionScrollView.m
//  One
//
//  Created by lanou3g on 15/8/25.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "QuestionScrollView.h"

@implementation QuestionScrollView

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
    self.strQuestionMarketTimeLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, self.frame.size.width - 20, 25)];
    self.strQuestionMarketTimeLabel.backgroundColor = [UIColor redColor];
    
    [self addSubview:self.strQuestionMarketTimeLabel];
    
    
    self.strQuestionTitleTExtView = [[UITextView alloc]initWithFrame:CGRectMake(10, CGRectGetMaxY(self.strQuestionMarketTimeLabel.frame) + 5, self.frame.size.width - 20, 1000) textContainer:nil];
    self.strQuestionTitleTExtView.scrollEnabled = YES;
    
    self.strQuestionTitleTExtView.backgroundColor = [UIColor redColor];
    [self addSubview:self.strQuestionTitleTExtView];
    
    
    
    
}





@end
