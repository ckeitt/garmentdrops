//
//  TypeCollectionViewCell.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/10/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GarmentType.h"

NS_ASSUME_NONNULL_BEGIN

@interface TypeCollectionViewCell : UICollectionViewCell

@property (nonatomic) UILabel * attributeLabel;

-(void)configureCellWithItem:(GarmentType *) garmentType;

@end

NS_ASSUME_NONNULL_END
