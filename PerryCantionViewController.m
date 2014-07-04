//
//  PerryCantionViewController.m
//  EHR
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "PerryCantionViewController.h"

@interface PerryCantionViewController ()

@end

@implementation PerryCantionViewController

@synthesize recorddict;
int suc;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)dismissKeyboard {
    [todaydate resignFirstResponder];
    [claimnumber resignFirstResponder];
    [patattory resignFirstResponder];
    [dearname resignFirstResponder];
    [dofacc resignFirstResponder];
    [sincname resignFirstResponder];
    [addrs resignFirstResponder];
    [reg resignFirstResponder];
}
- (void)viewDidLoad
{
    
    [super viewDidLoad];
   
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    
    [addrs release];
    [super dealloc];
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(BOOL)validateString:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateaddress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z._/-]+";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)submit:(id)sender {
    texty1=[patattory.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[[addrs.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[reg.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[dofacc.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[claimnumber.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[todaydate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[dearname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[sincname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if([patattory.text length]!=0&&[reg.text length]!=0&&[addrs.text length]!=0&&[claimnumber.text length]!=0&&[dofacc.text length]!=0&&[dearname.text length]!=0&&[sincname.text length]!=0&&[todaydate.text length]!=0){
        if([patattory.text length]==0||([self validateString:texty1]==1))
        {
            if([addrs.text length]==0||([self validateaddress:texty2]==1))
            {
                if([reg.text length]==0||([self validateString:texty3]==1))
                {
                    if([dofacc.text length]==0||([self validateDate:texty4]==1))
                    {
                        if([claimnumber.text length]==0||([self validateString:texty5]==1))
                        {
                            if([todaydate.text length]==0||([self validateDate:texty6]==1))
                            {
                                if([dearname.text length]==0||([self validateString:texty7]==1))
                                {
                                    if([sincname.text length]==0||([self validateString:texty8]==1))
                                    {
                                        suc=1;
                                        recorddict=[[NSMutableDictionary alloc]init];
                                        
                                        [recorddict setValue:patattory.text forKey:@"patatorry"];
                                        
                                        [recorddict setValue:reg.text forKey:@"regarding"];
                                        
                                        [recorddict setValue:addrs.text forKey:@"address"];
                                        
                                        [recorddict setValue:claimnumber.text forKey:@"claim number"];
                                        
                                        [recorddict setValue:dofacc.text forKey:@"date field"];
                                        
                                        [recorddict setValue:dearname.text forKey:@"doctor name"];
                                        [recorddict setValue:sincname.text forKey:@"doctor signature"];
                                        [recorddict setValue:todaydate.text forKey:@"today date"];
                                        NSLog(@"Record dict Value in request fee::%@",recorddict);
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Success."];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                        
                                    }
                                    else{
                                        suc=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Signature."];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                else{
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Doctor  Name."];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else{
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Date."];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else{
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Claim number"];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else{
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Date of Accident."];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else{
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Regarding Field."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
            else{
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Address Field."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        }
        else{
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Patient's Attorney Name."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    else{
        suc=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All Required Fields."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    // if(suc==1){
    //   [self performSegueWithIdentifier:@"wrist1" sender:self];
    // }
}
/*- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
 {
 NSLog(@"succc value in perform segue %i",suc);
 //NSLog(@"identifier %@",identifier);
 if([identifier isEqual:@"wrist1"])
 {
 if (suc==1)
 {
 return YES;
 }
 else
 {
 
 return NO;
 }
 }
 else
 return NO;
 }
 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 
 
 if ([segue.identifier isEqualToString:@"wrist1"])
 {
 
 NSLog(@"succc value in prepre segue %i ",suc);
 WristExamViewController1 *destViewController = [segue destinationViewController];
 destViewController.recorddict=recorddict;
 NSLog(@"recorddict in knee exam controller %@",recorddict);
 // destViewController.delegate=self;
 
 }
 
 
 
 } */

@end