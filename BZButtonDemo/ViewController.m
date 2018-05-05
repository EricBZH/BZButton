//
//  ViewController.m
//  BZButtonDemo
//
//  Created by Eric on 2018/5/5.
//  Copyright © 2018年 Eric. All rights reserved.
//

#import "ViewController.h"
#import "BZButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)btnClicked:(BZButton *)sender {
    sender.selected = !sender.selected;
}

@end
