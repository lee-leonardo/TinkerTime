//
//  ViewController.m
//  Carthage-ReactiveCocoa
//
//  Created by Leonardo Lee on 4/10/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "ReactViewController.h"

@interface ReactViewController ()

@property (nonatomic, strong) UITextField *username;
@property (nonatomic, strong) UITextField *emailField;
@property (nonatomic, strong) UITextField *passwordField;

@end

@implementation ReactViewController

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [RACObserve(self, self.username.text) subscribeNext:^(NSString *newName) {
        NSLog(@"%@", newName);
    }];
    
}

@end
