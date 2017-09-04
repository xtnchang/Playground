//
//  RPSTurn.h
//  Playground
//
//  Created by Christine Chang on 9/4/17.
//  Copyright © 2017 Christine Chang. All rights reserved.
//

#ifndef RPSTurn_h
#define RPSTurn_h


#endif /* RPSTurn_h */
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors
};

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype)initWithMove:(Move) move;

@end
