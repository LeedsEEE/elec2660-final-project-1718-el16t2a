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
    self.priceLabel.text = self.element.price;
    self.typeLabel.text = self.element.type;
    self.ingredientsLabel.text = self.element.ingredients;
    
    // adding a picture for the appetizers
    if ([self.nameLabel.text isEqualToString:@"OLIVES"] || [self.nameLabel.text isEqualToString:@"TORTILLA CHIPS"] || [self.nameLabel.text isEqualToString:@"NACHOS"]) {
        
        self.MenuDrawing.image = [UIImage imageNamed:@"AppetizersDrawing.png"];
    }
    
    // adding a picture for the salads
    if ([self.nameLabel.text isEqualToString:@"CLASSIC CAESAR"] || [self.nameLabel.text isEqualToString:@"KALE CAESAR"] || [self.nameLabel.text isEqualToString:@"CLASSIC COBB"] || [self.nameLabel.text isEqualToString:@"AVOCADO & BEETROOT"]) {
        
        self.MenuDrawing.image = [UIImage imageNamed:@"SaladsDrawing.png"];
    }
    
    // adding a picture for the burgers
    if ([self.nameLabel.text isEqualToString:@"THE FROMAGEMAS"] || [self.nameLabel.text isEqualToString:@"THE CHEESE"] || [self.nameLabel.text isEqualToString:@"CLASSIC CHEESE"] || [self.nameLabel.text isEqualToString:@"CLASSIC"] || [self.nameLabel.text isEqualToString:@"CHILLI"] || [self.nameLabel.text isEqualToString:@"C-REX"] || [self.nameLabel.text isEqualToString:@"CLASSIC CHICKEN"] || [self.nameLabel.text isEqualToString:@"BEAN PATTY"] || [self.nameLabel.text isEqualToString:@"MUSHROOM"] ) {
        
        self.MenuDrawing.image = [UIImage imageNamed:@"BurgersDrawing.png"];
    }
    
    // adding a picture for the fries and sides
    if ([self.nameLabel.text isEqualToString:@"OLIVES"] || [self.nameLabel.text isEqualToString:@"TORTILLA CHIPS"] || [self.nameLabel.text isEqualToString:@"NACHOS"]) {
        
        self.MenuDrawing.image = [UIImage imageNamed:@"BurgersDrawing.png"];
    }
    
    // adding a picture for the desserts
    if ([self.nameLabel.text isEqualToString:@"FRENCH FRIES"] || [self.nameLabel.text isEqualToString:@"CHEESE FRIES"] || [self.nameLabel.text isEqualToString:@"SWEET POTATO FRIES"] || [self.nameLabel.text isEqualToString:@"ONION RINGS"] || [self.nameLabel.text isEqualToString:@"MACARONI CHEESE"] || [self.nameLabel.text isEqualToString:@"COLESLAW"] || [self.nameLabel.text isEqualToString:@"CHICKEN NUGGETS"]) {
        
        self.MenuDrawing.image = [UIImage imageNamed:@"F&SDrawing.png"];
    }
    
    // adding a picture for the drinks
    if ([self.nameLabel.text isEqualToString:@"OREO CHEESECAKE"] || [self.nameLabel.text isEqualToString:@"CHOCOLATE BROWNIE"]) {
        
        self.MenuDrawing.image = [UIImage imageNamed:@"DessertsDrawing.png"];
    }
    
    if ([self.nameLabel.text isEqualToString:@"JUICE"] || [self.nameLabel.text isEqualToString:@"SOFTS"] || [self.nameLabel.text isEqualToString:@"MILKSHAKES"]) {
        
        self.MenuDrawing.image = [UIImage imageNamed:@"DrinksDrawing.png"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation
/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
