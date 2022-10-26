//
//  ZXCViewController.m
//  ZekeLib
//
//  Created by zhongxunchao on 10/26/2022.
//  Copyright (c) 2022 zhongxunchao. All rights reserved.
//

#import "ZXCViewController.h"
#import <ZekeLib/ZXCHttpHelper.h>

@interface ZXCViewController ()

@end

@implementation ZXCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ZXCHttpHelper *helper = [ZXCHttpHelper new];
    [helper getWithUrl:@"http://wcf.open.cnblogs.com/blog/u/brycezhang/posts/1/5" withCompletion:^(id responseObject) {
         NSLog(@"[Completion]:%@", responseObject);
     } failed:^(NSError *error) {
         NSLog(@"[Failed]:%@", error);
     }];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
