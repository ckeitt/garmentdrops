//
//  CollectionsViewController.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/10/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "CollectionsViewController.h"

NSString * collectionsCollectionViewCellID = @"collectionsCollectionViewCellID";

@interface CollectionsViewController ()

@end

@implementation CollectionsViewController

-(instancetype)initWithGarmentType: (GarmentType *) garmentType {
    if (self = [super init]) {
        self.type = garmentType;
        [self base_init];
    }
    
    return self;
}

-(void) base_init {
    
    self.collectionsView = [[CollectionsView alloc] init];
    self.collectionsView.collectionView.delegate = self;
    self.collectionsView.collectionView.dataSource = self;
    [self.collectionsView.collectionView registerClass:[CollectionsCollectionViewCell class] forCellWithReuseIdentifier:collectionsCollectionViewCellID];
    
    self.view = self.collectionsView;
    
    [self populateCollectionViewWithGarments];
}

-(void) populateCollectionViewWithGarments {
    [[GarmentDropAPI manager] garmentsWithTypeFromGarmentTypeID:self.type.pk success:^(NSArray<Garment *> * _Nonnull garments) {
        self.garments = [garments copy];
        [self.collectionsView.collectionView reloadData];
    } failure:^(NSError * _Nonnull error) {
        NSLog(@"ERROR: %@", error);
    }];
}

#pragma mark - Collection View Data Source & Delegate Methods

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.garments count];
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(self.view.frame.size.width, [CollectionsCollectionViewCell collectionsCollectionViewCellHeight]);
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 1.0f;
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    CollectionsCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:collectionsCollectionViewCellID forIndexPath:indexPath];
    
    [cell configureCellWithItem:[self.garments objectAtIndex:indexPath.item]];
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    GarmentDetailViewController * garmentDetailVC = [[GarmentDetailViewController alloc] initWithGarment:[self.garments objectAtIndex:indexPath.item]];
    
    [self.navigationController pushViewController:garmentDetailVC animated:YES];
}

@end
