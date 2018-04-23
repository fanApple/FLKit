//
//  FLBSDK.m
//  FLKit
//
//  Created by afanda on 3/14/18.
//  Copyright © 2018 easemob. All rights reserved.
//

#import "FLBSDK.h"

@implementation FLBSDK
{
    NSString *_name;
}

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (NSString *)getSDKVersion {
    // ... code use name
    return @"2.0";
}


@end
