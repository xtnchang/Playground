//
//  main.m
//  Playground
//
//  Created by Christine Chang on 9/4/17.
//  Copyright © 2017 Christine Chang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "RPSController.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        // Initialize an RPSController
        RPSController *gameController = [[RPSController alloc] init];
        
        // Human player enters their weapon of choice as the throwDown argument below. Calling throwDown initializes a game, which you can then pass into gameResultMessage as an argument.
        [gameController throwDown: Paper];
        
        // Calling gameResultMessage builds the game message string.
        NSString *resultsMessage = [gameController gameResultMessage: gameController.game];
        NSLog(@"%@", resultsMessage);
    }
    
    return 0;
}
