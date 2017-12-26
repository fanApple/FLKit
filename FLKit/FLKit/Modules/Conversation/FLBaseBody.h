//
//  FLBaseBody.h
//  FLKit
//
//  Created by afanda on 9/7/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSUInteger, HDBodyType) {
    HDBodyTypeText = 100,
    HDBodyTypeImage,
    HDBodyTypeVoice,
};

@interface FLBaseBody : NSObject

@property (nonatomic,copy) NSString  *name;

@property(nonatomic,assign) HDBodyType type;

- (void)testtest;
@end
