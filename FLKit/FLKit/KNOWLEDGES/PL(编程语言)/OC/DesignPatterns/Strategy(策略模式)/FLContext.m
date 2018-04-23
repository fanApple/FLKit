//
//  FLContext.m
//  FLKit
//
//  Created by afanda on 3/14/18.
//  Copyright © 2018 easemob. All rights reserved.
//

#import "FLContext.h"

@interface FLContext ()
//保存各个策略的指针
@property (nonatomic,strong) id <FLSDKDelegate> delegate;
@end

@implementation FLContext

- (instancetype)initWithTarget:(id<FLSDKDelegate>)delegate {
    if ([super init]) {
        self.delegate = delegate;
    }
    return self;
}

- (NSString *)getResult{
    //调用策略的实现
    return [self.delegate getSDKVersion];
}



@end
