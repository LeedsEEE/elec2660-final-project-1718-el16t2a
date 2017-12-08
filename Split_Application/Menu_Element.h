//
//  Menu_Element.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

// Any element in the Menu share common properties, so it makes sense to put this into a class.

#import <Foundation/Foundation.h>

@interface Menu_Element : NSObject


// Defining variables that will be used in this file.
// Some of them have connections from the ViewController in main.storyboard

@property (strong,nonatomic) NSString *type;
@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *ingredients;
@property (strong,nonatomic) NSString *price;

@end


// Now that we have our class, we need to create a data model to store our information in.
