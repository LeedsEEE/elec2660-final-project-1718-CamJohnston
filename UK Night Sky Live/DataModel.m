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
        

    }
    return self;
}

-(void) arrayCreator {
    self.visibleConstellations = [NSMutableArray array];
    self.pickedConstellations = [NSMutableArray array];
    
    self.monthData = [[SortByMonthViewController alloc] init];
    
    self.constellations = [NSMutableArray array];
    Constellation *orion = [[Constellation alloc] init];
    orion.constellationName = @"Orion";
    orion.information = @"A constellation notable for it's recognisable three stars that make up the belt and home to many famous nebulae including the orion and horsehead nebulae";
    orion.monthsVisible = 2040;
    orion.monthsVisibleArray = @[@0,@1,@1,@1,@1,@1,@1,@1,@1,@0,@0,@0];
    orion.imageID = @"OrionCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *cassiopeia = [[Constellation alloc] init];
    cassiopeia.constellationName = @"Cassiopeia";
    cassiopeia.information = @"The Queen - a constellation that forms a W shape in the night sky in close proximity to Andromeda";
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
    cygnus.information = @"The swan – a constellation that makes a large cross in the northern night sky, known as the Northern Cross in contrast to the southern hemisphere's southern cross.";
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
    
    self.constellations = [NSMutableArray array];
    Constellation *taurus = [[Constellation alloc] init];
    taurus.constellationName = @"Taurus";
    taurus.information = @"The Bull – home to two of Earths nearest open clusters with a bright red giant and a constellation in the zodiac.";
    taurus.monthsVisible = 2040;
    taurus.monthsVisibleArray = @[@1,@1,@0,@0,@0,@0,@0,@0,@1,@1,@1,@1];
    taurus.imageID = @"TaurusCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *gemini = [[Constellation alloc] init];
    gemini.constellationName = @"Gemini";
    gemini.information = @"The twins - a constelation in the zodiac and located near Taurus and Orion. Also located near the Rosetta Nebula.";
    gemini.monthsVisible = 2040;
    gemini.monthsVisibleArray = @[@1,@1,@1,@1,@1,@0,@0,@0,@0,@1,@1,@1];
    gemini.imageID = @"GeminiCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *cancer = [[Constellation alloc] init];
    cancer.constellationName = @"Cancer";
    cancer.information = @"The Crab - a small, faint constellation in the zodiac between gemini and leo. The dimmest constellation in the zodiac.";
    cancer.monthsVisible = 2040;
    cancer.monthsVisibleArray = @[@1,@1,@1,@1,@0,@0,@0,@0,@0,@1,@1,@1];
    cancer.imageID = @"CancerCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *leo = [[Constellation alloc] init];
    leo.constellationName = @"Leo";
    leo.information = @"The Lion - a constellation of the zodiac containing many stars of great brightness such as regulus - a blue-white main sequence star just 78 light years away and Denebola (meaning lions tail) just 34 light years away.";
    leo.monthsVisible = 2040;
    leo.monthsVisibleArray = @[@1,@1,@1,@1,@1,@0,@0,@0,@0,@0,@1,@1];
    leo.imageID = @"LeoCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *virgo = [[Constellation alloc] init];
    virgo.constellationName = @"Virgo";
    virgo.information = @"The Virgin - a constellation in the zodiac and the second largest constellation in the night sky, can be located using it's bright star - Spica.";
    virgo.monthsVisible = 2040;
    virgo.monthsVisibleArray = @[@0,@1,@1,@1,@1,@1,@0,@0,@0,@0,@0,@0];
    virgo.imageID = @"VirgoCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *libra = [[Constellation alloc] init];
    libra.constellationName = @"Libra";
    libra.information = @"The Weighing Scales - a faint constellation in the zodiac between Scorpius and Virgo.";
    libra.monthsVisible = 2040;
    libra.monthsVisibleArray = @[@0,@0,@0,@1,@1,@1,@1,@0,@0,@0,@0,@0];
    libra.imageID = @"LibraCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *scorpius = [[Constellation alloc] init];
    scorpius.constellationName = @"Scorpius";
    scorpius.information = @"The Scorpion - a large bright constellation of the zodiac which includes the star Antares - the rival of mars due to it's bright red colour in the night sky.";
    scorpius.monthsVisible = 2040;
    scorpius.monthsVisibleArray = @[@0,@0,@0,@0,@1,@1,@0,@0,@0,@0,@0,@0];
    scorpius.imageID = @"ScorpiusCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *sagittarius = [[Constellation alloc] init];
    sagittarius.constellationName = @"Sagittariuss";
    sagittarius.information = @"The Archer - a constellation in the zodiac that is located near the densest part of the milky way and contains many bright stars and deep space nebulae looking towards the galactic centre as well as hot star forming regions of our galaxy.";
    sagittarius.monthsVisible = 2040;
    sagittarius.monthsVisibleArray = @[@0,@0,@0,@0,@0,@1,@1,@0,@0,@0,@0,@0];
    sagittarius.imageID = @"SagittariusCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *capricornus = [[Constellation alloc] init];
    capricornus.constellationName = @"Capricornus";
    capricornus.information = @"The Goat - often just called capricorn, this constellation of the zodiac is home to many other star clusters deep in our galaxy as well a spiral galaxy located a massive 146 Million light years away.";
    capricornus.monthsVisible = 2040;
    capricornus.monthsVisibleArray = @[@0,@0,@0,@0,@0,@0,@1,@1,@1,@0,@0,@0];
    capricornus.imageID = @"CapricornusCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *aquarius = [[Constellation alloc] init];
    aquarius.constellationName = @"Aquarius";
    aquarius.information = @"The Water-Bearer - a constellation in the zodiac that inhabits the night sky area responsible for multiple meteor showers and contains stars that have been shown to possess planetary systems.";
    aquarius.monthsVisible = 2040;
    aquarius.monthsVisibleArray = @[@0,@0,@0,@0,@0,@0,@1,@1,@1,@1,@0,@0];
    aquarius.imageID = @"AquariusCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *pisces = [[Constellation alloc] init];
    pisces.constellationName = @"Pisces";
    pisces.information = @"The Fish(es) - a constellation in the zodiac that contains a spiral galaxy and large extensive star forming regions.";
    pisces.monthsVisible = 2040;
    pisces.monthsVisibleArray = @[@0,@0,@0,@0,@0,@0,@0,@1,@1,@1,@1,@1];
    pisces.imageID = @"PiscesCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *ursam = [[Constellation alloc] init];
    ursam.constellationName = @"Ursa Minor";
    ursam.information = @"The Little Bear – The tail of this constellation includes Polaris – The pole star, the constellation Ursa Major can be used to point at polaris. The constellation is sometimes called the Little Dipper";
    ursam.monthsVisible = 2040;
    ursam.monthsVisibleArray = @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
    ursam.imageID = @"UrsaMinorCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *lyra = [[Constellation alloc] init];
    lyra.constellationName = @"Lyra";
    lyra.information = @"The Stringed Instrument - a small constellation containg the very bright star Vega";
    lyra.monthsVisible = 2040;
    lyra.monthsVisibleArray = @[@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1];
    lyra.imageID = @"LyraCC.jpg";
    
    self.constellations = [NSMutableArray array];
    Constellation *bootes = [[Constellation alloc] init];
    bootes.constellationName = @"Bootes";
    bootes.information = @"The Ox-driver - a constellation that contains the third brightest star in the night sky - Arcturus";
    bootes.monthsVisible = 2040;
    bootes.monthsVisibleArray = @[@1,@1,@1,@1,@1,@1,@1,@0,@0,@0,@0,@0];
    bootes.imageID = @"BootesCC.jpg";
    
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
    [self.constellations addObject:taurus];
    [self.constellations addObject:gemini];
    [self.constellations addObject:cancer];
    [self.constellations addObject:leo];
    [self.constellations addObject:virgo];
    [self.constellations addObject:libra];
    [self.constellations addObject:scorpius];
    [self.constellations addObject:sagittarius];
    [self.constellations addObject:capricornus];
    [self.constellations addObject:aquarius];
    [self.constellations addObject:pisces];
    [self.constellations addObject:ursam];
    [self.constellations addObject:lyra];
    [self.constellations addObject:bootes];
    
    
    NSInteger i = 0;
    
    
    while (i <= 22) {
        
        
        
        
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

