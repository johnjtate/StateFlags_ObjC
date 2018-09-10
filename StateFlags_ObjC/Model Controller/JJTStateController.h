//
//  StateController.h
//  StateFlags_ObjC
//
//  Created by John Tate on 9/10/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JJTStateController : NSObject

@property (nonatomic, readonly) NSArray *states;

+ (NSArray *)abbreviations;
+ (NSArray *)fullNames;

// shared instance
+ (JJTStateController *)shared;


@end
