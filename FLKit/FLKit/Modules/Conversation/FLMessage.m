//
//  FLMessage.m
//  FLKit
//
//  Created by afanda on 9/7/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "FLMessage.h"

@implementation FLMessage

- (instancetype)initWithBody:(FLBaseBody *)body {
    self = [super init];
    if (self) {
        _body = body;
    }
    return self;
}


@end
