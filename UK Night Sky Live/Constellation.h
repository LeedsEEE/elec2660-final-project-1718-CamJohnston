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
@property NSArray *monthsVisibleArray;

//app icon from https://res.cloudinary.com/teepublic/image/private/s--SvFMRM9g--/t_Preview/b_rgb:191919,c_limit,f_jpg,h_630,q_90,w_630/v1483716643/production/designs/1051038_1.jpg

@end
