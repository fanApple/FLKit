//
//  NSDictionary+FLAdd.m
//  FLKit
//
//  Created by afanda on 8/25/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "NSDictionary+FLAdd.h"

@implementation NSDictionary (FLAdd)

+ (NSDictionary *)dictionaryWithString:(NSString *)string {
    if (string && 0 != string.length) {
        NSError *error = nil;
        NSData *jsonData = [string dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:&error];
        if (error) {
            NSLog(@"string:%@ 解析为json失败 !error: %@",string,error);
            return nil;
        }
        return jsonDict;
    }
    return nil;
}

@end
