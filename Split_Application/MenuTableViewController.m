//
//  MenuTableViewController.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 29/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MenuTableViewController.h"
#import "MenuTableHeaderView.h"

@interface MenuTableViewController ()

@end

@implementation MenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = [[MElementDataModel alloc] init]; // initialises the data model array
    
    self.tableView.tableHeaderView = [[MenuTableHeaderView alloc] initWithText:@"Welcome To Byron"]; // writes this on the header view image
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Headers for TableView

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if(section==0) {
        return [NSString stringWithFormat:@"While you wait"];
    }
    
    if(section==1) {
        return [NSString stringWithFormat:@"Salads"];
    }
    
    if(section==2) {
        return [NSString stringWithFormat:@"Proper Hamburgers"];
    }
    
    if(section==3) {
        return [NSString stringWithFormat:@"Fries and Sides"];
    }
    
    if(section==4) {
        return [NSString stringWithFormat:@"Desserts"];
    }
    
    if(section==5) {
        return [NSString stringWithFormat:@"Drinks"];
    }
    
    else return 0;
}

#pragma mark to change color of text in sections

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section {
    
    if ( [view isKindOfClass:[UITableViewHeaderFooterView class]] ) {
        
        UITableViewHeaderFooterView *tableViewHeaderFooterView = (UITableViewHeaderFooterView *) view;
        
        tableViewHeaderFooterView.textLabel.textColor  = [UIColor brownColor];
        
    }
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//implementation, return the number of sections manually
    return 6; // we have 6 sections in our menu
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // returns number of rows in this section after counting them automatically
    
    NSInteger numberOfRows;
    if (section == 0) {
        numberOfRows = self.data.Appetizers.count;
    }
    
    if (section == 1) {
        numberOfRows = self.data.Salads.count;
    }
    
    if (section == 2) {
        numberOfRows = self.data.Burgers.count;
    }
    
    if (section == 3) {
        numberOfRows = self.data.FriesSides.count;
    }
    
    if (section == 4) {
        numberOfRows = self.data.Desserts.count;
    }
    
    if (section == 5) {
        numberOfRows = self.data.Drinks.count;
    }
    
    return numberOfRows;

}

// This method supplies the data source with a cell to use

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MenuCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    // Grabs data from menu element array and displays it in the cells

    if(indexPath.section == 0) { //Appetizers
        
        Menu_Element *tempMenu_element = [self.data.Appetizers objectAtIndex:indexPath.row]; // we need to create a  temporary object in which to hold the information from our menudatamodel while                                                                                      we apply it to the cell
        
        //once we have the object, we can use it's data to set the text labels in each cell
        cell.textLabel.text = tempMenu_element.name;
        cell.detailTextLabel.text = tempMenu_element.price;
    }
    
    if(indexPath.section == 1) { //Salads
        Menu_Element *tempMenu_element = [self.data.Salads objectAtIndex:indexPath.row]; // we need to create a  temporary object in which to hold the information from our menudatamodel while                                                                                      we apply it to the cell
        
        //once we have the object, we can use it's data to set the text labels in each cell
        cell.textLabel.text = tempMenu_element.name;
        cell.detailTextLabel.text = tempMenu_element.price;
    }
    
    if(indexPath.section == 2) { //Burgers
        Menu_Element *tempMenu_element = [self.data.Burgers objectAtIndex:indexPath.row]; // we need to create a  temporary object in which to hold the information from our menudatamodel while                                                                                      we apply it to the cell
        
        //once we have the object, we can use it's data to set the text labels in each cell
        cell.textLabel.text = tempMenu_element.name;
        cell.detailTextLabel.text = tempMenu_element.price;
    }
    
    if(indexPath.section == 3) { //Fries and Sides
        Menu_Element *tempMenu_element = [self.data.FriesSides objectAtIndex:indexPath.row]; // we need to create a  temporary object in which to hold the information from our menudatamodel while                                                                                      we apply it to the cell
        
        //once we have the object, we can use it's data to set the text labels in each cell
        cell.textLabel.text = tempMenu_element.name;
        cell.detailTextLabel.text = tempMenu_element.price;
    }
    
    if(indexPath.section == 4) { //Desserts
        Menu_Element *tempMenu_element = [self.data.Desserts objectAtIndex:indexPath.row]; // we need to create a  temporary object in which to hold the information from our menudatamodel while                                                                                      we apply it to the cell
        
        //once we have the object, we can use it's data to set the text labels in each cell
        cell.textLabel.text = tempMenu_element.name;
        cell.detailTextLabel.text = tempMenu_element.price;
    }
    
    if(indexPath.section == 5) { //Drinks
        Menu_Element *tempMenu_element = [self.data.Drinks objectAtIndex:indexPath.row]; // we need to create a  temporary object in which to hold the information from our menudatamodel while                                                                                      we apply it to the cell
        
        //once we have the object, we can use it's data to set the text labels in each cell
        cell.textLabel.text = tempMenu_element.name;
        cell.detailTextLabel.text = tempMenu_element.price;
    }
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ( [ [segue identifier] isEqualToString : @"ShowElementDetails" ] ) {
        
        ViewControllerMenu * destinationViewController = [segue destinationViewController];
        NSIndexPath * indexPath = [self.tableView indexPathForSelectedRow];
        
        if(indexPath.section == 0) { //shows the details of the appetizers
            
            Menu_Element *tempMenu_element = [self.data.Appetizers objectAtIndex:indexPath.row];
            
            destinationViewController.element = tempMenu_element;
        }
        
        if(indexPath.section == 1) { //shows the details of the salads
            
            Menu_Element *tempMenu_element = [self.data.Salads objectAtIndex:indexPath.row];
            
            destinationViewController.element = tempMenu_element;
        }
        
        if(indexPath.section == 2) { //shows the details of the burgers
            
            Menu_Element *tempMenu_element = [self.data.Burgers objectAtIndex:indexPath.row];
            
            destinationViewController.element = tempMenu_element;
        }
        
        if(indexPath.section == 3) { //shows the details of the fries and sides
            
            Menu_Element *tempMenu_element = [self.data.FriesSides objectAtIndex:indexPath.row];
            
            destinationViewController.element = tempMenu_element;
        }
        
        if(indexPath.section == 4) { //shows the details of the desserts
            
            Menu_Element *tempMenu_element = [self.data.Desserts objectAtIndex:indexPath.row];
            
            destinationViewController.element = tempMenu_element;
        }
        
        if(indexPath.section == 5) { //shows the details of the drinks
            
            Menu_Element *tempMenu_element = [self.data.Drinks objectAtIndex:indexPath.row];
            
            destinationViewController.element = tempMenu_element;
        }
    }

}


@end
