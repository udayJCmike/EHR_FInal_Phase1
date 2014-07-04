//
//  testingViewController.m
//  EHR
//
//  Created by DeemsysInc on 11/8/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "testingViewController.h"
#import "SWRevealViewController.h"

@interface testingViewController ()

@end

@implementation testingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title=@"Home";
    [super viewDidLoad];
    //  _sidebarButton.tintColor = [UIColor colorWithWhite:.96f alpha:0.42f];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
