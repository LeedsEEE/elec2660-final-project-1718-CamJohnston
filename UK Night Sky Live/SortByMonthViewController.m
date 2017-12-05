//
//  SortByMonthViewController.m
//  UK Night Sky Live
//
//  Created by Cameron Johnston [el16cj] on 04/12/2017.
//  Copyright © 2017 Cameron Johnston [el16cj]. All rights reserved.
//

#import "SortByMonthViewController.h"

@interface SortByMonthViewController ()

{
    NSArray *months;
}

@end

@implementation SortByMonthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.dataByMonth = [[DataModel alloc] init];
    months = @[@"January",@"February",@"March",@"April",@"May",@"June",@"July",@"August",@"September",@"October",@"November",@"December"];
    self.monthPicker.dataSource = self;
    self.monthPicker.delegate = self;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return months.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return months[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
   self.selectedMonth = row;
    
    self.dataByMonth.pickerMonth = self.selectedMonth;
    //[self.dataByMonth Bloddymonth];
    //self.dataByMonth = [[DataModel alloc] init];
    
    NSLog(@"THE BLOODY MONTH IS %ld", (long)self.selectedMonth);
     
    
    
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)searchButton:(UIButton *)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.dataByMonth.pickerMonth forKey:@"PickedMonth"];
    [defaults synchronize];
    
    [self.dataByMonth Bloddymonth];
    
}
@end
