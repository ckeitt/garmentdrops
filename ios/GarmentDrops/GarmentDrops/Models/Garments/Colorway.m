//
//  Colorway.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "Colorway.h"

@implementation Colorway

+(NSDictionary *) mappingDictionary {
    return  @{@"name" : @"name",
              @"description" : @"colorwayDescription",
              @"created_at" : @"createdAt",
              };
}

+(RKObjectMapping *) responseMapping {
    RKObjectMapping * rkom = [[RKObjectMapping alloc] initWithClass:[Colorway class]];
    
    [rkom addAttributeMappingsFromDictionary:[Colorway mappingDictionary]];
    
    return rkom;
}

+(RKResponseDescriptor *) responseDescriptor {
    NSIndexSet *statusCodes = RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful);
    
    RKObjectMapping * rkom = [Colorway responseMapping];
    
    return [RKResponseDescriptor responseDescriptorWithMapping:rkom method:RKRequestMethodAny pathPattern:nil keyPath:nil statusCodes:statusCodes];
}

@end
