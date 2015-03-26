//
//  TableRefreshViewController.h
//  MotionDesignBook
//
//  Created by Leonardo Lee on 3/25/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableRefreshViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *table;

@end
