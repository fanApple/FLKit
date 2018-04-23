//
//  FLFriendsViewController.h
//  FLKit
//
//  Created by afanda on 12/20/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol FriendsDelegate <NSObject>

- (void)testDelegate;

@end

@interface FLFriendsViewController : UIViewController

@property(nonatomic,strong) id<FriendsDelegate> delegate;

@end
