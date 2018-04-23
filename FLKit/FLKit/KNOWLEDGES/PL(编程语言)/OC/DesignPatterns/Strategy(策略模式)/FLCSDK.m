//
//  FLCSDK.m
//  FLKit
//
//  Created by afanda on 3/14/18.
//  Copyright © 2018 easemob. All rights reserved.
//

#import "FLCSDK.h"

@implementation FLCSDK
{
    NSDate *_date;
}

- (instancetype)initWithDate:(NSDate *)date
{
    self = [super init];
    if (self) {
        _date = date;
    }
    return self;
}

- (NSString *)getSDKVersion {
    //...code use date
    return @"3.0";
}

@end
