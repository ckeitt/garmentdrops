//
//  BaseGarment.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "BaseGarment.h"

@implementation BaseGarment

+(NSDictionary *) mappingDictionary {
    return  @{@"created_at" : @"createdAt",
              @"updated_at" : @"updatedAt",
              @"description" : @"garmentDescription",
              @"name" : @"name",
              @"fabric" : @"fabric",
              };
}

+(NSArray *) relationshipArray {
    return @[@[@"drop_date", @"dropDate", [DropDate responseMapping]],
             @[@"type", @"type", [GarmentType responseMapping]]
             ];
}

+(RKObjectMapping *) responseMapping {
    RKObjectMapping * rkom = [[RKObjectMapping alloc] initWithClass:[BaseGarment class]];
    
    [rkom addAttributeMappingsFromDictionary:[BaseGarment mappingDictionary]];
    
    for (NSArray * array in [BaseGarment relationshipArray]) {
        [rkom addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:array[0] toKeyPath:array[1] withMapping:array[2]]];
    }
    
    return rkom;
}

+(RKResponseDescriptor *) responseDescriptor {
    NSIndexSet *statusCodes = RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful);
    
    RKObjectMapping * rkom = [BaseGarment responseMapping];
    
    return [RKResponseDescriptor responseDescriptorWithMapping:rkom method:RKRequestMethodAny pathPattern:nil keyPath:nil statusCodes:statusCodes];
}



@end
