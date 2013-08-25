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
    
    int boolOne = 27;
    int boolTwo = 27;
    int numOne = 3;
    int numTwo = 12; 
    
    BOOL boolCompare = [self compare:boolOne compareFunction:boolTwo]; //Call compare Function
    NSString *boolAnswered = [NSString stringWithFormat:@"Compare: %s", boolCompare ? "Yes" : "No"]; //Compare 
    [self displayAlertWithString:boolAnswered]; //Compare popup

    int addedNumbers = [self add:numOne addFunction:numTwo];
    
    NSNumber *stringedNumbers = [NSNumber numberWithInt:addedNumbers]; //Change number to string
    NSString *newString = [stringedNumbers stringValue]; //Changing string
    NSString *messageToPass = [NSString stringWithFormat:@"The number is %@", stringedNumbers]; //Changing string
    [self displayAlertWithString:messageToPass]; //Popup for my stringed numbers.
    
    NSString *appendString = [self append:messageToPass appendFunction:newString]; //Append the string
    [self displayAlertWithString:appendString];
    
    NSString *popUpAppend = [self append:@"This is " appendFunction:@"my pop up app!"]; //Call Append Function
    [self displayAlertWithString:popUpAppend];
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


