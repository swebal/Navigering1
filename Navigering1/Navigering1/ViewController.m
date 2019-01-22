//
//  ViewController.m
//  Navigering1
//
//  Created by Markus on 2019-01-22.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"yellowToGreen"]) {
        NSLog(@"Från gul till grön");
    } else if ([segue.identifier isEqualToString:@"yellowToBlue"]) {
        NSLog(@"Från gul till blå");
    }
}


@end
