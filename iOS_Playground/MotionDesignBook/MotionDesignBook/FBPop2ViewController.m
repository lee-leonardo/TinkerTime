//
//  FBPop2ViewController.m
//  MotionDesignBook
//
//  Created by Leonardo Lee on 3/31/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "FBPop2ViewController.h"
#import "DTCTestButton.h"

@interface FBPop2ViewController ()

@property (nonatomic, strong) DTCTestButton *buttonExample;

@end

@implementation FBPop2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    UIView *redBall = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 75, 75)];
    redBall.backgroundColor =[UIColor redColor];
    redBall.layer.cornerRadius = 75/2;
    [self.view addSubview:redBall];
    
//    [self simpleExample:redBall];
    [self multipleAnimations:redBall];
    
    _buttonExample = [DTCTestButton buttonWithType:UIButtonTypeCustom];
    [_buttonExample setImage:[UIImage imageNamed:@"gear"] forState:UIControlStateNormal];
    [_buttonExample setImage:[UIImage imageNamed:@"gear"] forState:UIControlStateHighlighted];
    [_buttonExample setFrame:CGRectMake(25, 25, 50, 50)];
    [self.view addSubview:_buttonExample];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)simpleExample:(UIView*)view {
    POPSpringAnimation *scale = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    scale.toValue = [NSValue valueWithCGPoint:CGPointMake(2, 2)]; //Automatically infers initial position.
    scale.springBounciness = 20.0f; //0-20
    scale.springSpeed = 1.0f; //0-20
    [view pop_addAnimation:scale forKey:@"scale"]; //Name for the key isn't related to the CAAnimation property, each animation just needs a custom animation name for the view.
}

-(void)multipleAnimations:(UIView *)view {
    POPSpringAnimation *scale = [POPSpringAnimation animationWithPropertyNamed:kPOPViewScaleXY];
    scale.toValue = [NSValue valueWithCGPoint:CGPointMake(2, 2)];
    scale.springBounciness = 20.0f;
    scale.springSpeed = 1.0f;
    [view pop_addAnimation:scale forKey:@"scale"];
    
    //Layers require you to assign the animation to the layer.
    POPSpringAnimation *move = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    move.toValue = @(500);
    move.springBounciness = 15;
    move.springSpeed = 1.0f;
    //Advanced Dynamics for JNW Spring-like properties.
    move.dynamicsFriction = 150;
    move.dynamicsMass = 2;
    move.dynamicsTension = 500;
    [view.layer pop_addAnimation:move forKey:@"move"];
    
    POPSpringAnimation *spin = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
    spin.toValue = @(M_PI * 4);
    spin.springBounciness = 15;
    spin.springSpeed = 5.0f;
    [view.layer pop_addAnimation:spin forKey:@"spin"];
    
    POPSpringAnimation *color = [POPSpringAnimation animationWithPropertyNamed:kPOPViewBackgroundColor];
    color.toValue = [UIColor greenColor];
    color.springBounciness = 15;
    color.springSpeed = 5.0f;
    [view pop_addAnimation:color forKey:@"color"];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [_buttonExample touchesBegan:touches withEvent:event];
    [super touchesBegan:touches withEvent:event];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [_buttonExample touchesEnded:touches withEvent:event];
    [super touchesEnded:touches withEvent:event];
}

@end
