//
//  BaseGarment.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GarmentType.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseGarment : NSObject

@property (nonatomic) NSDate * createdAt;
@property (nonatomic) NSDate * updatedAt;
@property (nonatomic) NSString * garmentDescription;
@property (nonatomic) NSString * name;
@property (nonatomic) GarmentType * type;
@property (nonatomic) NSString * fabric;

//drop_date = models.ForeignKey(DropDate, blank=True, null=True)

@end

NS_ASSUME_NONNULL_END
