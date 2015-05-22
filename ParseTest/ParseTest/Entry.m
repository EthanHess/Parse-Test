//
//  Entry.m
//  ParseTest
//
//  Created by Ethan Hess on 5/22/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "Entry.h"

static NSString *const EntryClassName = @"Entry";

@implementation Entry

@dynamic name;

+ (NSString *)parseClassName {
    
    return EntryClassName;
}

@end
