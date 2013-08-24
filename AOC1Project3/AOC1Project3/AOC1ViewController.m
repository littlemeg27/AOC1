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
    
    int boolOne = 3;
    int boolTwo = 12;
    
    BOOL boolCompare = [self compare:boolOne compareFunction:boolTwo]; //Call compare Function

    int addedNumbers = [self add:boolOne addFunction:boolTwo];
    
    NSNumber *stringedNumbers = [NSNumber numberWithInt:addedNumbers]; //Change number to string
    NSString *messageToPass = [NSString stringWithFormat:@"The number is %d", stringedNumbers]; //Changing string
    
}


- (int)add:(NSInteger)numOne addFunction:(NSInteger)numTwo //Add Function
{
    return (numOne + numTwo);
}

- (bool)compare:(NSInteger)compareOne compareFunction:(NSInteger)compareTwo //Compare Function
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

- (NSString*)append:(NSString*)stringOne appendFunction:(NSString*)stringTwo //Append Function
{
    NSMutableString *string = [[NSMutableString alloc] initWithString:stringOne];
    NSString *bothStrings = [string stringByAppendingString:stringTwo];
    return bothStrings;
}

- (void)displayAlertWithString:(NSString*)message //DisplayAlertWithString Function
{
    UIAlertView *messagePopUp = [[UIAlertView alloc] initWithTitle:@"Message:" message:message delegate:nil
                                 cancelButtonTitle:@"Hey you click me!" otherButtonTitles:nil];
    [messagePopUp show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


