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
    
    UIView *purpleSquare = [[UIView alloc] initWithFrame:CGRectMake(50, 200, 100, 100)];
    purpleSquare.backgroundColor = [UIColor purpleColor];
    
    UIView *greenSquare = [[UIView alloc] initWithFrame:CGRectMake(50, 350, 50, 50)];
    greenSquare.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:redBall];
    [self.view addSubview:purpleSquare];
    [self.view addSubview:greenSquare];

    //Cool thing is that it works with the CoreAnimation layer rather that the UIKit layer.
    
    /*
     Animations take place in three layers:
     1. Model layer — static properties when not being animated such as the size and the CGPoint.
     2. Presentation layer — Animation was added to this layer and manipulated it's presentation.
     3. Render tree — Apple Private. Does the actual rendering.
     */
    
//    [self presentationLayer:redBall]; //This example only affects the presentation layer.
//    [self affectsModelLayer:redBall]; //Since this changes the model layer at the end it seems like it transitioned to the new size.
    [self rotateSquare:purpleSquare];
    [self justXTranslate:redBall];
//    [self multipleAnimations: greenSquare];
    [self rotatePop:greenSquare];
    
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

-(void)rotateSquare:(UIView *)square
{
    JNWSpringAnimation *rotate = [JNWSpringAnimation animationWithKeyPath:@"transform.rotation"];
    rotate.damping = 10;
    rotate.stiffness = 100;
    rotate.mass = 3;
    rotate.fromValue = @(0);
    rotate.toValue = @(M_2_PI);
    
    [square.layer addAnimation:rotate forKey:rotate.keyPath];
    square.transform = CGAffineTransformMakeRotation(M_2_PI);
}

-(void)justXTranslate:(UIView *)view
{
    JNWSpringAnimation *translate = [JNWSpringAnimation animationWithKeyPath:@"transform.translation.x"];
    translate.damping = 7;
    translate.stiffness = 7;
    translate.mass = 1;
    
    translate.fromValue = @(0);
    translate.toValue = @(200);
    
    [view.layer addAnimation:translate forKey:translate.keyPath];
    view.transform = CGAffineTransformMakeTranslation(200, 0);
}

-(void)multipleAnimations:(UIView *)view
{
    JNWSpringAnimation *scale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
    JNWSpringAnimation *rotate = [JNWSpringAnimation animationWithKeyPath:@"transform.rotation"];
    JNWSpringAnimation *translate = [JNWSpringAnimation animationWithKeyPath:@"transform.translation.x"];
    
    scale.damping = 7;
    scale.stiffness = 40;
    scale.mass = 2;
    scale.fromValue = @(1.0);
    scale.toValue = @(2.0);
    
    rotate.damping = 3;
    rotate.stiffness = 75;
    rotate.mass = 5;
    rotate.fromValue = @(0);
    rotate.toValue = @(M_PI);
    
    translate.damping = 9;
    translate.stiffness = 20;
    translate.mass = 3;
    translate.fromValue = @(0);
    translate.toValue = @(130);
    
    [view.layer addAnimation:scale forKey:scale.keyPath];
    [view.layer addAnimation:rotate forKey:rotate.keyPath];
    [view.layer addAnimation:translate forKey:translate.keyPath];
    
    //CGAffineTransformMake... assumes the values the Identity Transform, the normal one from the UIView, whereas CGAffineTransform does not.
    //If you need to take into account multiple other animations, Make shouldn't be used.
    view.transform = CGAffineTransformScale(view.transform, 2.0, 2.0);
    view.transform = CGAffineTransformRotate(view.transform, M_PI);
    view.transform = CGAffineTransformTranslate(view.transform, 130, 0);
    
}

-(void)rotatePop:(UIView *)view
{
    JNWSpringAnimation *scale = [JNWSpringAnimation
                                 animationWithKeyPath:@"transform.scale"];
    scale.damping = 9;
    scale.stiffness = 9;
    scale.mass = 1;
    scale.fromValue = @(1);
    scale.toValue = @(2.0);
    
    [view.layer addAnimation:scale forKey:scale.keyPath];
    view.transform = CGAffineTransformScale(view.transform, 2.0, 2.0);
    
    JNWSpringAnimation *rotate = [JNWSpringAnimation
                                  animationWithKeyPath:@"transform.rotation"];
    rotate.damping = 5;
    rotate.stiffness = 9;
    rotate.mass = 4;
    rotate.fromValue = @(0);
    rotate.toValue = @(M_PI);
    
    [view.layer addAnimation:rotate forKey:rotate.keyPath];
    view.transform = CGAffineTransformRotate(view.transform, M_PI);
}

@end
