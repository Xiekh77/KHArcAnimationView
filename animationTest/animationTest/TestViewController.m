//
//  TestViewController.m
//  animationTest
//
//  Created by koogfook on 16/8/30.
//  Copyright © 2016年 xkh. All rights reserved.
//

#import "TestViewController.h"
#import "AnimationTestView.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    AnimationTestView *animationTestView = [[AnimationTestView alloc] init];
    animationTestView.circularNumber = 4;
    animationTestView.circularWidth = 8;
    animationTestView.frame = CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width);
    [self.view addSubview:animationTestView];
    
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
