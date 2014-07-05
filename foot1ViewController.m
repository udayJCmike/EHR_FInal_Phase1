//
//  foot1ViewController.m
//  foot
//
//  Created by DeemsysInc on 2/20/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "foot1ViewController.h"
#import "footViewController.h"

#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "hamilViewController.h"
#import "databaseurl.h"


@interface foot1ViewController ()
{
    databaseurl *du;
}
@end

@implementation foot1ViewController
@synthesize l4left;
@synthesize resultset;
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
@synthesize radio;
@synthesize otherbut;
@synthesize othertext;
@synthesize submit;
@synthesize update;
@synthesize deletefunc;
@synthesize reset1;
@synthesize reset2;
@synthesize cancel1;
@synthesize cancel2;


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


- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNamesign:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumberlimit:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9_-]{1,3}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
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
- (IBAction)reset:(id)sender
{
    physiciansign.text=@"";
    l4left.text=@"";
    l4right.text=@"";
    l5left.text=@"";
    l5right.text=@"";
    s1left.text=@"";
    s1right.text=@"";
    plantime.text=@"";
    planweek.text=@"";
    diag1.text=@"";
    diag2.text=@"";
    diag3.text=@"";
    diag4.text=@"";
    diag5.text=@"";
    otherte.text=@"";
    addcomments.text=@"";
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
    otherbut.selected=NO;
    othertext.text=@"";
    othertext.hidden=YES;
    otherte.text=@"";
    otherte.hidden=YES;
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
    [radio setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [otherbut setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [patientstatus setSelectedSegmentIndex:0];
    patientstatuslabel=@"Excellent";
    
}

- (IBAction)save:(id)sender {
    
    
    c=1;
    
    temp1 =physiciansign.text;
    temp2 =l4left.text;
    temp3 =l4right.text;
    temp4 =l5left.text;
    temp5 =l5right.text;
    temp6=s1left.text;
    temp7=s1right.text;
    temp8=plantime.text;
    temp9=planweek.text;
    temp10=diag1.text;
    temp11=diag2.text;
    temp12=diag3.text;
    temp13=diag4.text;
    temp14=diag5.text;
    temp15=otherte.text;
    temp16=addcomments.text;
    temp16=[temp16 stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    temp16=[temp16 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    temp16=[temp16 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    
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
        orthotics1=@"null";
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
        outsiderefrral1=@"Outside Refrral";
        
    }
    else
        outsiderefrral1=@"null";
    
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
    if(otherbut.selected)
    {
        otherlab=@"Other";
        
    }
    else
        otherlab=@"null";
    
    if([physiciansign.text length]>0)
        
    {
        
        if((([temp2 length]>0)&&([du byfive:temp2]==1))||([temp2 length]==0))
            
        {
            if((([temp3 length]>0)&&([du byfive:temp3]==1))||([temp3 length]==0))
                
            {
                if((([temp4 length]>0)&&([du byfive:temp4]==1))||([temp4 length]==0))
                    
                {
                    if((([temp5 length]>0)&&([du byfive:temp5]==1))||([temp5 length]==0))
                        
                    {
                        if((([temp6 length]>0)&&([du byfive:temp6]==1))||([temp6 length]==0))
                            
                        {
                            if((([temp7 length]>0)&&([du byfive:temp7]==1))||([temp7 length]==0))
                            {
                                if((([temp15 length]>0)&&([du otherfields:temp15]==1))||([temp15 length]==0))
                                {
                                    if((([temp16 length]>0)&&([du comments:temp16]==1))||([temp16 length]==0))
                                        
                                        
                                        
                                    {
                                        if((([temp10 length]>0)&&([du otherfields:temp10]==1))||([temp10 length]==0))
                                            
                                        {
                                            if((([temp11 length]>0)&&([du otherfields:temp11]==1))||([temp11 length]==0))
                                                
                                            {
                                                if((([temp12 length]>0)&&([du otherfields:temp12]==1))||([temp12 length]==0))
                                                    
                                                {
                                                    if((([temp13 length]>0)&&([du otherfields:temp13]==1))||([temp13 length]==0))
                                                        
                                                    {
                                                        if((([temp14 length]>0)&&([du otherfields:temp14]==1))||([temp14 length]==0))
                                                        {
                                                            if((([temp8 length]>0)&&([du otherfields:temp8]==1))||([temp8 length]==0))
                                                                
                                                            {
                                                                if((([temp9 length]>0)&&([du otherfields:temp9]==1))||([temp9 length]==0))
                                                                {
                                                                    if(([temp1 length]!=0)&&([du otherfields:temp1 ]==1))
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    {
                                                                        
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
                                                                        [recorddict setValue:addcomments.text forKey:@"addcomments"];
                                                                        NSLog(@"success!!!recorddict %@",recorddict);
                                                                        c=1;
                                                                    }
                                                                    
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid patient sign."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    }}
                                                                else
                                                                {
                                                                    c=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid plan week field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                    
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid plan time field."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid diagnosis 5 field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid diagnosis 4 field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    c=0;
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid diagnosis 3 field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                c=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid diagnosis 2 field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            c=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid diagnosis 1 field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        c=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid comment."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                    }
                                }
                                
                                else
                                {
                                    c=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid other text field."                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                }
                                
                            }
                            else
                            {
                                c=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid s1 right field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                            }
                            
                        }
                        else
                        {
                            c=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid s1 left field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        c=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid l5 right field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                    }
                    
                }
                else
                {
                    c=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid l5 left field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                }
                
            }
            else
            {
                c=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid l4 right field."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
            }
            
        }
        else
        {
            c=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid l4 left field."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
        }}
    else
    {
        c=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Required field should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
    }
    
    
    
    
    
    
    
    if (c==1) {
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
            HUD.labelText = @"Updating";
            [HUD show:YES];
            //                  [self insertdata];
            if ([[self submitvalues]isEqualToString:@"success"]) {
                [self updatedata];
            }
            
            
        }
        else
        {
            NULL;
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"footexam Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form updation successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];                    for (id controller in [self.navigationController viewControllers])
                                                                  {
                                                                      if ([controller isKindOfClass:[hamilViewController class]])
                                                                      {
                                                                          [self.navigationController popToViewController:controller animated:YES];
                                                                          break;
                                                                      }
                                                                  }
                //  [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
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
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Footexam.php?service=footexamedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&gait=%@&muscle=%@&swelling=%@&ao=%@&pronation=%@&suspination=%@&calcaneus=%@&valgus=%@&forefoot=%@&forefootvalgus=%@&dysfunction=%@&note=%@&functional=%@&orthopedic=%@&plantarflexionleft=%@&plantarflexionright=%@&dorsiflexionleft=%@&dorsiflexionright=%@&inversionleft=%@&inversionright=%@&eversionleft=%@&eversionright=%@&greattoextensionleft=%@&greattoextensionright=%@&greattoflexionleft=%@&greattoflexionright=%@&tinelstapleft=%@&tinelstapright=%@&achillestapleft=%@&achillestapright=%@&longleft=%@&longright=%@&thompsonleft=%@&thompsonright=%@&drawerleft=%@&drawerright=%@&lateralleft=%@&lateralright=%@&medicalstabilityleft=%@&medicalstabilityright=%@&neurological=%@&inguinalarealeft=%@&inguinalarearight=%@&antleft=%@&antright=%@&kneeleft=%@&kneeright=%@&medialleft=%@&medialright=%@&latleft=%@&latright=%@&plantarleft%@&plantarright=%@&iliopsoasfirstleft=%@&iliopsoasfirstright=%@&iliopsoas1left=%@&iliopsoas1right=%@&kneeextensionleft=%@& kneeextensionright=%@&kneeflexionleft=%@&kneeflexionright=%@&dorsiflexionleft1=%@&dorsiflexionright1=%@&pfleft=%@&pfright=%@&patellarleft=%@&patellarright=%@&hsleft=%@&hsright=%@&achillesleft=%@&achillesright=%@&walking=%@&standing=%@&stairs=%@&other=%@&otherdefict=%@&comments=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&times=%@&weeks=%@&spinaldecompression=%@&chiropractic=%@&physicaltherapy=%@&bracing=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&scan=%@&conduction=%@&emg=%@&outsidereferral=%@&dc=%@&others=%@&othervalue=%@&signature=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"gaitl"],[recorddict objectForKey:@"muscletf"],[recorddict objectForKey:@"swelling"],[recorddict objectForKey:@"aoll"],[recorddict objectForKey:@"pronationl"],[recorddict objectForKey:@"supinationl"],[recorddict objectForKey:@"varusl"],[recorddict objectForKey:@"valgusl"],[recorddict objectForKey:@"forefootl"],[recorddict objectForKey:@"forefootvalgusl"],[recorddict objectForKey:@"palpationlabel"],[recorddict objectForKey:@"notesfield"],[recorddict objectForKey:@"rangeofmotionlabel"],[recorddict objectForKey:@"orthotestinglabel"],[recorddict objectForKey:@"flexionleft"],[recorddict objectForKey:@"flexionright"],[recorddict objectForKey:@"dorsiflexionleft"],[recorddict objectForKey:@"dorsiflexionright"],[recorddict objectForKey:@"inversionleft"],[recorddict objectForKey:@"inversionright"],[recorddict objectForKey:@"eversionleft"],[recorddict objectForKey:@"eversionright"],[recorddict objectForKey:@"greatextensionleft"],[recorddict objectForKey:@"greatextensionright"],[recorddict objectForKey:@"greatflexionleft"],[recorddict objectForKey:@"greatflexionright"],[recorddict objectForKey:@"tinelleft"],[recorddict objectForKey:@"tinelright"],[recorddict objectForKey:@"achillesleft"],[recorddict objectForKey:@"achillesright"],[recorddict objectForKey:@"longleft"],[recorddict objectForKey:@"longright"],[recorddict objectForKey:@"thompsonleft"],[recorddict objectForKey:@"thompsonright"],[recorddict objectForKey:@"drawerleft"],[recorddict objectForKey:@"drawerright"],[recorddict objectForKey:@"lateralleft"],[recorddict objectForKey:@"lateralright"],[recorddict objectForKey:@"medialleft"],[recorddict objectForKey:@"medialright"],[recorddict objectForKey:@"neurologicallabel"],[recorddict objectForKey:@"l1left"],[recorddict objectForKey:@"l1right"],[recorddict objectForKey:@"l2left"],[recorddict objectForKey:@"l2right"],[recorddict objectForKey:@"l3left"],[recorddict objectForKey:@"l3right" ],[recorddict objectForKey:@"l4left"],[recorddict objectForKey:@"l4right"],[recorddict objectForKey:@"l5left"],[recorddict objectForKey:@"l5right"],[recorddict objectForKey:@"s1left"],[recorddict objectForKey:@"s1right"],[recorddict objectForKey:@"ml1left"],[recorddict objectForKey:@"ml1right"],[recorddict objectForKey:@"ml2left"],[recorddict objectForKey:@"ml2right"],[recorddict objectForKey:@"ml3left"],[recorddict objectForKey:@"ml3right"],[recorddict objectForKey:@"ml4left"],[recorddict objectForKey:@"ml4right"],[recorddict objectForKey:@"ml5left"],[recorddict objectForKey:@"ml5right"],[recorddict objectForKey:@"ms1left"],[recorddict objectForKey:@"ms1right"],[recorddict objectForKey:@"ll4left"],[recorddict objectForKey:@"ll4right"],[recorddict objectForKey:@"ll5left"],[recorddict objectForKey:@"ll5right"],[recorddict objectForKey:@"ls1left"],[recorddict objectForKey:@"ls1right"],walking1,standing1,stairs1,other1,otherte.text,addcomments.text,patientstatuslabel,diag1.text,diag2.text,diag3.text,diag4.text,diag5.text,plantime.text,planweek.text,spinal1,chiropractic1,physical1,orthotics1,modalities1,supplementation1,hep1,radiolab ,mri1,ct1,nerve1,emg1,outsiderefrral1,d1,otherlab,othertext.text,physiciansign.text,secondEntity,value2];
    
    
    
    
    
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
    
    NSLog(@"data %@",data);
    
    return data;
    
    
    
    
    
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"footexam Data"])
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
                //   [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
        }
    }
    
}
- (IBAction)deleteform:(id)sender {
    
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"footexam Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form deletion successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];                    for (id controller in [self.navigationController viewControllers])
                                                                      {
                                                                          if ([controller isKindOfClass:[hamilViewController class]])
                                                                          {
                                                                              [self.navigationController popToViewController:controller animated:YES];
                                                                              break;
                                                                          }
                                                                      }
                    //   [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
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
                    //  [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
                }
            }
        }
        
    }
}


-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Footexam.php?service=footexamdelete";
    
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

-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Footexam.php?service=footexaminsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&gait=%@&muscle=%@&swelling=%@&ao=%@&pronation=%@&suspination=%@&calcaneus=%@&valgus=%@&forefoot=%@&forefootvalgus=%@&dysfunction=%@&note=%@&functional=%@&orthopedic=%@&plantarflexionleft=%@&plantarflexionright=%@&dorsiflexionleft=%@&dorsiflexionright=%@&inversionleft=%@&inversionright=%@&eversionleft=%@&eversionright=%@&greattoextensionleft=%@&greattoextensionright=%@&greattoflexionleft=%@&greattoflexionright=%@&tinelstapleft=%@&tinelstapright=%@&achillestapleft=%@&achillestapright=%@&longleft=%@&longright=%@&thompsonleft=%@&thompsonright=%@&drawerleft=%@&drawerright=%@&lateralleft=%@&lateralright=%@&medicalstabilityleft=%@&medicalstabilityright=%@&neurological=%@&inguinalarealeft=%@&inguinalarearight=%@&antleft=%@&antright=%@&kneeleft=%@&kneeright=%@&medialleft=%@&medialright=%@&latleft=%@&latright=%@&plantarleft%@&plantarright=%@&iliopsoasfirstleft=%@&iliopsoasfirstright=%@&iliopsoas1left=%@&iliopsoas1right=%@&kneeextensionleft=%@& kneeextensionright=%@&kneeflexionleft=%@&kneeflexionright=%@&dorsiflexionleft1=%@&dorsiflexionright1=%@&pfleft=%@&pfright=%@&patellarleft=%@&patellarright=%@&hsleft=%@&hsright=%@&achillesleft=%@&achillesright=%@&walking=%@&standing=%@&stairs=%@&other=%@&otherdefict=%@&comments=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&times=%@&weeks=%@&spinaldecompression=%@&chiropractic=%@&physicaltherapy=%@&bracing=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&scan=%@&conduction=%@&emg=%@&outsidereferral=%@&dc=%@&others=%@&othervalue=%@&signature=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"gaitl"],[recorddict objectForKey:@"muscletf"],[recorddict objectForKey:@"swelling"],[recorddict objectForKey:@"aoll"],[recorddict objectForKey:@"pronationl"],[recorddict objectForKey:@"supinationl"],[recorddict objectForKey:@"varusl"],[recorddict objectForKey:@"valgusl"],[recorddict objectForKey:@"forefootl"],[recorddict objectForKey:@"forefootvalgusl"],[recorddict objectForKey:@"palpationlabel"],[recorddict objectForKey:@"notesfield"],[recorddict objectForKey:@"rangeofmotionlabel"],[recorddict objectForKey:@"orthotestinglabel"],[recorddict objectForKey:@"flexionleft"],[recorddict objectForKey:@"flexionright"],[recorddict objectForKey:@"dorsiflexionleft"],[recorddict objectForKey:@"dorsiflexionright"],[recorddict objectForKey:@"inversionleft"],[recorddict objectForKey:@"inversionright"],[recorddict objectForKey:@"eversionleft"],[recorddict objectForKey:@"eversionright"],[recorddict objectForKey:@"greatextensionleft"],[recorddict objectForKey:@"greatextensionright"],[recorddict objectForKey:@"greatflexionleft"],[recorddict objectForKey:@"greatflexionright"],[recorddict objectForKey:@"tinelleft"],[recorddict objectForKey:@"tinelright"],[recorddict objectForKey:@"achillesleft"],[recorddict objectForKey:@"achillesright"],[recorddict objectForKey:@"longleft"],[recorddict objectForKey:@"longright"],[recorddict objectForKey:@"thompsonleft"],[recorddict objectForKey:@"thompsonright"],[recorddict objectForKey:@"drawerleft"],[recorddict objectForKey:@"drawerright"],[recorddict objectForKey:@"lateralleft"],[recorddict objectForKey:@"lateralright"],[recorddict objectForKey:@"medialleft"],[recorddict objectForKey:@"medialright"],[recorddict objectForKey:@"neurologicallabel"],[recorddict objectForKey:@"l1left"],[recorddict objectForKey:@"l1right"],[recorddict objectForKey:@"l2left"],[recorddict objectForKey:@"l2right"],[recorddict objectForKey:@"l3left"],[recorddict objectForKey:@"l3right" ],[recorddict objectForKey:@"l4left"],[recorddict objectForKey:@"l4right"],[recorddict objectForKey:@"l5left"],[recorddict objectForKey:@"l5right"],[recorddict objectForKey:@"s1left"],[recorddict objectForKey:@"s1right"],[recorddict objectForKey:@"ml1left"],[recorddict objectForKey:@"ml1right"],[recorddict objectForKey:@"ml2left"],[recorddict objectForKey:@"ml2right"],[recorddict objectForKey:@"ml3left"],[recorddict objectForKey:@"ml3right"],[recorddict objectForKey:@"ml4left"],[recorddict objectForKey:@"ml4right"],[recorddict objectForKey:@"ml5left"],[recorddict objectForKey:@"ml5right"],[recorddict objectForKey:@"ms1left"],[recorddict objectForKey:@"ms1right"],[recorddict objectForKey:@"ll4left"],[recorddict objectForKey:@"ll4right"],[recorddict objectForKey:@"ll5left"],[recorddict objectForKey:@"ll5right"],[recorddict objectForKey:@"ls1left"],[recorddict objectForKey:@"ls1right"],walking1,standing1,stairs1,other1,otherte.text,addcomments.text,patientstatuslabel,diag1.text,diag2.text,diag3.text,diag4.text,diag5.text,plantime.text,planweek.text,spinal1,chiropractic1,physical1,orthotics1,modalities1,supplementation1,hep1,radiolab ,mri1,ct1,nerve1,emg1,outsiderefrral1,d1,otherlab,othertext.text,physiciansign.text,secondEntity,value2];
    
    
    
    
    
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
    
    NSLog(@"data %@",data);
    
    return data;
    
}


- (IBAction)checkboxselected:(UIButton *)sender {
    
    
    
    
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if (other.selected) {
        otherte.hidden=NO;
    }
    else
        otherte.hidden=YES;
    if (otherbut.selected) {
        othertext.hidden=NO;
    }
    else
        othertext.hidden=YES;
    
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
        patientstatuslabel=@"poor";
    }
    
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
    othertext.hidden=YES;
    
    du=[[databaseurl alloc]init];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    patientstatuslabel=@"Excellent";
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    submit.hidden=NO;
    reset1.hidden=NO;
    cancel1.hidden=NO;
    update.hidden=YES;
    reset2.hidden=YES;
    deletefunc.hidden=YES;
    cancel2.hidden=YES;
    [self displaydata];
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
}
-(void)displaydata
{
    if ([resultset count]>0)
    {
        submit.hidden=YES;
        reset1.hidden=YES;
        cancel1.hidden=YES;
        update.hidden=NO;
        reset2.hidden=NO;
        deletefunc.hidden=NO;
        cancel2.hidden=NO;
        
        physiciansign.text=[resultset objectForKey:@"signature"];
        l4left.text=[resultset objectForKey:@"patellarleft"];
        l4right.text=[resultset objectForKey:@"patellarright"];
        l5left.text=[resultset objectForKey:@"hsleft"];
        l5right.text=[resultset objectForKey:@"hsright"];
        s1left.text=[resultset objectForKey:@"achillesleft"];
        s1right.text=[resultset objectForKey:@"achillesright"];
        plantime.text=[resultset objectForKey:@"times"];
        planweek.text=[resultset objectForKey:@"weeks"];
        diag1.text=[resultset objectForKey:@"diagnosis1"];
        diag2.text=[resultset objectForKey:@"diagnosis2"];
        diag3.text=[resultset objectForKey:@"diagnosis3"];
        diag4.text=[resultset objectForKey:@"diagnosis4"];
        diag5.text=[resultset objectForKey:@"diagnosis5"];
        otherte.text=[resultset objectForKey:@"otherdefict"];
        addcomments.text=[resultset objectForKey:@"comments"];
        othertext.text=[resultset objectForKey:@"othervalue"];
        temp1=[resultset objectForKey:@"patientstatus"];
        if ([temp1 isEqualToString:@"Excellent"] ) {
            [patientstatus setSelectedSegmentIndex:0];
            patientstatuslabel=@"Excellent";
        }
        else if ([temp1 isEqualToString:@"Good"] ) {
            [patientstatus setSelectedSegmentIndex:1];
            patientstatuslabel=@"Good";
        }
        else if ([temp1 isEqualToString:@"Fair"] ) {
            [patientstatus setSelectedSegmentIndex:2];
            patientstatuslabel=@"Fair";
        }
        else if ([temp1 isEqualToString:@"Poor"] ) {
            [patientstatus setSelectedSegmentIndex:3];
            patientstatuslabel=@"Poor";
        }
        if ([[resultset objectForKey:@"walking"] isEqualToString:@"walking"]) {
            walking.selected=YES;
            [walking setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            walking1=@"walking";
            
        }
        else
        {
            walking.selected=NO;
            [walking setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            walking1=@"null";
            
        }
        
        if ([[resultset objectForKey:@"standing"] isEqualToString:@"standing"]) {
            standing.selected=YES;
            [standing setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            standing1=@"standing";
            
        }
        else
        {
            standing.selected=NO;
            [standing setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            standing1=@"null";
            
        }
        if ([[resultset objectForKey:@"stairs"] isEqualToString:@"stairs"]) {
            stairs.selected=YES;
            [stairs setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            stairs1=@"stairs";
            
        }
        else
        {
            stairs.selected=NO;
            [stairs setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            stairs1=@"null";
            
        }
        if ([[resultset objectForKey:@"other"] isEqualToString:@"other"]) {
            other.selected=YES;
            [other setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            otherte.hidden=NO;
            
        }
        else
        {
            other.selected=NO;
            [other setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            otherte.hidden=YES;
            
        }
        if ([[resultset objectForKey:@"spinaldecompression"] isEqualToString:@"Spinal Decompression"]) {
            spinal.selected=YES;
            [spinal setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            spinal1=@"Spinal Decompression";
            
        }
        else
        {
            spinal.selected=NO;
            [spinal setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            spinal1=@"null";
            
        }
        
        if ([[resultset objectForKey:@"chiropractic"] isEqualToString:@"Chiropractic"]) {
            chiropractic.selected=YES;
            [chiropractic setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chiropractic1=@"Chiropractic";
            
        }
        else
        {
            chiropractic.selected=NO;
            [chiropractic setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chiropractic1=@"null";
            
        }
        if ([[resultset objectForKey:@"physicaltherapy"] isEqualToString:@"Physical Therapy"]) {
            physical.selected=YES;
            [physical setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            physical1=@"Physical Therapy";
            
        }
        else
        {
            physical.selected=NO;
            [physical setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            physical1=@"null";
            
        }
        if ([[resultset objectForKey:@"bracing"] isEqualToString:@"Orthotics/Bracing"]) {
            orthotics.selected=YES;
            [orthotics setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            orthotics1=@"Orthotics/Bracing";
            
        }
        else
        {
            orthotics.selected=NO;
            [orthotics setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            orthotics1=@"null";
            
        }
        if ([[resultset objectForKey:@"modalities"] isEqualToString:@"Modalities"]) {
            modalities.selected=YES;
            [modalities setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            modalities1=@"Modalities";
            
        }
        else
        {
            modalities.selected=NO;
            [modalities setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            modalities1=@"null";
            
        }
        
        if ([[resultset objectForKey:@"supplementation"] isEqualToString:@"Supplementation"]) {
            supplementation.selected=YES;
            [supplementation setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            supplementation1=@"Supplementation";
            
        }
        else
        {
            supplementation.selected=NO;
            [supplementation setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            supplementation1=@"null";
            
        }
        if ([[resultset objectForKey:@"hep"] isEqualToString:@"HEP"]) {
            hep.selected=YES;
            [hep setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            hep1=@"HEP";
            
        }
        else
        {
            hep.selected=NO;
            [hep setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            hep1=@"null";
            
        }
        if ([[resultset objectForKey:@"radiographic"] isEqualToString:@"Radiographic X-Ray"]) {
            radio.selected=YES;
            [radio setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            radiolab=@"Radiographic X-Ray";
            
        }
        else
        {
            radio.selected=NO;
            [radio setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            radiolab=@"null";
            
        }
        
        
        
        if ([[resultset objectForKey:@"mri"] isEqualToString:@"MRI"]) {
            mri.selected=YES;
            [mri setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            mri1=@"MRI";
            
        }
        else
        {
            mri.selected=NO;
            [mri setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            mri1=@"null";
            
        }
        if ([[resultset objectForKey:@"scan"] isEqualToString:@"CT Scan"]) {
            ct.selected=YES;
            [ct setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            ct1=@"CT Scan";
            
        }
        else
        {
            ct.selected=NO;
            [ct setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            ct1=@"null";
            
        }
        if ([[resultset objectForKey:@"conduction"] isEqualToString:@"Nerve Conduction"]) {
            nerve.selected=YES;
            [nerve setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            nerve1=@"Nerve Conduction";
            
        }
        else
        {
            nerve.selected=NO;
            [nerve setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            nerve1=@"null";
            
        }
        
        if ([[resultset objectForKey:@"emg"] isEqualToString:@"EMG"]) {
            emg.selected=YES;
            [emg setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            emg1=@"EMG";
            
        }
        else
        {
            emg.selected=NO;
            [emg setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            emg1=@"null";
            
        }
        if ([[resultset objectForKey:@"outsidereferral"] isEqualToString:@"Outside Refrral"]) {
            outsiderefrral.selected=YES;
            [outsiderefrral setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            outsiderefrral1=@"Outside Refrral";
            
        }
        else
        {
            outsiderefrral.selected=NO;
            [outsiderefrral setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            outsiderefrral1=@"null";
            
        }
        if ([[resultset objectForKey:@"dc"] isEqualToString:@"D/C"]) {
            d.selected=YES;
            [d setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            d1=@"D/C";
            
        }
        else
        {
            d.selected=NO;
            [d setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            d1=@"null";
            
        }
        
        if ([[resultset objectForKey:@"others"] isEqualToString:@"Other"]) {
            otherbut.selected=YES;
            [otherbut setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            othertext.hidden=NO;
            
        }
        else
        {
            otherbut.selected=NO;
            [otherbut setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            othertext.hidden=YES;
            
        }
        
        
    }
}
-(void)dismissKeyboard
{
    [physiciansign resignFirstResponder];
    [l4left resignFirstResponder];
    [l4right resignFirstResponder];
    [l5left resignFirstResponder];
    [l5right resignFirstResponder];
    [s1left resignFirstResponder];
    [s1right resignFirstResponder];
    [plantime resignFirstResponder];
    [planweek resignFirstResponder];
    [diag1 resignFirstResponder];
    [diag2 resignFirstResponder];
    [diag3 resignFirstResponder];
    [diag4 resignFirstResponder];
    [diag5 resignFirstResponder];
    [othertext resignFirstResponder];
    [addcomments resignFirstResponder];
    [otherte resignFirstResponder];
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
