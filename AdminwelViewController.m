//
//  AdminwelViewController.m
//  EHR
//
//  Created by DeemsysInc on 13/05/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "AdminwelViewController.h"

@interface AdminwelViewController ()

@end

@implementation AdminwelViewController

@synthesize pat;
@synthesize forms;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
     
	// Do any additional setup after loading the view.
}
- (IBAction)accesspatient:(id)sender
{
    
}
- (IBAction)accessforms:(id)sender
{
    [self performSegueWithIdentifier:@"accessforms" sender:self];
//    UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"" message:@"Please enter a Patient User Name" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
//    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
//    [alert addButtonWithTitle:@"Submit"];
//    [alert show];
}
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
   //  [self performSegueWithIdentifier:@"accessforms" sender:self];
   // NSLog(@"Button Index =%d",buttonIndex);
//    if (buttonIndex == 1)
//    {  //submit
//        UITextField *username = [alertView textFieldAtIndex:0];
//        NSString * temp1 =[username.text stringByReplacingOccurrencesOfString:@" " withString:@""];
//        if(([temp1 length]!=0)&&([self validateNames:temp1 ]==1))
//        {
//            [[NSUserDefaults standardUserDefaults]setObject:username.text forKey:@"username"];
//            [[NSUserDefaults standardUserDefaults]synchronize];
//            [self performSegueWithIdentifier:@"accessforms" sender:self];
//        }
//        else
//        {
//            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Patient Name."];
//            [alert setDestructiveButtonWithTitle:@"x" block:nil];
//            [alert show];
//        }
//        
//    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
  
    [super dealloc];
}

@end
