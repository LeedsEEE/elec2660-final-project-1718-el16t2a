//
//  MElementDataModel.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Menu_Element.h" // We need to add this file because here we will implement its data

@interface MElementDataModel : NSObject


// Defining variables that will be used in this file.
// Some of them have connections from the ViewController in main.storyboard.

@property (strong,nonatomic) NSMutableArray *Appetizers; //this array is of indefinite length and   will hold all the appetizers.

@property (strong,nonatomic) NSMutableArray *Salads; //this array is of indefinite length and   will hold all the Salads.

@property (strong,nonatomic) NSMutableArray *Burgers; //this array is of indefinite length and   will hold all the burgers.

@property (strong,nonatomic) NSMutableArray *FriesSides; //this array is of indefinite length and   will hold all the fries and sides.

@property (strong,nonatomic) NSMutableArray *Desserts; //this array is of indefinite length and   will hold all the desserts.

@property (strong,nonatomic) NSMutableArray *Drinks; //this array is of indefinite length and   will hold all the drinks.


@end
