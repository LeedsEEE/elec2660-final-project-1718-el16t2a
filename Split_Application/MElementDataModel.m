//
//  MElementDataModel.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MElementDataModel.h"

@implementation MElementDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.Appetizers = [NSMutableArray array] ; //creates an empty array for us to fill
        Menu_Element *GB = [[Menu_Element alloc] init];
        GB.type = @"Appetizer";
        GB.name = @"Garlic Bread";
        GB.ingredients = @"garlic on crispy delicious bread";
        GB.price= 2;
        
        // Now we need to add the different appertizers to the array
        
        [self.Appetizers addObject:GB]; //index 1
    }
    return self;
}

@end
