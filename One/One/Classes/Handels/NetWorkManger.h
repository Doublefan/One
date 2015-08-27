//
//  NetWorkManger.h
//  One
//
//  Created by lanou3g on 15/8/24.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void(^Success)(id object);
typedef void(^Failed)(NSError *error);


@interface NetWorkManger : NSObject




-(void)requestWithUrlString:(NSString *)urlStr success:(void(^)(id object))success failed:(void(^)(NSError *error))fail;







@end
