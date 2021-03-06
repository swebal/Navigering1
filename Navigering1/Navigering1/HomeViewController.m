//
//  HomeViewController.m
//  Navigering1
//
//  Created by Markus on 2019-01-22.
//  Copyright © 2019 The App Factory AB. All rights reserved.
//

#import "HomeViewController.h"
#import "LaunchViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
 
 
 Förälder *f = [Förälder new];
 Barn *b = [Barn new];
 b.förälder = f;
 [f addBarnToBarnArray:b];
 
 
}
*/

- (IBAction)logoutButtonPressed:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults removeObjectForKey:@"didLogin"];
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)pushViewPressed:(id)sender {
    UIViewController *viewController = [UIViewController alloc];
    viewController.view.backgroundColor = [UIColor blueColor];
    [self.navigationController pushViewController:viewController animated:true];
}

- (IBAction)presentViewPressed:(id)sender {
    
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NoClassViewController"];
//    viewController.view.backgroundColor = [UIColor greenColor];
//    viewController.title = @"Titta på mig";
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    [self.navigationController presentViewController:navigationController animated:true completion:nil];
}

@end
