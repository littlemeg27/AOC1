//
//  AOC1ViewController.m
//  AOC1Project2
//
//  Created by Brenna Pavlinchak on 8/16/13.
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
    
    //Header line for the top of the page
    headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 350.0, 40.0)];
    
    if(headerLabel !=nil)
    {
        headerLabel.backgroundColor = [UIColor redColor];
        headerLabel.text = @"This is the header";
        
    }
    [self.view addSubview:headerLabel];
    
    
    //Label for the first part of the Author line
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 40.0, 100.0, 30.0)];
    
        if(authorLabel !=nil)
        {
            authorLabel.backgroundColor = [UIColor blueColor];
            authorLabel.text = @"Author";
        
        }
        [self.view addSubview:authorLabel];
    
    
    //Label for the second part of the Author line
    authorLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(100.0, 40.0, 220.0, 30.0)];
    
        if(authorLabel2 !=nil)
        {
            authorLabel2.backgroundColor = [UIColor greenColor];
            authorLabel2.text = @"Insert name here";
        
        }
        [self.view addSubview:authorLabel2];
    
    
    //Label for the first part of the published line
    publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 70.0, 100.0, 30.0)];
    
        if(publishedLabel !=nil)
        {
            publishedLabel.backgroundColor = [UIColor greenColor];
            publishedLabel.text = @"Published";
        
        }
        [self.view addSubview:publishedLabel];
    
    
    //Label for the second part of the published line
    publishedLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(100.0, 70.0, 220.0, 30.0)];
    
        if(publishedLabel2 !=nil)
        {
            publishedLabel2.backgroundColor = [UIColor greenColor];
            publishedLabel2.text = @"Insert name here";
        
        }
        [self.view addSubview:publishedLabel2];
    
    
    //Label for the summary
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 110.0, 100.0, 30.0)];
    
        if(summaryLabel !=nil)
        {
            summaryLabel.backgroundColor = [UIColor blueColor];
            summaryLabel.text = @"Summary:";
        
        }
        [self.view addSubview:summaryLabel];
    
    
    //Label for the summary
    summaryTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 140.0, 320.0, 150.0)];
    
        if(summaryTextLabel !=nil)
        {
            summaryTextLabel.backgroundColor = [UIColor blueColor];
            summaryTextLabel.text = @"Summary Text Box:";
        
        }
        [self.view addSubview:summaryTextLabel];
    
    
    //Label for the list of items
    listOfItemsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 300.0, 150.0, 30.0)];
    
        if(listOfItemsLabel !=nil)
        {
            listOfItemsLabel.backgroundColor = [UIColor lightGrayColor];
            listOfItemsLabel.text = @"List Of Items:";
        
        }
        [self.view addSubview:listOfItemsLabel];
    
    //Start of the NSArray
    NSString *bookItem1 = @"Honed Steel Sword";
    NSString *bookItem2 = @"Vampires";
    NSString *bookItem3 = @"Rogues";
    NSString *bookItem4 = @"Shifters";
    NSString *bookItem5 = @" and Chicago";
    
        //We are allocating for the NS Array
        NSArray *bookArray = [[NSArray alloc] initWithObjects:bookItem1,bookItem2,bookItem3,bookItem4,bookItem5, nil];
    
        //We are allocating for the NS Mutable Array
        NSMutableString * bookItems = [[NSMutableString alloc] initWithCapacity:5];
    
    
    //Label for the list of items text box
    listOfItemsTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 330.0, 320.0, 130.0)];
    
        if(listOfItemsTextLabel !=nil)
        {
            listOfItemsTextLabel.backgroundColor = [UIColor lightGrayColor];
            listOfItemsTextLabel.text = @"List Of Items Text Box:";
        
        }
        [self.view addSubview:listOfItemsTextLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
