//
//  JBExampleViewController.m
//  MotionDesignBook
//
//  Created by Leonardo Lee on 3/21/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import <JNWSpringAnimation/JNWSpringAnimation.h>
#import "JBExampleViewController.h"

@interface JBExampleViewController ()

@property (strong, nonatomic) UIImageView *appBackground;
@property (strong, nonatomic) UIImageView *mapView;

@property (assign) BOOL mapShowing;

@end

@implementation JBExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    
    self.appBackground = [[UIImageView alloc] initWithFrame:CGRectMake(0, 20,
                                                                       self.view.frame.size.width,
                                                                       self.view.frame.size.height - 20)];
    self.appBackground.image = [UIImage imageNamed:@"app-bg"];
    [self.view addSubview:self.appBackground];
    
    self.mapView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 62,
                                                                 self.view.frame.size.width,
                                                                 self.view.frame.size.height - 62)];
    
    self.mapView.image = [UIImage imageNamed:@"map-arrow"];
    self.mapView.alpha = 0.0f;
    self.mapView.transform = CGAffineTransformMakeTranslation(0, 30);
    self.mapView.transform = CGAffineTransformScale(self.mapView.transform, 1.0, 1.1);
    [self.view addSubview:self.mapView];
    
    UIButton *icon = [UIButton buttonWithType:UIButtonTypeCustom];
    [icon setImage:[UIImage imageNamed:@"map-icon"] forState:UIControlStateNormal];
    [icon addTarget:self action:@selector(didTapMapIcon) forControlEvents:UIControlEventTouchUpInside];
    [icon setFrame:CGRectMake(self.view.frame.size.width - 49, 19, 49, 44)];
    [self.view addSubview:icon];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

-(void)didTapMapIcon
{
    if (self.mapShowing) {
        self.mapShowing = NO;
        
        //When reverting it is better to do the animation faster.
        CGFloat dampingStiffnessOut = 24.0f;
        
        [UIView animateWithDuration:0.5 delay:0
                            options:UIViewAnimationOptionCurveEaseInOut|UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             self.appBackground.alpha = 1.0f;
                         } completion:NULL];
        
        [UIView animateWithDuration:0.3 delay:0
                            options:UIViewAnimationOptionCurveEaseInOut|UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             self.mapView.alpha = 0.0f;
                         }
                         completion:NULL];
        
        JNWSpringAnimation *mapScale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
        mapScale.damping = dampingStiffnessOut;
        mapScale.stiffness = dampingStiffnessOut;
        mapScale.mass = 1;
        mapScale.fromValue = @([[self.mapView.layer.presentationLayer valueForKeyPath:mapScale.keyPath] floatValue]);
        mapScale.toValue = @(1.1);
        
        [self.mapView.layer addAnimation:mapScale forKey:mapScale.keyPath];
        self.mapView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
        
        JNWSpringAnimation *mapTranslate = [JNWSpringAnimation animationWithKeyPath:@"transform.translate.y"];
        mapTranslate.damping = dampingStiffnessOut;
        mapTranslate.stiffness = dampingStiffnessOut;
        mapTranslate.mass = 1;
        mapTranslate.fromValue = @([[self.mapView.layer.presentationLayer valueForKey:mapTranslate.keyPath] floatValue]);
        mapTranslate.toValue = @(30);
        
        [self.mapView.layer addAnimation:mapTranslate forKey:mapTranslate.keyPath];
        self.mapView.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, 30);
        
        JNWSpringAnimation *bgScale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
        bgScale.damping = dampingStiffnessOut;
        bgScale.stiffness = dampingStiffnessOut;
        bgScale.mass = 1;
        bgScale.fromValue = @([[self.appBackground.layer.presentationLayer valueForKey:@"transform.scale.x"] floatValue]);
        bgScale.toValue = @(1.0);
        
        [self.appBackground.layer addAnimation:bgScale forKey:bgScale.keyPath];
        self.appBackground.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.0, 1.0);
        
    } else {
        self.mapShowing = YES;
        
        //App Background
        [UIView animateWithDuration:0.5 delay:0
                            options:UIViewAnimationOptionCurveEaseInOut|UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             self.appBackground.alpha = 0.3f;
                         }
                         completion:NULL];
        
        //App Map
        [UIView animateWithDuration:0.15 delay:0
                            options:UIViewAnimationOptionCurveEaseInOut|UIViewAnimationOptionBeginFromCurrentState
                         animations:^{
                             self.mapView.alpha = 1.0f;
                         } completion:NULL];
        
        //This is for the appBackground
        CGFloat dampingStiffness = 16.0f;
        JNWSpringAnimation *scale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
        scale.damping = dampingStiffness;
        scale.stiffness = dampingStiffness;
        scale.mass = 1;
        scale.fromValue = @([[self.appBackground.layer.presentationLayer valueForKeyPath:scale.keyPath] floatValue]);
        scale.toValue = @(0.9);
        
        [self.appBackground.layer addAnimation:scale forKey:scale.keyPath];
        self.appBackground.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.9, 0.9);
        
        
        //App Map
        JNWSpringAnimation *mapScale = [JNWSpringAnimation animationWithKeyPath:@"transform.scale"];
        mapScale.damping = dampingStiffness;
        mapScale.stiffness = dampingStiffness;
        mapScale.mass = 1;
        mapScale.fromValue = @([[self.mapView.layer.presentationLayer valueForKey:mapScale.keyPath] floatValue]);
        mapScale.toValue = @(1.0);
        
        [self.mapView.layer addAnimation:mapScale forKey:mapScale.keyPath];
        self.mapView.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1, 1);
        
        JNWSpringAnimation *mapTranslate = [JNWSpringAnimation animationWithKeyPath:@"transform.translate.y"];
        mapTranslate.damping = dampingStiffness;
        mapTranslate.stiffness = dampingStiffness;
        mapTranslate.mass = 1;
        mapTranslate.fromValue = @([[self.mapView.layer.presentationLayer valueForKey:mapTranslate.keyPath] floatValue]);
        mapTranslate.toValue = @(0);
        
        [self.mapView.layer addAnimation:mapTranslate forKey:mapTranslate.keyPath];
        self.mapView.transform = CGAffineTransformTranslate(CGAffineTransformIdentity, 0, 0);
    }
}


@end
