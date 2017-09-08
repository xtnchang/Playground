//
//  RPSTurn.m
//  Playground
//
//  Created by Christine Chang on 9/4/17.
//  Copyright © 2017 Christine Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

@implementation RPSTurn

-(instancetype)initWithWeapon:(Weapon) weapon {
    
    self = [super init];
    
    if (self){
        _weapon = weapon;
    }
    
    return self;
}

// Generate a random weapon for the computer
-(Weapon)generateWeapon {
    
    NSUInteger randomNumber = arc4random_uniform(3);
    
    switch(randomNumber) {
        case 0:
            return Rock;
            break;
        case 1:
            return Paper;
            break;
        case 2:
            return Scissors;
            break;
        default:
            return Invalid;
            break;
            
    }
    
    return Rock;
}

-(BOOL)defeats:(RPSTurn*) opponent {
    
    return false;
}

@end
