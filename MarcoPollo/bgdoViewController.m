//
//  bgdoViewController.m
//  MarcoPollo
//
//  Created by Brunno Goncalves on 06/04/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "bgdoViewController.h"
#import "Social/Social.h"

@interface bgdoViewController ()

@property (weak, nonatomic) IBOutlet UITextView *tweetTextView;

- (IBAction)postitButtonPressed:(id)sender;

@end

@implementation bgdoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)postitButtonPressed:(id)sender {
    
    NSLog(@"Post It buttons was pressed: %@", self.tweetTextView.text);
    
    NSString *tweetText = [NSString stringWithFormat:@"%@ #MarcoPollo", self.tweetTextView.text];
    
    SLComposeViewController *composer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    
    [composer setInitialText:tweetText];
    
    [self presentViewController:composer animated:YES completion:nil];
}
@end
