//
//  TableInterfaceController.m
//  AssetAppleWatch
//
//  Created by Gallardo, Miguel A. on 10/4/15.
//  Copyright (c) 2015 Gallardo, Miguel A. All rights reserved.
//

#import "TableInterfaceController.h"
#import "MainRowType.h"

@interface TableInterfaceController ()

@property (strong,nonatomic) IBOutlet WKInterfaceTable *myTable;

@end


@implementation TableInterfaceController

@synthesize myTable;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    NSLog(@"%@ initWithContext", self);
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSLog(@"%@ will activate", self);
    [self loadTableData];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
    NSLog(@"%@ will deactivate", self);
}

- (void)loadTableData {
    
    NSLog(@"loadTableData");
    
    NSArray *lista = [NSArray arrayWithObjects:@"Item1", @"Item2", @"Item3", @"Item4", @"Item5", @"Item6", @"Item7", nil];
    
    [myTable setNumberOfRows:lista.count withRowType:@"RowSelected"];
    
    for(NSInteger i=0;i<lista.count;i++) {
        MainRowType *row = [self.myTable rowControllerAtIndex:i];
        [row.rowDescription setText:lista[i]];
        
    }
    
}

@end



