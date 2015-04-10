//
//  TableInterfaceController.m
//  AssetAppleWatch
//
//  Created by Gallardo, Miguel A. on 10/4/15.
//  Copyright (c) 2015 Gallardo, Miguel A. All rights reserved.
//

#import "TableInterfaceController.h"

@interface TableInterfaceController ()

@end

@implementation TableInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    NSLog(@"%@ initWithContext", self);
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
    NSLog(@"%@ will deactivate", self);
}

@end



