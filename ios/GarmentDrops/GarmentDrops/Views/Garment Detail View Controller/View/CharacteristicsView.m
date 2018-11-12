//
//  CharacteristicsView.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/12/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "CharacteristicsView.h"

@implementation CharacteristicsView

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self base_init];
    }
    
    return self;
}

-(instancetype)init {
    if (self = [super init]) {
        [self base_init];
    }
    
    return self;
}

-(void) base_init {
    
    self.backgroundColor = [UIColor whiteColor];
    
    self.garmentNameLabel = [UILabel new];
    self.garmentNameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.garmentNameLabel.textAlignment = NSTextAlignmentCenter;
    
    [self addSubview:self.garmentNameLabel];
    
    [self layoutGarmentNameLabel];
    
    self.garmentPriceLabel = [UILabel new];
    self.garmentPriceLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.garmentPriceLabel.textAlignment = NSTextAlignmentCenter;
    
    [self addSubview:self.garmentPriceLabel];
    
    [self layoutGarmentPriceLabel];
}

#pragma mark - Configuratio Methods

-(void)configureViewWithItem:(Garment *) garment {
    self.garmentNameLabel.text = garment.baseGarment.name;
    self.garmentPriceLabel.text = [NSString stringWithFormat:@"$%@", garment.price];
}

#pragma mark - Auto Layout Methods

-(void) layoutGarmentNameLabel {
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.garmentNameLabel
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1.0 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.garmentNameLabel
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1.0 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.garmentNameLabel
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1.0 constant:0]];
}

-(void) layoutGarmentPriceLabel {
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.garmentPriceLabel
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1.0 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.garmentPriceLabel
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1.0 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.garmentPriceLabel
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self.garmentNameLabel
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1.0 constant:0]];
}
@end
