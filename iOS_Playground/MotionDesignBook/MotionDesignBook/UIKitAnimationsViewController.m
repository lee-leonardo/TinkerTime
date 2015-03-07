//
//  ViewController.m
//  MotionDesignBook
//
//  Created by Leonardo Lee on 3/7/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "UIKitAnimationsViewController.h"

@interface UIKitAnimationsViewController ()

@end

@implementation UIKitAnimationsViewController

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
    
    //One transform
    [UIView animateWithDuration:0.5
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         redBall.transform = CGAffineTransformMakeScale(2.0, 2.0);

                     } completion:nil];
    
    //Concatenate two transforms together.
    [UIView animateWithDuration:0.5 delay:0.5 options:UIViewAnimationOptionCurveEaseInOut animations:^{
         redBall.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(0.5, 0.5), CGAffineTransformMakeTranslation(75, 0));
    } completion:nil];
    
    //Spring transform
    [UIView animateWithDuration:3 delay:1.5 usingSpringWithDamping:0.3 initialSpringVelocity:0 options:0 animations:^{
        redBall.transform = CGAffineTransformMakeTranslation(0, 0);
    } completion:nil];
}

@end
