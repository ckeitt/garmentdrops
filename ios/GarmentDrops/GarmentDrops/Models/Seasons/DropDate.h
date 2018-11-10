//
//  DropDate.h
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/9/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Season.h"

NS_ASSUME_NONNULL_BEGIN

@interface DropDate : NSObject

@property (nonatomic) NSDate * createdAt;
@property (nonatomic) NSDate * releaseDate;
@property (nonatomic) Season * season;

@end

NS_ASSUME_NONNULL_END
