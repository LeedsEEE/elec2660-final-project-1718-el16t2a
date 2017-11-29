//
//  ViewControllerMenu.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Menu_Element.h" //we need to import this because the details in it will interact with the viewcontroller


@interface ViewControllerMenu : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *ingredientsLabel;

@property (strong,nonatomic) Menu_Element *element;

@end
