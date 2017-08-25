//
//  NSString+FLAdd.m
//  FLKit
//
//  Created by afanda on 8/25/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "NSString+FLAdd.h"

@implementation NSString (FLAdd)

+ (NSString *)stringWithDictionary:(NSDictionary *)dic {
    if (dic == nil) {
        return nil;
    }
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:nil];
    NSString *json = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    return json;
}

@end
