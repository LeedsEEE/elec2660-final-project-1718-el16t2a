//
//  MapsViewController.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MapsViewController.h"

@interface MapsViewController ()

@end

@implementation MapsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *MapURL =[NSURL URLWithString:@"https://www.google.co.uk/maps/place/Byron+Lands+Lane,+9a+Lands+Ln,+Leeds+LS1+6AW,+UK/@53.7979323,-1.5436804,11z/data=!4m2!3m1!1s0x48795c1be60496ab:0x8f567d7008597cf5?hl=en"];
                    
    //https://www.google.co.uk/maps/place/Byron+Lands+Lane/@53.7979323,-1.5458691,17z/data=!3m1!4b1!4m5!3m4!1s0x48795c1be60496ab:0x8f567d7008597cf5!8m2!3d53.7979323!4d-1.5436804
    
    NSURLRequest *MapRequest = [NSURLRequest requestWithURL:MapURL];
    
    [MapWeb loadRequest:MapRequest];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
