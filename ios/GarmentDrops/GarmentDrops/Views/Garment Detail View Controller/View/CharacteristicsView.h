//
//  CharacteristicsView.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/12/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Garment.h"

NS_ASSUME_NONNULL_BEGIN

@interface CharacteristicsView : UIView

@property (nonatomic) UILabel * garmentNameLabel;
@property (nonatomic) UILabel * garmentPriceLabel;

-(void)configureViewWithItem:(Garment *) garment;

@end

NS_ASSUME_NONNULL_END
