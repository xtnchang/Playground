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

// Initialize a turn with a random move (for the computer)
-(instancetype)init {
    
    self = [super init];
    
    if (self){
        _weapon = [self generateWeapon];
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
    
    // human player wins
    if ((self.weapon == Paper && opponent.weapon == Rock) || (self.weapon == Scissors && opponent.weapon == Paper) || (self.weapon == Rock && opponent.weapon == Scissors)) {
        
        return true;
    } else {
        
        // computer wins
        return false;
    }
}

-(NSString*)description {
    
    switch(self.weapon) {
        case Rock:
            return @"Rock";
        case Paper:
            return @"Paper";
        case Scissors:
            return @"Scissors";
        default:
            return @"Invalid";
    }
}

@end
