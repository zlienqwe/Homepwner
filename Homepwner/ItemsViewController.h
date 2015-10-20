//
//  ItemViewController.h
//  Homepwner
//
//  Created by Zlien on 15/10/19.
//  Copyright © 2015年 Zlien. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemsViewController : UITableViewController
{
    IBOutlet UIView *headerView;
}

-(UIView *)headerView;
-(IBAction)addNewItem:(id)sender;
-(IBAction)toggleEditingMode:(id)sender;


@end
