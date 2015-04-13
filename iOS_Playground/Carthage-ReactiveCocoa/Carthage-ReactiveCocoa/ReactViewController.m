//
//  ViewController.m
//  Carthage-ReactiveCocoa
//
//  Created by Leonardo Lee on 4/10/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "ReactViewController.h"
#import "UIViewController+SetupSimplicity.h"

@interface ReactViewController ()

@property (nonatomic, strong) UILabel *lengthCount;

@end

@implementation ReactViewController

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self setupScreen];
    
    // NSHipster Page is a bit out of date, all that was needed was self to be alled prior to things that we want to be listened to.
    RACSignal *formValid = [RACSignal combineLatest:@[self.username.rac_textSignal,
                                                      self.emailField.rac_textSignal,
                                                      self.passwordField.rac_textSignal
                                                      ]
                                             reduce:^(NSString *name, NSString *email, NSString *password){
                                                 NSLog(@"%@, %@, %@", name, email, password);
                                                 return @([name length] > 0 && [email length] > 0 && [password length] > 0);
                                             }];
    
    RAC(self, self.buttonEnabled.enabled) = formValid;
    
    _lengthCount = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 + 16, 0, 44, 30)];
    
    [self.view addSubview:_lengthCount];
    [self updateLength];
}

-(void)updateLength {
    [RACObserve(self, self.username.text) subscribeNext:^(NSString *string) {
        self.lengthCount.text = [NSString stringWithFormat:@"%lu", (unsigned long)[string length]];
    }];
}



@end
