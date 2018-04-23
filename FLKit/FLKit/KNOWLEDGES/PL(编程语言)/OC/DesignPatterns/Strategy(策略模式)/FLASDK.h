//
//  FLASDK.h
//  FLKit
//
//  Created by afanda on 3/14/18.
//  Copyright © 2018 easemob. All rights reserved.
//

#import "FLSDKDelegate.h"

@interface FLASDK : NSObject <FLSDKDelegate>


- (instancetype)initWithAppkey:(NSString *)appkey;


@end
