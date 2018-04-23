//
//  FLBlockViewController.m
//  FLKit
//
//  Created by afanda on 12/28/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "FLBlockViewController.h"

typedef void(^Block)(NSString *str,NSInteger it);

@interface FLBlockViewController ()

@property(nonatomic,strong) Block block;

@end

@implementation FLBlockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.block = ^(NSString *str, NSInteger it) {
        NSLog(@"str%@ ",str);
        [self test];
    };
    
    
    _block(@"adc",3333);
    
}

- (void)test {
    NSLog(@"test");
}

- (void)dealloc {
    NSLog(@"dealloc____");
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
