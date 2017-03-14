//
//  AppDelegate.m
//  XTSNS
//
//  Created by 何振东 on 15/9/8.
//  Copyright © 2015年 LZA. All rights reserved.
//

#import "AppDelegate.h"
#import "TRZXShareHeader.h"
//#warning 请替换为自己的相关帐号进行测试
///微信第三方登录
static NSString *const kWeiXinAppId         = @"wx7c0617cf79cada0e";
static NSString *const kWeiXinAppSecret     = @"7d93f41caf579fb443000121f0480ebb";
static NSString *const kQQAppID     = @"1105085153";



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
