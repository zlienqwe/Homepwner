//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Zlien on 15/10/19.
//  Copyright © 2015年 Zlien. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemStore

-(instancetype)init{
    self = [super init];
    if (self) {
        allItems = [[NSMutableArray alloc] init];
    }
    return self;
}
-(NSArray *)allItems{
    return allItems;
}

-(BNRItem *)createItem{
    BNRItem *p = [BNRItem randomItem];
    
    [allItems addObject:p];
    
    return p;
}
-(void)removeItem:(BNRItem *)p{
    [allItems removeObjectIdenticalTo:p];
}
-(void)moveItemAtIndex:(NSInteger)from toIndex:(NSInteger)to{
    if (from == to) {
        return;
    }
    BNRItem *p = [allItems objectAtIndex:from];
    
    [allItems removeObjectAtIndex:from];
    
    [allItems insertObject:p atIndex:to];
}

+(BNRItemStore *)sharedStore{
    static BNRItemStore *sharedStrore = nil;
    
    if (!sharedStrore) {
        sharedStrore = [[super allocWithZone:nil] init];
    }
    return sharedStrore;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    return [self sharedStore];
}

@end
