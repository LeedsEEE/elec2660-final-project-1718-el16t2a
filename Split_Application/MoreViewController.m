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
    
    //self.WaiterNameLabel.text = username from login page
    
    self.WaiterNameLabel.text = @"ALQAWASMI Tariq";
    self.WorkingHoursLabel.text = @"Working Hours:\n Weekdays: 14:00-18:00 \n Weekend: 10:00-18:00";
    
    arrayAddData = [[NSMutableArray alloc] init];
    arrayDeleteData = [[NSMutableArray alloc] init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

///////////////Code for the textfield and the table view/////////////////////////////

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell1"];
    
    if (cell == nil) {
        
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell1"];
        
    }
    
    cell.tintColor = [UIColor redColor];
    cell.textLabel.text = [NSString stringWithFormat:@"%@", arrayAddData[indexPath.row]];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (arrayAddData.count > 0) {
        
        return arrayAddData.count;
        
    }
    
    return 0;
    
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [arrayDeleteData addObject:arrayAddData [indexPath.row]];
    
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [arrayDeleteData removeObject:arrayAddData[indexPath.row]];
    
}

-(UITableViewCellEditingStyle) tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 3;
    
}

///////////////////////////////////////////////////////////////////////////////////


- (IBAction)AddWasPressed:(UIButton *)sender {
    
    [arrayAddData addObject:self.NotesTextField.text];
    [self.NotesTableView reloadData];
    self.NotesTextField.text=@"";
    
}

- (IBAction)DeleteWasPressed:(UIButton *)sender {
    
    sender.selected = !sender.selected; //! = not
    [self.NotesTableView setEditing:sender.selected animated:YES];
    
    if(arrayDeleteData.count) {
        
        for (NSString *note in arrayDeleteData) {
            
            [arrayDeleteData removeObject: note];
            
        }
        
        [arrayDeleteData removeAllObjects];
        [self.NotesTableView reloadData];
    }
}

- (IBAction)LogoutPressed:(id)sender {
  
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

    


@end
