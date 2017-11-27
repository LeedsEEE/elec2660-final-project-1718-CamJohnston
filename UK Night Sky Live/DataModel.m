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
        orion.monthsVisibleArray = @[@0,@1,@1,@1,@1,@1,@1,@1,@1,@0,@0,@0];
        
        self.constellations = [NSMutableArray array];
        Constellation *cassiopeia = [[Constellation alloc] init];
        cassiopeia.constellationName = @"Cassiopeia";
        cassiopeia.information = @"A constellation that forms a W shape in the night sky";
        cassiopeia.monthsVisible = 0;
        cassiopeia.monthsVisibleArray = @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
        
        NSInteger CurrentMonth;
        
        NSDate *currentDate = [NSDate date];
        NSCalendar* calendar = [NSCalendar currentCalendar];
        NSDateComponents* components = [calendar components:NSCalendarUnitMonth fromDate:currentDate];
        
        CurrentMonth = [components month];
        
        NSLog(@"CURRENT MONTH IS %ld", (long)CurrentMonth);
        NSNumber *poo = [orion.monthsVisibleArray objectAtIndex:0];
        NSLog(@"ARRAY VALUE 1 is %@", poo);
        
        NSArray *myConstellations;
        
        myConstellations = @[@"orion",@"cassiopeia"];
        
        [self.constellations addObject:orion];
        [self.constellations addObject:cassiopeia];
        

        NSInteger i = 0;
        
        while (i <= 1) {
            

            
        
            
            
            NSString *currentC = [myConstellations objectAtIndex:i];
            
            NSLog(@"Current C = %@", currentC);
            
            /*
            
            Constellation *currentConstellation = [self.constellations objectAtIndex:i];
            NSNumber *isItVisible = [currentConstellation.monthsVisibleArray objectAtIndex:CurrentMonth];
            
            NSLog(@"Current = %@", [self.constellations objectAtIndex:i]);
             
             */
            
            Constellation *currentConstellation = [myConstellations objectAtIndex:i];
            
            NSLog(@"In currentConstellation %@", currentConstellation);
            
            
            
            

           /* if (isItVisible == 1){
            
                //[self.constellations addObject:currentConstellation];
                
                NSLog(@"Hi");
                
                
                
            }
          */
            
            NSLog(@"%ld", (long)i);
            
            i++;
        }
        

    }
    return self;
}
/*
-(long) getMonth {
    
    NSInteger CurrentMonth;
    
    NSDate *currentDate = [NSDate date];
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSCalendarUnitMonth fromDate:currentDate];
    
    CurrentMonth = [components month];
    
    NSLog(@"CURRENT MONTH IS %ld", (long)CurrentMonth);
    
    return CurrentMonth;
}*/
@end

