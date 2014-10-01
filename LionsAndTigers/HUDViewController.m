//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Vik Denic on 9/30/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)onLionsButtonTapped:(UIButton *)sender
{
    [self.delegate lionsButtonTapped];
}

- (IBAction)onTigersButtonTapped:(UIButton *)sender
{
    [self.delegate tigersButtonTapped];
}


@end
