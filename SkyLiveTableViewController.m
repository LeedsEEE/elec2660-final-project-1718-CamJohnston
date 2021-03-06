//
//  SkyLiveTableViewController.m
//  UK Night Sky Live
//
//  Created by Cameron Johnston [el16cj] on 20/11/2017.
//  Copyright © 2017 Cameron Johnston [el16cj]. All rights reserved.
//

#import "SkyLiveTableViewController.h"

@interface SkyLiveTableViewController ()

@end

@implementation SkyLiveTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.getMonth = [[DataModel alloc] init];
    
    self.data = [[DataModel alloc] init];
    
    [self.data arrayCreator];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSInteger numberOfRows;
    
    if (section == 0) {
        numberOfRows = self.data.visibleConstellations.count;
    }

    return numberOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ConstellationCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    if(indexPath.section == 0){
        Constellation *tempConstellation = [self.data.visibleConstellations objectAtIndex:indexPath.row];
        
        //The Name of the current constellation is sent to the table view cell
        
        cell.textLabel.text = tempConstellation.constellationName;
        
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"ShowConstellationDetails"]) {
        
        DetailViewController *destinationViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 0) {
            
            Constellation *tempConstellation = [self.data.visibleConstellations objectAtIndex:indexPath.row];
            
            destinationViewController.constellation = tempConstellation;
            
            
        }
        
        
    }
    


}

//Tab Icon - https://www.google.co.uk/search?q=black+and+white+constellation&client=safari&rls=en&dcr=0&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjCv42g9fXXAhVHL1AKHQtyARgQ_AUICigB&biw=882&bih=795#imgdii=NnH8i8FsQRxLiM:&imgrc=pLllhq7LKUZHsM:

@end
