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
    
    ///////////////DatePicker Configuration///////////////////////
    
    datePicker = [[UIDatePicker alloc] init];
    datePicker.datePickerMode = UIDatePickerModeDate;
    [self.dateSelectionTextField setInputView:datePicker];
    
    UIToolbar *toolBar=[[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    [toolBar setTintColor:[UIColor grayColor]];
    UIBarButtonItem *doneBtn=[[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStylePlain   target:self action:@selector(ShowSelectedDate)];
    UIBarButtonItem *space=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [toolBar setItems:[NSArray arrayWithObjects:space,doneBtn, nil]];
    [self.dateSelectionTextField setInputAccessoryView:toolBar];
    
    //////////////////////////////////////////
    
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

-(void)ShowSelectedDate { //shows selected date from picker in textfield
    
    NSDateFormatter *formatter=[[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"dd/MMM/YYYY hh:min a"];
    self.dateSelectionTextField.text=[NSString stringWithFormat:@"%@",[formatter stringFromDate:datePicker.date]];
    [self.dateSelectionTextField resignFirstResponder];
}

//ckecks which textfield is being used, allows to calculate total automatically
- (void) textFieldDidEndEditing:(UITextField *)textField {
    
    if (self.TableNumberTextField) {
       
        [self.TableNumberTextField endEditing:YES];
   
    }
    
    if (textField == self.AmountTextField) {
     
        [self.AmountTextField endEditing:YES];
        
        self.Bill = [self.AmountTextField.text doubleValue]; // associate typed value in textfield to the Bill variable.
    
    }
    
    if (textField == self.TipTextField) {
        
        [self.TipTextField endEditing:YES];
        
        self.Tip = [self.TipTextField.text doubleValue]; // associate typed value in textfield to the Tip variable.
        
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
    
    if(sender.on) {
        
        self.Splitters=self.SplittersSliderOutlet.value;
        
        self.DiscountedBill = [self.AmountTextField.text doubleValue] -([self.AmountTextField.text doubleValue] * 0.1);
        
        self.DiscountedTotal = self.DiscountedBill + self.Tip;
        self.TotalLabel.text = [NSString stringWithFormat:@"Total: £%.2f",self.DiscountedTotal];
        
        self.DiscountedEach = self.DiscountedTotal / self.Splitters;
        self.EachLabel.text= [NSString stringWithFormat:@"Per Person: £%.2f ",self.DiscountedEach];
    
    }
    
    else {
        
    }
    
}

- (IBAction)SplittersSlider:(UISlider *)sender {
    
    self.Splitters=sender.value;
    
    self.SplittersLabel.text = [NSString stringWithFormat:@"Splitters: %.0f",sender.value];
    
    
    
    self.Each = self.Total / self.Splitters;
    self.EachLabel.text= [NSString stringWithFormat:@"Per Person: £%.2f ",self.Each];
}

-(IBAction)didPressClear:(id)sender { // Clears all the information
    
    self.dateSelectionTextField.text = @"";
    
    self.TableNumberTextField.text = @"";
    self.AmountTextField.text = @"";
    self.Bill= 0;
    
    self.TipTextField.text = @"";
    self.Tip = 0;
    
    self.TotalLabel.text = [NSString stringWithFormat:@"Total: £"];
    self.Total=0;
    
    self.SplittersSliderOutlet.value = 1 ;
    self.SplittersLabel.text = @"Splitters: 1";
    
    self.EachLabel.text= [NSString stringWithFormat:@"Per Person: £0.00"];
    
}


@end
