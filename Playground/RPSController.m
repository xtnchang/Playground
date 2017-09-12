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
    
    // The RPSGame class stores the results of the game
    self.game = [[RPSGame alloc]initWithFirstTurn: playersTurn secondTurn: computersTurn];
}

-(NSString*)gameResult:(RPSGame*)game {
    return [game.firstTurn defeats:game.secondTurn] ? @"You Win!" : @"You Lose!";
}

-(NSString*)gameResultMessage:(RPSGame*)game {
    
    // First, handle the tie
    if (game.firstTurn.weapon == game.secondTurn.weapon) {
        return @"It's a tie!";
    } else {
        
    // Then build up the results message, e.g. "Rock defeats Scissors. You Win!" etc.
    NSString *winnerString = [[game winner] weaponName];
    NSString *loserString = [[game loser]  weaponName];
    NSString *resultsString = [self gameResult: game];
    
    // Combine the 3 strings using the NSString method, stringWithFormat:
    NSString *wholeString =  [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @".",  resultsString];
    
    return wholeString;
    }
}

@end
