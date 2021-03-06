//
//  FBPop2ViewController.m
//  MotionDesignBook
//
//  Created by Leonardo Lee on 3/31/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "FBPop2ViewController.h"
#import "DTCTestButton.h"
#import "HamburgerButton.h"

@interface FBPop2ViewController ()

@property (nonatomic, strong) DTCTestButton *buttonExample;
@property (nonatomic, strong) HamburgerButton *hamButton;
@property (nonatomic, strong) UIView *top;
@property (nonatomic, strong) UIView *mid;
@property (nonatomic, strong) UIView *bot;
@property BOOL hamButtonOpen;

@end

@implementation FBPop2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self setupSimple];
    [self setupDTC];
    [self setupHam];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Simple
-(void)setupSimple {
    UIView *redBall = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 75, 75)];
    redBall.backgroundColor =[UIColor redColor];
    redBall.layer.cornerRadius = 75/2;
    [self.view addSubview:redBall];
    
    //    [self simpleExample:redBall];
    [self multipleAnimations:redBall];
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

#pragma mark - DTC
-(void)setupDTC {
    _buttonExample = [DTCTestButton buttonWithType:UIButtonTypeCustom];
    [_buttonExample setImage:[UIImage imageNamed:@"gear"] forState:UIControlStateNormal];
    [_buttonExample setImage:[UIImage imageNamed:@"gear"] forState:UIControlStateHighlighted];
    [_buttonExample setFrame:CGRectMake(25, 25, 50, 50)];
    [self.view addSubview:_buttonExample];
}

#pragma mark - Hamburger
-(void)setupHam {
    _hamButton = [HamburgerButton buttonWithType:UIButtonTypeCustom];
    [_hamButton setBackgroundColor:[UIColor blackColor]];
    [_hamButton addTarget:self action:@selector(didTapButton:)
         forControlEvents:UIControlEventTouchUpInside];
    [_hamButton setFrame:CGRectMake(150, 400, 150, 150)];
    _hamButton.layer.cornerRadius = 75;
    [self.view addSubview:_hamButton];
    
    CGFloat sectionWidth = 80;
    CGFloat sectionHeight = 11;
    
    _top = [[UIView alloc] initWithFrame:CGRectMake(_hamButton.bounds.size.width/2 - sectionWidth/2, 40, sectionWidth, sectionHeight)];
    _top.backgroundColor = [UIColor whiteColor];
    _top.userInteractionEnabled = NO;
    _top.layer.cornerRadius = sectionHeight/2;
    [_hamButton addSubview:_top];
    
    
    _mid = [[UIView alloc] initWithFrame:CGRectMake(_hamButton.bounds.size.width/2 - sectionWidth/2, 69, sectionWidth, sectionHeight)];
    _mid.backgroundColor = [UIColor whiteColor];
    _mid.userInteractionEnabled = NO;
    _mid.layer.cornerRadius = sectionHeight/2;
    [_hamButton addSubview:_mid];
    
    _bot = [[UIView alloc] initWithFrame:CGRectMake(_hamButton.bounds.size.width/2 - sectionWidth/2, 99, sectionWidth, sectionHeight)];
    _bot.backgroundColor = [UIColor whiteColor];
    _bot.userInteractionEnabled = NO;
    _bot.layer.cornerRadius = sectionHeight/2;
    [_hamButton addSubview:_bot];
    
}

#pragma mark - Touches Began
//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    [_buttonExample touchesBegan:touches withEvent:event];
//    [super touchesBegan:touches withEvent:event];
//}
//-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
//    [_buttonExample touchesEnded:touches withEvent:event];
//    [super touchesEnded:touches withEvent:event];
//}

-(void)didTapButton:(UIView *)view {
    
    POPSpringAnimation *topColor = [_top pop_animationForKey:@"topColor"];
    POPSpringAnimation *bottomColor = [_bot pop_animationForKey:@"bottomColor"];
    POPSpringAnimation *topRotate = [_top pop_animationForKey:@"topRotate"];
    POPSpringAnimation *bottomRotate = [_bot pop_animationForKey:@"bottomRotate"];
    POPSpringAnimation *topPosition = [_top pop_animationForKey:@"topPosition"];
    POPSpringAnimation *bottomPosition = [_bot pop_animationForKey:@"bottomPosition"];
    
    if (_hamButtonOpen) {
        _hamButtonOpen = NO;
        
        [UIView animateWithDuration:0.2 animations:^{
            _mid.alpha = 1.0f;
        }];
        
        if (topColor) {
            topColor.toValue = [UIColor whiteColor];
        } else {
            topColor = [POPSpringAnimation animationWithPropertyNamed:kPOPViewBackgroundColor];
            topColor.toValue = [UIColor whiteColor];
            topColor.springBounciness = 0;
            topColor.springSpeed = 18.0f;
            
            [_top pop_addAnimation:topColor forKey:@"topColor"];
        }
        
        if (bottomColor) {
            bottomColor.toValue = [UIColor whiteColor];
        } else {
            bottomColor = [POPSpringAnimation animationWithPropertyNamed:kPOPViewBackgroundColor];
            bottomColor.toValue = [UIColor whiteColor];
            bottomColor.springBounciness = 0;
            bottomColor.springSpeed = 18.0f;
            [_bot pop_addAnimation:bottomColor forKey:@"bottomColor"];
        }
        
        //When affecting a layer, add the animation to the layer!
        if (topRotate) {
            topRotate.toValue = @(0);
        } else {
            topRotate = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
            topRotate.toValue = @(0);
            topRotate.springBounciness = 11;
            topRotate.springSpeed = 18.0f;
            [_top.layer pop_addAnimation:topRotate forKey:@"topRotate"];
        }
        
        if (bottomRotate) {
            bottomRotate.toValue = @(0);
        } else {
            bottomRotate = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
            bottomRotate.toValue = @(0);
            bottomRotate.springBounciness = 11;
            bottomRotate.springSpeed = 18.0f;
            [_bot.layer pop_addAnimation:bottomRotate forKey:@"bottomRotate"];
        }
        
        if (topPosition) {
            topPosition.toValue = @(0);
        } else {
            topPosition = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerTranslationY];
            topPosition.toValue = @(0);
            topPosition.springBounciness = 0;
            topPosition.springSpeed = 18.0f;
            [_top.layer pop_addAnimation:topPosition forKey:@"topPosition"];
        }
        
        if (bottomPosition) {
            bottomPosition.toValue = @(0);
        } else {
            bottomPosition = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerTranslationY];
            bottomPosition.toValue = @(0);
            bottomPosition.springBounciness = 0;
            bottomPosition.springSpeed = 18.0f;
            [_bot.layer pop_addAnimation:bottomPosition forKey:@"bottomPosition"];
        }
        
    } else {
        _hamButtonOpen = YES;
        
        [UIView animateWithDuration:0.2 animations:^{
            _mid.alpha = 0.0f;
        }];
        
        if (topColor) {
            topColor.toValue = [UIColor redColor];
        } else {
            topColor = [POPSpringAnimation animationWithPropertyNamed:kPOPViewBackgroundColor];
            topColor.toValue = [UIColor redColor];
            topColor.springBounciness = 0;
            topColor.springSpeed = 18.0f;
            
            [_top pop_addAnimation:topColor forKey:@"topColor"];
        }
        
        if (bottomColor) {
            bottomColor.toValue = [UIColor redColor];
        } else {
            bottomColor = [POPSpringAnimation animationWithPropertyNamed:kPOPViewBackgroundColor];
            bottomColor.toValue = [UIColor redColor];
            bottomColor.springBounciness = 0;
            bottomColor.springSpeed = 18.0f;
            [_bot pop_addAnimation:bottomColor forKey:@"bottomColor"];
        }
        
        //When affecting a layer, add the animation to the layer!
        if (topRotate) {
            topRotate.toValue = @(-M_PI/4);
        } else {
            topRotate = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
            topRotate.toValue = @(-M_PI/4);
            topRotate.springBounciness = 11;
            topRotate.springSpeed = 18.0f;
            [_top.layer pop_addAnimation:topRotate forKey:@"topRotate"];
        }
        
        if (bottomRotate) {
            bottomRotate.toValue = @(M_PI/4);
        } else {
            bottomRotate = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerRotation];
            bottomRotate.toValue = @(M_PI/4);
            bottomRotate.springBounciness = 11;
            bottomRotate.springSpeed = 18.0f;
            [_bot.layer pop_addAnimation:bottomRotate forKey:@"bottomRotate"];
        }
        
        if (topPosition) {
            topPosition.toValue = @(29);
        } else {
            topPosition = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerTranslationY];
            topPosition.toValue = @(29);
            topPosition.springBounciness = 0;
            topPosition.springSpeed = 18.0f;
            [_top.layer pop_addAnimation:topPosition forKey:@"topPosition"];
        }
        
        if (bottomPosition) {
            bottomPosition.toValue = @(-29);
        } else {
            bottomPosition = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerTranslationY];
            bottomPosition.toValue = @(-29);
            bottomPosition.springBounciness = 0;
            bottomPosition.springSpeed = 18.0f;
            [_bot.layer pop_addAnimation:bottomPosition forKey:@"bottomPosition"];
        }
    }
}


@end
