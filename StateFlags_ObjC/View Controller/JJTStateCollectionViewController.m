//
//  JJTStateCollectionViewController.m
//  StateFlags_ObjC
//
//  Created by John Tate on 9/10/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

#import "JJTStateCollectionViewController.h"
#import "JJTStateController.h"
#import "JJTStateCollectionViewCell.h"
#import "JJTState.h"

@interface JJTStateCollectionViewController ()

@end

@implementation JJTStateCollectionViewController

static NSString * const reuseIdentifier = @"stateCell";

- (void)viewDidLoad {
    [super viewDidLoad];

    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];

}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [[JJTStateController shared].states count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JJTStateCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"stateCell" forIndexPath:indexPath];
    
    JJTState *state = [JJTStateController shared].states[indexPath.row];
    cell.state = state;
    return cell;
}

@end
