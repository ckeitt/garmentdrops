//
//  Garment.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseGarment.h"
#import "Colorway.h"
#import "GarmentSize.h"

NS_ASSUME_NONNULL_BEGIN

@interface Garment : NSObject

@property (nonatomic) NSString * uuid;
@property (nonatomic) BaseGarment * baseGarment;
@property (nonatomic) NSDate * createdAt;
@property (nonatomic) NSNumber * quantity;
@property (nonatomic) NSNumber * price;
@property (nonatomic) Colorway *  color;
@property (nonatomic) GarmentSize * size;

+(NSDictionary *) mappingDictionary;
+(RKObjectMapping *) responseMapping;
+(RKResponseDescriptor *) responseDescriptor;

@end

NS_ASSUME_NONNULL_END
