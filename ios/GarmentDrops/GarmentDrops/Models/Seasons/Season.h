//
//  Season.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Season : NSObject

@property (nonatomic) NSDate * createdAt;
@property (nonatomic) NSString * seasonDescription;
@property (nonatomic) NSString * name;

@end

NS_ASSUME_NONNULL_END
