//
//  JAExampleViewController.m
//  MotionDesignBook
//
//  Created by Leonardo Lee on 3/21/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "JAExampleViewController.h"

@interface JAExampleViewController ()

@end

@implementation JAExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    CGFloat windowWidth = self.view.bounds.size.width;
    CGFloat rowHeight = 80;
    CGFloat initialX = 170;
    
    //Top
    UIImageView *backgroundView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    backgroundView.image = [UIImage imageNamed:@"background"];
    [self.view addSubview:backgroundView];
    
    UIImageView *arrowView = [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, 0, windowWidth, 45)];
    arrowView.image = [UIImage imageNamed:@"arrow"];
    [self.view addSubview:arrowView];
    
    //Ministry
    UIImageView *ministryView = [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, 57, windowWidth, 28)];
    ministryView.image = [UIImage imageNamed:@"ministry"];
    [self.view addSubview:ministryView];
    
    UIButton *addButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [addButton setImage:[UIImage imageNamed:@"add-button"] forState:UIControlStateNormal];
    [addButton setImage:[UIImage imageNamed:@"add-button-pressed"] forState:UIControlStateHighlighted];
    [addButton setFrame:CGRectMake(windowWidth, 102, windowWidth, 45)];
    [self.view addSubview:addButton];
    
    //Rows
    UIImageView *firstRow = [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, 102, windowWidth, rowHeight)];
    firstRow.image = [UIImage imageNamed:@"1st-row"];
    [self.view addSubview:firstRow];
    
    UIImageView *secondRow = [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, initialX+rowHeight, windowWidth, rowHeight)];
    secondRow.image = [UIImage imageNamed:@"2nd-row"];
    [self.view addSubview:secondRow];
    
    UIImageView *thirdRow = [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, initialX+(rowHeight*2), windowWidth, rowHeight)];
    thirdRow.image = [UIImage imageNamed:@"3rd-row"];
    [self.view addSubview:thirdRow];
    
    UIImageView *fourthRow = [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, initialX+(rowHeight*3), windowWidth, rowHeight)];
    fourthRow.image = [UIImage imageNamed:@"4th-row"];
    [self.view addSubview:fourthRow];
    
    UIImageView *fifthRow = [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, initialX+(rowHeight*4), windowWidth, rowHeight)];
    fifthRow.image = [UIImage imageNamed:@"5th-row"];
    [self.view addSubview:fifthRow];
    
    //Header Animations
//    [UIView animateWithDuration:2.1 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:0 options:0 animations:^{
//        [arrowView setFrame:CGRectMake(0, 0, windowWidth, 45)];
//    } completion:NULL];
    
    CGFloat initialDelay = 1.0f;
    CGFloat stutter = 0.3f;
    CGFloat duration = 0.6;
    
    [UIView animateWithDuration:duration delay:initialDelay usingSpringWithDamping:0.6 initialSpringVelocity:0.0 options:0 animations:^{
        [arrowView setFrame:CGRectMake(0, 0, windowWidth, 45)];
    } completion:NULL];
    
    [UIView animateWithDuration:duration delay:(initialDelay + (1 * stutter)) usingSpringWithDamping:0.6 initialSpringVelocity:0.0 options:0 animations:^{
        [ministryView setFrame:CGRectMake(0, 57, windowWidth, 28)];
    } completion:NULL];
    
    //Other Button rows
    [UIView animateWithDuration:duration delay:(initialDelay + (2*stutter)) usingSpringWithDamping:0.6 initialSpringVelocity:0 options:0 animations:^{
        [addButton setFrame:CGRectMake(0, 102, windowWidth, rowHeight)];
    } completion:NULL];
    
    [UIView animateWithDuration:duration delay:(initialDelay + (3*stutter)) usingSpringWithDamping:0.6 initialSpringVelocity:0 options:0 animations:^{
        [firstRow setFrame:CGRectMake(0, 170, windowWidth, rowHeight)];
    } completion:NULL];
    
    [UIView animateWithDuration:duration delay:(initialDelay + (4*stutter)) usingSpringWithDamping:0.6 initialSpringVelocity:0 options:0 animations:^{
        [secondRow setFrame:CGRectMake(0, 170+80, windowWidth, rowHeight)];
    } completion:NULL];
    
    [UIView animateWithDuration:duration delay:(initialDelay + (5*stutter)) usingSpringWithDamping:0.6 initialSpringVelocity:0 options:0 animations:^{
        [thirdRow setFrame:CGRectMake(0, 170+180, windowWidth, rowHeight)];
    } completion:NULL];
    
    [UIView animateWithDuration:duration delay:(initialDelay + (6*stutter)) usingSpringWithDamping:0.6 initialSpringVelocity:0 options:0 animations:^{
        [fourthRow setFrame:CGRectMake(0, 170+240, windowWidth, rowHeight)];
    } completion:NULL];
    
    [UIView animateWithDuration:duration delay:(initialDelay + (7*stutter)) usingSpringWithDamping:0.6 initialSpringVelocity:0 options:0 animations:^{
        [fifthRow setFrame:CGRectMake(0, 170+320, windowWidth, rowHeight)];
    } completion:NULL];
    
}

@end
