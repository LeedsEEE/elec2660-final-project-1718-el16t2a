//
//  MenuDataModel.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MenuDataModel.h"

@implementation MenuDataModel

- (instancetype)init

//We need this init function in which we can write all of our element data
{
    self = [super init];
    if (self) {
        
        self.AppetizerElement = [NSMutableArray array]; //Set up our array
        MenuElement*GB = [[MenuElement alloc] init] ; //GarlicBread
        GB.Type = @"Appetizer";
        GB.Name = @"Garlic Bread";
        GB.Ingredients = @"Garlic on bread with our secret recepee";
        GB.Price = 4;
        
        
        //Now we need to add the objects above in the array
        [self.AppetizerElement addObject:GB];
    }
    return self;
}

@end