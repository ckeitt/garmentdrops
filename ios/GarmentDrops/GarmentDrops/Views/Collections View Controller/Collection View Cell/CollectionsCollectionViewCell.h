//
//  CollectionsCollectionViewCell.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/10/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>

#import "Garment.h"

NS_ASSUME_NONNULL_BEGIN

@interface CollectionsCollectionViewCell : UICollectionViewCell

@property (nonatomic) UILabel * attributeLabel;
@property (nonatomic) UILabel * indicatorLabel;
@property (nonatomic) UIImageView * imageView;

-(void)configureCellWithItem:(BaseGarment *) baseGarment;

+(CGFloat) collectionsCollectionViewCellHeight;

@end

NS_ASSUME_NONNULL_END
