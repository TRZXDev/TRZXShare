//
//  ViewController.m
//  TRZXShare
//
//  Created by N年後 on 2017/3/14.
//  Copyright © 2017年 TRZX. All rights reserved.
//

#import "ViewController.h"
#import "TRZXShareHeader.h"
@interface ViewController ()
- (IBAction)weixinAction:(id)sender;
- (IBAction)shareAction:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)weixinAction:(id)sender {



     // 微信登录
    [OpenShare WeixinAuth:^(NSDictionary *data, NSError *error) {

        if (data) {
            NSLog(@"登录成功:%@", data);
        }else{
            NSLog(@"登录失败:%@", error);

        }

    }];


}

- (IBAction)shareAction:(id)sender {


    NSString *title= @"投融在线-带您走进资本市场";
    NSString *desc= @"股权融资全过程服务第三方平台，提高融资能力，获取融资渠道！";
    NSString * link= @"https://www.baidu.com/";


    TRZXOSMessage *msg=[[TRZXOSMessage alloc]init];
    msg.title= title;
    msg.desc= desc;
    msg.link= link;
    msg.image= [UIImage imageNamed:@"icon"];//缩略图


    [[TRZXShareManager sharedManager]showTRZXShareViewMessage:msg];
    



}
@end
