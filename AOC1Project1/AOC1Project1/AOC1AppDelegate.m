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
    
    //Variables
    int count = 1;
    int dogs = 4;
    int bunnies = 2;
    int ouncesOfAngoraFur = 4;
    int poundsOfAngoraFur = 0;
    int totalAmountOfAngoraFur = 0;
    int reagen = 1;
    int barks = 1;
    int timesAYear = 3;
    bool meows = TRUE;
    bool luna = TRUE;
    float paces = 1;
    float maddie = 2;
    float poundsConverter = 16;
    

    
    
    NSLog(@"We have a Zoo at our house.");
    NSLog(@"I guess you could say we like the love.");
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
    
    
    
    
    if(reagen == barks) //Start of if else statments
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
    } //End of if else statments
    
    
    
    NSLog(@"The mornings are sometimes the busiest because everyone decides there hungry.");
    
    
        
        if((luna == meows) || (reagen <= paces)) //AND, OR comparisons
        {
            NSLog(@"It means they are out of food or water somewhere.");
        }
    
        else if((maddie == paces) && (reagen <= paces))
        {
            NSLog(@"It means either one of them wants to go outside");
        }
    
   
    NSLog(@"Everyday we have a feeding schedule:");
    
    while(count<=2) //I have a thing for while loops =)
    {
        if(count==1)
        {
            NSLog(@"In the morning Me or mom has to make sure all this happens:");
        }
        
        else
        {
            NSLog(@"At night it is all my job:");
        }
        
            
            for(int i=1; i<=1; i++) //Start nested for loop
            {
                NSLog(@"Make sure the big water bowl in the kitchen is full of water.");
                NSLog(@"Fill up Luna's food bowl that is on the table by the window.");
                NSLog(@"Fill up the Dog food bowls near the stairs.");
                NSLog(@"Give the Rae and Bunbun some dried papaya.");
                NSLog(@"Make sure the Bunnies have food in their bowl.");
                NSLog(@"Check to see how full the water bottle on their cage is full of water.");
                NSLog(@"Make sure that Captain America has food, water and is out of the reach of Luna.");
            } //End nested for loop
        
        count++;
    }
    
        NSLog(@"Did you know that one reason you have an Angora Bunny is for the Fur?.");
        NSLog(@"My mom plans on getting four more bunnies soon.");
        NSLog(@"I wonder how much fur that is in a year?");
    
    
    
    while(count<=6) //While loop with increment
    {
        totalAmountOfAngoraFur = bunnies * ouncesOfAngoraFur * timesAYear;
        NSLog(@"%i ounces of Angora Bunny Fur", totalAmountOfAngoraFur);
        bunnies++;
        count++;
    }
    
        //Casting 
        NSLog(@"Before I cast poundsConverter to int %f", poundsConverter);
    
        poundsOfAngoraFur = totalAmountOfAngoraFur/(int)poundsConverter;
    
        NSLog(@"After I cast poundsConverter to int %f", poundsConverter);
    
        NSLog(@"And end up getting %d pounds of Angora Fur from just bunnies!", poundsOfAngoraFur);
    

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
