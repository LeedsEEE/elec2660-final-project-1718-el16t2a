//
//  MenuDataModel.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuElement.h" // We need to import this class as we will be adding our elements into this dataa model

@interface MenuDataModel : NSObject

@property (strong,nonatomic)NSMutableArray* AppetizerElement;// Array to store our appetizers in (array of indefinite length)

@property (strong,nonatomic)NSMutableArray* BurgerElement;// Array to store our appetizers in (array of indefinite length)

@end
