//
//  SecondViewController.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 25/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "SplitViewController.h"

@interface SplitViewController ()

@end

@implementation SplitViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.SplittersSliderOutlet.value = 1 ;
    
    [self SplittersSlider:self.SplittersSliderOutlet]; // send message to get splitter label to display 1
   
    //initiating text field to be able to use what is typped in
    
    self.TipTextField.delegate = self;
    self.AmountTextField.delegate = self;
    self.TableNumberTextField.delegate = self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//ckecks which textfield is being used, allows to calculate total automatically
- (void) textFieldDidEndEditing:(UITextField *)textField {
    
    if (self.TableNumberTextField) {
       
        [self.TableNumberTextField endEditing:YES];
   
    }
    
    if (textField == self.AmountTextField) {
     
        [self.AmountTextField endEditing:YES];
        self.Bill = [self.AmountTextField.text doubleValue]; // associate typed value to the selected variable
    
    }
    
    if (textField == self.TipTextField) {
        
        self.Tip = [self.TipTextField.text doubleValue]; // associate typed value to the selected variable
        self.Total = (self.Bill + self.Tip);
        
        self.TotalLabel.text = [NSString stringWithFormat:@"Total: £%.2f",self.Total];
        
        self.Each = self.Total/self.Splitters;
        self.EachLabel.text= [NSString stringWithFormat:@"Per Person: £%.2f ",self.Each];
   
    }
}

- (IBAction)didPressBackground:(id)sender {
    
    [self.view endEditing:YES];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField { //return button on keyboard
    
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)StudentDiscount:(UISwitch *)sender {
}

- (IBAction)SplittersSlider:(UISlider *)sender {
    
    self.SplittersLabel.text = [NSString stringWithFormat:@"Splitters: %.0f",sender.value];
    
    
    self.Splitters=sender.value;
    
    self.Each = self.Total / self.Splitters;
    self.EachLabel.text= [NSString stringWithFormat:@"Per Person: £%.2f ",self.Each];
}

@end
