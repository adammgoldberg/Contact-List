//
//  ContactList.m
//  Contact List
//
//  Created by Adam Goldberg on 2015-09-29.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [self.contacts addObject:newContact];
}





@end
