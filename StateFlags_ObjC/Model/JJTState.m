//
//  State.m
//  StateFlags_ObjC
//
//  Created by John Tate on 9/10/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

#import "JJTState.h"

@implementation JJTState

- (instancetype)initWithName:(NSString *)name abbreviation:(NSString *)abbreviation {
    
    self = [super init];
    if (self) {
        _name = name;
        _abbreviation = abbreviation;
    }
    return self;
}

@end
