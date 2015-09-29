//
//  main.m
//  Contact List
//
//  Created by Adam Goldberg on 2015-09-29.
//  Copyright (c) 2015 Adam Goldberg. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
   
    

InputCollector *input = [[InputCollector alloc] init];
    

    
    ContactList *contactList = [[ContactList alloc] init];
    
    
    
    while (YES) {
      
    
    
    NSString *menuPrompt = @" What would you like to do next? New / Create new contact list / List all contacts / Quit / Exit application";

    NSString *menuInput = [input inputForPrompt:menuPrompt];
    NSLog(@"%@", menuInput);

    if ([menuInput  isEqual: @"Quit\n"]) {
        NSLog(@"Goodbye!");
        return 0;
    }
    else if ([menuInput isEqual: @"New\n"]) {
        NSString *contactFullName = [input inputForPrompt:@"Please enter your contact's full name: "];
        NSString *emailAddress = [input inputForPrompt:@"Please enter your contact's email address: "];
    

        Contact *contact1 = [[Contact alloc] init];
        contact1.email = emailAddress;
        contact1.fullName =contactFullName;
    
        
        [contactList addContact:contact1];
        
    }
    
    else if ([menuInput isEqual: @"List\n"]) {
        int i = 1;
        for (Contact *contact in contactList.contacts) {
            NSLog(@"%d %@", i, contact.fullName);
            i++;
        }
    }
        
        
        
}
    
    
    
    
 
    
    return 0;
}
