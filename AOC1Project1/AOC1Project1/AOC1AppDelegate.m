//
//  AOC1AppDelegate.m
//  AOC1Project1
//
//  Created by Brenna Pavlinchak on 8/7/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "AOC1AppDelegate.h"

@implementation AOC1AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    //Start of my code
    
    int count = 1;
    int cats = 1;
    int dogs = 4;
    int bunnies = 2;
    int zoo = 0;
    int reagen = 1;
    int barks = 1;

    
    
    NSLog(@"We have a Zoo at our house.");
    NSLog(@"I guess you could saw we like the love.");
    NSLog(@"These are the animals that live with us:");
    
    
        for(int i=1; i<2; i++) //Start of single for loop
        {
            NSLog(@"%d Golden named Maddie", i);
            NSLog(@"%d Golden named Leah", i);
            NSLog(@"%d Golden named Valentine", i);
            NSLog(@"%d Standerded Poodle named Reagen", i);
            NSLog(@"%d Cat named Luna", i);
            NSLog(@"%d Angora Bunny named Bunbun", i);
            NSLog(@"%d Angora Bunny named Rae", i);
            NSLog(@"%d Canray named Captain America", i);
        }//end of single for loop
    
    
    //Start of if else statments
    if(reagen == barks) 
    {
        NSLog(@"I have to let Reagen out so he doesn't wake my mom up.");
    }
    
    else if(dogs >= barks)
    {
        NSLog(@"I have to let all the dogs out so they don't wake my mom up.");
    }
    
    else
    {
        NSLog(@"I have to let all the dogs out before 9 anyway if I go to work that day.");
    }
    //End of if else statments
    
    
    NSLog(@"The mornings are sometimes the busiest because everyone decides there hungry.");
    
    
    if(()

    
    
    
    
   
    
    
    
    
    
    
    while(count<=10) //I have a thing for while loops =)
    {
        NSLog(@"I have %d\n", count);
        
            for(int i=0; i<=5; i++)
            {
                NSLog(@"Inside the for");
            }
        
        count++;
    }
    
    
    while(count<25)
    {
        zoo = dogs + cats + bunnies;
        NSLog(@"Im counting and adding animals in my house %d", zoo);
        cats++;
        dogs++;
        bunnies++;
        count++;
        
        
    }
    
    
    
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
