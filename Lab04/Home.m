//
//  ViewController.m
//  Lab04
//
//  Created by felipe on 05/02/15.
//  Copyright (c) 2015 felipe. All rights reserved.
//

#import "Home.h"
int countClick;
NSTimer *timer;
@interface Home (){
int countNum;
}
@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    countNum=0;
    countClick=0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidAppear:(BOOL)animated{
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(countTimer) userInfo:nil repeats:YES];
}
- (void)countTimer{
    //contador de timer
    countNum++;
    self.showLabel.text=[NSString stringWithFormat:@"%d",countNum-1];
    
    if(countNum==11){
        [timer invalidate];
           UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
          UIViewController *viewController = (UIViewController *)[storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
        
         [self presentViewController:viewController animated:YES completion:nil];
        
    }
    
}

- (IBAction)ClickMe:(id)sender {
    //Obtenga los datos de la fecha y le doy formato
    NSDate *currentDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd.MM.YY HH:mm:ss"];
    NSString *dateString = [dateFormatter stringFromDate:currentDate];
    
    //Incremento el contador del click
    countClick++;
    if(self->countNum<=10){
        //Lo despliego total de Click en Lable
        self.totalClick.text=[NSString stringWithFormat:@"Total: %d",countClick];
        //Imprimo fecha actual
        _dataLabel.text=dateString;
        
        
        
    }
}
@end
