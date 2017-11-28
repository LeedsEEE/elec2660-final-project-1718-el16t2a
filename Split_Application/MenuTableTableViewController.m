//
//  MenuTableTableViewController.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MenuTableTableViewController.h"

@interface MenuTableTableViewController ()

@end

@implementation MenuTableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.data = [[MenuDataModel alloc] init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2; //to be 6 later
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
    NSInteger  numberOfRows;

    if(section == 0) {
        numberOfRows= self.data.AppetizerElement.count ;
    }
    
    if(section == 1) {
        numberOfRows= self.data.AppetizerElement.count ;
    }
    
    
    return  numberOfRows;
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
   
    return [NSString stringWithFormat:@"Level %ld Modules",section+1];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MenuElementCell" forIndexPath:indexPath];
    
    // Configure the cell...
 
    // We create a temporary model object to have the information from MenuDataModel while we add it to the cell
    
    if (indexPath.section == 0 ) /* appetizer correspond to section 0 */ {
        MenuElement*tempMenuElement = [self.data.AppetizerElement objectAtIndex:indexPath.row];
 
        cell.textLabel.text=tempMenuElement.Name;
    }
    
    if (indexPath.section == 1 ) /*  correspond to section 1 */ {
        MenuElement*tempMenuElement = [self.data.BurgerElement objectAtIndex:indexPath.row];
        
        cell.textLabel.text=tempMenuElement.Name;
    }
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
