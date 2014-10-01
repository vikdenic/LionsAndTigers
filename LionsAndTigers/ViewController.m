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

@property TopViewController *topVC;
@property HUDViewController *hudVC;

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
        UINavigationController *navVC = [segue destinationViewController];
        self.topVC = [navVC.viewControllers firstObject];
        self.topVC.delegate = self;
    }
    else if ([segue.identifier isEqualToString: @"HUDSegue"])
    {
        self.hudVC = segue.destinationViewController;
        self.hudVC.delegate = self;
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

//Custom Delegate Methods
-(void)tigersButtonTapped
{
    [self.topVC displayTigers];
    [self topRevealButtonTapped];
}

-(void)lionsButtonTapped
{
    [self.topVC displayLions];
    [self topRevealButtonTapped];
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
