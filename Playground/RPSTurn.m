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

-(instancetype)initWithMove:(Move) move {
    
    self = [super init];
    
    if (self){
        _move = move;
    }
    
    return self;
}

@end
