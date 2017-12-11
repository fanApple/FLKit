//
//  FLMessage.h
//  FLKit
//
//  Created by afanda on 9/7/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FLBaseBody.h"
#import "FLTextBody.h"
#import "FLImageBody.h"

@interface FLMessage : NSObject

@property(nonatomic,strong,readonly) FLBaseBody *body;

- (instancetype)initWithBody:(FLBaseBody *)body;

@end
