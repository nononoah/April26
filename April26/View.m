//
//  View.m
//  April26
//
//  Created by Noah Blake on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "View.h"
#import "Box.h"
#import "Round.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
     
    //create the round object
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    
    CGRect r = CGRectMake(0, 0, width, height/3); 
    round = [[Round alloc] initWithFrame: r];
    [self addSubview: round];
    
    
    //create the boxes that will flash
    CGFloat x = 0;
    CGFloat y = r.size.height;
    
    array = [[NSMutableArray alloc] init];
    
    for (int i = 1; i < 10; i++)
    	{
        CGRect b = CGRectMake(x, y, width/3 - 1, height * 2/9 - 1);
        if (i % 3 == 0){
        	x = 0;
            y += b.size.height + 1;
            }
        else {
            x += b.size.width + 1;
        	}
        
        box = [[Box alloc] initWithFrame: b];
        [array addObject: box];
        [self addSubview: box];
    	}
    
    delay = 3;
    roundCount = 0;    
    simon = [[NSMutableArray alloc] init];
    response = [[NSMutableArray alloc] init];
    [self performSelector: @selector(roundStart) withObject: nil afterDelay: .3];
    
   
    return self;
    
	}
}

 -(void) roundStart
{
	++roundCount;
 	for (int i = 0; i <= roundCount; ++i) {
		NSUInteger r = rand() % array.count;
		Box *touch = [array objectAtIndex: r];
        [simon addObject: touch];
		[touch touchesBegan: nil withEvent: nil]; 
        [touch touchesEnded: nil withEvent: nil];
	}
    [self userResponse];
}


-(void) userResponse
{
    response = simon;
    if ([response isEqualToArray: simon]){
        [round nextRound];
        [self performSelector: @selector(roundStart) withObject: nil afterDelay: 2];
    }
    else {
        roundCount = 0;
        [round setNeedsDisplay];
        [self roundStart];
    }
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
