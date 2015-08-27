//
//  NetWorkManger.m
//  One
//
//  Created by lanou3g on 15/8/24.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "NetWorkManger.h"

@interface NetWorkManger ()<NSURLConnectionDelegate,NSURLConnectionDataDelegate>


@property(nonatomic,copy)Success success;
@property(nonatomic,copy)Failed failed;
@property(nonatomic,strong)NSMutableData *data;

@end




@implementation NetWorkManger


-(void)requestWithUrlString:(NSString *)urlStr success:(void (^)(id))success failed:(void (^)(NSError *))fail
{
    NSURL *url = [NSURL URLWithString:urlStr];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    
    NSURLConnection *connection = [NSURLConnection connectionWithRequest:request delegate:self];
    
    self.success = success;
    self.failed = fail;
    
    
    [connection start];
    
    
}





//协议方法
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    self.data = [NSMutableData data];
}



-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [self.data appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSError *error;
    NSDictionary * object = [NSJSONSerialization JSONObjectWithData:self.data options:NSJSONReadingMutableContainers error:&error];
    if (error) {
        self.failed(error);
    }else{
        self.success(object);

    }
    
}


-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"请求数据失败：%@",error);
}













@end
