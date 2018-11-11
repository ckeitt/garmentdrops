//
//  GarmentType.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GarmentType : NSObject

@property (nonatomic) NSString * pk;
@property (nonatomic) NSString * garmentTypeDescription;
@property (nonatomic) NSString * name;

+(NSDictionary *) mappingDictionary;
+(RKObjectMapping *) responseMapping;
+(RKResponseDescriptor *) responseDescriptor;

@end

NS_ASSUME_NONNULL_END
