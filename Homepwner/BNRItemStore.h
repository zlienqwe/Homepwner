//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Zlien on 15/10/19.
//  Copyright © 2015年 Zlien. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNRItem;

@interface BNRItemStore : NSObject
{
    NSMutableArray *allItems;
}
+(BNRItemStore *)sharedStore;

-(NSArray *)allItems;
-(BNRItem *)createItem;
-(void)removeItem:(BNRItem *)p;
-(void)moveItemAtIndex:(NSInteger)from toIndex:(NSInteger)to;

@end
