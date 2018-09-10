//
//  State.h
//  StateFlags_ObjC
//
//  Created by John Tate on 9/10/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JJTState : NSObject

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic) NSString *abbreviation;

- (instancetype)initWithName:(NSString *)name abbreviation:
(NSString *) abbreviation; 

@end
