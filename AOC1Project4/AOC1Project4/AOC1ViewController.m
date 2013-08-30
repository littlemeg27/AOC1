//
//  AOC1ViewController.m
//  AOC1Project4
//
//  Created by Brenna Pavlinchak on 8/27/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "AOC1ViewController.h"

#define BUTTONLOGIN 0
#define BUTTONDATE 1
#define BUTTONINFO 2

@interface AOC1ViewController ()

@end

@implementation AOC1ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 30, 100.0, 40.0)]; //start of the usernamelabel
    
    if(userNameLabel !=nil)
    {
        userNameLabel.backgroundColor = [UIColor whiteColor];
        userNameLabel.textColor = [UIColor blackColor];
        userNameLabel.text = @"Username:";
    }
    [self.view addSubview:userNameLabel];
    
    
    userNameTextField = [[UITextField alloc] initWithFrame:CGRectMake(130.0, 30, 240.0, 40.0)]; //Start of the login text field
    
    if(userNameTextField !=nil)
    {
        userNameTextField.borderStyle = UITextBorderStyleRoundedRect;
    }
    [self.view addSubview:userNameTextField];
    
    
    userNameButton = [UIButton buttonWithType:UIButtonTypeRoundedRect]; //Start of the login button
    
    if(userNameButton !=nil)
    {
        userNameButton.frame = CGRectMake(330.0, 90.0, 110.0, 40.0);
        [userNameButton setTitle:@"Login" forState:UIControlStateNormal];
        [userNameButton setTitle:@"Logging In" forState:UIControlStateHighlighted];
        [userNameButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        userNameButton.tag = BUTTONLOGIN;
    }
    [self.view addSubview:userNameButton];
    
    defaultTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(130.0, 160.0, 500.0, 60.0)]; //start of the usernamelabel
    
    if(defaultTextLabel !=nil)
    {
        defaultTextLabel.backgroundColor = [UIColor redColor];
        defaultTextLabel.textColor = [UIColor blackColor];
        defaultTextLabel.text = @"Please Enter Username";
        defaultTextLabel.textAlignment = NSTextAlignmentCenter;
    }
    [self.view addSubview:defaultTextLabel];
    
    
    dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect]; //Start of the date button
    
    if(dateButton !=nil)
    {
        dateButton.frame = CGRectMake(80.0, 250.0, 110.0, 40.0);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        [dateButton setTitle:@"Showing Date" forState:UIControlStateHighlighted];
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        dateButton.tag = BUTTONDATE;
    }
    [self.view addSubview:dateButton];
    
    
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark]; //Start of the info button
    
    if(infoButton !=nil)
    {
        infoButton.frame = CGRectMake(40.0, 550.0, 25.0, 25.0);
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        infoButton.tag = BUTTONINFO;
    }
    [self.view addSubview:infoButton];
    
    
    infoButtonLabel = [[UILabel alloc] initWithFrame:CGRectMake(40.0, 575.0, 500.0, 60.0)]; //start of the infoButtonLabel
    
    if(infoButtonLabel !=nil)
    {
        infoButtonLabel.textColor = [UIColor whiteColor];
        infoButtonLabel.textAlignment = NSTextAlignmentCenter;
    }
    
}

- (void)onClick:(UIButton*) userNameButton
{
    if(userNameButton.tag == BUTTONLOGIN)
    {
        NSString *userNameText = [userNameTextField text];
        
        if(userNameText.length > 0)
        {
            NSString *login = [[NSString alloc] initWithFormat:@"The user: %@ has been logged in", userNameText];
            defaultTextLabel.text = login;
        }
        
        else
        {
            defaultTextLabel.text = @"The username cannot be empty!";
        } 
    }//End of checks for first button
    
    else if (userNameButton.tag == BUTTONDATE)
    {
        todaysDate = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        
        if(dateFormatter !=nil)
        {
            [dateFormatter setDateFormat:@"MMMM d, Y hh:mm:ss a zzzz"];
             NSString *showTodaysDate = [dateFormatter stringFromDate:todaysDate];
             
             UIAlertView *messagePopUp = [[UIAlertView alloc] initWithTitle:@"Date:" message:showTodaysDate delegate:nil
                         cancelButtonTitle:@"OK!" otherButtonTitles:nil];
             
             if (messagePopUp != nil)
             {
                 [messagePopUp show];
             }
        }
        
    }

    else if (userNameButton.tag == BUTTONINFO)
    {
        infoButtonLabel.text = @"This App was Written and Designed by Brenna Pavlinchak";
        infoButtonLabel.backgroundColor = [UIColor blueColor];
        [self.view addSubview:infoButtonLabel];
    }

}//End of onClick function



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
