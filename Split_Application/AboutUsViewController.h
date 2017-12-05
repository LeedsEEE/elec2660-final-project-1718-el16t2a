//
//  AboutUsViewController.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutUsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *DescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *HoursLabel;
@property (weak, nonatomic) IBOutlet UILabel *TelephoneLabel;


-(IBAction)MakePhoneCall:(id)sender;

@end
