//
//  MenuTableHeaderView.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 04/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//


// This file is for the picture at the header of the table.


#import "MenuTableHeaderView.h"

@interface MenuTableHeaderView () {
    UILabel *label;      //writing text on top of the image
}

@end

@implementation MenuTableHeaderView

-(id) initWithText : (NSString *) text; {
    
    UIImage *image = [UIImage imageNamed:@"MenuPicture.png"];
    
    if ((self = [super initWithImage: image])) {
        
        label = [[UILabel alloc] initWithFrame:CGRectMake(250, 0, 200, 100)]; // x,y,width,height
        
        label.textColor = [UIColor whiteColor];
        label.backgroundColor = [UIColor clearColor];
        label.text = text;
        label.numberOfLines = 1;
        [self addSubview:label];
        
    }
    return self;
}

-(void) setText : (NSString *) text; {
    
    label.text = text;
    
}


@end
