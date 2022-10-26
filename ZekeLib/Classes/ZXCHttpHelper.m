//
//  ZXCHttpHelper.m
//  ZekeLib
//
//  Created by 钟逊超 on 10/26/22.
//

#import "ZXCHttpHelper.h"
#import <YSASIHTTPRequest/ASIHTTPRequest.h>

@implementation ZXCHttpHelper

- (void)getWithUrl:(NSString *)url withCompletion:(void (^)(id responseObject))completion failed:(void (^)(NSError *error))failed
{
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:[NSURL URLWithString:url]];
    __weak ASIHTTPRequest *weakrequest = request;
    [request setCompletionBlock:^{
         NSString *responseString = [weakrequest responseString];
         completion(responseString);
     }];

    [request setFailedBlock:^{
         NSError *error = [weakrequest error];
         failed(error);
     }];
    [request start];
}

@end
