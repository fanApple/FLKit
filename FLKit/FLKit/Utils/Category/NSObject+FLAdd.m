//
//  NSObject+FLAdd.m
//  FLKit
//
//  Created by afanda on 12/21/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "NSObject+FLAdd.h"

#define kvoPrefix @"FL_"

@implementation NSObject (FLAdd)


+ (void)load {
    NSLog(@"nsobject category load");
}

- (void)test {
    NSLog(@"object fladd ");
}

- (Class)getKVOClassWithOriginClassName:(NSString *)originClassName {
    NSString *kvoClassName = [kvoPrefix stringByAppendingString:originClassName];
    Class cls = NSClassFromString(kvoClassName);
    if (cls) {
        return cls;
    }
    Class originCls = object_getClass(self);
    Class kvoCls = objc_allocateClassPair(originCls, kvoClassName.UTF8String, 0);
    
    Method clsMethod = class_getInstanceMethod(originCls, @selector(class));
    
    const char *types = method_getTypeEncoding(clsMethod);
    
    class_addMethod(kvoCls, @selector(class), (IMP)class_getMethodImplementation([self class], @selector(classs)), types);
    
    objc_registerClassPair(kvoCls);
    
    return kvoCls;
}


- (Class)classs {
    return [self class];
}

//+ (BOOL)resolveInstanceMethod:(SEL)sel {
//    SEL aSel = NSSelectorFromString(@"test");
//    SEL bSel = NSSelectorFromString(@"removeAllObjects");
//    if (sel == aSel) {
//        class_addMethod(self, aSel,class_getMethodImplementation(self, @selector(unRecognize)) ,"v@:");
//        return YES;
//    }
//    if (sel == bSel) {
//        class_addMethod(self, bSel,class_getMethodImplementation(self, @selector(unRecognize)) ,"v@:");
//        return YES;
//    }
//    
//    
//    return NO;
//}

//- (void)unRecognize {
//    NSLog(@"调用不存在方法");
//}

#pragma mark private

- (NSString *)setterForGetter:(NSString *)key
{
    
    NSString *s = [key substringToIndex:1];
    
    // 1. 首字母转换成大写
    unichar c = [key characterAtIndex:0];
    NSString *str = [key stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[NSString stringWithFormat:@"%c", c-32]];
    
    // 2. 最前增加set, 最后增加:
    NSString *setter = [NSString stringWithFormat:@"set%@:", str];
    
    return setter;
    
}


- (NSString *)getterForSetter:(NSString *)key
{
    // setName: -> Name -> name
    
    // 1. 去掉set
    NSRange range = [key rangeOfString:@"set"];
    
    NSString *subStr1 = [key substringFromIndex:range.location + range.length];
    
    // 2. 首字母转换成大写
    unichar c = [subStr1 characterAtIndex:0];
    NSString *subStr2 = [subStr1 stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[NSString stringWithFormat:@"%c", c+32]];
    
    // 3. 去掉最后的:
    NSRange range2 = [subStr2 rangeOfString:@":"];
    NSString *getter = [subStr2 substringToIndex:range2.location];
    
    return getter;
}

@end
