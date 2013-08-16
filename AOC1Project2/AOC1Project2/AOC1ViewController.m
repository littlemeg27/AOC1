//
//  AOC1ViewController.m
//  AOC1Project2
//
//  Created by Brenna Pavlinchak on 8/15/13.
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
    
    headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 100.0f, 20.0f)];
                        
    if(headerLabel !=nil)
    {
        headerLabel.backgroundColor = [UIColor redColor];
        headerLabel.text = @"This is the header";
        headerLabel.textAlignment = UITextAlignmentCenter;
    }
    
    [self.view addSubview:headerLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
