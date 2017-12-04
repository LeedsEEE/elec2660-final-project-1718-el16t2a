//
//  ContactUsViewController.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MoreViewController.h"
#import "LoginViewController.h"

@interface MoreViewController ()

@end

@implementation MoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //self.WaiterNameLabel.text = username from login page
    
    self.WaiterNameLabel.text = @"ALQAWASMI Tariq";
    self.WorkingHoursLabel.text = @"Weekdays: 14:00-18:00 Weekend: 10:00-18:00";
    // figure out how to put them on 2 lines
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
