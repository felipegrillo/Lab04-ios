//
//  otroViewController.m
//  Lab04
//
//  Created by felipe on 06/02/15.
//  Copyright (c) 2015 felipe. All rights reserved.
//

#import "otroViewController.h"
#import "celdaViewCell.h"
#import "global.h"
NSString *dateString;
@interface otroViewController ()

@end

@implementation otroViewController
- (void)inicializo{
  //  array=[[NSMutableArray alloc] init];
    NSLog(@"hola");
}

- (void)viewDidLoad {
    NSDate *currentDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd.MM.YY HH:mm:ss"];
    dateString = [dateFormatter stringFromDate:currentDate];
    
  ///  array=[[NSMutableArray alloc] addObjectsFromArray:<#(NSArray *)#>];

    [array addObject:[[NSMutableArray alloc] initWithObjects:[[NSNumber numberWithInt:countClick ]stringValue],nil]];
   // [array addObject:[[NSNumber numberWithInt:countClick ]stringValue]];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return array.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellOaxaca");
    static NSString *CellIdentifier = @"celda";
    
    celdaViewCell *cell = (celdaViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[celdaViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    //NSLog(array[indexPath.row]);
    //cell.lblCount.text=@"hola";
    // cell.lblCount.text=[]array[indexPath.row];
    cell.lblCount.text = array[0][indexPath.row];
    cell.lblDate.text=dateString;
      return cell;
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
