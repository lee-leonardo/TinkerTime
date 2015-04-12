//
//  ConventionalViewController.m
//  Carthage-ReactiveCocoa
//
//  Created by Leonardo Lee on 4/11/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "ConventionalViewController.h"

@interface ConventionalViewController () <UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UITextField *username;
@property (nonatomic, strong) IBOutlet UITextField *emailField;
@property (nonatomic, strong) IBOutlet UITextField *passwordField;
@property (nonatomic, strong) IBOutlet UIButton *buttonEnabled;

@end

@implementation ConventionalViewController

-(BOOL)isFormValid {
    return [self.username.text length] > 0 &&
    [self.emailField.text length] > 0 &&
    [self.passwordField.text length] > 0;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    CGFloat windowHeight = self.view.frame.size.height;
    CGFloat windowWidth = self.view.frame.size.width;
    
    _username = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, windowWidth/2, 44)];
    _emailField = [[UITextField alloc] initWithFrame:CGRectMake(0, 100, windowWidth/2, 44)];
    _passwordField = [[UITextField alloc] initWithFrame:CGRectMake(0, 200, windowWidth/2, 44)];
    _buttonEnabled = [UIButton buttonWithType:UIButtonTypeSystem];
    [_buttonEnabled setFrame:CGRectMake(0, 300, windowWidth/2, 44)];
    
    _username.placeholder = @"Leo";
    _emailField.placeholder = @"Hello";
    _passwordField.placeholder = @"Hi";
    _username.borderStyle = UITextBorderStyleRoundedRect;
    _emailField.borderStyle = UITextBorderStyleRoundedRect;
    _passwordField.borderStyle = UITextBorderStyleRoundedRect;
    
    _buttonEnabled.titleLabel.text = @"Press";
    _buttonEnabled.enabled = NO;
    
    [self.view addSubview:_username];
    [self.view addSubview:_emailField];
    [self.view addSubview:_passwordField];
    [self.view addSubview:_buttonEnabled];
}

#pragma mark - UITextFieldDelegate
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    self.buttonEnabled.enabled = [self isFormValid];
    return YES;
}

@end
