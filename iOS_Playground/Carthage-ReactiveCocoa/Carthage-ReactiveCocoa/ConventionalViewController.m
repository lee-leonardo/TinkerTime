//
//  ConventionalViewController.m
//  Carthage-ReactiveCocoa
//
//  Created by Leonardo Lee on 4/11/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "ConventionalViewController.h"
#import "UIViewController+SetupSimplicity.h"

@interface ConventionalViewController ()

@end

@implementation ConventionalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupScreen];
    [self setupDelegates];

}

-(void)setupDelegates {
    self.username.delegate = self;
    self.emailField.delegate = self;
    self.passwordField.delegate = self;
    
}

#pragma mark - UITextFieldDelegate
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    self.buttonEnabled.enabled = [self isFormValid];
    return YES;
}

-(BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    self.buttonEnabled.enabled = [self isFormValid];
    return YES;
}

@end
