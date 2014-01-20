//
//  ViewController.m
//  3p11
//
//  Created by SDT-1 on 2014. 1. 20..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@end

@implementation ViewController
- (IBAction)Notinow:(id)sender {
    UILocalNotification *noti = [[UILocalNotification alloc]init];
    noti.alertBody = @"노티 테스트";
    noti.alertAction = @"확인";
    
    [[UIApplication sharedApplication]presentLocalNotificationNow:noti];
    
}
- (IBAction)firenotiIn7sec:(id)sender {
    UILocalNotification *noti = [[UILocalNotification alloc]init];
    noti.fireDate = [NSDate dateWithTimeIntervalSinceNow:7];
    noti.alertBody = @"7Seconds";
    noti.alertAction = @"확인";
    noti.soundName = UILocalNotificationDefaultSoundName;
    
    noti.userInfo = nil;
    
    [[UIApplication sharedApplication]scheduleLocalNotification:noti];
}

- (IBAction)FireNoti:(id)sender {
    UILocalNotification *noti = [[UILocalNotification alloc]init];
    noti.fireDate = self.datePicker.date;
    noti.alertBody = @"지정시간 알림";
    noti.alertAction = @"확인";
    noti.soundName = @"sound.mp3";
    noti.alertLaunchImage = @"20.png";
    noti.userInfo = [NSDictionary dictionaryWithObjectsAndKeys:@"object",@"key", nil];
    [[UIApplication sharedApplication]scheduleLocalNotification:noti];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
