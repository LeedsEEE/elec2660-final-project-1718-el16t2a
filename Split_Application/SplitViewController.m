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
    self.TipTextField.text = @"0.00" ;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)StudentDiscount:(UISwitch *)sender {
}

- (IBAction)SplittersSlider:(UISlider *)sender {
    
    self.SplittersLabel.text = [NSString stringWithFormat:@"Splitters: %d",sender.value];
    
    _Splitters = sender.value;
    
    //_Bill= self.AmountTextField text;
    //_Tip= self.TipTextField text;
    
    _Total = _Bill + _Tip ;
    self.TotalLabel.text= [NSString stringWithFormat:@"Total: %.2f £",_Total];
    
    _Each = _Total/_Splitters ;
     self.EachLabel.text= [NSString stringWithFormat:@"Total: %.2f £",_Each];
}
@end
