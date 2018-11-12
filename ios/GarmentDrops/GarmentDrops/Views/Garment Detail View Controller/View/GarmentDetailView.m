//
//  GarmentDetailView.m
//  GarmentDrops
//
//  Created by Caleb Keitt on 11/12/18.
//  Copyright © 2018 Caleb Keitt. All rights reserved.
//

#import "GarmentDetailView.h"

CGFloat GARMENT_IMAGE_VIEW_HEIGHT = 300.0f;

@implementation GarmentDetailView

-(instancetype)init {
    if (self = [super init]) {
        [self base_init];
    }
    
    return self;
}

-(void) base_init {
    
    self.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    self.scrollView = [UIScrollView new];
    self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    self.scrollView.backgroundColor = [UIColor whiteColor];
    self.scrollView.scrollEnabled = YES;
    self.scrollView.showsVerticalScrollIndicator = YES;
    
    [self addSubview:self.scrollView];
    
    [self layoutScrollView];
    
    self.imageScrollView = [UIScrollView new];
    self.imageScrollView.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageScrollView.backgroundColor = [UIColor blueColor];
    self.imageScrollView.scrollEnabled = YES;
    self.imageScrollView.showsHorizontalScrollIndicator = YES;

    [self.scrollView addSubview:self.imageScrollView];

    [self layoutImageScrollView];
    
    self.characteristicsView = [[CharacteristicsView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 900)];
    self.characteristicsView.translatesAutoresizingMaskIntoConstraints = NO;
    self.characteristicsView.backgroundColor = [UIColor blackColor];
    
    [self.scrollView addSubview:self.characteristicsView];
    
    [self.scrollView setContentSize:CGSizeMake(self.frame.size.width, 900)];
    
    [self layoutCharacteristicsView];
}

#pragma mark - Auto Layout Methods

-(void) layoutScrollView {
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.scrollView
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1.0 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.scrollView
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1.0 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.scrollView
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeTop
                                                    multiplier:1.0 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.scrollView
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1.0 constant:0]];
}

-(void) layoutImageScrollView {
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.imageScrollView
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1.0 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.imageScrollView
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1.0 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.imageScrollView
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:1.0 constant:GARMENT_IMAGE_VIEW_HEIGHT]];
}

-(void) layoutCharacteristicsView {
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.characteristicsView
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeRight
                                                    multiplier:1.0 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.characteristicsView
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeLeft
                                                    multiplier:1.0 constant:0]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.characteristicsView
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self.imageScrollView
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1.0 constant:0]];
}

@end
