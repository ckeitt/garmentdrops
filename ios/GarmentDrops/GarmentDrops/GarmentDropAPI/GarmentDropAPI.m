//
//  GarmentDropAPI.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/10/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "GarmentDropAPI.h"

//NSString * BASE_TYPES_URL = @"http://192.168.1.72:8000/garments/types/";
//NSString * BASE_GARMENTS_FROM_TYPES_URL = @"http://192.168.1.72:8000/garments/types/%@/";

NSString * BASE_TYPES_URL = @"http://127.0.0.1:8000/garments/types/";
NSString * BASE_GARMENTS_FROM_TYPES_URL = @"http://127.0.0.1:8000/garments/types/%@/";
NSString * GARMENTS_FROM_BASE_GARMENT_URL = @"http://127.0.0.1:8000/garments/base/%@/";

@implementation GarmentDropAPI

-(void) garmentTypes: (void (^) (NSArray<GarmentType *> * types)) success  failure: (void (^) (NSError * error)) failure {
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:BASE_TYPES_URL]];
    RKObjectRequestOperation *operation = [[RKObjectRequestOperation alloc] initWithRequest:request responseDescriptors:@[[GarmentType responseDescriptor]]];
    
    [operation setCompletionBlockWithSuccess:^(RKObjectRequestOperation *operation, RKMappingResult *result) {
        success([result array]);
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        failure(error);
    }];
    
    [operation start];
}

-(void) garmentsWithTypeFromGarmentTypeID: (NSString *) garmentType success: (void (^) (NSArray<BaseGarment *> * garments)) success  failure: (void (^) (NSError * error)) failure {
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:BASE_GARMENTS_FROM_TYPES_URL, garmentType]]];
    RKObjectRequestOperation *operation = [[RKObjectRequestOperation alloc] initWithRequest:request responseDescriptors:@[[BaseGarment responseDescriptor]]];
    
    [operation setCompletionBlockWithSuccess:^(RKObjectRequestOperation *operation, RKMappingResult *result) {
        success([result array]);
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        failure(error);
    }];
    
    [operation start];
}

-(void) populateGarmentDetailViewWithGarments: (NSString *) baseGarmentID success: (void (^) (NSArray<Garment *> * garments)) success  failure: (void (^) (NSError * error)) failure {
   
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:GARMENTS_FROM_BASE_GARMENT_URL, baseGarmentID]]];
    RKObjectRequestOperation *operation = [[RKObjectRequestOperation alloc] initWithRequest:request responseDescriptors:@[[Garment responseDescriptor]]];
    
    [operation setCompletionBlockWithSuccess:^(RKObjectRequestOperation *operation, RKMappingResult *result) {
        success([result array]);
    } failure:^(RKObjectRequestOperation *operation, NSError *error) {
        failure(error);
    }];
    
    [operation start];
    
}

#pragma mark  - Singleton GarmentDropAPI Manager

+(id) manager {
    
    static GarmentDropAPI * manager = nil;
    static dispatch_once_t once_token;
    
    dispatch_once(&once_token, ^{
        manager = [[self alloc] init];
    });
    
    return manager;
}

@end
