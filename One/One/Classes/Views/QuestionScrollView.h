//
//  QuestionScrollView.h
//  One
//
//  Created by lanou3g on 15/8/25.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionScrollView : UIScrollView


@property(nonatomic,retain)UILabel *strQuestionMarketTimeLabel;


@property(nonatomic,retain)UITextView *strQuestionTitleTExtView;

@property(nonatomic,retain)UITextView  *strQuestionContentTextView;

@property(nonatomic,retain)UILabel *strAnswerTitleLabel;

@property(nonatomic,retain)UITextView *strAnswerContentTextView;



@end
