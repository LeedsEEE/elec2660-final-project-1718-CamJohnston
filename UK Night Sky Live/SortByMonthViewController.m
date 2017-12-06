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
    
    //array to display each month on the picker view
    
    months = @[@"January",@"February",@"March",@"April",@"May",@"June",@"July",@"August",@"September",@"October",@"November",@"December"];
    
    //sets up the picker view data source and delegate
    self.monthPicker.dataSource = self;
    self.monthPicker.delegate = self;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Picker View method to set how many cloumns the picker view has - I only need one for the month

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

//Picker View method for how many rows the picker view has - counts the array and makes a line for each month

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return months.count;
}

//Picker View Method for the test displayed on each row - takes the string from the month array for each row

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return months[row];
}

//Picker View Method for what happens when a row is selected - the row number is used in the dataByMonth method and can be used outside of the method

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    self.selectedMonth = row;
    
    self.dataByMonth.pickerMonth = self.selectedMonth;
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//Method for when the search button is pressed
//Due to the picker view resetting when the view is changed the last value sent is 0 from the picker
//So when the button is pressed, as well as changing rows it saves the value using NSUserDefaults to save the variable with the key "PickedMonth" and can be used in the DataModel

- (IBAction)searchButton:(UIButton *)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.dataByMonth.pickerMonth forKey:@"PickedMonth"];
    [defaults synchronize];     //http://www.ios-blog.co.uk/tutorials/objective-c/storing-data-with-nsuserdefaults/
    
    [self.dataByMonth arrayCreator];
    
}

@end
