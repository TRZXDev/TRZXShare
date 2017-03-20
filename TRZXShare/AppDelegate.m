//
//  AppDelegate.m
//  XTSNS
//
//  Created by 何振东 on 15/9/8.
//  Copyright © 2015年 LZA. All rights reserved.
//

#import "AppDelegate.h"
#import "OpenShareHeader.h"

//#warning 请替换为自己的相关帐号进行测试
///微信第三方登录
static NSString *const kWeiXinAppId         = @"";
static NSString *const kWeiXinAppSecret     = @"";
static NSString *const kQQAppID     = @"";



@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{


    [OpenShare connectWeixinWithAppId:kWeiXinAppId secret:kWeiXinAppSecret];
    [OpenShare connectQQWithAppId:kQQAppID];


    return YES;
}


- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    if ([OpenShare handleOpenURL:url]) {
        return YES;
    }

    return YES;

}

@end
