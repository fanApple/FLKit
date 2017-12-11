//
//  FLTextBody.m
//  FLKit
//
//  Created by afanda on 9/7/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "FLTextBody.h"

@implementation FLTextBody


- (instancetype)initWithText:(NSString *)text {
    self = [super init];
    if (self) {
        _text = text;
    }
    return self;
}

- (HDBodyType)type {
    return HDBodyTypeText;
}
@end
