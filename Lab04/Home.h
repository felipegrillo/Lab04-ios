//
//  ViewController.h
//  Lab04
//
//  Created by felipe on 05/02/15.
//  Copyright (c) 2015 felipe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *showLabel;
@property (strong, nonatomic) IBOutlet UILabel *totalClick;
@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
- (IBAction)ClickMe:(id)sender;

@end

