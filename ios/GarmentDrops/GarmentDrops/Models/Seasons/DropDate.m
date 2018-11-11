//
//  DropDate.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "DropDate.h"

@implementation DropDate

+(NSDictionary *) mappingDictionary {
    return  @{@"created_at" : @"createdAt",
              @"release_date" : @"releaseDate",
              };
}

+(NSArray *) relationshipArray {
    return @[@[@"season", @"season", [Season responseMapping]]
             ];
}

+(RKObjectMapping *) responseMapping {
    RKObjectMapping * rkom = [[RKObjectMapping alloc] initWithClass:[DropDate class]];
    
    [rkom addAttributeMappingsFromDictionary:[DropDate mappingDictionary]];
    
    for (NSArray * array in [DropDate relationshipArray]) {
        [rkom addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:array[0] toKeyPath:array[1] withMapping:array[2]]];
    }
    
    return rkom;
}

+(RKResponseDescriptor *) responseDescriptor {
    NSIndexSet *statusCodes = RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful);

    RKObjectMapping * rkom = [DropDate responseMapping];
    
    return [RKResponseDescriptor responseDescriptorWithMapping:rkom method:RKRequestMethodAny pathPattern:nil keyPath:nil statusCodes:statusCodes];
}

@end
