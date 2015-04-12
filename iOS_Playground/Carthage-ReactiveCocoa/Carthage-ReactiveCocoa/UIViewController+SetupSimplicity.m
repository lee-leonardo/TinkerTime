//
//  UIViewController+SetupSimplicity.m
//  Carthage-ReactiveCocoa
//
//  Created by Leonardo Lee on 4/12/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "UIViewController+SetupSimplicity.h"

@implementation UIViewController (SetupSimplicity)

// This means that the category will have these properties developed in realtime via the actual page that's loading them.
@dynamic username, emailField, passwordField, buttonEnabled;

-(BOOL)isFormValid {
    return [self.username.text length] > 0 &&
    [self.emailField.text length] > 0 &&
    [self.passwordField.text length] > 0;
}

-(void)setupScreen {
    CGFloat windowWidth = self.view.frame.size.width;
    
    self.username = [[UITextField alloc] initWithFrame:CGRectMake(16, 44, windowWidth/2, 30)];
    self.emailField = [[UITextField alloc] initWithFrame:CGRectMake(16, 82, windowWidth/2, 30)];
    self.passwordField = [[UITextField alloc] initWithFrame:CGRectMake(16, 120, windowWidth/2, 30)];
    
    self.username.placeholder = @"Leo";
    self.emailField.placeholder = @"Hello";
    self.passwordField.placeholder = @"Hi";
    self.username.borderStyle = UITextBorderStyleRoundedRect;
    self.emailField.borderStyle = UITextBorderStyleRoundedRect;
    self.passwordField.borderStyle = UITextBorderStyleRoundedRect;
    
    self.buttonEnabled = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.buttonEnabled setFrame:CGRectMake(16, 158, windowWidth/2, 30)];
    [self.buttonEnabled setTitle:@"Please Fill above" forState:UIControlStateDisabled];
    [self.buttonEnabled setTitle:@"Continue" forState:UIControlStateNormal];
    [self.buttonEnabled setTitle:@"Lift Up" forState:UIControlStateSelected];
    self.buttonEnabled.enabled = NO;
    
    //Alternative way to do this.
    [self.username addTarget:self action:@selector(textChanged:) forControlEvents:UIControlEventEditingChanged];
    
    [self.view addSubview:self.username];
    [self.view addSubview:self.emailField];
    [self.view addSubview:self.passwordField];
    [self.view addSubview:self.buttonEnabled];
}
-(void)textChanged:(UITextField *)field {
        NSLog(@"%@", field.text);
}

@end
