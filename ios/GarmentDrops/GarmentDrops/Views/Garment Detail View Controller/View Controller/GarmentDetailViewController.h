//
//  GarmentDetailViewController.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/12/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GarmentDropAPI.h"

#import "GarmentDetailView.h"

NS_ASSUME_NONNULL_BEGIN

@interface GarmentDetailViewController : UIViewController

@property (nonatomic) BaseGarment * baseGarment;
@property (nonatomic) NSArray<Garment *> * garments;
@property (nonatomic) GarmentDetailView * garmentDetailView;

-(instancetype)initWithGarment: (BaseGarment *) baseGarment;

@end

NS_ASSUME_NONNULL_END
