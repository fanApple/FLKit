//
//  FLAuthorizationManager.h
//  FLKit
//
//  Created by afanda on 8/28/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <Photos/Photos.h>

//麦克风权限
//相机权限
//相册权限
//位置权限


@interface FLAuthorizationManager : NSObject

+ (instancetype)shared;

//麦克风权限
- (AVAudioSessionRecordPermission)recordPermissionStatus;
//请求麦克风权限
- (BOOL)requestRecordPermission;
//相册权限
- (PHAuthorizationStatus)photoLibraryPermissionStatus;
//请求相册权限
- (PHAuthorizationStatus)requestPhotoLibraryPermission;
//相机权限
- (AVAuthorizationStatus)photoPermissionStatus;
//请求相机权限
- (BOOL)requestPhotoPermission;


@end
