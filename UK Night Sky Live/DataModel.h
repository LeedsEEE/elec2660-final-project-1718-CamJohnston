//
//  DataModel.h
//  UK Night Sky Live
//
//  Created by Cameron Johnston [el16cj] on 20/11/2017.
//  Copyright © 2017 Cameron Johnston [el16cj]. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Constellation.h"
#import "SortByMonthViewController.h"
@class SortByMonthViewController;
@interface DataModel : NSObject

@property (strong, nonatomic) NSMutableArray *constellations;
@property (strong, nonatomic) NSMutableArray *visibleConstellations;
@property (strong, nonatomic) NSMutableArray *pickedConstellations;
@property (strong, nonatomic) NSString *currentConstellation;
@property (strong, nonatomic) NSString *currentConstellation2;
//@property (strong, nonatomic) DataModel *internalData;
@property (strong, nonatomic) SortByMonthViewController *monthData;
@property NSInteger pickerMonth;

-(void) arrayCreator;


@end
