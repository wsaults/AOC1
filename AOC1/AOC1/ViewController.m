//
//  ViewController.m
//  AOC1 1212
//
//  Created by Will Saults on 11/15/12.
//  Copyright (c) 2012 Full Sail. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"

// TODO: cells have a width of 238 which is 1024 - 40 = 984 - (3 * 10) =  954 / 4 = 238.5

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    // TODO: check if the user is already logged in.
    [self.navigationController presentViewController:[LoginViewController new] animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView DataSource
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 4; // 4 Cells for each row.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1; // This will depend on the content coming from the user. TODO: for now we will use 1 section.
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    // Modify the cell HERE:
    
    return cell;
}

#pragma mark - UICollectionView Delegate
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: do something when the user selects a cell.
}

@end
