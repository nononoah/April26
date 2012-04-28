//
//  Box.m
//  April26
//
//  Created by Noah Blake on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Box.h"
#import "Round.h"

@implementation Box
//@synthesize response;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor grayColor];
        self.userInteractionEnabled = YES;
        
    }
    //self.response = [[NSMutableArray alloc] init];
    return self;
}

- (void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event 
{
 	//[self.response addObject: touches];
    
    [UIView animateWithDuration: .5
    	delay: 0
        options: UIViewAnimationOptionCurveLinear
        animations: ^{
                (self.backgroundColor = [UIColor whiteColor]);
            }
    completion: NULL
         ];
    }
    
- (void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event 
{
    [UIView animateWithDuration: .5
    delay: 0
    options: UIViewAnimationOptionCurveLinear
    animations: ^{
        (self.backgroundColor = [UIColor grayColor]);
            }
    completion: NULL
    ];
}    




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
