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
        headerLabel.textColor = [UIColor whiteColor];
        headerLabel.text = @"House Rules";
        headerLabel.textAlignment = NSTextAlignmentCenter;        
    }
    [self.view addSubview:headerLabel];
    
    
    //Label for the first part of the Author line
    authorLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 40.0, 100.0, 30.0)];
    
        if(authorLabel !=nil)
        {
            authorLabel.backgroundColor = [UIColor darkGrayColor];
            authorLabel.text = @"Author:";
            authorLabel.textAlignment = NSTextAlignmentRight;
            authorLabel.textColor = [UIColor whiteColor];
        }
        [self.view addSubview:authorLabel];
    
    
    //Label for the second part of the Author line
    authorLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(100.0, 40.0, 220.0, 30.0)];
    
        if(authorLabel2 !=nil)
        {
            authorLabel2.backgroundColor = [UIColor blueColor];
            authorLabel2.text = @"Chloe Neill";
            authorLabel2.textColor = [UIColor whiteColor];
            authorLabel2.textAlignment = NSTextAlignmentLeft;
        }
        [self.view addSubview:authorLabel2];
    
    
    //Label for the first part of the published line
    publishedLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 70.0, 100.0, 30.0)];
    
        if(publishedLabel !=nil)
        {
            publishedLabel.backgroundColor = [UIColor lightGrayColor];
            publishedLabel.text = @"Published:";
            publishedLabel.textAlignment = NSTextAlignmentRight;
        }
        [self.view addSubview:publishedLabel];
    
    
    //Label for the second part of the published line
    publishedLabel2 = [[UILabel alloc] initWithFrame:CGRectMake(100.0, 70.0, 220.0, 30.0)];
    
        if(publishedLabel2 !=nil)
        {
            publishedLabel2.backgroundColor = [UIColor cyanColor];
            publishedLabel2.text = @"February 5th 2013";
            publishedLabel2.textAlignment = NSTextAlignmentLeft;
        }
        [self.view addSubview:publishedLabel2];
    
    
    //Label for the summary
    summaryLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 110.0, 100.0, 30.0)];
    
        if(summaryLabel !=nil)
        {
            summaryLabel.backgroundColor = [UIColor grayColor];
            summaryLabel.text = @"Summary:";
            summaryLabel.textColor = [UIColor whiteColor];
            summaryLabel.textAlignment = NSTextAlignmentLeft;
        }
        [self.view addSubview:summaryLabel];
    
    
    //Label for the summary text box
    summaryTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 140.0, 320.0, 180.0)];
    
        if(summaryTextLabel !=nil)
        {
            summaryTextLabel.backgroundColor = [UIColor purpleColor];
            summaryTextLabel.numberOfLines = 25;
            summaryTextLabel.textAlignment = NSTextAlignmentCenter;
            summaryTextLabel.textColor = [UIColor whiteColor];
            summaryTextLabel.text = @"House Rules is the seventh of so far nine books. Merit the Sentinel or protector of the vampire house Cadogan has to figure out what happened to two rogue vampires and who is behind the disappearances before anything else happens.";
        }
        [self.view addSubview:summaryTextLabel];
    
    
    //Label for the list of items
    listOfItemsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 330.0, 110.0, 30.0)];
    
        if(listOfItemsLabel !=nil)
        {
            listOfItemsLabel.backgroundColor = [UIColor yellowColor];
            listOfItemsLabel.text = @"List Of Items:";
        
        }
        [self.view addSubview:listOfItemsLabel];
    
    
    //Start of the NSArray
    NSString *bookItem1 = @" Honed Steel Sword";
    NSString *bookItem2 = @" Vampires";
    NSString *bookItem3 = @" Rogues";
    NSString *bookItem4 = @" Shifters";
    NSString *bookItem5 = @" and Chicago";
    
        //We are allocating for the NS Array
        NSArray *bookItemsArray = [[NSArray alloc] initWithObjects:bookItem1,bookItem2,bookItem3,bookItem4,bookItem5, nil];
    
        //We are allocating for the NS Mutable Array
        NSMutableString * bookItems = [[NSMutableString alloc] initWithCapacity:5];
    
            //Put the Array though a loop to print it to the screen
            for (int i = 0; i < bookItemsArray.count; i++)
            {
                [bookItems appendString: [bookItemsArray objectAtIndex: i]];
                
                if(i < bookItemsArray.count -1)
                {
                    [bookItems appendString:@","];
                }
    
                //Label for the list of items text box
                listOfItemsTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 360.0, 320.0, 100.0)];
    
                    if(listOfItemsTextLabel !=nil)
                    {
                        listOfItemsTextLabel.backgroundColor = [UIColor magentaColor];
                        listOfItemsTextLabel.text = bookItems;
                        listOfItemsTextLabel.numberOfLines = 10;
                        listOfItemsTextLabel.textAlignment = NSTextAlignmentCenter;
                    }
                    [self.view addSubview:listOfItemsTextLabel];
            }//End of for loop
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
