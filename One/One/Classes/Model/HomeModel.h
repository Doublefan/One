//
//  HomeModel.h
//  One
//
//  Created by lanou3g on 15/8/24.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HomeModel : NSObject
//首页



@property(nonatomic,copy)NSString *strOriginalImgUrl;//图片
@property(nonatomic,copy)NSString *strAuthor;//作品名字&作者

@property(nonatomic,copy)NSString *strContent;//文字

@property(nonatomic,copy)NSString *strHpTitle;//期数

@property(nonatomic,copy)NSString *strMarketTime;//日期


@end
