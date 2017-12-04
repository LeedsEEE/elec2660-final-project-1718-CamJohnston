//
//  SortByMonthViewController.h
//  UK Night Sky Live
//
//  Created by Cameron Johnston [el16cj] on 04/12/2017.
//  Copyright © 2017 Cameron Johnston [el16cj]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
@class DataModel;
@interface SortByMonthViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *monthPicker;
@property NSInteger selectedMonth;
@property (nonatomic, strong) DataModel *dataByMonth;

@end
