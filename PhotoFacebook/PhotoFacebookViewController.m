//
//  PhotoFacebookViewController.m
//  PhotoFacebook
//
//  Created by Hung Phi on 7/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PhotoFacebookViewController.h"
#import "QuartzCore/QuartzCore.h"

@implementation PhotoFacebookViewController

@synthesize titleLogin;
@synthesize buttonLogin;
@synthesize textPass;
@synthesize textUserName;

- (void)dealloc
{
    [super dealloc];
    [titleLogin release];
    [buttonLogin release];
    [textPass release];
    [textUserName release];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"Login ";
    
    //Add logo facebook : 
    UIImageView *backround = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,  320 , 460)] ;
    [backround setImage:[UIImage imageNamed:@"backround.png"]];
    [self.view addSubview:backround];
    
    //Add logo facebook : 
    UIImageView *logo = [[UIImageView alloc] initWithFrame:CGRectMake(100, 5, 120, 40)] ;
    [logo setImage:[UIImage imageNamed:@"logo.jpg"]];
    [self.view addSubview:logo];
    
    //add text box email :
    //UILabel *labelName = [[UILabel alloc] initWithFrame:CGRectMake(50, 47, 70, 13)];
    //labelName.text = @"Email :";
    //labelName.textColor = [UIColor whiteColor];
    //[labelName setBackgroundColor:[UIColor blackColor]];
    //[self.view addSubview:labelName];
    
    textUserName = [[UITextField alloc] initWithFrame:CGRectMake(50, 60, 220, 24)];
    [textUserName setTextColor:[UIColor blackColor]];
    [textUserName setBackgroundColor:[UIColor whiteColor]];
    [textUserName setPlaceholder:@"Email"];
    textUserName.layer.borderColor = [[UIColor blackColor]CGColor];
    textUserName.layer.borderWidth = 1.5f;
    [self.view addSubview:textUserName];
    
    //add text box pass : 
    //UILabel *labelPass = [[UILabel alloc] initWithFrame:CGRectMake(50, 97, 100, 13)];
    //labelPass.text = @"Password :";
    //labelPass.textColor = [UIColor whiteColor];
    //[labelPass setBackgroundColor:[UIColor blackColor]];
    //[self.view addSubview:labelPass];
    
    textPass = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, 220, 24)];
    [textPass setSecureTextEntry:YES];
    [textPass setTextColor:[UIColor blackColor]];
    [textPass setPlaceholder:@"Password"];
    [textPass setBackgroundColor:[UIColor whiteColor]];
    textPass.layer.borderColor = [[UIColor blackColor]CGColor];
    textPass.layer.borderWidth = 1.5f;
    [self.view addSubview:textPass];
    
    //add button login :
    buttonLogin = [[UIButton alloc] initWithFrame:CGRectMake(80, 140, 160, 30)];
    [buttonLogin  setImage:[UIImage imageNamed:@"connect.png"] forState:UIControlStateNormal];
    [buttonLogin setTitle:@"Login" forState:NO];
    [buttonLogin addTarget:self action:@selector(ClickLogin:) forControlEvents:UIControlEventTouchUpInside];
    buttonLogin.layer.borderColor = [[UIColor whiteColor]CGColor];
    buttonLogin.layer.borderWidth = 1.0;
    [buttonLogin.layer setCornerRadius:4.0];
    [self.view addSubview:buttonLogin];
    
    
}

- (IBAction)ClickLogin:(id)sender
{
    NSLog(@"Log in"); 
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
