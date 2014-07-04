//
//  hip1ViewController.m
//  hip
//
//  Created by DeemsysInc on 2/15/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "hip1ViewController.h"
#import "hipViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "hamilViewController.h"
@interface hip1ViewController ()

@end

@implementation hip1ViewController
@synthesize resultset;
@synthesize othernote;
@synthesize radio;
@synthesize update;
@synthesize reset1;
@synthesize reset2;
@synthesize deleteform;
@synthesize submit;
@synthesize cancel2;
@synthesize cancel1;
@synthesize l4left;
@synthesize l4right;
@synthesize l5left;
@synthesize l5right;
@synthesize s1left;
@synthesize s1right;
@synthesize walking;
@synthesize standing;
@synthesize stairs;
@synthesize other;
@synthesize diag1;
@synthesize diag2;
@synthesize diag3;
@synthesize diag4;
@synthesize diag5;
@synthesize plantime;
@synthesize planweek;
@synthesize spinal;
@synthesize chiropractic;
@synthesize physical;
@synthesize orthotics;
@synthesize modalities;
@synthesize supplementation;
@synthesize hep;
@synthesize mri;
@synthesize nerve;
@synthesize emg;
@synthesize outsiderefrral;
@synthesize d;
@synthesize physiciansign;
@synthesize ct;
@synthesize recorddict;
@synthesize patientstatus;
@synthesize otherte;
@synthesize b1;
@synthesize b2;
@synthesize b3;
@synthesize b4;
@synthesize b5;
@synthesize b6;
@synthesize b7;
@synthesize b8;


- (id)initWithStyleSheet:(NSObject<TWMessageBarStyleSheet> *)stylesheet
{
    self = [super init];
    if (self)
    {
        [TWMessageBarManager sharedInstance].styleSheet = stylesheet;
    }
    return self;
}

- (id)init
{
    return [self initWithStyleSheet:nil];
}


-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)validateNamesign:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumberlimit:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)rad8:(id)sender {
    
    [b8 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty14=@"Right";
    
    [b7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}



- (IBAction)rad7:(id)sender {
    [b7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty14=@"Left";
    
    [b8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)rad6:(id)sender {
    
    [b6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty13=@"Right";
    
    [b5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}



- (IBAction)rad5:(id)sender {
    [b5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty13=@"Left";
    
    [b6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)rad4:(id)sender {
    
    [b4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty12=@"Right";
    
    [b3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}

- (IBAction)rad3:(id)sender {
    [b3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty12=@"Left";
    
    [b4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

- (IBAction)rad2:(id)sender {
    
    [b2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty11=@"Right";
    
    [b1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad1:(id)sender {
    [b1 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty11=@"Left";
    
    [b2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
-(BOOL)validatesign:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z]+";
    
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
- (IBAction)save:(id)sender {
    
    
    
    if(walking.selected)
    {
        walking1=@"walking";
        
    }
    else
        walking1=@"null";
    if(standing.selected)
    {
        standing1=@"standing";
        
        
    }
    else
        standing1=@"null";
    if(stairs.selected)
    {
        stairs1=@"stairs";
        
        
        
    }
    else
        stairs1=@"null";
    if(other.selected)
    {
        other1=@"other";
        
        
    }
    else
        other1=@"null";
    
    
    if(spinal.selected)
    {
        spinal1=@"Spinal Decompression";
        
    }
    else
        spinal1=@"null";
    if(chiropractic.selected)
    {
        chiropractic1=@"Chiropractic";
        
    }
    else
        chiropractic1=@"null";
    if(physical.selected)
    {
        physical1=@"Physical Therapy";
        
        
    }
    else
        physical1=@"null";
    if(orthotics.selected)
    {
        orthotics1=@"Orthotics/Bracing";
        
    }
    else
        orthotics1=@"orthotics";
    if(modalities.selected)
    {
        modalities1=@"Modalities";
        
    }
    else
        modalities1=@"null";
    if(supplementation.selected)
    {
        supplementation1=@"Supplementation";
        
    }
    else
        supplementation1=@"null";
    if(hep.selected)
    {
        hep1=@"HEP";
        
    }
    else
        hep1=@"null";
    if(mri.selected)
    {
        mri1=@"MRI";
        
    }
    else
        mri1=@"null";
    if(ct.selected)
    {
        ct1=@"CT Scan";
        
    }
    else
        ct1=@"null";
    if(nerve.selected)
    {
        nerve1=@"Nerve Conduction";
        
    }
    else
        nerve1=@"null";
    if(emg.selected)
    {
        emg1=@"EMG";
        
        
    }
    else
        emg1=@"null";
    if(outsiderefrral.selected)
    {
        outsidereferral1=@"Outside Referral";
        
    }
    else
        outsidereferral1=@"null";
    if(d.selected)
    {
        d1=@"D/C";
        
    }
    else
        d1=@"null";
    if(radio.selected)
    {
        radiolab=@"Radiographic X-Ray";
        
    }
    else
        radiolab=@"null";
    temp1 =[physiciansign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[l4left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[l4right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[l5left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[l5right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[s1left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[s1right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[plantime.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[planweek.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[diag1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[diag2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[diag3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[diag4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[diag5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[otherte.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[addcomments.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[temp16 stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    temp16=[temp16 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    temp16=[temp16 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    temp17=[othernote.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[temp17 stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    temp17=[temp17 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    temp17=[temp17 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    if(([temp1 length]!=0))
    {
        
        if((([temp2 length]>0)&&([self validateNumberlimit:temp2]==1))||([temp2 length]==0))
            
        {
            if((([temp3 length]>0)&&([self validateNumberlimit:temp3]==1))||([temp3 length]==0))
                
            {
                if((([temp4 length]>0)&&([self validateNumberlimit:temp4]==1))||([temp4 length]==0))
                    
                {
                    if((([temp5 length]>0)&&([self validateNumberlimit:temp5]==1))||([temp5 length]==0))
                        
                    {
                        if((([temp6 length]>0)&&([self validateNumberlimit:temp6]==1))||([temp6 length]==0))
                            
                        {
                            if((([temp7 length]>0)&&([self validateNumberlimit:temp7]==1))||([temp7 length]==0))
                                
                            {
                                if((([temp17 length]>0)&&([self validateNames:temp17]==1))||([temp17 length]==0))
                                    
                                {
                                    if((([temp15 length]>0)&&([self validateNames:temp15]==1))||([temp15 length]==0))
                                    {
                                        if((([temp16 length]>0)&&([self validateNames:temp16]==1))||([temp16 length]==0))
                                            
                                            
                                        {
                                            if((([temp10 length]>0)&&([self validateNames:temp10]==1))||([temp10 length]==0))
                                                
                                            {
                                                if((([temp11 length]>0)&&([self validateNames:temp11]==1))||([temp11 length]==0))
                                                    
                                                {
                                                    if((([temp12 length]>0)&&([self validateNames:temp12]==1))||([temp12 length]==0))
                                                        
                                                    {
                                                        if((([temp13 length]>0)&&([self validateNames:temp13]==1))||([temp13 length]==0))
                                                            
                                                        {
                                                            if((([temp14 length]>0)&&([self validateNames:temp14]==1))||([temp14 length]==0))
                                                                
                                                            {
                                                                if((([temp8 length]>0)&&([self validateNames:temp8]==1))||([temp8 length]==0))
                                                                    
                                                                {
                                                                    if((([temp9 length]>0)&&([self validateNames:temp9]==1))||([temp9 length]==0))
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    {
                                                                        if(([self validatesign:temp1]==1))
                                                                            
                                                                        {
                                                                            [recorddict setValue:addcomments.text forKey:@"addcomments"];
                                                                            
                                                                            [recorddict setValue:physiciansign.text forKey:@"physiciansign"];
                                                                            [recorddict setValue:l4left.text forKey:@"ll4left"];
                                                                            [recorddict setValue:l4right.text forKey:@"ll4right"];
                                                                            [recorddict setValue:l5left.text forKey:@"ll5left"];
                                                                            [recorddict setValue:l5right.text forKey:@"ll5right"];
                                                                            [recorddict setValue:s1left.text forKey:@"ls1left"];
                                                                            [recorddict setValue:s1right.text forKey:@"ls1right"];
                                                                            [recorddict setValue:plantime.text forKey:@"plantime"];
                                                                            [recorddict setValue:planweek.text forKey:@"planweek"];
                                                                            [recorddict setValue:diag1.text forKey:@"diag1"];
                                                                            [recorddict setValue:diag2.text forKey:@"diag2"];
                                                                            [recorddict setValue:diag3.text forKey:@"diag3"];
                                                                            
                                                                            [recorddict setValue:diag4.text forKey:@"diag4"];
                                                                            [recorddict setValue:diag5.text forKey:@"diag5"];
                                                                            
                                                                            
                                                                            [recorddict setValue:patientstatuslabel forKey:@"patientstatus"];
                                                                            [recorddict setValue:otherte.text forKey:@"othertext"];
                                                                            NSLog(@"success!!!recorddict %@",recorddict);
                                                                            c=1;
                                                                        }
                                                                        else
                                                                        {
                                                                            c=0;
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Enter valid physician signature field."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Enter valid plan week field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    c=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Enter valid plan time field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                }
                                                                
                                                            }
                                                            
                                                            else
                                                            {
                                                                c=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Enter valid diagnosis 5 field."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Enter valid diagnosis 4 field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Enter valid diagnosis 3 field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    c=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Enter valid diagnosis 2 field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                c=0;
                                                
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Enter valid diagnosis 1 field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                                
                                                
                                            }
                                            
                                            
                                        }
                                        else
                                        {
                                            c=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Enter valid assessment/comment field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                        }
                                        
                                        
                                    }
                                    else
                                    {
                                        c=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Enter valid other text field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                    }
                                    
                                }
                                
                                else
                                {
                                    c=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Enter valid note field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                }
                            }
                            
                            else
                            {
                                c=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Enter valid reflexes s1 right field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                                
                            }
                            
                        }
                        else
                        {
                            c=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Enter valid reflexes s1 left field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        c=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Enter valid reflexes l5 right field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                        
                    }
                    
                }
                else
                {
                    c=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Enter valid reflexes l5 left field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                }
                
            }
            else
            {
                c=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Enter valid reflexes l4 right field."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
            }
            
        }
        else
        {
            c=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Enter valid reflexes l4 left field."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
            
        }
        
        
        
        
    }
    
    else
    {
        c=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter all the required fields."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
        
    }
    
    if(c==1)
    {
        UIButton *buton=(UIButton*)sender;
        if(buton.tag==12)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            //        [self updatedata];
            if ([[self submitvalues]isEqualToString:@"success"])
            {
                [self insertdata];
            }
            
            
        }
        else  if(buton.tag==14)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            //                  [self insertdata];
            if ([[self submitvalues]isEqualToString:@"success"]) {
                [self updatedata];
            }
            
            
        }
        
        
    }
    
}
-(void)updatedata
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1update:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    //NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        //NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"hipexam Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form updation successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
                
                for (id controller in [self.navigationController viewControllers])
                {
                    if ([controller isKindOfClass:[hamilViewController class]])
                    {
                        [self.navigationController popToViewController:controller animated:YES];
                        break;
                    }
                }
                // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form updation failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                for (id controller in [self.navigationController viewControllers])
                {
                    if ([controller isKindOfClass:[hamilViewController class]])
                    {
                        [self.navigationController popToViewController:controller animated:YES];
                        break;
                    }
                }
                // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
        }
    }
}
-(NSString*)submitvalues
{
    
    
    Reachability* wifiReach = [[Reachability reachabilityWithHostName: @"www.apple.com"] retain];
	NetworkStatus netStatus = [wifiReach currentReachabilityStatus];
    
	switch (netStatus)
	{
		case NotReachable:
		{
			isConnect=NO;
			//NSLog(@"Access Not Available");
			break;
		}
            
		case ReachableViaWWAN:
		{
			isConnect=YES;
			//NSLog(@"Reachable WWAN");
			break;
		}
		case ReachableViaWiFi:
		{
			isConnect=YES;
			//NSLog(@"Reachable WiFi");
			break;
		}
	}
	
	
    
    if(isConnect)
    {
        NSString *result=@"success";
        return result;
        
    }
    //  imgName=@"Connected.png";
    else
    {
        HUD.labelText = @"Check network connection";
        HUD.customView = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]] autorelease];
        HUD.mode = MBProgressHUDModeCustomView;
        [HUD hide:YES afterDelay:1];
        return @"failure";
    }
    
    
}
- (IBAction)deleteaction:(id)sender
{
    HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
    HUD.mode=MBProgressHUDModeIndeterminate;
    HUD.delegate = self;
    HUD.labelText = @"Deleting";
    [HUD show:YES];
    //        [self updatedata];
    if ([[self submitvalues]isEqualToString:@"success"])
    {
        NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
        NSString *response=[self HttpPostEntityFirst1delete:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
        NSError *error;
        SBJSON *json = [[SBJSON new] autorelease];
        NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
        
        //NSLog(@"%@ lucky numbers",luckyNumbers);
        if (luckyNumbers == nil)
        {
            
            //NSLog(@"luckyNumbers == nil");
            
        }
        else
        {
            
            NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
            // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"hipexam Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form Deletion Successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];
                    
                    
                    
                    for (id controller in [self.navigationController viewControllers])
                    {
                        if ([controller isKindOfClass:[hamilViewController class]])
                        {
                            [self.navigationController popToViewController:controller animated:YES];
                            break;
                        }
                    }
                    //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form deletion failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    for (id controller in [self.navigationController viewControllers])
                    {
                        if ([controller isKindOfClass:[hamilViewController class]])
                        {
                            [self.navigationController popToViewController:controller animated:YES];
                            break;
                        }
                    }
                    // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
                }
            }
        }
        
    }
    
}

-(void)insertdata
{
    
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    //NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        //NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"hipexam Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                for (id controller in [self.navigationController viewControllers])
                {
                    if ([controller isKindOfClass:[hamilViewController class]])
                    {
                        [self.navigationController popToViewController:controller animated:YES];
                        break;
                    }
                }
                // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                for (id controller in [self.navigationController viewControllers])
                {
                    if ([controller isKindOfClass:[hamilViewController class]])
                    {
                        [self.navigationController popToViewController:controller animated:YES];
                        break;
                    }
                }
                // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
        }
    }
    
}

-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Hipexam.php?service=hipexaminsert";
    NSLog(@"value of s1left%@",[recorddict objectForKey:@"s1left"]);
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&gait=%@&pelvic=%@&ao=%@&dysfuncion=%@&shortlegleft=%@&shortlegleftvalue=%@&shortlegleftother=%@&shortlegright=%@&shortlegrightvalue=%@&shortlegrightother=%@&piriformisleft=%@&gluteusleft=%@&iliopsoasleft=%@&hamstringsleft=%@&note=%@&functional=%@&orthotpedic=%@&flexionleft=%@&flexionright=%@&extensionleft=%@&extensionright=%@&abductionleft=%@&abductionright=%@&adductionleft=%@&adductionright=%@&internalrotationleft=%@&internalrotationright=%@&externalrotationleft=%@&externalrotationright=%@&fabereleft=%@&fabereright=%@&nachlasleft=%@&nachlasright=%@&elysleft=%@&elysright=%@&yeomansleft=%@&yeomansright=%@&obersleft=%@&obersright=%@&hibbsleft=%@&hibbsright=%@&thomasleft=%@&thomasright=%@&neurological=%@&inguinalarealeft=%@&inguinalarearight=%@&antleft=%@&antright=%@&kneeleft=%@&kneeright=%@&medialleft=%@&medialright=%@&latleft=%@&latright=%@&plantarleft=%@&plantarright=%@&iliopsoasfirstleft=%@&iliopsoasfirstright=%@&iliopsoas1left=%@&iliopsoas1right=%@&iliopsoas2left=%@& iliopsoas2right=%@&femleft=%@&femright=%@&medleft=%@&medright=%@&maxleft=%@&maxright=%@&patellarleft=%@&patellarright=%@&hsleft=%@&hsright=%@&achillesleft=%@&achillesright=%@&walking=%@&standing=%@&stairs=%@&other=%@&otherdefict=%@&comments=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&times=%@&weeks=%@&spinaldecompression=%@&chiropractic=%@&physicaltherapy=%@&bracing=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&scan=%@&conduction=%@&emg=%@&outsidereferral=%@&dc=%@&signature=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"gaitl"],[recorddict objectForKey:@"pelvicl"],[recorddict objectForKey:@"aol"],[recorddict objectForKey:@"palpationlabel"],[recorddict objectForKey:@"palleft"],[recorddict objectForKey:@"left"],[recorddict objectForKey:@"palpationleftother"],[recorddict objectForKey:@"palright"],[recorddict objectForKey:@"right"],[recorddict objectForKey:@"palpationrightother"],texty11,texty12,texty13,texty14,othernote.text,[recorddict objectForKey:@"rangeofmotionlabel"],[recorddict objectForKey:@"orthotestinglabel"],[recorddict objectForKey:@"flexionleft"],[recorddict objectForKey:@"flexionright"],[recorddict objectForKey:@"extensionleft"],[recorddict objectForKey:@"extensionright"],[recorddict objectForKey:@"abductionleft"],[recorddict objectForKey:@"abdutionright"],[recorddict objectForKey:@"adductionleft"],[recorddict objectForKey:@"adductionright"],[recorddict objectForKey:@"internalrotationleft"],[recorddict objectForKey:@"internalrotationright"],[recorddict objectForKey:@"externalrotationleft"],[recorddict objectForKey:@"externalrotationright"],[recorddict objectForKey:@"patrickleft"],[recorddict objectForKey:@"patrickright"],[recorddict objectForKey:@"nachlasleft"],[recorddict objectForKey:@"nachlasright"],[recorddict objectForKey:@"elyleft"],[recorddict objectForKey:@"elyright"],[recorddict objectForKey:@"yeomanleft"],[recorddict objectForKey:@"yeomanright"],[recorddict objectForKey:@"oberleft"],[recorddict objectForKey:@"oberright"],[recorddict objectForKey:@"hibbsleft"],[recorddict objectForKey:@"hibbsright"],[recorddict objectForKey:@"thomasleft"],[recorddict objectForKey:@"thomasright"],[recorddict objectForKey:@"neurologicallabel"],[recorddict objectForKey:@"l1left"],[recorddict objectForKey:@"l1right"],[recorddict objectForKey:@"l2left"],[recorddict objectForKey:@"l2right"],[recorddict objectForKey:@"l3left"],[recorddict objectForKey:@"l3right" ],[recorddict objectForKey:@"l4left"],[recorddict objectForKey:@"l4right"],[recorddict objectForKey:@"l5left"],[recorddict objectForKey:@"l5right"],[recorddict objectForKey:@"s1left"],[recorddict objectForKey:@"s1right"],[recorddict objectForKey:@"ml1left"],[recorddict objectForKey:@"ml1right"],[recorddict objectForKey:@"ml2left"],[recorddict objectForKey:@"ml2right"],[recorddict objectForKey:@"ml3left"],[recorddict objectForKey:@"ml3right"],[recorddict objectForKey:@"ml4left"],[recorddict objectForKey:@"ml4right"],[recorddict objectForKey:@"ml5left"],[recorddict objectForKey:@"ml5right"],[recorddict objectForKey:@"ms1left"],[recorddict objectForKey:@"ms1right"],[recorddict objectForKey:@"ll4left"],[recorddict objectForKey:@"ll4right"],[recorddict objectForKey:@"ll5left"],[recorddict objectForKey:@"ll5right"],[recorddict objectForKey:@"ls1left"],[recorddict objectForKey:@"ls1right"],walking1,standing1,stairs1,other1,otherte.text,addcomments.text,patientstatuslabel,diag1.text,diag2.text,diag3.text,diag4.text,diag5.text,plantime.text,planweek.text,spinal1,chiropractic1,physical1,orthotics1,modalities1,supplementation1,hep1,radiolab ,mri1,ct1,nerve1,emg1,outsidereferral1,d1,physiciansign.text,secondEntity,value2];
    
    
    
    
    
    //       NSLog(@"POST:%@",post);
    
    NSURL *url = [NSURL URLWithString:url2];
    
    //////NSLog(post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
    [request setURL:url];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    //when we user https, we need to allow any HTTPS cerificates, so add the one line code,to tell teh NSURLRequest to accept any https certificate, i'm not sure //about the security aspects
    
    
    NSError *error;
    NSURLResponse *response;
    NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    NSString *data=[[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
    
    //    NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Hipexam.php?service=hipexamedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSLog(@"patient in update%@",patientstatuslabel);
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&gait=%@&pelvic=%@&ao=%@&dysfuncion=%@&shortlegleft=%@&shortlegleftvalue=%@&shortlegleftother=%@&shortlegright=%@&shortlegrightvalue=%@&shortlegrightother=%@&piriformisleft=%@&gluteusleft=%@&iliopsoasleft=%@&hamstringsleft=%@&note=%@&functional=%@&orthotpedic=%@&flexionleft=%@&flexionright=%@&extensionleft=%@&extensionright=%@&abductionleft=%@&abductionright=%@&adductionleft=%@&adductionright=%@&internalrotationleft=%@&internalrotationright=%@&externalrotationleft=%@&externalrotationright=%@&fabereleft=%@&fabereright=%@&nachlasleft=%@&nachlasright=%@&elysleft=%@&elysright=%@&yeomansleft=%@&yeomansright=%@&obersleft=%@&obersright=%@&hibbsleft=%@&hibbsright=%@&thomasleft=%@&thomasright=%@&neurological=%@&inguinalarealeft=%@&inguinalarearight=%@&antleft=%@&antright=%@&kneeleft=%@&kneeright=%@&medialleft=%@&medialright=%@&latleft=%@&latright=%@&plantarleft=%@&plantarright=%@&iliopsoasfirstleft=%@&iliopsoasfirstright=%@&iliopsoas1left=%@&iliopsoas1right=%@&iliopsoas2left=%@& iliopsoas2right=%@&femleft=%@&femright=%@&medleft=%@&medright=%@&maxleft=%@&maxright=%@&patellarleft=%@&patellarright=%@&hsleft=%@&hsright=%@&achillesleft=%@&achillesright=%@&walking=%@&standing=%@&stairs=%@&other=%@&otherdefict=%@&comments=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&times=%@&weeks=%@&spinaldecompression=%@&chiropractic=%@&physicaltherapy=%@&bracing=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&scan=%@&conduction=%@&emg=%@&outsidereferral=%@&dc=%@&signature=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"gaitl"],[recorddict objectForKey:@"pelvicl"],[recorddict objectForKey:@"aol"],[recorddict objectForKey:@"palpationlabel"],[recorddict objectForKey:@"palleft"],[recorddict objectForKey:@"left"],[recorddict objectForKey:@"palpationleftother"],[recorddict objectForKey:@"palright"],[recorddict objectForKey:@"right"],[recorddict objectForKey:@"palpationrightother"],texty11,texty12,texty13,texty14,othernote.text,[recorddict objectForKey:@"rangeofmotionlabel"],[recorddict objectForKey:@"orthotestinglabel"],[recorddict objectForKey:@"flexionleft"],[recorddict objectForKey:@"flexionright"],[recorddict objectForKey:@"extensionleft"],[recorddict objectForKey:@"extensionright"],[recorddict objectForKey:@"abductionleft"],[recorddict objectForKey:@"abdutionright"],[recorddict objectForKey:@"adductionleft"],[recorddict objectForKey:@"adductionright"],[recorddict objectForKey:@"internalrotationleft"],[recorddict objectForKey:@"internalrotationright"],[recorddict objectForKey:@"externalrotationleft"],[recorddict objectForKey:@"externalrotationright"],[recorddict objectForKey:@"patrickleft"],[recorddict objectForKey:@"patrickright"],[recorddict objectForKey:@"nachlasleft"],[recorddict objectForKey:@"nachlasright"],[recorddict objectForKey:@"elyleft"],[recorddict objectForKey:@"elyright"],[recorddict objectForKey:@"yeomanleft"],[recorddict objectForKey:@"yeomanright"],[recorddict objectForKey:@"oberleft"],[recorddict objectForKey:@"oberright"],[recorddict objectForKey:@"hibbsleft"],[recorddict objectForKey:@"hibbsright"],[recorddict objectForKey:@"thomasleft"],[recorddict objectForKey:@"thomasright"],[recorddict objectForKey:@"neurologicallabel"],[recorddict objectForKey:@"l1left"],[recorddict objectForKey:@"l1right"],[recorddict objectForKey:@"l2left"],[recorddict objectForKey:@"l2right"],[recorddict objectForKey:@"l3left"],[recorddict objectForKey:@"l3right" ],[recorddict objectForKey:@"l4left"],[recorddict objectForKey:@"l4right"],[recorddict objectForKey:@"l5left"],[recorddict objectForKey:@"l5right"],[recorddict objectForKey:@"s1left"],[recorddict objectForKey:@"s1right"],[recorddict objectForKey:@"ml1left"],[recorddict objectForKey:@"ml1right"],[recorddict objectForKey:@"ml2left"],[recorddict objectForKey:@"ml2right"],[recorddict objectForKey:@"ml3left"],[recorddict objectForKey:@"ml3right"],[recorddict objectForKey:@"ml4left"],[recorddict objectForKey:@"ml4right"],[recorddict objectForKey:@"ml5left"],[recorddict objectForKey:@"ml5right"],[recorddict objectForKey:@"ms1left"],[recorddict objectForKey:@"ms1right"],[recorddict objectForKey:@"ll4left"],[recorddict objectForKey:@"ll4right"],[recorddict objectForKey:@"ll5left"],[recorddict objectForKey:@"ll5right"],[recorddict objectForKey:@"ls1left"],[recorddict objectForKey:@"ls1right"],walking1,standing1,stairs1,other1,otherte.text,addcomments.text,patientstatuslabel,diag1.text,diag2.text,diag3.text,diag4.text,diag5.text,plantime.text,planweek.text,spinal1,chiropractic1,physical1,orthotics1,modalities1,supplementation1,hep1,radiolab ,mri1,ct1,nerve1,emg1,outsidereferral1,d1,physiciansign.text,secondEntity,value2];
    
    
    
    
    NSURL *url = [NSURL URLWithString:url2];
    
    //////NSLog(post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
    [request setURL:url];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    //when we user https, we need to allow any HTTPS cerificates, so add the one line code,to tell teh NSURLRequest to accept any https certificate, i'm not sure //about the security aspects
    
    
    NSError *error;
    NSURLResponse *response;
    NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    NSString *data=[[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
    //    NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Hipexam.php?service=hipexamdelete";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    //    NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    //////NSLog(post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
    [request setURL:url];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    //when we user https, we need to allow any HTTPS cerificates, so add the one line code,to tell teh NSURLRequest to accept any https certificate, i'm not sure //about the security aspects
    
    
    NSError *error;
    NSURLResponse *response;
    NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    NSString *data=[[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
    //    NSLog(@"data %@",data);
    
    return data;
    
}

- (IBAction)patientstatus:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        patientstatuslabel=@"Excellent";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        patientstatuslabel=@"Good";
        
    }
    if ([sender selectedSegmentIndex]==2)
    {
        patientstatuslabel=@"Fair";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        patientstatuslabel=@"Poor";
    }
    NSLog(@"value of patientlasbe%@",patientstatuslabel);
}
- (IBAction)checkboxselected:(UIButton *)sender {
    
    
    {
        sender.selected = !sender.selected;
        if(sender.selected){
            [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        }
        else{
            [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
        }
    }
    if (other.selected) {
        otherte.hidden=NO;
    }else
    {
        otherte.hidden=YES;
    }
    
    
}


- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
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
    //    NSLog(@"hip%@",recorddict);
    patientstatuslabel=@"Excellent";
    texty11=@"";
    texty12=@"";
    texty13=@"";
    texty14=@"";
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    update.hidden=YES;
    reset2.hidden=YES;
    deleteform.hidden=YES;
    cancel2.hidden=YES;
    cancel1.hidden=NO;
    submit.hidden=NO;
    reset1.hidden=NO;
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    [self.view addGestureRecognizer:tap];
    
    if([resultset count]>0){
        [self displaydata];
        update.hidden=NO;
        reset2.hidden=NO;
        deleteform.hidden=NO;
        cancel2.hidden=NO;
        cancel1.hidden=YES;
        submit.hidden=YES;
        reset1.hidden=YES;
    }
    
}
-(void)displaydata
{
    
    
    if([[resultset objectForKey:@"walking"] isEqualToString:@"walking"])
    {
        walking.selected=true;
        [walking setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        walking1=@"walking";
    }
    if([[resultset objectForKey:@"standing"] isEqualToString:@"standing"])
    {
        standing.selected=true;
        [standing setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        standing1=@"standing";
    }
    if([[resultset objectForKey:@"stairs"] isEqualToString:@"stairs"])
    {
        stairs.selected=true;
        [stairs setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal ];
        stairs1=@"stairs";
    }
    if([[resultset objectForKey:@"other"] isEqualToString:@"other"])                    {
        other.selected=true;
        [other setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        other1=@"other";
    }
    
    
    
    if([[resultset objectForKey:@"spinaldecompression"] isEqualToString:@"Spinal Decompression"])
    {
        spinal.selected=true;
        [spinal setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        spinal1=@"Spinal Decompression";
    }
    if([[resultset objectForKey:@"chiropractic"] isEqualToString:@"Chiropractic"])
    {
        chiropractic.selected=true;
        [chiropractic setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        chiropractic1=@"Chiropractic";
    }
    if([[resultset objectForKey:@"physicaltherapy"] isEqualToString:@"Physical Therapy"])
    {
        physical.selected=true;
        [physical setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal ];
        physical1=@"Physical Therapy";
    }
    if([[resultset objectForKey:@"bracing"] isEqualToString:@"Orthotics/Bracing"])                    {
        orthotics.selected=true;
        [orthotics setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        orthotics1=@"Orthotics/Bracing";
    }
    if([[resultset objectForKey:@"modalities"] isEqualToString:@"Modalities"])
    {
        modalities.selected=true;
        [modalities setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        modalities1=@"Modalities";
    }
    if([[resultset objectForKey:@"supplementation"] isEqualToString:@"Supplementation"])
    {
        supplementation.selected=true;
        [supplementation setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        supplementation1=@"Supplementation";
    }
    if([[resultset objectForKey:@"hep"] isEqualToString:@"HEP"])
    {
        hep.selected=true;
        [hep setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal ];
        hep1=@"HEP";
    }
    if([[resultset objectForKey:@"radiographic"] isEqualToString:@"Radiographic X-Ray"])                    {
        radio.selected=true;
        [radio setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        radiolab=@"Radiographic X-Ray";
    }
    
    
    if([[resultset objectForKey:@"mri"] isEqualToString:@"MRI"])
    {
        mri.selected=true;
        [mri setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal ];
        mri1=@"MRI";
    }
    if([[resultset objectForKey:@"scan"] isEqualToString:@"CT Scan"])                    {
        ct.selected=true;
        [ct setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        ct1=@"CT Scan";
    }
    if([[resultset objectForKey:@"conduction"] isEqualToString:@"Nerve Conduction"])
    {
        nerve.selected=true;
        [nerve setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        nerve1=@"Nerve Conduction";
    }
    if([[resultset objectForKey:@"emg"] isEqualToString:@"EMG"])
    {
        emg.selected=true;
        [emg setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        emg1=@"EMG";
    }
    if([[resultset objectForKey:@"outsidereferral"] isEqualToString:@"Outside Referral"])
    {
        outsiderefrral.selected=true;
        [outsiderefrral setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal ];
        outsidereferral1=@"Outside Referral";
    }
    if([[resultset objectForKey:@"dc"] isEqualToString:@"D/C"])                    {
        d.selected=true;
        [d setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        d1=@"D/C";
    }
    
    
    
    
    
    
    physiciansign.text=[resultset objectForKey:@"signature"];
    addcomments.text=[resultset objectForKey:@"comments"];
    otherte.text=[resultset objectForKey:@"otherdefict"];
    plantime.text=[resultset objectForKey:@"times"];
    planweek.text=[resultset objectForKey:@"weeks"];
    l4left.text=[resultset objectForKey:@"patellarleft"];
    l4right.text=[resultset objectForKey:@"patellarright"];
    l5left.text=[resultset objectForKey:@"hsleft"];
    l5right.text=[resultset objectForKey:@"hsright"];
    s1left.text=[resultset objectForKey:@"achillesleft"];
    s1right.text=[resultset objectForKey:@"achillesright"];
    
    othernote.text=[resultset objectForKey:@"note"];
    diag1.text=[resultset objectForKey:@"diagnosis1"];
    diag2.text=[resultset objectForKey:@"diagnosis2"];
    diag3.text=[resultset objectForKey:@"diagnosis3"];
    diag4.text=[resultset objectForKey:@"diagnosis4"];
    diag5.text=[resultset objectForKey:@"diagnosis5"];
    
    if([[resultset objectForKey:@"patientstatus"] isEqualToString:@"Excellent"]){
        [patientstatus setSelectedSegmentIndex:0];
        patientstatuslabel=@"Excellent";
        
    }
    else if([[resultset objectForKey:@"patientstatus"] isEqualToString:@"Good"]){
        [patientstatus setSelectedSegmentIndex:1];
        patientstatuslabel=@"Good";
        
    }
    else if([[resultset objectForKey:@"patientstatus"] isEqualToString:@"Fair"]){
        [patientstatus setSelectedSegmentIndex:2];
        patientstatuslabel=@"Fair";
        
    }
    else if([[resultset objectForKey:@"patientstatus"] isEqualToString:@"Poor"]){
        [patientstatus setSelectedSegmentIndex:3];
        patientstatuslabel=@"Poor";
        
    }
    
    
    
    
    
    
    
    if([[resultset objectForKey:@"piriformisleft"] isEqualToString:@"Left"]){
        [b1 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
        texty11=@"Left";
        
        [b2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    }
    else if([[resultset objectForKey:@"piriformisleft"] isEqualToString:@"Right"]){
        [b2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
        texty11=@"Right";
        
        [b1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    }
    
    if([[resultset objectForKey:@"gluteusleft"] isEqualToString:@"Left"]){
        [b3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
        texty12=@"Left";
        
        [b4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    }
    else if([[resultset objectForKey:@"gluteusleft"] isEqualToString:@"Right"]){
        [b4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
        texty12=@"Right";
        
        [b3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    }
    if([[resultset objectForKey:@"iliopsoasleft"] isEqualToString:@"Left"]){
        [b5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
        texty13=@"Left";
        
        [b6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    }
    else if([[resultset objectForKey:@"iliopsoasleft"] isEqualToString:@"Right"]){
        [b6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
        texty13=@"Right";
        
        [b5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    }
    if([[resultset objectForKey:@"hamstringsleft"] isEqualToString:@"Left"]){
        [b7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
        texty14=@"Left";
        
        [b8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    }
    else if([[resultset objectForKey:@"hamstringsleft"] isEqualToString:@"Right"]){
        [b8 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
        texty14=@"Right";
        
        [b7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    }
    
    
    
}
-(void)dismissKeyboard
{
    //    update.hidden=NO;
    //    reset1.hidden=YES;
    //    deleteform.hidden=NO;
    //    cancel1.hidden=YES;
    //    cancel2.hidden=NO;
    //    submit.hidden=YES;
    //    reset2.hidden=NO;
    
    [physiciansign resignFirstResponder];
    [addcomments resignFirstResponder];
    [otherte resignFirstResponder];
    [plantime resignFirstResponder];
    [planweek resignFirstResponder];
    [l4left resignFirstResponder];
    [l4right resignFirstResponder];
    [l5left resignFirstResponder];
    [l5right resignFirstResponder];
    [s1left resignFirstResponder];
    [s1right resignFirstResponder];
    
    [othernote resignFirstResponder];
    [diag1 resignFirstResponder];
    [diag2 resignFirstResponder];
    [diag3 resignFirstResponder];
    [diag4 resignFirstResponder];
    [diag5 resignFirstResponder];
}
- (IBAction)cancel:(id)sender {
    for (id controller in [self.navigationController viewControllers])
    {
        if ([controller isKindOfClass:[hamilViewController class]])
        {
            [self.navigationController popToViewController:controller animated:YES];
            break;
        }
    }
    //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

- (IBAction)reset:(id)sender {
    patientstatuslabel=@"Excellent";
    physiciansign.text=@"";
    addcomments.text=@"";
    otherte.text=@"";
    plantime.text=@"";
    planweek.text=@"";
    l4left.text=@"";
    l4right.text=@"";
    l5left.text=@"";
    l5right.text=@"";
    s1left.text=@"";
    s1right.text=@"";
    texty11=@"";
    texty12=@"";
    texty13=@"";
    texty14=@"";
    //texty11=@"";
    othernote.text=@"";
    diag1.text=@"";
    diag2.text=@"";
    diag3.text=@"";
    diag4.text=@"";
    diag5.text=@"";
    
    
    [patientstatus setSelectedSegmentIndex:0];
    walking.selected=NO;
    standing.selected=NO;
    stairs.selected=NO;
    other.selected=NO;
    spinal.selected=NO;
    chiropractic.selected=NO;
    physical.selected=NO;
    orthotics.selected=NO;
    modalities.selected=NO;
    supplementation.selected=NO;
    hep.selected=NO;
    mri.selected=NO;
    ct.selected=NO;
    nerve.selected=NO;
    emg.selected=NO;
    outsiderefrral.selected=NO;
    d.selected=NO;
    radio.selected=NO;
    [walking setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [standing setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [stairs setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [other setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [spinal setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [chiropractic setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [physical setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [orthotics setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [modalities setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [supplementation setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [hep setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [mri setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [ct setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [nerve setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [emg setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [outsiderefrral setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [d setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [b2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [b3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [b4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [b5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [b6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [b7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [b8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radio setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    
    [cancel1 release];
    [super dealloc];
}
@end
