//
//  RPSGame.h
//  Playground
//
//  Created by Christine Chang on 9/4/17.
//  Copyright © 2017 Christine Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSMove.h"

@interface RPSGame : NSObject

@property (nonatomic) RPSMove *humansMove;
@property (nonatomic) RPSMove *computersMove;

-(instancetype)initWithFirstMove:(RPSMove*) humansMove secondMove:(RPSMove*)computersMove;
-(RPSMove*)determineWinner;
-(RPSMove*)determineLoser;

@end
