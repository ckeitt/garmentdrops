//
//  CollectionsCollectionViewCell.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/10/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "CollectionsCollectionViewCell.h"

CGFloat COLLECTIONS_COLLECTION_CELL_LEFT_TEXT_MARGIN = 10.0f;
CGFloat COLLECTIONS_COLLECTION_CELL_HEIGHT = 75.0f;
CGFloat COLLECTIONS_COLLECTION_CELL_MARGIN = 10.0f;
CGFloat COLLECTIONS_COLLECTION_CELL_FONT_SIZE = 14.0f;

@implementation CollectionsCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        [self base_init];
    }
    
    return self;
}

-(void)base_init {
    
    self.backgroundColor = [UIColor whiteColor];
    
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"empty-shirt"]];
    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self addSubview:self.imageView];
    [self layoutImageView];
    
    self.attributeLabel = [UILabel new];
    self.attributeLabel.numberOfLines = 2;
    self.attributeLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.attributeLabel.font = [UIFont fontWithName:@"PingFangSC-Light" size:COLLECTIONS_COLLECTION_CELL_FONT_SIZE];
    self.attributeLabel.textColor = [UIColor blackColor];
    
    [self addSubview:self.attributeLabel];
    [self layoutAttributeLabel];
}

-(void)configureCellWithItem:(Garment *) garment {
    self.attributeLabel.text = garment.baseGarment.name;
}

#pragma mark - Sizing Class Methods

+(CGFloat) collectionsCollectionViewCellHeight {
    return COLLECTIONS_COLLECTION_CELL_HEIGHT;
}

#pragma mark - Auto Layout Methods

-(void) layoutImageView {
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1.0 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:1.0 constant:COLLECTIONS_COLLECTION_CELL_HEIGHT - COLLECTIONS_COLLECTION_CELL_MARGIN]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:1.0 constant:COLLECTIONS_COLLECTION_CELL_HEIGHT - COLLECTIONS_COLLECTION_CELL_MARGIN]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView
                                                     attribute:NSLayoutAttributeCenterY
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1.0 constant:0]];
}

-(void) layoutAttributeLabel {
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.attributeLabel
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self.imageView
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1.0 constant:COLLECTIONS_COLLECTION_CELL_LEFT_TEXT_MARGIN]];
    
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
                                                    multiplier:1.0 constant:+COLLECTIONS_COLLECTION_CELL_MARGIN]];
}

@end
