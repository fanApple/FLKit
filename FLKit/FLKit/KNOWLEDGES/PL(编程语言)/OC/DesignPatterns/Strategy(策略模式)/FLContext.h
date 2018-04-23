//
//  FLContext.h
//  FLKit
//
//  Created by afanda on 3/14/18.
//  Copyright © 2018 easemob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FLSDKDelegate.h"

@interface FLContext : NSObject

- (instancetype)initWithTarget:(id<FLSDKDelegate>)delegate;

//
- (NSString *)getResult;

@end
