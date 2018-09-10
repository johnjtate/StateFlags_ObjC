//
//  JJTStateCollectionViewCell.m
//  StateFlags_ObjC
//
//  Created by John Tate on 9/10/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

#import "JJTStateCollectionViewCell.h"
#import "JJTState.h"

// private interface--don't need to be accessed by other classes, so aren't in the header file
@interface JJTStateCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *flagImageView;
@property (weak, nonatomic) IBOutlet UILabel *stateNameLabel;

@end

@implementation JJTStateCollectionViewCell

- (void)updateViews {
    self.flagImageView.image = [UIImage imageNamed:self.state.abbreviation];
    self.stateNameLabel.text = self.state.name;
}

// this takes the place of the property observer didSet() in Swift
-(void)setState:(JJTState *)state {
    _state = state;
    [self updateViews];
}

@end
