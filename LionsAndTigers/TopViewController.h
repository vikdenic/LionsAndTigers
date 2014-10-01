//
//  TopViewController.h
//  LionsAndTigers
//
//  Created by Vik Denic on 9/30/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopDelegate <NSObject>

-(void)topRevealButtonTapped;

@end

@interface TopViewController : UIViewController

@property (nonatomic, weak) id <TopDelegate> delegate;

@end
