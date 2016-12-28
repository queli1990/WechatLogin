//
//  ViewController.m
//  testWechatLogin
//
//  Created by Holy on 16/12/23.
//  Copyright © 2016年 QL. All rights reserved.
//

#import "ViewController.h"
#import "WXApi.h"
#import "AppDelegate.h"

@interface ViewController ()<WXDelegate>
{
    AppDelegate *appdelegate;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if ([WXApi isWXAppInstalled]) {
        SendAuthReq *req = [[SendAuthReq alloc] init];
        req.scope = @"snsapi_userinfo";
        req.openID = @"";
        appdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
        appdelegate.wxDelegate = self;
        
        [WXApi sendReq:req];
    }
}


#pragma make 登录回调
- (void) loginSuccessByCode:(NSString *)code{
    NSLog(@"%@",code);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
