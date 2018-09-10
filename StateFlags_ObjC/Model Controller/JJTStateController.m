//
//  StateController.m
//  StateFlags_ObjC
//
//  Created by John Tate on 9/10/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

#import "JJTStateController.h"
#import "JJTState.h"

@implementation JJTStateController

+ (NSArray *)abbreviations {
    
    return @[@"AL", @"AK", @"AZ", @"AR", @"CA", @"CO", @"CT", @"DE", @"FL", @"GA", @"HI", @"ID", @"IL", @"IN", @"IA", @"KS", @"KY", @"LA", @"ME", @"MD", @"MA", @"MI", @"MN", @"MS", @"MO", @"MT", @"NE", @"NV", @"NH", @"NJ", @"NM", @"NY", @"NC", @"ND", @"OH", @"OK", @"OR", @"PA", @"RI", @"SC", @"SD", @"TN", @"TX", @"UT", @"VT", @"VA", @"WA", @"WV", @"WI", @"WY"];
}

+ (NSArray *)fullNames {
    
    return @[@"Alaska", @"Alabama", @"Arizona", @"Arkansas", @"California", @"Colorado", @"Connecticut", @"Delaware", @"Florida", @"Georgia", @"Hawaii", @"Idaho", @"Illinois", @"Indiana", @"Iowa", @"Kansas", @"Kentucky", @"Louisiana", @"Maine", @"Maryland", @"Massachusetts", @"Michigan", @"Minnesota", @"Mississippi", @"Missouri", @"Montana", @"Nebraska", @"Nevada", @"New Hampshire", @"New Jersey", @"New Mexico", @"New York", @"North Carolina", @"North Dakota", @"Ohio", @"Oklahoma", @"Oregon", @"Pennsylvania", @"Rhode Island", @"South Carolina", @"South Dakota", @"Tennessee", @"Texas", @"Utah", @"Vermont", @"Virginia", @"Washington", @"West Virginia", @"Wisconsin", @"Wyoming"];
}

// shared instance

+ (JJTStateController *)shared {
    static JJTStateController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [JJTStateController new];
    });
    return shared;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _states = [self createAllStates];
    }
    return self;
}


// note that we do not put createAllStates in the header file because we only use it internally
- (NSArray *)createAllStates {
    NSMutableArray *placeHolderState = [[NSMutableArray alloc] init];
    for (NSString *stateFullName in [JJTStateController fullNames]) {
        NSUInteger index = [[JJTStateController fullNames] indexOfObject:stateFullName];
        NSString *abbreviation = [JJTStateController abbreviations][index];
        // this is a really safe way in case the name and cooresponding abbreviation do not have the same index
        JJTState *state = [[JJTState alloc] initWithName:stateFullName abbreviation:abbreviation];
        [placeHolderState addObject:state];
    }
    return placeHolderState;
}

@end
