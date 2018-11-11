//
//  Colorway.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Colorway : NSObject

@property (nonatomic) NSString * name;
@property (nonatomic) NSString * colorwayDescription;
@property (nonatomic) NSDate * createdAt;

+(NSDictionary *) mappingDictionary;
+(RKObjectMapping *) responseMapping;
+(RKResponseDescriptor *) responseDescriptor;

@end

NS_ASSUME_NONNULL_END
