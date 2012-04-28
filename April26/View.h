//
//  View.h
//  April26
//
//  Created by Noah Blake on 4/22/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Box;
@class Round;

@interface View : UIView
{
    Round *round;
    Box *box;
    NSMutableArray *array;
    NSMutableArray *simon;
    NSMutableArray *response;
    NSTimeInterval delay;
    int roundCount;
}


@end
