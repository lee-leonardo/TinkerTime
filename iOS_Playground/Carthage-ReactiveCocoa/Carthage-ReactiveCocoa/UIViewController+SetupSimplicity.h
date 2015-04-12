//
//  UIViewController+SetupSimplicity.h
//  Carthage-ReactiveCocoa
//
//  Created by Leonardo Lee on 4/12/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (SetupSimplicity)

@property (nonatomic, strong) IBOutlet UITextField *username;
@property (nonatomic, strong) IBOutlet UITextField *emailField;
@property (nonatomic, strong) IBOutlet UITextField *passwordField;
@property (nonatomic, strong) IBOutlet UIButton *buttonEnabled;

-(void)setupScreen;
-(BOOL)isFormValid;
-(void)textChanged:(UITextField *)field;

@end
