//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Vik Denic on 9/30/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()

@end

@implementation TopViewController

- (IBAction)onRevealButtonTapped:(UIBarButtonItem *)sender
{
    [self.delegate topRevealButtonTapped];
}

@end
