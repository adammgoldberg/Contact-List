//
//  ContactList.h
//  Contact List
//
//  Created by Adam Goldberg on 2015-09-29.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (strong, nonatomic) NSMutableArray *contacts;

-(void)addContact:(Contact *)newContact;

@end
