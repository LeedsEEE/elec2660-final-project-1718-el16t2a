//
//  LoginViewController.m
//  Split_ApplicationUITests
//
//  Created by Tarek Qawasmi on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@property (nonatomic,strong) NSString *username;
@property (nonatomic,strong) NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *UsernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;
@property (weak, nonatomic) IBOutlet UILabel *NotificationLabel;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.

#pragma mark : to set username

    self.username = @"1";                          // username
    self.password = @"2";                          // password
    
    self.PasswordTextField.secureTextEntry = YES ; // When the user types in the password, letters turn into dots
    
}

- (IBAction)LoginPressed:(id)sender {              // When the user clicks the login button
    
    BOOL isUsersEqual = [self.username isEqualToString:[self.UsernameTextField text]];
    BOOL isPasswordsEqual = [self.password isEqualToString:[self.PasswordTextField text]];
   // NSLog(@"%d  %d",isUsersEqual,isPasswordsEqual);
    
    if (isUsersEqual && isPasswordsEqual) {       // When user enters the right details
        
        [self.NotificationLabel setText:@"Logging in ..."];
        
        //when log in is pressed and the right details are entered, we want our app to open on a certain page
        NSString * storyboardName = @"Main";      // Main.storyboard
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
        UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"main_program"]; //identifier given to the next wanted screen
        [self presentViewController:vc animated:YES completion:nil];
        
    }
    
    else {                                       // When username and password don't match the entered information :
        [self.NotificationLabel setText:@"Username or password incorrect!"];
    }
}

- (void)didReceiveMemoryWarning {

    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark : to hide keyboard after finishing typing

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
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
