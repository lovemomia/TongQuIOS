//
//  AppDelegate.h
//  TongQu
//
//  Created by Deng Jun on 15/6/2.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GexinSdk.h"

typedef enum {
    SdkStatusStoped,
    SdkStatusStarting,
    SdkStatusStarted
} SdkStatus;

@interface AppDelegate : UIResponder <UIApplicationDelegate, GexinSdkDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) GexinSdk *gexinPusher;

@property (retain, nonatomic) NSString *appKey;
@property (retain, nonatomic) NSString *appSecret;
@property (retain, nonatomic) NSString *appID;
@property (retain, nonatomic) NSString *clientId;
@property (assign, nonatomic) SdkStatus sdkStatus;

@end

