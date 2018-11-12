//
//  GarmentDetailView.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/12/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CharacteristicsView.h"

NS_ASSUME_NONNULL_BEGIN

@interface GarmentDetailView : UIView

@property (nonatomic) UIScrollView * scrollView;
@property (nonatomic) UIScrollView * imageScrollView;
@property (nonatomic) CharacteristicsView * characteristicsView;

@end

NS_ASSUME_NONNULL_END
