//
//  ViewControllerMenu.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ViewControllerMenu.h"

@interface ViewControllerMenu ()

@end

@implementation ViewControllerMenu

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.nameLabel.text = self.element.name;
    self.priceLabel.text = [NSString stringWithFormat:@"£ %ld",self.element.price]; // because property of price is NSinteger
    self.typeLabel.text = self.element.type;
    self.ingredientsLabel.text = self.element.ingredients;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
   
    /*
    if ( [ [segue identifier] isEqualToString : @"ShowElementDetails" ] ) {
        
        ViewControllerMenu * destinationViewController = [segue destinationViewController];
        NSIndexPath * indexPath = [self.tableView indexPathForSelectedRow];
        
        if(indexPath.section == 0) {
            Menu_Element * tempMenu_Element = [self.data.appetizers objectAtIndex : indexPath.row];
            destinationViewController.element = tempMenu_Element;
        }
        
    }
    */
}


@end
