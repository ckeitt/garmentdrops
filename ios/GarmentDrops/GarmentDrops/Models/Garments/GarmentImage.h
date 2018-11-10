//
//  GarmentImage.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Garment.h"

NS_ASSUME_NONNULL_BEGIN

@interface GarmentImage : NSObject

@property (nonatomic) NSString * garmentImageDescription;
@property (nonatomic) NSString * name;
@property (nonatomic) NSDate * createdAt;
@property (nonatomic) NSNumber * index;
@property (nonatomic) NSString * image;
@property (nonatomic) Garment * garment;

@end

NS_ASSUME_NONNULL_END
