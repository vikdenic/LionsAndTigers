//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Vik Denic on 9/30/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "ViewController.h"
#import "TopViewController.h"
#import "HUDViewController.h"

@interface ViewController () <TopDelegate, HUDDelegate>

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *topsLeftConstraint;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *topsRightConstraint;

@property (nonatomic) BOOL hudOpen;

@end

@implementation ViewController

-(void)viewDidLoad
{
    self.hudOpen = false;
}

//Segue to Container View's ViewController's
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString: @"TopSegue"])
    {
        UINavigationController *navC = [segue destinationViewController];
        TopViewController *topVC = [navC.viewControllers firstObject];
        topVC.delegate = self;
    }
    else if ([segue.identifier isEqualToString: @"HUDSegue"])
    {
        HUDViewController *hudVC = segue.destinationViewController;
        hudVC.delegate = self;
    }
}

//Custom Delegation Methods
-(void)topRevealButtonTapped
{
    [UIView animateWithDuration:0.5 animations:^{
        [self changeHUD];
        [self.view layoutIfNeeded];
    }];

    self.hudOpen = !self.hudOpen;
}

-(void)lionsButtonTapped
{
    NSLog(@"Lions");
}

-(void)tigersButtonTapped
{
    NSLog(@"Tigers");
}

//Helper Methods
-(void)changeHUD
{
    if (self.hudOpen == false)
    {
        self.topsRightConstraint.constant = -200;
        self.topsLeftConstraint.constant = 184;
    }
    else
    {
        self.topsRightConstraint.constant = -16;
        self.topsLeftConstraint.constant = -16;
    }
}

@end
