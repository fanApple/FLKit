//
//  FLBSDK.h
//  FLKit
//
//  Created by afanda on 3/14/18.
//  Copyright © 2018 easemob. All rights reserved.
//

#import "FLSDKDelegate.h"

@interface FLBSDK : NSObject <FLSDKDelegate>

- (instancetype)initWithName:(NSString *)name;

@end
