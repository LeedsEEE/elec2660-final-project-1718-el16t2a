//
//  SecondViewController.h
//  Split_Application
//
//  Created by Tarek Qawasmi on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SplitViewController : UIViewController <UITextFieldDelegate>

{
    UIDatePicker *datePicker;
}

// Defining variables that will be used in this file.
// Some of them have connections from the ViewController in main.storyboard.


@property NSInteger TableNumber;

@property float Bill;
@property float DiscountedBill;

@property float Tip;

@property float Total;
@property float DiscountedTotal;

@property NSInteger Splitters;

@property float Each;
@property float DiscountedEach;

//setting up the connections from the view controller in the storyboard

@property (weak, nonatomic) IBOutlet UITextField *dateSelectionTextField;

@property (weak, nonatomic) IBOutlet UITextField *TableNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *AmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *TipTextField;

@property (weak, nonatomic) IBOutlet UILabel *TotalLabel;
@property (weak, nonatomic) IBOutlet UILabel *SplittersLabel;
@property (weak, nonatomic) IBOutlet UILabel *EachLabel;

@property (weak, nonatomic) IBOutlet UISlider *SplittersSliderOutlet;

-(IBAction)didPressClear:(id)sender;

- (IBAction)didPressBackground:(id)sender;

- (IBAction)StudentDiscount:(UISwitch *)sender;

- (IBAction)SplittersSlider:(UISlider *)sender;

@end

