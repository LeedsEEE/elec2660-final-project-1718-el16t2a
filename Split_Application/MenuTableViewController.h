//
//  MenuTableViewController.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MElementDataModel.h" //We import this file and also we create a property because in .m we will use its method.
#import "ViewControllerMenu.h" // We import this file to create a local data of the destination Viewcontroller.


@interface MenuTableViewController : UITableViewController


// Defining variables that will be used in this file.
// Some of them have connections from the ViewController in main.storyboard.

@property (strong,nonatomic) MElementDataModel *data; // lets us acces the data we stored 

@end
