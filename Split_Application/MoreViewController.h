//
//  ContactUsViewController.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoreViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *WaiterNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *WorkingHoursLabel;

- (IBAction)LogoutPressed:(id)sender;

@end
