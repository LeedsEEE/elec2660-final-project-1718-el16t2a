//
//  MElementDataModel.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Menu_Element.h" //we need to add this file because here we will implement its data

@interface MElementDataModel : NSObject

@property (strong,nonatomic) NSMutableArray *Appetizers; //this array is of indefinite length and will hold all the appetizers
@property (strong,nonatomic) NSMutableArray *Burgers;
//@property (strong,nonatomic) NSMutableArray *Appetizers;
//@property (strong,nonatomic) NSMutableArray *Appetizers;

@end
