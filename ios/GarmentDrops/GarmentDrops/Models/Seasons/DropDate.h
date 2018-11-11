//
//  DropDate.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

#import "Season.h"

NS_ASSUME_NONNULL_BEGIN

@interface DropDate : NSObject

@property (nonatomic) NSDate * createdAt;
@property (nonatomic) NSDate * releaseDate;
@property (nonatomic) Season * season;

+(NSDictionary *) mappingDictionary;
+(RKObjectMapping *) responseMapping;
+(RKResponseDescriptor *) responseDescriptor;

@end

NS_ASSUME_NONNULL_END
