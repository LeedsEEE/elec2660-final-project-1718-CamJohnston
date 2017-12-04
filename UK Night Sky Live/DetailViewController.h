//
//  DetailViewController.h
//  UK Night Sky Live
//
//  Created by Cameron Johnston [el16cj] on 04/12/2017.
//  Copyright © 2017 Cameron Johnston [el16cj]. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constellation.h"

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextView *informationLabel;
@property (weak, nonatomic) IBOutlet UIImageView *myImage;



@property (strong, nonatomic) Constellation *constellation;



@end
