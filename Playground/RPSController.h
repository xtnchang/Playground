//
//  RPSController.h
//  Playground
//
//  Created by Christine Chang on 9/6/17.
//  Copyright © 2017 Christine Chang. All rights reserved.
//

#ifndef RPSController_h
#define RPSController_h


#endif /* RPSController_h */
#import <Foundation/Foundation.h>
#import "RPSMove.h" // For Weapon object
#import "RPSGame.h"

@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;

-(void)throwDown:(Weapon) playersWeapon;
-(NSString*)determineGameResult:(RPSGame*) game;
-(NSString*)generateGameResultMessage:(RPSGame*)game;

@end
