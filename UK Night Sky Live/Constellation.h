//
//  Constellation.h
//  UK Night Sky Live
//
//  Created by Cameron Johnston [el16cj] on 20/11/2017.
//  Copyright © 2017 Cameron Johnston [el16cj]. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Constellation : NSObject

@property (nonatomic, strong) NSString *constellationName;
@property (nonatomic, strong) NSString *information;
@property NSInteger monthsVisible;

@end
