//
//  ContactUsViewController.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MoreViewController.h"
//#import "LoginViewController.h"

@interface MoreViewController ()

@end

@implementation MoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.WaiterNameLabel.text = @"ALQAWASMI Tariq";
    self.WorkingHoursLabel.text = @"Working Hours:\n Weekdays: 14:00-18:00 \n Weekend: 10:00-18:00";
    
    arrayAddData = [[NSMutableArray alloc] init];     // This array holds any note written in the text field.
    arrayDeleteData = [[NSMutableArray alloc] init];  // This array will have the selected notes to delete.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

///////////////Code for the textfield and the table view/////////////////////////////

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1"];
    
    if (cell == nil) {
        
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell1"];
        
    }
    
    cell.tintColor = [UIColor redColor]; // ticks are in red color and show what is selected to be deleted.
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", arrayAddData[indexPath.row]]; // shows what's written in the TextField in the TableView
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (arrayAddData.count > 0) {
        
        return arrayAddData.count;
        
    }
    
    return 0;
    
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [arrayDeleteData addObject:arrayAddData [indexPath.row]];              // adds what's ArrayAddData in the arrayDeleteData
    
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [arrayDeleteData removeObject:arrayAddData[indexPath.row]];            // removes object from the array
    
}

-(UITableViewCellEditingStyle) tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 3;
    
}

///////////////////////////////////////////////////////////////////////////////////


- (IBAction)AddWasPressed:(id)sender {
    
    [arrayAddData addObject:self.NotesTextField.text]; // adds what's written in the textField to the Array
    [self.NotesTableView reloadData];
    self.NotesTextField.text=@"";
    
}

- (IBAction)DeleteWasPressed:(UIButton *)sender {
    
    sender.selected = !sender.selected; //! = not
    
    [self.NotesTableView setEditing:sender.selected animated:YES];
    
    if(arrayDeleteData.count) {
        
        for (NSString *note in arrayDeleteData) {
            
            [arrayAddData removeObject: note];
            
        }
        
        [arrayDeleteData removeAllObjects]; // deletes selected notes
        [self.NotesTableView reloadData]; //reload data to see if there's notes to display
    }
}


// to logout user from application
- (IBAction)LogoutPressed:(id)sender {
  
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

#pragma mark : to hide keyboard after finishing typing

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
