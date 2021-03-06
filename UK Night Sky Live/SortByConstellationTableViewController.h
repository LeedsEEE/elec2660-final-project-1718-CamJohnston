//
//  SortByConstellationTableViewController.h
//  UK Night Sky Live
//
//  Created by Cameron Johnston [el16cj] on 04/12/2017.
//  Copyright © 2017 Cameron Johnston [el16cj]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
#import "DetailViewController.h"

@interface SortByConstellationTableViewController : UITableViewController

@property (strong, nonatomic) DataModel *dataByConstellation;

@end
