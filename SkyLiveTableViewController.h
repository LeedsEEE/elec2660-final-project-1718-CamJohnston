//
//  SkyLiveTableViewController.h
//  UK Night Sky Live
//
//  Created by Cameron Johnston [el16cj] on 20/11/2017.
//  Copyright © 2017 Cameron Johnston [el16cj]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
#import "DetailViewController.h"

@interface SkyLiveTableViewController : UITableViewController
@property (strong,nonatomic) DataModel *getMonth;
@property (strong, nonatomic) DataModel *data;
@end
