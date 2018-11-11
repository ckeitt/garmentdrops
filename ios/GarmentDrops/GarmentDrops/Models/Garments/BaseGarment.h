//
//  BaseGarment.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>
#import "GarmentType.h"
#import "DropDate.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseGarment : NSObject

@property (nonatomic) NSDate * createdAt;
@property (nonatomic) NSDate * updatedAt;
@property (nonatomic) NSString * garmentDescription;
@property (nonatomic) NSString * name;
@property (nonatomic) GarmentType * type;
@property (nonatomic) NSString * fabric;
@property (nonatomic) DropDate * dropDate;

+(NSDictionary *) mappingDictionary;
+(RKObjectMapping *) responseMapping;
+(RKResponseDescriptor *) responseDescriptor;

@end

NS_ASSUME_NONNULL_END
