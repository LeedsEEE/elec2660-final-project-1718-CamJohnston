//
//  DataModel.m
//  UK Night Sky Live
//
//  Created by Cameron Johnston [el16cj] on 20/11/2017.
//  Copyright © 2017 Cameron Johnston [el16cj]. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.constellations = [NSMutableArray array];
        Constellation *orion = [[Constellation alloc] init];
        orion.constellationName = @"Orion";
        orion.information = @"A constellation notable for it's recognisable three stars that make up the belt";
        orion.monthsVisible = 2040;
        
    }
    return self;
}

@end

