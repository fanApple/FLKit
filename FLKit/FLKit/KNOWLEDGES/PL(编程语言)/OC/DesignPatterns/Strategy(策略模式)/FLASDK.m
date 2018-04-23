//
//  FLASDK.m
//  FLKit
//
//  Created by afanda on 3/14/18.
//  Copyright © 2018 easemob. All rights reserved.
//

#import "FLASDK.h"

@implementation FLASDK
{
    NSString *_appkey;
}

- (instancetype)initWithAppkey:(NSString *)appkey
{
    self = [super init];
    if (self) {
        _appkey = appkey;
    }
    return self;
}

- (NSString *)getSDKVersion {
    //......code use appkey
    return @"1.0";
}
@end
