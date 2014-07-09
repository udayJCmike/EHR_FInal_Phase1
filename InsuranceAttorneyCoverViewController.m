//
//  InsuranceAttorneyCoverViewController.m
//  MedPay
//
//  Created by deemsys on 3/1/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "InsuranceAttorneyCoverViewController.h"
#import "BlockAlertView.h"
@interface InsuranceAttorneyCoverViewController ()

@end

@implementation InsuranceAttorneyCoverViewController


@synthesize mail;
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
   // [physicianname resignFirstResponder];
    [patname resignFirstResponder];
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
   
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:@"SENT BY CERTIFIED MAIL"];
    [attributeString addAttribute:NSUnderlineStyleAttributeName
     
                            value:[NSNumber numberWithInt:1]
                            range:(NSRange){0,[attributeString length]}];
    mail.attributedText=[attributeString copy];
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
- (IBAction)submit:(id)sender {
    texty1=[patattory.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[reg.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[addrs.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[dofacc.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[dearname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[sincname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //texty8=[physicianname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if([patattory.text length]!=0&&[reg.text length]!=0&&[addrs.text length]!=0&&[patname.text length]!=0&&[dofacc.text length]!=0&&[dearname.text length]!=0&&[sincname.text length]!=0){
        if([patattory.text length]==0||([self validateString:texty1]==1))
        {
            if([reg.text length]==0||([self validateString:texty2]==1))
            {
                if([addrs.text length]==0||([self validateString:texty3]==1))
                {
                    if([patname.text length]==0||([self validateString:texty4]==1))
                    {
                        if([dofacc.text length]==0||([self validateDate:texty5]==1))
                        {
                            if([dearname.text length]==0||([self validateString:texty6]==1))
                            {
                                if([sincname.text length]==0||([self validateString:texty7]==1))
                                {
                                   
                                        suc=1;
                                        recorddict=[[NSMutableDictionary alloc]init];
                                        
                                        [recorddict setValue:patattory.text forKey:@"insurancecompany"];
                                        
                                        [recorddict setValue:reg.text forKey:@"regarding"];
                                        
                                        [recorddict setValue:addrs.text forKey:@"address"];
                                        
                                        [recorddict setValue:patname.text forKey:@"patient name"];
                                        
                                        [recorddict setValue:dofacc.text forKey:@"date field"];
                                        
                                        [recorddict setValue:dearname.text forKey:@"doctor name"];
                                        [recorddict setValue:sincname.text forKey:@"doctor signature"];
                                        [recorddict setValue:physicianname.text forKey:@"physician name"];
                                       // NSLog(@"Record dict Value in Insurance Attorney cover::%@",recorddict);
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Success."];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                        
                                    }
                                
                                else{
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid signature  Name."];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else{
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Doctor Name."];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else{
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Date "];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else{
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Patient's Name."];
                        
                        
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
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Regarding Field."];
                
                
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
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All the Required Fields."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if (suc==1) {
        [self performSegueWithIdentifier:@"insuranceattorneytowelcome" sender:self];
    }
}


@end

