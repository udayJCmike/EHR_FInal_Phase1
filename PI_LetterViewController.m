//
//  PI_LetterViewController.m
//  PI_Letter
//
//  Created by Admin on 27/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "PI_LetterViewController.h"
#import "BlockAlertView.h"
@interface PI_LetterViewController ()

@end

@implementation PI_LetterViewController
@synthesize  recorddict;
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (IBAction)save:(id)sender
{
   recorddict=[[NSMutableDictionary alloc]init];
    a=1;
    temp1 =[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[client.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[accident.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[dr.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[sign.text stringByReplacingOccurrencesOfString:@" " withString:@""];

if(([temp1 length]!=0)&&
   ([temp2 length]!=0)&&
   ([temp3 length]!=0)&&
   ([temp4 length]!=0)&&
   ([temp5 length]!=0))
    {
        if([self validateDate:temp1]==1)
        {
            if([self validateNames:temp2]==1)
            {
                if([self validateDate:temp3]==1)
                {
                    if([self validateNames:temp4]==1)
                    {
                        if([self validateNames:temp5]==1)
                        {
                            [recorddict setValue:date.text forKey:@"date"];
                            [recorddict setValue:client.text forKey:@"My CLient"];
                            [recorddict setValue:accident.text forKey:@"Date of Accident"];
                            [recorddict setValue:dr.text forKey:@"Doctor name"];
                            [recorddict setValue:sign.text forKey:@"Client Sign"];
                            NSLog(@"Success!!! %@",recorddict);
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Success."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                            
                        }
                        else
                        {
                            a=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Client signature."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else
                    {
                         a=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Doctor Name."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else
                {
                     a=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Date of Accident."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
            else
            {
                 a=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Client Name."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        }
        
        else
        {
             a=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    
        else
        {
             a=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"ALl fields are mandatory."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    if (a==1) {
        [self performSegueWithIdentifier:@"pitowelcome" sender:self];
    }
        
    }
    
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

@end
