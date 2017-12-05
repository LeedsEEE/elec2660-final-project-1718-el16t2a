//
//  SecondViewController.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SplitViewController : UIViewController <UITextFieldDelegate>

//initialising the "variables" we will use

@property NSInteger TableNumber;
//@property Date;
@property float Bill;
@property float Tip;
@property float Total;
@property NSInteger Splitters;
@property float Each;

//setting up the connections from the view controller in the storyboard

@property (weak, nonatomic) IBOutlet UITextField *TableNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *AmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *TipTextField;
@property (weak, nonatomic) IBOutlet UILabel *TotalLabel;
@property (weak, nonatomic) IBOutlet UILabel *SplittersLabel;
@property (weak, nonatomic) IBOutlet UILabel *EachLabel;
@property (weak, nonatomic) IBOutlet UISlider *SplittersSliderOutlet;

- (IBAction)didPressBackground:(id)sender;

- (IBAction)StudentDiscount:(UISwitch *)sender;
- (IBAction)SplittersSlider:(UISlider *)sender;

@end

