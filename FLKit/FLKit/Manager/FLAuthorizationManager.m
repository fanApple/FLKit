//
//  FLAuthorizationManager.m
//  FLKit
//
//  Created by afanda on 8/28/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "FLAuthorizationManager.h"

@implementation FLAuthorizationManager


static FLAuthorizationManager *_manager=nil;
+ (instancetype)shared {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _manager = [[FLAuthorizationManager alloc] init];
    });
    return _manager;
}

- (instancetype)init {
    if (self=[super init]) {
       
    }
    return self;
}


- (AVAudioSessionRecordPermission)recordPermissionStatus {
   return [[AVAudioSession sharedInstance] recordPermission];
}

- (BOOL)requestRecordPermission {
    __block BOOL ret = NO;
    if ([[AVAudioSession sharedInstance] respondsToSelector:@selector(requestRecordPermission:)]) {
        [[AVAudioSession sharedInstance] performSelector:@selector(requestRecordPermission:) withObject:^(BOOL granted) {
            ret = granted;
        }];
    } else {
        ret = YES;
    }
    
    return ret;
}

-  (PHAuthorizationStatus)photoLibraryPermissionStatus {
    return [PHPhotoLibrary authorizationStatus];
}

- (PHAuthorizationStatus)requestPhotoLibraryPermission {
    __block PHAuthorizationStatus statu = PHAuthorizationStatusNotDetermined;
    [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        statu = status;
    }];
    return statu;
}

- (AVAuthorizationStatus)photoPermissionStatus {
    AVAuthorizationStatus AVstatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    return AVstatus;
}

- (BOOL)requestPhotoPermission {
    __block BOOL ret = NO;
    [AVCaptureDevice requestAccessForMediaType:
     AVMediaTypeVideo completionHandler:^(BOOL granted) {//相机权限
         ret = granted;
     }];
    return ret;
}
@end
