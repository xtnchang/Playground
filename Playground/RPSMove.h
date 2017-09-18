//
//  RPSMove.h
//  Playground
//
//  Created by Christine Chang on 9/4/17.
//  Copyright © 2017 Christine Chang. All rights reserved.
//

#ifndef RPSMove_h
#define RPSMove_h


#endif /* RPSMove_h */
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Weapon) {
    Rock,
    Paper,
    Scissors,
    Invalid
};

@interface RPSMove : NSObject

@property (nonatomic) Weapon weapon;

-(instancetype)initWithWeapon:(Weapon) weapon;
-(int)generateWeapon;
-(BOOL)checkIfDefeats:(RPSMove*) turn;
-(NSString*)storeWeaponName;

@end
