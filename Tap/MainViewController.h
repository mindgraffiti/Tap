//
//  MainViewController.h
//  Tap
//
//  Created by Thuy Copeland on 3/25/13.
//  Copyright (c) 2013 Thuy Copeland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *txtCount;
-(IBAction)plusBtn:(id)sender;
-(IBAction)minusBtn:(id)sender;

@end
