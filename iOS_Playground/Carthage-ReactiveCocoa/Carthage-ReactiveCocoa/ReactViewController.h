//
//  ViewController.h
//  Carthage-ReactiveCocoa
//
//  Created by Leonardo Lee on 4/10/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface ReactViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *username;
@property (nonatomic, strong) IBOutlet UITextField *emailField;
@property (nonatomic, strong) IBOutlet UITextField *passwordField;
@property (nonatomic, strong) IBOutlet UIButton *buttonEnabled;

@end

