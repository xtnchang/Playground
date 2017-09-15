//
//  RPSGame.m
//  Playground
//
//  Created by Christine Chang on 9/4/17.
//  Copyright © 2017 Christine Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"

// RPSGame represents a match between the 2 players
@implementation RPSGame

-(instancetype)initWithFirstTurn:(RPSTurn*) playerTurn secondTurn:(RPSTurn*)computerTurn {
    self = [super init];
    
    if(self) {
        _firstTurn = playerTurn;
        _secondTurn = computerTurn;
    }
    
    return self;
}

// We are able to access RPSTurn's checkIfDefeats method because the checkIfDefeats method is included in the RPSTurn header file.
-(RPSTurn*)determineWinner {
    return [self.firstTurn checkIfDefeats:self.secondTurn] ? self.firstTurn : self.secondTurn;
}

-(RPSTurn*)determineLoser {
    return [self.firstTurn checkIfDefeats:self.secondTurn] ? self.secondTurn : self.firstTurn;
}

@end
