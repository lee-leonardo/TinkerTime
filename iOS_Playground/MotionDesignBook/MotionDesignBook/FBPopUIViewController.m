//
//  FBPopUIViewController.m
//  MotionDesignBook
//
//  Created by Leonardo Lee on 3/7/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "FBPopUIViewController.h"

@implementation FBPopUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    UIView *redBall = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    redBall.backgroundColor = [UIColor redColor];
    redBall.layer.cornerRadius = 50;
    
    [self.view addSubview:redBall];
    
}

@end
