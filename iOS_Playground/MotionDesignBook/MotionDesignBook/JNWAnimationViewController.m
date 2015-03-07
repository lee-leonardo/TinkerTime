//
//  JNWAnimationViewController.m
//  MotionDesignBook
//
//  Created by Leonardo Lee on 3/7/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "JNWAnimationViewController.h"

@implementation JNWAnimationViewController

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

    //Cool thing is that it works with the CoreAnimation layer rather that the UIKit layer.
    
    /*
     Animations take place in three layers:
     1. Model layer — static properties such as the size and the CGPoint.
     2. Presentation layer — Animation was added to this layer and manipulated it's presentation.
     3. Render tree — Apple Private. Does the actual rendering.
     */
    
//    [self presentationLayer:redBall]; //This example only affects the presentation layer.
    [self affectsModelLayer:redBall]; //Since this changes the model layer at the end it seems like it transitioned to the new size.
    
}

-(void)presentationLayer:(UIView *)ball
{
    //Initialize spring
    JNWSpringAnimation *scale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
    scale.damping = 9;
    scale.stiffness = 100;
    scale.mass = 2;
    scale.fromValue = @(1.0);
    scale.toValue = @(2.0);
    
    [ball.layer addAnimation:scale forKey:scale.keyPath];
}

-(void)affectsModelLayer:(UIView*)ball
{
    JNWSpringAnimation *scale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
    scale.damping = 9;
    scale.stiffness = 100;
    scale.mass = 2;
    scale.fromValue = @(1.0);
    scale.toValue = @(2.0);
    
    [ball.layer addAnimation:scale forKey:scale.keyPath];
    ball.transform = CGAffineTransformMakeScale(2.0, 2.0);

}

@end
