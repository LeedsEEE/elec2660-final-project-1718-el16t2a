//
//  BillsViewController.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BillsViewController : UIViewController <UITableViewDataSource , UITableViewDelegate>

@property NSMutableArray *LoadTableNumberArray;
@property NSMutableArray *LoadBillAmountArray;

@property (weak, nonatomic) IBOutlet UITableView *SavedBillsTableView;

@end
