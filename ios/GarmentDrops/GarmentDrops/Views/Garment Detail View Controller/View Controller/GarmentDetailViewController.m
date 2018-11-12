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

-(instancetype)initWithGarment: (Garment *) garment {
    if (self = [super init]) {
        self.garment = garment;
        [self base_init];
    }
    
    return self;
}

-(void) base_init {
    
    self.garmentDetailView = [[GarmentDetailView alloc] init];
    
    self.view = self.garmentDetailView;
    
}

@end
