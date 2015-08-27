//
//  ContentModel.h
//  One
//
//  Created by lanou3g on 15/8/24.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContentModel : NSObject
//内容
@property(nonatomic,copy)NSString *strContent;//内容
@property(nonatomic,copy)NSString *sAuth;//内容下面的作者简介
@property(nonatomic,copy)NSString *strContTitle;//题目
@property(nonatomic,copy)NSString *strContMarketTime;//日期
@property(nonatomic,copy)NSString *strContAuthor;//作者
@property(nonatomic,copy)NSString *sWbN;//内容下面的作者"@梅骁"
@end
