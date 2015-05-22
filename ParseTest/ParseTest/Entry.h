//
//  Entry.h
//  ParseTest
//
//  Created by Ethan Hess on 5/22/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
@import Parse;

@interface Entry : PFObject <PFSubclassing>

@property (nonatomic, strong) NSString *name;

+ (NSString *)parseClassName;

@end
