//
//  ViewController.m
//  TestFramework
//
//  Created by Migu on 2017/2/16.
//  Copyright © 2017年 Victor Chee. All rights reserved.
//

#import "ViewController.h"
@import FrameworkDemo;

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [VCMessage log:@"OK"];
    self.imageView.image = [UIImage imageNamed:@"Bundle.bundle/iPhone_size.png"];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSBundle *bundle = [NSBundle bundleWithPath:[[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Bundle.bundle"]];
    UIViewController *controller = [VCViewController loadFromStoryboard];//[UIStoryboard storyboardWithName:@"VCMain" bundle:bundle].instantiateInitialViewController;
    [self presentViewController:controller animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
