//
//  PhotoFacebookAppDelegate.h
//  PhotoFacebook
//
//  Created by Hung Phi on 7/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PhotoFacebookViewController;

@interface PhotoFacebookAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet PhotoFacebookViewController *viewController;

@end
