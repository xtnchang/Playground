//
//  RPSController.m
//  Playground
//
//  Created by Christine Chang on 9/6/17.
//  Copyright © 2017 Christine Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

@implementation RPSController

// Player "throwing down" a move: rock, paper, or scissors
// Simultaneously generate an opponent's (computer's) move
-(void)throwDown:(Weapon) playersWeapon {
    
    // Take the player's move and generate an instance of RPSTurn representing the opponent's move.
    // Obj-C doesn't infer types like Swift does, so have to specify type (RPSTurn) when instantiating a variable.
    RPSTurn *playersTurn = [[RPSTurn alloc]initWithWeapon: playersWeapon];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    
    computersTurn.weapon = playersTurn.weapon;
    
    self.game = [[RPSGame alloc]initWithFirstTurn: playersTurn secondTurn: computersTurn];
}

@end
