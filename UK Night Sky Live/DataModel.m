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
        
        self.visibleConstellations = [NSMutableArray array];
        
        
        
        self.constellations = [NSMutableArray array];
        Constellation *orion = [[Constellation alloc] init];
        orion.constellationName = @"Orion";
        orion.information = @"A constellation notable for it's recognisable three stars that make up the belt";
        orion.monthsVisible = 2040;
        orion.monthsVisibleArray = @[@0,@1,@1,@1,@1,@1,@1,@1,@1,@0,@0,@0];
        orion.imageID = @"Orion.jpg";
        
        self.constellations = [NSMutableArray array];
        Constellation *cassiopeia = [[Constellation alloc] init];
        cassiopeia.constellationName = @"Cassiopeia";
        cassiopeia.information = @"A constellation that forms a W shape in the night sky fghqofb dhwjiv bdhjviodf wbvhjdfoa bvjhkfdoq vbhjdqkov bjdqkov hjfdakov bdfjwkvo dhabjvkls cbjkp er2hc8vp sbn,wghv78od ahfmwkv bf7r28 obrhe4j2vi b7482o vbdhwkv bry2uov gt4w7y vbhrwjovbr7y3w8 ov0gt4y2uvo bruwyov grwyuvo brwyuv ogrwyvu orbwvyuo2 gv782o gv yruwov byruwov gruwyov gruwyovg ruwyov gryuewov gryuewovbuy4w gv78eor2bvhjo42b vy8o 9gr4v78 rg4vhboyudaoxvby428o vgbyreuwovb yeuwogrwyuovbfrdwyuc";
        cassiopeia.monthsVisible = 0;
        cassiopeia.monthsVisibleArray = @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
        cassiopeia.imageID = @"am54960f89.jpg";
        
        NSInteger CurrentMonth;
        
        NSDate *currentDate = [NSDate date];
        NSCalendar* calendar = [NSCalendar currentCalendar];
        NSDateComponents* components = [calendar components:NSCalendarUnitMonth fromDate:currentDate];
        
        CurrentMonth = [components month];
        
        NSLog(@"CURRENT MONTH IS %ld", (long)CurrentMonth);
        NSNumber *testVisible = [orion.monthsVisibleArray objectAtIndex:0];
        NSLog(@"ARRAY VALUE 1 is %@", testVisible);
        
        
        
        NSArray *myConstellations;
        
        myConstellations = @[@"orion",@"cassiopeia"];
        
        [self.constellations addObject:orion];
        [self.constellations addObject:cassiopeia];
        

        NSInteger i = 0;
      
        
        while (i <= 1) {
            
        
            NSInteger position = CurrentMonth - 1;
            
            
        Constellation *checkingConstellation = [[Constellation alloc] init];
        
        checkingConstellation = [self.constellations objectAtIndex:i];
        
        NSString *name = checkingConstellation.constellationName;
        
        
        NSLog(@"%@", name);
        NSLog(@"%@", checkingConstellation);
        
        
            NSNumber *isItVisible = [checkingConstellation.monthsVisibleArray objectAtIndex:position];
            
            NSLog(@"VISIBILITY CHECK %@", isItVisible);
        
        if (isItVisible.intValue == 1){
        
        [self.visibleConstellations addObject:checkingConstellation];
            
        }
        
            NSLog(@"%ld", (long)i);
            
            i++;
            
            //
        }
        

    }
    return self;
}

@end

