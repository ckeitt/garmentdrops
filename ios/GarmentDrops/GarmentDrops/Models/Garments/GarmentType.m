//
//  GarmentType.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "GarmentType.h"

@implementation GarmentType

+(NSDictionary *) mappingDictionary {
    return  @{@"pk" : @"pk",
              @"description" : @"garmentTypeDescription",
              @"name" : @"name",
              };
}

+(RKObjectMapping *) responseMapping {
    RKObjectMapping * rkom = [[RKObjectMapping alloc] initWithClass:[GarmentType class]];
    
    [rkom addAttributeMappingsFromDictionary:[GarmentType mappingDictionary]];
    
    return rkom;
}

+(RKResponseDescriptor *) responseDescriptor {
    NSIndexSet *statusCodes = RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful);
    
    RKObjectMapping * rkom = [GarmentType responseMapping];
    
    return [RKResponseDescriptor responseDescriptorWithMapping:rkom method:RKRequestMethodAny pathPattern:nil keyPath:nil statusCodes:statusCodes];
}

@end
