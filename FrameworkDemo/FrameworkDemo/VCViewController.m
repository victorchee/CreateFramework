//
//  VCViewController.m
//  FrameworkDemo
//
//  Created by Migu on 2017/2/16.
//  Copyright © 2017年 Victor Chee. All rights reserved.
//

#import "VCViewController.h"

@interface VCViewController ()

@end

@implementation VCViewController

+ (instancetype)loadFromStoryboard {
    NSBundle *bundle = [NSBundle bundleWithPath:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Bundle.bundle"]];
    VCViewController *controller = [UIStoryboard storyboardWithName:@"VCMain" bundle:bundle].instantiateInitialViewController;
    return controller;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
