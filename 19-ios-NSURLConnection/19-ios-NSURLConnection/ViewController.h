//
//  ViewController.h
//  19-ios-NSURLConnection
//
//  Created by Rick on 2017/7/16.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
//链接服务器对象的数据代理协议，链接服务器的普通代理协议
NSURLConnectionDelegate,
NSURLConnectionDataDelegate
>
{
    //新定义一个URL链接对象,通过网络地址，可以进行链接国内工作
    //按照http协议来进行数据传输工作
    NSURLConnection *_connect ;
    
    //创建一个课变二进制数据对象，接受服务器传回的数据
    NSMutableData *_data ;
}


@end

