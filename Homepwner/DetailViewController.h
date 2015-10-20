//
//  DetailViewController.h
//  Homepwner
//
//  Created by Zlien on 15/10/20.
//  Copyright © 2015年 Zlien. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNRItem;

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *serialNumberField;
@property (weak, nonatomic) IBOutlet UITextField *valueField;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@property (strong, nonatomic) BNRItem *item;
@end
