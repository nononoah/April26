//
//  Round.h
//  April26
//
//  Created by Noah Blake on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Round : UILabel
{
    UILabel *round;
    int roundCount;
}

-(void)nextRound;

@end
