//
//  GarmentDropAPI.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/10/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AFNetworking/AFNetworking.h>
#import "BaseGarment.h"
#import "Garment.h"

NS_ASSUME_NONNULL_BEGIN

@interface GarmentDropAPI : UIView

-(void) garmentTypes: (void (^) (NSArray<GarmentType *> * types)) success  failure: (void (^) (NSError * error)) failure;
-(void) garmentsWithTypeFromGarmentTypeID: (NSString *) garmentType success: (void (^) (NSArray<Garment *> * garments)) success  failure: (void (^) (NSError * error)) failure;

+(id) manager;

@end

NS_ASSUME_NONNULL_END
