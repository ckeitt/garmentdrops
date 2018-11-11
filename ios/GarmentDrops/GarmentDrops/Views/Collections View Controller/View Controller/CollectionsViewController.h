//
//  CollectionsViewController.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/10/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GarmentDropAPI.h"

#import "CollectionsView.h"
#import "CollectionsCollectionViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface CollectionsViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic) CollectionsView * collectionsView;
@property (nonatomic) GarmentType * type;
@property (nonatomic) NSArray<Garment *> * garments;

-(instancetype)initWithGarmentType: (GarmentType *) garmentType;

@end

NS_ASSUME_NONNULL_END
