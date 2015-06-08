//
//  CustomLayout.h
//  TestCollection
//
//  Created by Atif on 9/21/14.
//  Copyright (c) 2014 Atif. All rights reserved.
//
/**
 *该类用于管理collectionView的Section Color
 */

#import <UIKit/UIKit.h>

@interface SectionBackgroundLayout : UICollectionViewFlowLayout

@property (assign, nonatomic) BOOL alternateBackgrounds;
@property (strong, nonatomic) NSArray *decorationViewOfKinds;
@property (strong, nonatomic) NSMutableArray * sectionInsetsArray;

@end
