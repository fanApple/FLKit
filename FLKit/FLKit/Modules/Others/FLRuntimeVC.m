//
//  FLRuntimeVC.m
//  FLKit
//
//  Created by afanda on 12/21/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "FLRuntimeVC.h"
#import "FLFriendsViewController.h"
#import <objc/runtime.h>

@interface FLRuntimeVC ()

@end

@implementation FLRuntimeVC
{
    FLFriendsViewController *_friend;
}


__weak id reference = nil;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    _friend = [[FLFriendsViewController alloc] init];
//    [_friend performSelector:@selector(test) withObject:nil afterDelay:.0];
    
    @autoreleasepool {
        NSString *str = [NSString stringWithFormat:@"aaaaaaaaaaaa"];
        reference = str;
    }
    NSLog(@"strstrstr%@",reference);
    // str是一个autorelease对象，设置一个weak的引用来观察它
//    reference = str;
//    NSLog(@"viewdidload :%@",reference);
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"will :%@",reference);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"did :%@",reference);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
