//
//  FLFriendsViewController.m
//  FLKit
//
//  Created by afanda on 12/20/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "FLFriendsViewController.h"
#import <objc/runtime.h>
#import <objc/message.h>
#import "FLMessage.h"

@interface FLFriendsViewController ()

@end

@implementation FLFriendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    FLImageBody *img = [[FLImageBody alloc] init];
    
    FLTextBody *text = [[FLTextBody alloc] initWithText:@"caocao"];
    
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(newSession) name:@"newSession" object:nil];
    
    MJWeakSelf
    
#warning "若使用self 会产生 retain cycle"
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:3 repeats:YES block:^(NSTimer * _Nonnull timer) {
//        [[NSNotificationCenter defaultCenter] postNotificationName:@"newSession" object:nil];
        [self newSession];
    }];
//    NSLog(@"timer%d: %p",arc4random()%20,timer);
//    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(newSession) userInfo:nil repeats:YES];
    [timer fire];
}


- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSMethodSignature *sig = [[FLMessage class] instanceMethodSignatureForSelector:aSelector];
    NSLog(@"methodSignature:%@",sig);
    return sig;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    SEL sel = anInvocation.selector;
    FLMessage *msg = [FLMessage new];
    if ([msg respondsToSelector:sel]) {
        [anInvocation invokeWithTarget:msg];
    } else {
        [self doesNotRecognizeSelector:sel];
    }
}

- (void)newSession {
    NSLog(@"newSession");
}

- (void)test1 {
    NSLog(@"test1..test1..");
}

- (void)dealloc {
    NSLog(@"%s",__func__);
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
