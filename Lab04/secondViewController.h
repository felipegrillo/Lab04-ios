//
//  secondViewController.h
//  Lab04
//
//  Created by felipe on 05/02/15.
//  Copyright (c) 2015 felipe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,retain) NSMutableArray *tableData;
@property (strong, nonatomic) IBOutlet UILabel *lbName;

@end
