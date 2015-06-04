//
//  ConvertFromXib.m
//  TongQu
//
//  Created by Owen on 15/6/3.
//  Copyright (c) 2015年 YouXing. All rights reserved.
//

#import "ConvertFromXib.h"

@implementation ConvertFromXib

+(id)convertObjectWithNibNamed:(NSString *) nibName withClassNamed:(NSString *) className{
    id neededObject;
    NSArray * bundleArray = [[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil];
    for(id object in bundleArray) {
        if([object isKindOfClass:NSClassFromString(className)]) {
            neededObject = object;
        }
    }
    return neededObject;
}


@end
