//
//  Round.m
//  April26
//
//  Created by Noah Blake on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Round.h"
#import "View.h"

@implementation Round

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //self.backgroundColor = [UIColor whiteColor]; 
        roundCount = 1;
        
        
    }
    return self;
}


 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
     NSString *string = [NSString stringWithFormat: @"Round %i", roundCount];
     UIFont *font = [UIFont systemFontOfSize: 60];
     
     CGRect f = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
     
     round = [[UILabel alloc] initWithFrame: f];
     round.textColor = [UIColor whiteColor];
     round.backgroundColor = [UIColor blackColor];
     round.font = font;
     round.text = string;
     round.textAlignment = UITextAlignmentCenter;
     round.userInteractionEnabled = NO;
     
     [self addSubview: round];
 }

-(void)nextRound
{
    roundCount++;
    [self setNeedsDisplay];
} 

@end