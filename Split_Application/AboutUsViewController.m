//
//  AboutUsViewController.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "AboutUsViewController.h"

@interface AboutUsViewController ()

@end

@implementation AboutUsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.DescriptionLabel.text = @"Byron is an American-inspired chain diner serving posh hamburgers with a choice of toppings, sides & salads.";
    self.HoursLabel.text = @"Saturday: 11am–11pm Sunday:11am–10pm Monday:    11:30am–10pm Tuesday: 11:30am–10pm Wednesday: 11:30am–10pm Thursday: 11:30am–10pm Friday: 11am–11pm";
    self.TelephoneLabel.text = @"Telephone number: 0113 243 4444";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)MakePhoneCall:(id)sender {
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://0113 243 4444"]]; //@"telprompt:
    
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
