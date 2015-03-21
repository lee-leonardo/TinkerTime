//
//  JNWAlertExample.m
//  MotionDesignBook
//
//  Created by Leonardo Lee on 3/9/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import <JNWSpringAnimation/JNWSpringAnimation.h>
#import "JNWAlertExample.h"


@interface JNWAlertExample ()

@end

@implementation JNWAlertExample

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    CGFloat alertDimension = 250;
    
    
    CGRect alertViewFrame = CGRectMake(
                                       (self.view.frame.size.width / 2) - (alertDimension / 2),
                                       (self.view.frame.size.height / 2) - (alertDimension / 2),
                                       alertDimension,
                                       alertDimension
                                       );
    UIView *alert = [[UIView alloc] initWithFrame:alertViewFrame];
    alert.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"alert_box"]];
    alert.alpha = 1.0f;
    alert.transform = CGAffineTransformMakeScale(1.2, 1.2);
    alert.layer.cornerRadius = 10;
    
    //These are things to help chrome up UIViews.
    //These would be a bit lower level than UIKit, so... Foundation?
    alert.layer.shadowColor = [UIColor blackColor].CGColor;
    alert.layer.shadowOffset = CGSizeMake(0, 5);
    alert.layer.shadowOpacity = 0.3f;
    alert.layer.shadowRadius = 10.0f;
    [self.view addSubview:alert];
    
//    [self scaleIn:alert];
//    [self scaleOut:alert];
//    [self popIn:alert]; //Not working right... will visit.
//    [self onScreen:alert andBackground:self.view];
//    [self offScreen:alert andBackground:self.view];
//    [self popUp:alert];

}

-(void)scaleIn:(UIView *)view
{
    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.view.alpha = 0.6f;
        view.alpha = 1.0f;
    } completion:nil];
    
    JNWSpringAnimation *scale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
    scale.damping = 14;
    scale.stiffness = 14;
    scale.mass = 1;
    scale.fromValue = @(1.2);
    scale.toValue = @(1.0);
    
    [view.layer addAnimation:scale forKey:scale.keyPath];
    view.transform = CGAffineTransformMakeScale(1.0, 1.0);
    
}

-(void)scaleOut:(UIView *)view
{
    [UIView animateWithDuration:2.15 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.view.alpha = 0.0f;
        view.alpha = 0.0f;
    } completion:NULL];
    
    JNWSpringAnimation *scaleOut = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
    scaleOut.damping = 11;
    scaleOut.stiffness = 11;
    scaleOut.mass = 1;
    scaleOut.fromValue = @(1.0);
    scaleOut.toValue = @(0.7);
    
    [view.layer addAnimation:scaleOut forKey:scaleOut.keyPath];
    view.transform = CGAffineTransformMakeScale(0.7, 0.7);
}

-(void)popIn:(UIView *)view
{
    //This is the 2 line form of
//    view.transform = CGAffineTransformMakeScale(0.25, 0.25);
//    view.transform = CGAffineTransformTranslate(view.transform, 0, 600);
    //Concat
    CGAffineTransform viewTransform = CGAffineTransformConcat(CGAffineTransformMakeScale(0.25, 0.25), CGAffineTransformMakeTranslation(0, self.view.frame.size.height / 2));
    view.transform = viewTransform;
    
}

-(void)onScreen:(UIView *)view andBackground:(UIView *)background
{
    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        background.alpha = 0.2f;
        view.alpha =  1.0f;
    } completion:NULL];
    
    JNWSpringAnimation * scale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
    scale.damping = 12;
    scale.stiffness = 12;
    scale.mass = 1;
    scale.fromValue = @(0.25);
    scale.toValue = @(1.0);
    
    [view.layer addAnimation:scale forKey:scale.keyPath];
    view.transform = CGAffineTransformMakeScale(1.0, 1.0);
    
    JNWSpringAnimation *translate = [JNWSpringAnimation animationWithKeyPath:@"transform.translation.y"];
    translate.damping = 15;
    translate.stiffness = 15;
    translate.mass = 1;
    translate.fromValue = @(600);
    translate.toValue = @(0);
    
    [background.layer addAnimation:translate forKey:translate.keyPath];
    background.transform = CGAffineTransformTranslate(background.transform, 0, 0);
    
}

-(void)offScreen:(UIView *)view andBackground:(UIView *)background
{
    [UIView animateWithDuration:0.2 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        view.alpha = 0.0f;
        background.alpha = 0.0f;
    } completion:NULL];
    
    JNWSpringAnimation *scale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
    scale.damping = 17;
    scale.stiffness = 17;
    scale.mass = 1;
    scale.fromValue = @(1.0);
    scale.toValue = @(5.0);
    
    [view.layer addAnimation:scale forKey:scale.keyPath];
    view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.5, 0.5);
    
    JNWSpringAnimation *translate = [JNWSpringAnimation animationWithKeyPath:@"transform.tranlation.y"];
    translate.damping = 4;
    translate.stiffness = 4;
    translate.mass = 1;
    translate.fromValue = @(0);
    translate.toValue = @(600);
    
    [view.layer addAnimation:translate forKey:translate.keyPath];
    view.transform = CGAffineTransformTranslate(view.transform, 0, 600);
    
}

-(void)popUp:(UIView *)view
{
    JNWSpringAnimation *scale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
    scale.damping = 32;
    scale.stiffness = 450;
    scale.mass = 2.4;
    scale.fromValue = @(0);
    scale.toValue = @(1.0);
    
    [view.layer addAnimation:scale forKey:scale.keyPath];
    view.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.0, 1.0);
}

@end
