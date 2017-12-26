//
//  NSObject+FLAdd.h
//  FLKit
//
//  Created by afanda on 12/21/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^oblock)(id observer,NSString *observerKey,id oldValue,id newValue);

@interface NSObject (FLAdd)

- (void)fl_addObserver:(NSObject *)observer forKey:(NSString *)key withBlock:(oblock)block;

- (void)fl_removeObserver:(id)observer forKey:(NSString *)key;

@end
