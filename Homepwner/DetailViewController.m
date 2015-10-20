//
//  DetailViewController.m
//  Homepwner
//
//  Created by Zlien on 15/10/20.
//  Copyright © 2015年 Zlien. All rights reserved.
//

#import "DetailViewController.h"
#import "BNRItem.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize item;

-(void)viewDidLoad{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor groupTableViewBackgroundColor]];

}

-(void)setItem:(BNRItem *)i{
    item = i;
    [[self navigationItem] setTitle:[item itemName]];

}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.nameField setText:[item itemName]];
    [self.serialNumberField setText:[item serialNumber]];
    [self.valueField setText:[NSString stringWithFormat:@"%d", [item valueInDollars]]];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    [self.dateLabel setText:[dateFormatter stringFromDate:[item dateCreated]]];
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [[self view] endEditing:YES];
    
    [item setItemName:[self.nameField text]];
    [item setSerialNumber:[self.serialNumberField text]];
    [item setValueInDollars:[[self.valueField text] intValue]];
}
@end
