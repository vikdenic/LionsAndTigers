//
//  TopViewController.m
//  LionsAndTigers
//
//  Created by Vik Denic on 9/30/14.
//  Copyright (c) 2014 MobileMakers. All rights reserved.
//

#import "TopViewController.h"
#import "CustomCollectionViewCell.h"
#import "HUDViewController.h"

@interface TopViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;

@property NSArray *photosArray;

@end

@implementation TopViewController

-(void)viewDidLoad
{
    [self displayLions];
}

//MARK: Actions
- (IBAction)onRevealButtonTapped:(UIBarButtonItem *)sender
{
    [self.delegate topRevealButtonTapped];
}

//MARK: Helpers
-(void)displayLions
{
    self.photosArray = [NSArray arrayWithObjects:[UIImage imageNamed:@"lion"], [UIImage imageNamed:@"lion2"], [UIImage imageNamed:@"lion3"], nil];
    [self.collectionView reloadData];
}

- (void)displayTigers
{
    self.photosArray = [NSArray arrayWithObjects:[UIImage imageNamed:@"tiger"], [UIImage imageNamed:@"tiger2"], [UIImage imageNamed:@"tiger3"], nil];
    [self.collectionView reloadData];
}

//MARK: CollectionView Delegate Methods
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 3;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];

    cell.backgroundColor = [UIColor redColor];
    cell.imageView.image = [self.photosArray objectAtIndex:indexPath.row];
    return cell;
}

@end
