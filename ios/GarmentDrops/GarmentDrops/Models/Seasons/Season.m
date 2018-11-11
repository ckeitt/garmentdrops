//
//  Season.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "Season.h"

@implementation Season

+(NSDictionary *) mappingDictionary {
    return  @{@"created_at" : @"createdAt",
              @"description" : @"seasonDescription",
              @"name" : @"name",
              };
}

+(RKObjectMapping *) responseMapping {
    RKObjectMapping * rkom = [[RKObjectMapping alloc] initWithClass:[Season class]];
    
    [rkom addAttributeMappingsFromDictionary:[Season mappingDictionary]];
    
    return rkom;
}

+(RKResponseDescriptor *) responseDescriptor {
    NSIndexSet *statusCodes = RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful);

    RKObjectMapping * rkom = [Season responseMapping];
    
    return [RKResponseDescriptor responseDescriptorWithMapping:rkom method:RKRequestMethodAny pathPattern:nil keyPath:nil statusCodes:statusCodes];
}

@end
