//
//  TableRefreshViewController.m
//  MotionDesignBook
//
//  Created by Leonardo Lee on 3/25/15.
//  Copyright (c) 2015 Leonardo Lee. All rights reserved.
//

#import "TableRefreshViewController.h"

@interface TableRefreshViewController ()

@end

@implementation TableRefreshViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"refresh" forIndexPath:indexPath];
    [self assignValues:cell indexPath:indexPath];
    
    return cell;
    
}

#pragma mark - UITableViewDatasource
-(void)assignValues:(UITableViewCell *)cell indexPath:(NSIndexPath *)indexPath {
    cell.textLabel.text = [[NSString alloc] initWithFormat:@"Title %ld", (long)indexPath.row];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
#pragma mark - UITableViewDelegate

@end
