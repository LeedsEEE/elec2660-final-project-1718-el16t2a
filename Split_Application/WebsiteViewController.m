//
//  WebsiteViewController.m
//  Split_Application
//
//  Created by Tarek Qawasmi on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "WebsiteViewController.h"

@interface WebsiteViewController ()

@end

@implementation WebsiteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //takes us to this website without exiting the application
    
    NSURL *ByronURL = [NSURL URLWithString:@"https://www.byronhamburgers.com"];
    
    NSURLRequest *ByronRequest = [NSURLRequest requestWithURL:ByronURL];
    
    [ByronWeb loadRequest:ByronRequest];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
