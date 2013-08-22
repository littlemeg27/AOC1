//
//  AOC1ViewController.m
//  AOC1Project3
//
//  Created by Brenna Pavlinchak on 8/21/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "AOC1ViewController.h"


@interface AOC1ViewController ()

@end

@implementation AOC1ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    int addedNumbers = [self add:3 addFunction:12]; //Call add Function
    
   // bool boolCompare = [self compareOne:3 compareTwo:12]; //Call compare Function
}


- (int)add:(NSInteger)numOne addFunction:(NSInteger)numTwo //Add Function
{
    return (numOne + numTwo);
}

-(bool)compare:(NSInteger)compareOne compareFunction:(NSInteger)compareTwo //Compare Function
{
        if(compareOne == compareTwo)
        {
            return YES;
        }
    
        else
        {
            return NO;
        }
}

-(NSString*)append:(NSString*)stringOne appendFunction:(NSString*)stringTwo //Append Function
{
    NSMutableString *string = [[NSMutableString alloc] initWithString:stringOne];
    NSString *bothStrings = [string stringByAppendingString:stringTwo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


