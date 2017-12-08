//
//  ContactUsViewController.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoreViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

// Defining variables that will be used in this file.
// Some of them have connections from the ViewController in main.storyboard.

{
    NSMutableArray *arrayAddData; // array that will store added notes
    NSMutableArray *arrayDeleteData; // array where notes will be deleted
}

@property (weak, nonatomic) IBOutlet UILabel *WaiterNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *WorkingHoursLabel;

@property (weak, nonatomic) IBOutlet UITextField *NotesTextField;
@property (strong  , nonatomic) IBOutlet UITableView *NotesTableView;

- (IBAction)AddWasPressed:(id)sender;
- (IBAction)DeleteWasPressed:(id)sender;


- (IBAction)LogoutPressed:(id)sender;

@end
