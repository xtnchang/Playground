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

-(instancetype)initWithFirstMove:(RPSMove*) humansMove secondMove:(RPSMove*)computersMove {
    self = [super init];
    
    if(self) {
        _humansMove = humansMove;
        _computersMove = computersMove;
    }
    
    return self;
}

// We are able to access RPSMove's checkIfDefeats method because the checkIfDefeats method is included in the RPSMove header file.
-(RPSMove*)determineWinner {
    return [self.humansMove checkIfDefeats:self.computersMove] ? self.humansMove : self.computersMove;
}

-(RPSMove*)determineLoser {
    return [self.humansMove checkIfDefeats:self.computersMove] ? self.computersMove : self.humansMove;
}

@end
