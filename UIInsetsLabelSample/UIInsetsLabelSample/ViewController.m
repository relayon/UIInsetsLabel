//
//  ViewController.m
//  UIInsetsLabelSample
//
//  Created by SMC-MAC on 15/12/21.
//  Copyright © 2015年 SMC-MAC. All rights reserved.
//

#import "ViewController.h"
#import "UIInsetsLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIInsetsLabel *label = [UIInsetsLabel new];
    label.text = @"代码创建Label";
    label.textEdgeInsets = UIEdgeInsetsMake(5, 10, 5, 10);
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:14.0f];
    label.backgroundColor = [UIColor lightGrayColor];
    [label sizeToFit];
    CGRect fm = label.frame;
    label.frame = CGRectMake(20, 100, fm.size.width, fm.size.height);
    label.layer.masksToBounds = YES;
    label.layer.cornerRadius  = fm.size.height / 2.0f;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
