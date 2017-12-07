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
    
    self.DescriptionLabel.text = @" Byron is an American-inspired chain diner\n serving posh hamburgers with a choice of\n toppings, sides & salads.";
    
    self.AddressLabel.text = @"Address: 9a Lands Ln, Leeds LS1 6AW";
    
    self.HoursLabel.text = @"Opening Hours:\n Saturday:       11am–11pm\n Sunday:         11am–10pm\n Monday:        11:30am–10pm\n Tuesday:       11:30am–10pm\n Wednesday: 11:30am–10pm\n Thursday:     11:30am–10pm\n Friday:           11am–11pm";
    
    self.TelephoneLabel.text = @"Telephone number: 0113 243 4444";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)MakePhoneCall:(id)sender {
    
    NSURL *URL = [NSURL URLWithString:@"tel:01132434444"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:01132434444"] options:@{} completionHandler:nil];
    
    //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"te://01132434444"]]; //@"telprompt:
    
    
    
        
        
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
