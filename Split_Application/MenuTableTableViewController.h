//
//  MenuTableTableViewController.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuDataModel.h"
//#import "MenuViewController.h"

@interface MenuTableTableViewController : UITableViewController

@property (strong,nonatomic)MenuDataModel*data; // this property is created to acces all data we stored, it still needs to be initialised in the main function in viewDidLoad

@end
