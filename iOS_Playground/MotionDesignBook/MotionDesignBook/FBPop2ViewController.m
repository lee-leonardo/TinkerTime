//
//  FBPop2ViewController.m
//  MotionDesignBook
//
//  Created by Leonardo Lee on 3/31/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "FBPop2ViewController.h"

@interface FBPop2ViewController ()

@end

@implementation FBPop2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    UIView *redBall = [[UIView alloc] initWithFrame:CGRectMake(150, 300, 75, 75)];
    redBall.backgroundColor =[UIColor redColor];
    redBall.layer.cornerRadius = 75/2;
    [self.view addSubview:redBall];
    
    POPSpringAnimation *scale = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    scale.toValue = [NSValue valueWithCGPoint:CGPointMake(2, 2)];
    scale.springBounciness = 20.0f; //0-20
    scale.springSpeed = 1.0f; //0-20
    [redBall pop_addAnimation:scale forKey:@"scale"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
