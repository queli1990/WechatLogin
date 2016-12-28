//
//  AppDelegate.h
//  testWechatLogin
//
//  Created by Holy on 16/12/23.
//  Copyright © 2016年 QL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WXApi.h"

@protocol WXDelegate <NSObject>

- (void) loginSuccessByCode:(NSString *)code;

@end

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,weak) id<WXDelegate> wxDelegate;

@end

