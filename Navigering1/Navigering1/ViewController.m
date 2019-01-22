//
//  ViewController.m
//  Navigering1
//
//  Created by Markus on 2019-01-22.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSString *kSomeOtherYellowToBlue;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    kSomeOtherYellowToBlue = @"someOtherYellowToBlue";
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"yellowToGreen"]) {
        NSLog(@"Från gul till grön");
    } else if ([segue.identifier isEqualToString:@"yellowToBlue"]) {
        NSLog(@"Från gul till blå");
    } else if ([segue.identifier isEqualToString:@"gotoGreenPressed"]) {
        NSLog(@"Knappen till grön trycktes!");
    }
}


- (IBAction)activateButtonPressed:(id)sender {
    [NSTimer scheduledTimerWithTimeInterval:3.0 repeats:false block:^(NSTimer * _Nonnull timer) {
        [self performSegueWithIdentifier:kSomeOtherYellowToBlue sender:nil];
    }];
}

@end
