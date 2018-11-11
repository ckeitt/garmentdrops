//
//  GarmentSize.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "GarmentSize.h"

@implementation GarmentSize

+(NSDictionary *) mappingDictionary {
    return  @{@"size" : @"size",
              @"length" : @"length",
              @"created_at" : @"createdAt",
              @"description" : @"garmentSizeDescription",
              };
}

+(RKObjectMapping *) responseMapping {
    RKObjectMapping * rkom = [[RKObjectMapping alloc] initWithClass:[GarmentSize class]];
    
    [rkom addAttributeMappingsFromDictionary:[GarmentSize mappingDictionary]];
    
    return rkom;
}

+(RKResponseDescriptor *) responseDescriptor {
    NSIndexSet *statusCodes = RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful);
    
    RKObjectMapping * rkom = [GarmentSize responseMapping];
    
    return [RKResponseDescriptor responseDescriptorWithMapping:rkom method:RKRequestMethodAny pathPattern:nil keyPath:nil statusCodes:statusCodes];
}

@end
