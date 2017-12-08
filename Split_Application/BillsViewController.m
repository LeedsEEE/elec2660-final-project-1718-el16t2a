//
//  BillsViewController.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "BillsViewController.h"

@interface BillsViewController ()

@end

@implementation BillsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.LoadBillAmountArray = [defaults objectForKey:@"kBillAmountArray"];
    self.LoadTableNumberArray = [defaults objectForKey:@"kTableNumberArray"];
    
    [self.SavedBillsTableView reloadData];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
        return self.LoadTableNumberArray.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView  dequeueReusableCellWithIdentifier:@"cell2"];
    
    cell.textLabel.text = [self.LoadTableNumberArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [self.LoadBillAmountArray objectAtIndex:indexPath.row];
    
   /* if(cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
        
    }
    cell.tintColor=[UIColor redColor];
    cell.textLabel.text = [NSString stringWithFormat: @"%@", arrayData [indexPath.row]];
    */
    return cell;
    
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
