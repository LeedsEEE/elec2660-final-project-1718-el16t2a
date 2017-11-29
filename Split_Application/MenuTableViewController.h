//
//  MenuTableViewController.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MElementDataModel.h" //we import this file and also we create a property because in .m we will use its method
#import "ViewControllerMenu.h" // we import this file to create a local data of the destination Viewcontroller

@interface MenuTableViewController : UITableViewController

@property (strong,nonatomic) MElementDataModel *data; // let's acces the data we stored 

@end
