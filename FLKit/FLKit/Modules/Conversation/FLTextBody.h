//
//  FLTextBody.h
//  FLKit
//
//  Created by afanda on 9/7/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "FLBaseBody.h"

@interface FLTextBody : FLBaseBody

@property(nonatomic,strong) NSString *text;

- (instancetype)initWithText:(NSString *)text;

@end
