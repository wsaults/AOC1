//
//  ViewController.m
//  AOC1 1212
//
//  Created by Will Saults on 11/15/12.
//  Copyright (c) 2012 Full Sail. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"

#define kFacebookImage facebookIcon.png
#define kTwitterImage twitterIcon.png
#define kSpotifyImage spotifyIcon.png

@interface ViewController () {
    IBOutlet UIImageView *userProfileImage;
    IBOutlet UILabel *userNameLabel;
    IBOutlet UITextView *userProfileInfoTextView;
}

@end

@implementation ViewController

// I would synthesize the socialCollectionView here but it's done for me now.

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.socialCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"SocialCell"];
    
    // TODO: set user specific outlets
    [userProfileImage setImage:[UIImage imageNamed:@"me.jpg"]];
    [userNameLabel setText:@"Will Saults"];
    [userProfileInfoTextView setText:@"I've got loads to say here..."];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    // TODO: check if the user is already logged in.
//    [self.navigationController presentViewController:[LoginViewController new] animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView DataSource
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 4; // 4 Cells for each row(aka: section).
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 3; // This will depend on the content coming from the user. TODO: for now we will use 2 sections.
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"SocialCell" forIndexPath:indexPath];
    
    // Modify the cell:
    [cell setBackgroundColor:[UIColor colorWithRed:237 green:237 blue:237 alpha:.5]];
    
    // Cell Content title
    UILabel *socialContentTitle = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 175, 22)];
    [socialContentTitle setText:@"Title"];
    [socialContentTitle setFont:[UIFont boldSystemFontOfSize:15]];
    [socialContentTitle setBackgroundColor:[UIColor clearColor]];
    
    // Cell Social indicator
    UIImageView *socialIndicatorImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"facebookIcon.png"]];
    [socialIndicatorImageView setFrame:CGRectMake(194, 16, 30, 30)];
    
    // Cell Social content
    UIImageView *socialContentImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sunset-2.jpg"]];
    [socialContentImage setFrame:CGRectMake(14, 50, 210, 138)];
    
    // Add subviews to the cell
    [cell addSubview:socialContentTitle];
    [cell addSubview:socialIndicatorImageView];
    [cell addSubview:socialContentImage];
    return cell;
}

#pragma mark - UICollectionView Delegate
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: do something when the user selects a cell.
}

@end
