//
//  AOC1ViewController.h
//  AOC1Project3
//
//  Created by Brenna Pavlinchak on 8/21/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AOC1ViewController : UIViewController
{
    int addedNumbers; // Variable to contain the combined integers
    int numOne;         // Variable for integer Number 1
    int numTwo;
    
    
}

-(int)add:(NSInteger)numOne addFunction:(NSInteger)numTwo; //Initialize for add

-(bool)compare:(NSInteger)compareOne compareFunction:(NSInteger)compareTwo; //Initialize for compare

-(NSString*)append:(NSString*)stringOne appendFunction:(NSString*)stringTwo; //Initialize for append

-(void)displayAlertWithString:(NSString*)message; //Initialize for displayAlertWithString

@end

