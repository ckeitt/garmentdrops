//
//  TypeCollectionViewCell.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/10/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "TypeCollectionViewCell.h"

CGFloat TYPE_COLLECTION_CELL_LEFT_TEXT_MARGIN = 10.0f;
CGFloat TYPE_COLLECTION_CELL_HEIGHT = 50.0f;
CGFloat TYPE_COLLECTION_CELL_FONT_SIZE = 14.0f;

@implementation TypeCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        [self base_init];
    }
    
    return self;
}

-(void)base_init {
    
    self.backgroundColor = [UIColor whiteColor];

    self.attributeLabel = [UILabel new];
    self.attributeLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.attributeLabel.font = [UIFont fontWithName:@"PingFangSC-Light" size:TYPE_COLLECTION_CELL_FONT_SIZE];
    self.attributeLabel.textColor = [UIColor blackColor];
    
    [self addSubview:self.attributeLabel];
    [self layoutAttributeLabel];
}

-(void)configureCellWithItem:(GarmentType *) garmentType {
    self.attributeLabel.text = garmentType.name;
}

#pragma mark - Sizing Class Methods

+(CGFloat) typeCollectionViewCellHeight {
    return TYPE_COLLECTION_CELL_HEIGHT;
}

#pragma mark - Auto Layout Methods

-(void) layoutAttributeLabel {
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.attributeLabel
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1.0 constant:TYPE_COLLECTION_CELL_LEFT_TEXT_MARGIN]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.attributeLabel
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1.0 constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.attributeLabel
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1.0 constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.attributeLabel
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1.0 constant:0]];
}

@end
