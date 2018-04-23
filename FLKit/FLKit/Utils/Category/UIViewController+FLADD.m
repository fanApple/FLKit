//
//  UIViewController+FLADD.m
//  FLKit
//
//  Created by afanda on 12/13/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "UIViewController+FLADD.h"

@implementation UIViewController (FLADD)

- (void)testQ {
    NSLog(@"UIViewController category testQ");
}

+ (instancetype)initialize {
    NSLog(@"initialize 00000");
    return self;
}


+ (void)load {
    NSLog(@"UIViewController  ,%@",self);
}

- (instancetype)init {
//    NSLog(@"333333333333,%@",self);
    return self;
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"viewDidAppear:222222%@",self);
}


@end
