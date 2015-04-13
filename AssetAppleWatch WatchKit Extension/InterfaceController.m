//
//  InterfaceController.m
//  AssetAppleWatch WatchKit Extension
//
//  Created by Gallardo, Miguel A. on 10/4/15.
//  Copyright (c) 2015 Gallardo, Miguel A. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController
@synthesize myLabel;

int cont = 0;

- (instancetype)initWithContext:(id)context {
    self = [super init];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
    }
    return self;
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}


- (IBAction)showUserInfo {
    NSUserDefaults *mySharedDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.AssetAppleWatch"];
    [mySharedDefaults synchronize];
    self.myLabel.text = [mySharedDefaults stringForKey:@"savedUserInput"];
    
    }

@end
