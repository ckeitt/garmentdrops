//
//  TypeViewController.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/10/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GarmentDropAPI.h"

#import "CollectionsViewController.h"

#import "TypeView.h"
#import "TypeCollectionViewCell.h"


NS_ASSUME_NONNULL_BEGIN

@interface TypeViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (nonatomic) TypeView * typeView;
@property (nonatomic) NSArray<GarmentType *> * types;

@end

NS_ASSUME_NONNULL_END
