//
//  AppDelegate.h
//  Playground
//
//  Created by Christine Chang on 9/4/17.
//  Copyright © 2017 Christine Chang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

