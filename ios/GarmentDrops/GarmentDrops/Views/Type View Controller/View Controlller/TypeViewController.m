//
//  TypeViewController.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/10/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "TypeViewController.h"

NSString * typeCollectionViewCellID = @"typeCollectionViewCellID";

@interface TypeViewController ()

@end

@implementation TypeViewController

-(instancetype)init {
    if (self = [super init]) {
        [self base_init];
    }
    
    return self;
}

-(void) base_init {
    
    self.typeView = [[TypeView alloc] init];
    self.typeView.collectionView.delegate = self;
    self.typeView.collectionView.dataSource = self;
    [self.typeView.collectionView registerClass:[TypeCollectionViewCell class] forCellWithReuseIdentifier:typeCollectionViewCellID];
    
    self.view = self.typeView;
    
    [self populateCollectionViewWithGarmentTypes];
}

-(void) populateCollectionViewWithGarmentTypes {
    [[GarmentDropAPI manager] garmentTypes:^(NSArray<GarmentType *> * _Nonnull types) {
        self.types = [types copy];
        [self.typeView.collectionView reloadData];
        
    } failure:^(NSError * _Nonnull error) {
        
    }];
}

#pragma mark - Collection View Data Source & Delegate Methods

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.types count];
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(self.view.frame.size.width, [TypeCollectionViewCell typeCollectionViewCellHeight]);
}

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    TypeCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:typeCollectionViewCellID forIndexPath:indexPath];
    
    [cell configureCellWithItem:[self.types objectAtIndex:indexPath.item]];
    
    return cell;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 1.0f;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionsViewController * collectionsViewController = [[CollectionsViewController alloc] initWithGarmentType:[self.types objectAtIndex:indexPath.item]];
    
    [self.navigationController pushViewController:collectionsViewController animated:YES];
    
}

@end
