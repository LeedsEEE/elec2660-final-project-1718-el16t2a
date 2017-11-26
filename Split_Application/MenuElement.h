//
//  MenuElement.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MenuElement : NSObject

@property (nonatomic,strong)NSString*Type;
@property (nonatomic,strong)NSString*Name;
@property (nonatomic,strong)NSString*Ingredients;
@property NSInteger*Price;

@end
