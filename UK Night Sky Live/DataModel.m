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
        
/*        self.visibleConstellations = [NSMutableArray array];
        
        self.monthData = [[SortByMonthViewController alloc] init];
        
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
   //    NSNumber *testVisible = [orion.monthsVisibleArray objectAtIndex:0];
        
        
        //self.pickerMonth = self.monthData.selectedMonth;
        
        NSLog(@"ARRAY VALUE 1 is %ld", self.pickerMonth);
        NSLog(@"THE BLOODY (the remix) MONTH IS %ld", (long)self.monthData.selectedMonth);
        
        
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
        
*/
    }
    return self;
}

-(void) Bloddymonth {
    self.visibleConstellations = [NSMutableArray array];
    self.pickedConstellations = [NSMutableArray array];
    
    self.monthData = [[SortByMonthViewController alloc] init];
    
    self.constellations = [NSMutableArray array];
    Constellation *orion = [[Constellation alloc] init];
    orion.constellationName = @"Orion";
    orion.information = @"A constellation notable for it's recognisable three stars that make up the belt";
    orion.monthsVisible = 2040;
    orion.monthsVisibleArray = @[@0,@1,@1,@1,@1,@1,@1,@1,@1,@0,@0,@0];
    orion.imageID = @"OrionCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *cassiopeia = [[Constellation alloc] init];
    cassiopeia.constellationName = @"Cassiopeia";
    cassiopeia.information = @"The Queen - a constellation that forms a W shape in the night sky";
    cassiopeia.monthsVisible = 0;
    cassiopeia.monthsVisibleArray = @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
    cassiopeia.imageID = @"CassiopeiaCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *andromeda = [[Constellation alloc] init];
    andromeda.constellationName = @"Andromeda";
    andromeda.information = @"The Princess - a constellation home to our closest neighbouring galaxy. Visible to the naked eye on very clear conditions";
    andromeda.monthsVisible = 2040;
    andromeda.monthsVisibleArray = @[@1,@0,@0,@0,@0,@1,@1,@1,@1,@1,@1,@1];
    andromeda.imageID = @"AndromedaCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *pegasus = [[Constellation alloc] init];
    pegasus.constellationName = @"Pegasus";
    pegasus.information = @"The winged horse - a constellation easily observable as it makes a large square in the nights sky.";
    pegasus.monthsVisible = 2040;
    pegasus.monthsVisibleArray = @[@0,@0,@0,@0,@0,@1,@1,@1,@1,@1,@1,@1];
    pegasus.imageID = @"PegasusCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *cygnus = [[Constellation alloc] init];
    cygnus.constellationName = @"Cygnus";
    cygnus.information = @"The swan – a constellation that makes a large cross in the northern night sky, known as the Northern Cross.";
    cygnus.monthsVisible = 2040;
    cygnus.monthsVisibleArray = @[@0,@0,@0,@1,@1,@1,@1,@1,@1,@1,@1,@0];
    cygnus.imageID = @"CygnusCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *ursaM = [[Constellation alloc] init];
    ursaM.constellationName = @"Ursa Major";
    ursaM.information = @"The Great Bear – A large constellation that is made partly from the stars usually referred to as the plough, or the big dipper and saucepan.";
    ursaM.monthsVisible = 2040;
    ursaM.monthsVisibleArray = @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
    ursaM.imageID = @"UrsaMajorCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *aquila = [[Constellation alloc] init];
    aquila.constellationName = @"Aquila";
    aquila.information = @"The Eagle - a constellation that lies within the milky way field and thus many deep space objects can be found nearby such as nebulae.";
    aquila.monthsVisible = 2040;
    aquila.monthsVisibleArray = @[@0,@0,@0,@0,@1,@1,@1,@1,@1,@0,@0,@0];
    aquila.imageID = @"AquilaCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *canisM = [[Constellation alloc] init];
    canisM.constellationName = @"Canis Major";
    canisM.information = @"The Great Dog - A constellation rarely seen in northern skies, home to the brightest star in the night sky - Sirius, found by following orions belt down.";
    canisM.monthsVisible = 2040;
    canisM.monthsVisibleArray = @[@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1];
    canisM.imageID = @"CanisMajorCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *aries = [[Constellation alloc] init];
    aries.constellationName = @"Aries";
    aries.information = @"The Ram - a constellation of the zodiac and inhabits the part of night sky responsibke for the Arietid meteor shower.";
    aries.monthsVisible = 2040;
    aries.monthsVisibleArray = @[@1,@1,@0,@0,@0,@0,@1,@1,@1,@1,@1,@1];
    aries.imageID = @"AriesCC.jpg";
    
    
    self.monthData = [[SortByMonthViewController alloc] init];
    
    NSInteger CurrentMonth;
    
    NSDate *currentDate = [NSDate date];
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSCalendarUnitMonth fromDate:currentDate];      //https://stackoverflow.com/questions/6478651/nsdatecomponents-of-an-nsdate
    
    CurrentMonth = [components month];
    
    NSLog(@"CURRENT MONTH IS %ld", (long)CurrentMonth);
    //    NSNumber *testVisible = [orion.monthsVisibleArray objectAtIndex:0];
    
    
    //self.pickerMonth = self.monthData.selectedMonth;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.pickerMonth = [defaults integerForKey:@"PickedMonth"];     //http://www.ios-blog.co.uk/tutorials/objective-c/storing-data-with-nsuserdefaults/
    
    NSLog(@"Picked Month Test 1 is %ld", self.pickerMonth);
    NSLog(@"Picked Month Test 2 IS %ld", (long)self.monthData.selectedMonth);
    
    
    
    
    
    
    NSArray *myConstellations;
    
    myConstellations = @[@"orion",@"cassiopeia"];
    
    [self.constellations addObject:orion];
    [self.constellations addObject:cassiopeia];
    [self.constellations addObject:andromeda];
    [self.constellations addObject:pegasus];
    [self.constellations addObject:cygnus];
    [self.constellations addObject:ursaM];
    [self.constellations addObject:aquila];
    [self.constellations addObject:canisM];
    [self.constellations addObject:aries];
    
    
    
    NSInteger i = 0;
    
    
    while (i <= 8) {
        
        
        
        
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
        
        NSLog(@"Month used from picker %ld", self.pickerMonth);
        
        NSInteger pickedPosition = self.pickerMonth;
        
        NSNumber *isItPicked = [checkingConstellation.monthsVisibleArray objectAtIndex:pickedPosition];
        
        NSNumber *orionTest = [orion.monthsVisibleArray objectAtIndex:pickedPosition];
        
        NSLog(@"Orion is %@", orionTest);
        
        
        if (isItPicked.intValue == 1) {
            
            [self.pickedConstellations addObject:checkingConstellation];
            
        }
        
        //[self.constellations addObject:checkingConstellation];
        
        NSLog(@"%ld", (long)i);
        
        i++;
        
        //
    }
    
    

}
@end

