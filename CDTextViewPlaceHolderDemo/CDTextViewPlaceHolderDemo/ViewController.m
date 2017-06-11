//
//  ViewController.m
//  CDTextViewPlaceHolderDemo
//
//  Created by chdo on 2017/6/6.
//  Copyright © 2017年 chdo. All rights reserved.
//

#import "ViewController.h"
#import "UITextView+CDPlaceHolder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    UITextView * te = [[UITextView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    
    [te setUpPlaceHolder:@"aaaa" font:nil textColor:nil];
    
    [self.view addSubview:te];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
