//
//  MainViewController.m
//  Tap
//
//  Created by Thuy Copeland on 3/25/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize txtCount;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    count = 0;
    self.txtCount.text = [NSString stringWithFormat:@"%d",count];
}
int count;

- (void) countUp{
    count++;
    self.txtCount.text = [NSString stringWithFormat:@"%d",count];
}
- (void) countDown{
    count--;
    self.txtCount.text = [NSString stringWithFormat:@"%d",count];
}
- (void) checkYoSelf{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Don't Go There"
                                                    message:@"Vogon Bureaucracy says: You can't count in that direction."
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
  [alert show];  
}
- (IBAction)plusBtn:(id)sender{
    if(count < 9)
    {
        [self countUp];
    }
    else
    {
        [self checkYoSelf];
    }
}

- (IBAction)minusBtn:(id)sender{
    if(count > 0)
    {
        [self countDown];
    }
    else
    {
        [self checkYoSelf];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
