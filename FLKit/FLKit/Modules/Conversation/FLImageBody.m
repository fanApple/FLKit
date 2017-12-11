//
//  FLImageBody.m
//  FLKit
//
//  Created by afanda on 9/7/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "FLImageBody.h"

@implementation FLImageBody

- (instancetype)initWithData:(NSData *)data {
    self = [super init];
    return self;
}

- (HDBodyType)type {
    return HDBodyTypeImage;
}

@end
