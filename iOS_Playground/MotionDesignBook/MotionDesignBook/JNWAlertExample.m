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
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.alpha = 0.3f;
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    CGFloat alertDimension = 250;
    
    
    CGRect alertViewFrame = CGRectMake(self.view.frame.size.width / 3, self.view.frame.size.height / 3, alertDimension, alertDimension);
    UIView *alert = [[UIView alloc] initWithFrame:alertViewFrame];
    alert.backgroundColor = [UIColor whiteColor];
    //Interesting, investigate this!
    //    alert.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"alert_box"]];
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
    
    [self popIn:alert];
    
//    [self scaleIn:alert];
//    [self scaleOut:alert];

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
//    view.transform = CGAffineTransformMakeScale(1.0, 1.0);
    
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
    CGAffineTransform viewTransform = CGAffineTransformConcat(CGAffineTransformMakeScale(0.25, 0.25), CGAffineTransformMakeTranslation(0, 600));
    view.transform = viewTransform;
    
}

@end
