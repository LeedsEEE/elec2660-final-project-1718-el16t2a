//
//  ViewControllerMenu.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Menu_Element.h" //We need to import this because the details in it will interact with the viewcontroller.


// Defining variables that will be used in this file.
// Some of them have connections from the ViewController in main.storyboard.

@interface ViewControllerMenu : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *ingredientsLabel;

@property (weak, nonatomic) IBOutlet UIImageView *MenuDrawing;

@property (strong,nonatomic) Menu_Element *element; // stores our data

@end
