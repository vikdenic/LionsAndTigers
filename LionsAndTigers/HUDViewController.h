//
//  HUDViewController.h
//  LionsAndTigers
//
//  Created by Vik Denic on 9/30/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HUDDelegate <NSObject>

-(void)tigersButtonTapped;
-(void)lionsButtonTapped;

@end

@interface HUDViewController : UIViewController

@property (nonatomic, weak) id <HUDDelegate> delegate;

@end
