//
//  GarmentDetailViewController.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/12/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "GarmentDetailViewController.h"

@interface GarmentDetailViewController ()

@end

@implementation GarmentDetailViewController

-(instancetype)initWithGarment: (BaseGarment *) baseGarment {
    if (self = [super init]) {
        self.baseGarment = baseGarment;
        [self base_init];
    }
    
    return self;
}

-(void) base_init {
    
    self.garmentDetailView = [[GarmentDetailView alloc] init];
    
    self.view = self.garmentDetailView;
    
    [self populateGarmentDetailViewWithGarments];
}

-(void) populateGarmentDetailViewWithGarments {
    [[GarmentDropAPI manager] populateGarmentDetailViewWithGarments:self.baseGarment.pk success:^(NSArray<Garment *> * _Nonnull garments) {
        self.garments = [garments copy];
        [self.garmentDetailView.characteristicsView configureViewWithItem:[self.garments firstObject]];
    } failure:^(NSError * _Nonnull error) {
        NSLog(@"ERROR: %@", error);
    }];
    
}

@end
