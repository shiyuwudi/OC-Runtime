//
//  ViewController.m
//  20151213-OC运行时
//
//  Created by apple2 on 15/12/13.
//  Copyright © 2015年 shiyuwudi. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableArray+LogAddObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSMutableArray array]performSelector:@selector(shiyuwudi:) withObject:@"shiyu"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
