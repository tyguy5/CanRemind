//
//  CRViewController.m
//  CanRemind
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "CRViewController.h"

@interface CRViewController ()

@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) IBOutlet UIButton *remindIn10Seconds;
@property (strong, nonatomic) IBOutlet UIButton *remindOnDate;

@end

@implementation CRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)remindIn10Seconds {
    NSDate *alertTime = [[NSDate date] dateByAddingTimeInterval:10];
    
    UILocalNotification *localNotifciation = [UILocalNotification new];
    
    if (localNotifciation) {
        localNotifciation.fireDate = alertTime;
        localNotifciation.timeZone = [NSTimeZone defaultTimeZone];
        localNotifciation.repeatInterval = 0;
        localNotifciation.soundName = @"bell_tree.mp3";
        localNotifciation.alertBody = @"It's been 10. Not Ben 10 tho.";
        localNotifciation.applicationIconBadgeNumber = 1;
        [[UIApplication sharedApplication] scheduleLocalNotification:localNotifciation];
        
    }
}

- (IBAction)remindOnDate {
    NSDate *alertTime = self.datePicker.date;
    UILocalNotification *localNotification = [UILocalNotification new];
    if (localNotification) {
        localNotification.fireDate = alertTime;
        localNotification.timeZone = [NSTimeZone defaultTimeZone];
        localNotification.repeatInterval = 0;
        localNotification.soundName = @"bell_tree.mp3";
        localNotification.alertBody = @"What's up world?";
        localNotification.applicationIconBadgeNumber = 1;
        [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
