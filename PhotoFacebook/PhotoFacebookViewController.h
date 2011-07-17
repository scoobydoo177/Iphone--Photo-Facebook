//
//  PhotoFacebookViewController.h
//  PhotoFacebook
//
//  Created by Hung Phi on 7/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoFacebookViewController : UIViewController 

{
    UINavigationBar *titleLogin;
    UIButton *buttonLogin;
    UITextField *textUserName;
    UITextField *textPass;
}

- (IBAction)ClickLogin:(id)sender;

@property (nonatomic, retain) UINavigationBar *titleLogin;
@property (nonatomic, retain) UIButton *buttonLogin;
@property (nonatomic, retain) UITextField *textUserName;
@property (nonatomic, retain) UITextField *textPass;

@end
