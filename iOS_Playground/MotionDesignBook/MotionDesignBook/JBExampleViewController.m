//
//  JBExampleViewController.m
//  MotionDesignBook
//
//  Created by Leonardo Lee on 3/21/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "JBExampleViewController.h"

@interface JBExampleViewController ()

@property (strong, nonatomic) UIImageView *appBackground;
@property (strong, nonatomic) UIImageView *mapView;

@property (assign) BOOL mapShowing;

@end

@implementation JBExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.appBackground = [[UIImageView alloc] initWithFrame:CGRectMake(0, 20,
                                                                       self.view.frame.size.width,
                                                                       self.view.frame.size.height - 20)];
    self.appBackground.image = [UIImage imageNamed:@"app-bg"];
    [self.view addSubview:self.appBackground];
    
    self.mapView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 62,
                                                                 self.view.frame.size.width,
                                                                 self.view.frame.size.height - 62)];
    
    self.mapView.image = [UIImage imageNamed:@"map-arrow"];
//    self.mapView.alpha = 0.0f;
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
    } else {
        self.mapShowing = YES;
    }
}


@end
