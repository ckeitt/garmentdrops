//
//  Garment.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "Garment.h"

@implementation Garment

+(NSDictionary *) mappingDictionary {
    return  @{@"uuid" : @"uuid",
              @"created_at" : @"createdAt",
              @"quantity" : @"quantity",
              @"price" : @"price",
              };
}

+(NSArray *) relationshipArray {
    return @[@[@"base_garment", @"baseGarment", [BaseGarment responseMapping]],
             @[@"color", @"color", [Colorway responseMapping]],
             @[@"size" , @"size", [GarmentSize responseMapping]]
             ];
}

-(RKObjectMapping *) mappingWithDictionary: (NSDictionary *) dictionary class:(Class) class {
    RKObjectMapping * mapping = [[RKObjectMapping alloc] initWithClass:class];
    
    return mapping;
}

+(RKObjectMapping *) responseMapping {
    RKObjectMapping * rkom = [[RKObjectMapping alloc] initWithClass:[Garment class]];
    
    [rkom addAttributeMappingsFromDictionary:[Garment mappingDictionary]];
    
    for (NSArray * array in [Garment relationshipArray]) {
        [rkom addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:array[0] toKeyPath:array[1] withMapping:array[2]]];
    }
    
    return rkom;
}

+(RKResponseDescriptor *) responseDescriptor {
    NSIndexSet *statusCodes = RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful);
    
    RKObjectMapping * rkom = [Garment responseMapping];
    
    return [RKResponseDescriptor responseDescriptorWithMapping:rkom method:RKRequestMethodAny pathPattern:nil keyPath:nil statusCodes:statusCodes];
}

@end
