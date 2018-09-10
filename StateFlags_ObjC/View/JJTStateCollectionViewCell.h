//
//  JJTStateCollectionViewCell.h
//  StateFlags_ObjC
//
//  Created by John Tate on 9/10/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JJTState.h"

@interface JJTStateCollectionViewCell : UICollectionViewCell

// landing pad
@property (nonatomic) JJTState *state;

-(void)updateViews; 


@end
