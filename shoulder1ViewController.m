//
//  shoulder1ViewController.m
//  shoulder
//
//  Created by deemsys on 2/25/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "shoulder1ViewController.h"
#import "shoulderViewController.h"

#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "hamilViewController.h"
@interface shoulder1ViewController ()

@end

@implementation shoulder1ViewController
@synthesize submit;
@synthesize update;
@synthesize deletefunc;
@synthesize resultset;
@synthesize c5left;
@synthesize c5right;
@synthesize c6left;
@synthesize c6right;
@synthesize c7left;
@synthesize c7right;
@synthesize walking;
@synthesize standing;
@synthesize additional;
@synthesize other;
@synthesize d1;
@synthesize d2;
@synthesize d3;
@synthesize d4;
@synthesize d5;
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
@synthesize outsidereferral;
@synthesize d;
@synthesize physiciansign;
@synthesize ct;
@synthesize recorddict;
@synthesize patientstatus;
@synthesize  radio;
@synthesize other1;
@synthesize othertext;
@synthesize othertext1;
@synthesize cancel2;
@synthesize cancel1;
@synthesize reset2;
@synthesize reset1;
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
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9._/-]+";
    
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames2:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z]+";
    
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)validateNumber:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
    
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
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
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
- (IBAction)save:(id)sender {
    temp1 = [c5left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 = [c5right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 = [c6left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 = [c6right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 = [c7left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[c7right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[d1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[d2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[d3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[d4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[d5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[plantime.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[planweek.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[physiciansign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp52=[additional.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp52=[temp52 stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    temp52=[temp52 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    temp52=[temp52 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    a=1;
    otherlabel=othertext.text;
    other1label=othertext1.text;
    if (walking.selected) {
        [recorddict setValue:@"Overhead Activities" forKey:@"overhead"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"overhead"];
    }
    if (standing.selected) {
        [recorddict setValue:@"Lifting" forKey:@"lifting"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"lifting"];
    }
    if (other.selected) {
        [recorddict setValue:@"Other" forKey:@"fdother"];
        [recorddict setValue:otherlabel forKey:@"fdothertext"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"fdother"];
        [recorddict setValue:@"" forKey:@"fdothertext"];
    }
    if (spinal.selected) {
        [recorddict setValue:@"Spinal Decompression" forKey:@"spinal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"spinal"];
    }
    if (chiropractic.selected) {
        [recorddict setValue:@"Chiropractic" forKey:@"chiro"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"chiro"];
    }
    if (physical.selected) {
        [recorddict setValue:@"Physical Theraphy" forKey:@"phy"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"phy"];
    }
    if (orthotics.selected) {
        [recorddict setValue:@"Orthotics/Bracing" forKey:@"ortho"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ortho"];
    }
    if (modalities.selected) {
        [recorddict setValue:@"Modalities" forKey:@"modal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"modal"];
    }
    if (supplementation.selected) {
        [recorddict setValue:@"Supplementation" forKey:@"supple"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"supple"];
    }
    if (hep.selected) {
        [recorddict setValue:@"HEP" forKey:@"hep"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"hep"];
    }
    if (radio.selected) {
        [recorddict setValue:@"Radiographic X-Ray" forKey:@"xray"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"xray"];
    }
    if (mri.selected) {
        [recorddict setValue:@"MRI" forKey:@"mri"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"mri"];
    }
    if (ct.selected) {
        [recorddict setValue:@"CT Scan" forKey:@"ct"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ct"];
    }
    if (nerve.selected) {
        [recorddict setValue:@"Nerve Conduction" forKey:@"nev"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"nev"];
    }
    if (emg.selected) {
        [recorddict setValue:@"EMG" forKey:@"emg"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"emg"];
    }
    if (outsidereferral.selected) {
        [recorddict setValue:@"Outside Referral" forKey:@"outref"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"outref"];
    }
    if (d.selected) {
        [recorddict setValue:@"D/C" forKey:@"dc"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"dc"];
    }
    if (other1.selected) {
        [recorddict setValue:@"Other" forKey:@"planother"];
        [recorddict setValue:other1label forKey:@"planothertext"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"planother"];
        [recorddict setValue:@"" forKey:@"planothertext"];
    }
    [recorddict setValue:patientstatuslabel forKey:@"patientstatus"];
    
    if([self validateNames2:temp14 ]==1)
    {
        if((([temp1 length]>0)&&([self validateNumber:temp1]==1))||([temp1 length]==0))
        {
            if((([temp2 length]>0)&&([self validateNumber:temp2 ]==1))||([temp2 length]==0))
            {
                if((([temp3 length]>0)&&([self validateNumber:temp3 ]==1))||([temp3 length]==0))
                {
                    if((([temp4 length]>0)&&([self validateNumber:temp4 ]==1))||([temp4 length]==0))
                    {
                        if((([temp5 length]>0)&&([self validateNumber:temp5 ]==1))||([temp5 length]==0))
                        {
                            if((([temp6 length]>0)&&([self validateNumber:temp6]==1))||([temp6 length]==0))
                            {
                                if((([temp52 length]>0)&&([self validateNames1:temp52]==1))||([temp52 length]==0))
                                {
                                    if((([temp7 length]>0)&&([self validateNames:temp7]==1))||([temp7 length]==0))
                                    {
                                        if((([temp8 length]>0)&&([self validateNames:temp8]==1))||([temp8 length]==0))
                                        {
                                            if((([temp9 length]>0)&&([self validateNames:temp9]==1))||([temp9 length]==0))
                                            {
                                                if((([temp10 length]>0)&&([self validateNames:temp10]==1))||([temp10 length]==0))
                                                {
                                                    if((([temp11 length]>0)&&([self validateNames:temp11]==1))||([temp11 length]==0))
                                                    {
                                                        if((([temp12 length]>0)&&([self validateNames:temp12]==1))||([temp12 length]==0))
                                                        {
                                                            if((([temp13 length]>0)&&([self validateNames:temp13]==1))||([temp13 length]==0))
                                                                
                                                            {
                                                                [recorddict setValue:c5left.text forKey:@"lc5left"];
                                                                [recorddict setValue:c5right.text forKey:@"lc5right"];
                                                                [recorddict setValue:c6left.text forKey:@"lc6left"];
                                                                [recorddict setValue:c6right.text forKey:@"lc6right"];
                                                                [recorddict setValue:c7left.text forKey:@"lc7left"];
                                                                [recorddict setValue:c7right.text forKey:@"lc7right"];
                                                                [recorddict setValue:d1.text forKey:@"d1"];
                                                                [recorddict setValue:d2.text forKey:@"d2"];
                                                                [recorddict setValue:d3.text forKey:@"d3"];
                                                                [recorddict setValue:d4.text forKey:@"d4"];
                                                                [recorddict setValue:d5.text forKey:@"d5"];
                                                                [recorddict setValue:plantime.text forKey:@"plantime"];
                                                                [recorddict setValue:physiciansign.text forKey:@"sign"];
                                                                [recorddict setValue:additional.text forKey:@"additional"];
                                                                [recorddict setValue:planweek.text forKey:@"planweek"];
                                                            }
                                                            
                                                            else
                                                            {
                                                                a=0;
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Enter valid plan week."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Enter valid plan time."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Enter valid diagnosis 5 field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Enter valid diagnosis 4 field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Enter valid diagnosis 3 field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Enter valid diagnosis 2 field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                        }
                                        
                                        
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Enter valid diagnosis 1 field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                    }
                                }
                                else
                                {
                                    a=0;
                                    
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Enter valid comments."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                }
                                
                            }
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Enter valid  c7 right."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                            }
                        }
                        else
                        {
                            a=0;
                            
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Enter valid c7 left."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                            
                        }
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Enter valid c6 right."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                        
                    }
                }
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Enter valid c6 left."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                }
            }
            else
            {
                a=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Enter valid C5 right."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
            }
        }
        else
        {
            a=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Enter valid c5 left."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
            
            
        }
    }
    else
    {
        a=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter patient signature."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
    }
    if(a==1)
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
            HUD.labelText = @"Updating";
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"shoulderexam Data"])
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
                //   [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"shoulderexam Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form deletion successful."
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
                    
                    //    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
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
    NSString *url1=@"Shoulderexam.php?service=shoulderexamdelete";
    
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

-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Shoulderexam.php?service=shoulderexamedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&muscle=%@&swelling=%@&ao=%@&dysfunction=%@&pectoralisminor=%@&supraspinatus=%@&infraspinatus=%@&serratusant=%@&teresminor=%@&teresmajor=%@&rhomboids=%@&trapezius=%@&note=%@&functional=%@&orthopedic=%@&flexionleft=%@&flexionright=%@&extensionleft=%@&extensionright=%@&abductionleft=%@&abductionright=%@&adductionleft=%@&adductionright=%@&internalrotationleft=%@&internalrotationright=%@&externalrotationleft=%@&externalrotationright=%@&emptycanleft=%@&emptycanright=%@&impingementsignleft=%@&impingementsignright=%@&apleysscratchleft=%@&apleysscratchright=%@&subacrominalpushleft=%@&subacrominalpushright=%@&dawbarnsleft=%@&dawbarnsright=%@&yergasonsleft=%@&yergasonsright=%@&codmansleft=%@&codmansright=%@&apprehensionleft=%@&apprehensionright=%@&neurological=%@&latdeltoidleft=%@&latdeltoidright=%@&latarmleft=%@&latarmright=%@&thirdleft=%@&thirdright=%@&medforearmleft=%@&medforearmright=%@&medelbowleft=%@&medelbowright=%@&shdleft=%@&shdright=%@&elbflexleft=%@& elbflexright=%@&elbextleft=%@&elbextright=%@&digitflexionleft=%@&digitflexionright=%@&digitabdleft=%@&digitabdright=%@&bicepsleft=%@&bicepsright=%@&brachioradleft=%@&brachioradright=%@&tricepsleft=%@&tricepsright=%@&overhead=%@&lifting=%@&other=%@&otherdefict=%@&comments=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&times=%@&weeks=%@&spinaldecompression=%@&chiropractic=%@&physicaltherapy=%@&bracing=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&scan=%@&conduction=%@&emg=%@&outsiderefferal=%@&dc=%@&others=%@&othervalue=%@&signature=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"muscle"],[recorddict objectForKey:@"swelling"],[recorddict objectForKey:@"ao"],[recorddict objectForKey:@"palpation"],[recorddict objectForKey:@"pectoralisminor"],[recorddict objectForKey:@"suprapinatuslabel"],[recorddict objectForKey:@"infraspinatus"],[recorddict objectForKey:@"serratudant"],[recorddict objectForKey:@"tereminorlabel"],[recorddict objectForKey:@"teremajor"],[recorddict objectForKey:@"rhomboids"],[recorddict objectForKey:@"trapezius"],[recorddict objectForKey:@"notes"],[recorddict objectForKey:@"range"],[recorddict objectForKey:@"orthotest"],[recorddict objectForKey:@"flexionleft"],[recorddict objectForKey:@"flexionright"],[recorddict objectForKey:@"extensionleft"],[recorddict objectForKey:@"extensionright"],[recorddict objectForKey:@"abductionleft"],[recorddict objectForKey:@"abdutionright"],[recorddict objectForKey:@"adductionleft"],[recorddict objectForKey:@"adductionright"],[recorddict objectForKey:@"internalleft"],[recorddict objectForKey:@"internalright"],[recorddict objectForKey:@"externalleft"],[recorddict objectForKey:@"externalright"],[recorddict objectForKey:@"canleft"],[recorddict objectForKey:@"canright"],[recorddict objectForKey:@"signleft"],[recorddict objectForKey:@"signright"],[recorddict objectForKey:@"scratchleft"],[recorddict objectForKey:@"scratchright"],[recorddict objectForKey:@"pushleft"],[recorddict objectForKey:@"pushright"],[recorddict objectForKey:@"dawbarnleft"],[recorddict objectForKey:@"dawbarnright"],[recorddict objectForKey:@"yergasonleft"],[recorddict objectForKey:@"yergasonright"],[recorddict objectForKey:@"codmanleft"],[recorddict objectForKey:@"codmanright"],[recorddict objectForKey:@"apprehensionleft"],[recorddict objectForKey:@"apprehensionright"],[recorddict objectForKey:@"neurological"],[recorddict objectForKey:@"c5left"],[recorddict objectForKey:@"c5right"],[recorddict objectForKey:@"c6left" ],[recorddict objectForKey:@"c6right"],[recorddict objectForKey:@"c7left"],[recorddict objectForKey:@"c7right"],[recorddict objectForKey:@"c8left"],[recorddict objectForKey:@"c8right"],[recorddict objectForKey:@"t1left"],[recorddict objectForKey:@"t1right"],[recorddict objectForKey:@"mc5left"],[recorddict objectForKey:@"mc5right"],[recorddict objectForKey:@"mc6left"],[recorddict objectForKey:@"mc6right"],[recorddict objectForKey:@"mc7left"],[recorddict objectForKey:@"mc7right"],[recorddict objectForKey:@"mc8left"],[recorddict objectForKey:@"mc8right"],[recorddict objectForKey:@"mt1left"],[recorddict objectForKey:@"mt1right"],[recorddict objectForKey:@"lc5left"],[recorddict objectForKey:@"lc5right"],[recorddict objectForKey:@"lc6left"],[recorddict objectForKey:@"lc6right"],[recorddict objectForKey:@"lc7left"],[recorddict objectForKey:@"lc7right"],[recorddict objectForKey:@"overhead"],[recorddict objectForKey:@"lifting"],[recorddict objectForKey:@"fdother"],[recorddict objectForKey:@"fdothertext"],[recorddict objectForKey:@"additional"],patientstatuslabel,d1.text,d2.text,d3.text,d4.text,d5.text,plantime.text,planweek.text,[recorddict objectForKey:@"spinal"],[recorddict objectForKey:@"chiro"],[recorddict objectForKey:@"phy"],[recorddict objectForKey:@"ortho"],[recorddict objectForKey:@"modal"],[recorddict objectForKey:@"supple"],[recorddict objectForKey:@"hep"],[recorddict objectForKey:@"xray"] ,[recorddict objectForKey:@"mri"],[recorddict objectForKey:@"ct"],[recorddict objectForKey:@"nev"],[recorddict objectForKey:@"emg"],[recorddict objectForKey:@"outref"],[recorddict objectForKey:@"dc"],[recorddict objectForKey:@"planother"],[recorddict objectForKey:@"planothertext"],physiciansign.text,secondEntity,value2];
    
    
    
    
    
    
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
    
    // return  @"success";
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"shoulderexam Data"])
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
                //  [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
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
    NSString *url1=@"Shoulderexam.php?service=shoulderexaminsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&muscle=%@&swelling=%@&ao=%@&dysfunction=%@&pectoralisminor=%@&supraspinatus=%@&infraspinatus=%@&serratusant=%@&teresminor=%@&teresmajor=%@&rhomboids=%@&trapezius=%@&note=%@&functional=%@&orthopedic=%@&flexionleft=%@&flexionright=%@&extensionleft=%@&extensionright=%@&abductionleft=%@&abductionright=%@&adductionleft=%@&adductionright=%@&internalrotationleft=%@&internalrotationright=%@&externalrotationleft=%@&externalrotationright=%@&emptycanleft=%@&emptycanright=%@&impingementsignleft=%@&impingementsignright=%@&apleysscratchleft=%@&apleysscratchright=%@&subacrominalpushleft=%@&subacrominalpushright=%@&dawbarnsleft=%@&dawbarnsright=%@&yergasonsleft=%@&yergasonsright=%@&codmansleft=%@&codmansright=%@&apprehensionleft=%@&apprehensionright=%@&neurological=%@&latdeltoidleft=%@&latdeltoidright=%@&latarmleft=%@&latarmright=%@&thirdleft=%@&thirdright=%@&medforearmleft=%@&medforearmright=%@&medelbowleft=%@&medelbowright=%@&shdleft=%@&shdright=%@&elbflexleft=%@& elbflexright=%@&elbextleft=%@&elbextright=%@&digitflexionleft=%@&digitflexionright=%@&digitabdleft=%@&digitabdright=%@&bicepsleft=%@&bicepsright=%@&brachioradleft=%@&brachioradright=%@&tricepsleft=%@&tricepsright=%@&overhead=%@&lifting=%@&other=%@&otherdefict=%@&comments=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&times=%@&weeks=%@&spinaldecompression=%@&chiropractic=%@&physicaltherapy=%@&bracing=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&scan=%@&conduction=%@&emg=%@&outsiderefferal=%@&dc=%@&others=%@&othervalue=%@&signature=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"muscle"],[recorddict objectForKey:@"swelling"],[recorddict objectForKey:@"ao"],[recorddict objectForKey:@"palpation"],[recorddict objectForKey:@"pectoralisminor"],[recorddict objectForKey:@"suprapinatuslabel"],[recorddict objectForKey:@"infraspinatus"],[recorddict objectForKey:@"serratudant"],[recorddict objectForKey:@"tereminorlabel"],[recorddict objectForKey:@"teremajor"],[recorddict objectForKey:@"rhomboids"],[recorddict objectForKey:@"trapezius"],[recorddict objectForKey:@"notes"],[recorddict objectForKey:@"range"],[recorddict objectForKey:@"orthotest"],[recorddict objectForKey:@"flexionleft"],[recorddict objectForKey:@"flexionright"],[recorddict objectForKey:@"extensionleft"],[recorddict objectForKey:@"extensionright"],[recorddict objectForKey:@"abductionleft"],[recorddict objectForKey:@"abdutionright"],[recorddict objectForKey:@"adductionleft"],[recorddict objectForKey:@"adductionright"],[recorddict objectForKey:@"internalleft"],[recorddict objectForKey:@"internalright"],[recorddict objectForKey:@"externalleft"],[recorddict objectForKey:@"externalright"],[recorddict objectForKey:@"canleft"],[recorddict objectForKey:@"canright"],[recorddict objectForKey:@"signleft"],[recorddict objectForKey:@"signright"],[recorddict objectForKey:@"scratchleft"],[recorddict objectForKey:@"scratchright"],[recorddict objectForKey:@"pushleft"],[recorddict objectForKey:@"pushright"],[recorddict objectForKey:@"dawbarnleft"],[recorddict objectForKey:@"dawbarnright"],[recorddict objectForKey:@"yergasonleft"],[recorddict objectForKey:@"yergasonright"],[recorddict objectForKey:@"codmanleft"],[recorddict objectForKey:@"codmanright"],[recorddict objectForKey:@"apprehensionleft"],[recorddict objectForKey:@"apprehensionright"],[recorddict objectForKey:@"neurological"],[recorddict objectForKey:@"c5left"],[recorddict objectForKey:@"c5right"],[recorddict objectForKey:@"c6left" ],[recorddict objectForKey:@"c6right"],[recorddict objectForKey:@"c7left"],[recorddict objectForKey:@"c7right"],[recorddict objectForKey:@"c8left"],[recorddict objectForKey:@"c8right"],[recorddict objectForKey:@"t1left"],[recorddict objectForKey:@"t1right"],[recorddict objectForKey:@"mc5left"],[recorddict objectForKey:@"mc5right"],[recorddict objectForKey:@"mc6left"],[recorddict objectForKey:@"mc6right"],[recorddict objectForKey:@"mc7left"],[recorddict objectForKey:@"mc7right"],[recorddict objectForKey:@"mc8left"],[recorddict objectForKey:@"mc8right"],[recorddict objectForKey:@"mt1left"],[recorddict objectForKey:@"mt1right"],[recorddict objectForKey:@"lc5left"],[recorddict objectForKey:@"lc5right"],[recorddict objectForKey:@"lc6left"],[recorddict objectForKey:@"lc6right"],[recorddict objectForKey:@"lc7left"],[recorddict objectForKey:@"lc7right"],[recorddict objectForKey:@"overhead"],[recorddict objectForKey:@"lifting"],[recorddict objectForKey:@"fdother"],[recorddict objectForKey:@"fdothertext"],[recorddict objectForKey:@"additional"],patientstatuslabel,d1.text,d2.text,d3.text,d4.text,d5.text,plantime.text,planweek.text,[recorddict objectForKey:@"spinal"],[recorddict objectForKey:@"chiro"],[recorddict objectForKey:@"phy"],[recorddict objectForKey:@"ortho"],[recorddict objectForKey:@"modal"],[recorddict objectForKey:@"supple"],[recorddict objectForKey:@"hep"],[recorddict objectForKey:@"xray"] ,[recorddict objectForKey:@"mri"],[recorddict objectForKey:@"ct"],[recorddict objectForKey:@"nev"],[recorddict objectForKey:@"emg"],[recorddict objectForKey:@"outref"],[recorddict objectForKey:@"dc"],[recorddict objectForKey:@"planother"],[recorddict objectForKey:@"planothertext"],physiciansign.text,secondEntity,value2];
    
    
    
    
    
    //       NSLog(@"POST:%@",post);
    
    NSURL *url = [NSURL URLWithString:url2];
    
    //         NSLog(@"POST:%@",post);
    
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


- (IBAction)checkboxselected:(UIButton *)sender {
    
    {
        sender.selected = !sender.selected;
        if(sender.selected){
            [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        }
        else{
            [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
        }
        othertext.hidden=YES;
        othertext1.hidden=YES;
        if(other.selected)
        {
            othertext. hidden=NO;
        }
        else{
            othertext.hidden=YES;
            
        }
    }
    if(other1.selected)
    {
        othertext1. hidden=NO;
    }
    else{
        othertext1.hidden=YES;
        
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
- (IBAction)reset:(id)sender
{
    c5left.text=@"";
    c5right.text=@"";
    c6left.text=@"";
    c6right.text=@"";
    c7left.text=@"";
    c7right.text=@"";
    d1.text=@"";
    d2.text=@"";
    d3.text=@"";
    d4.text=@"";
    d5.text=@"";
    plantime.text=@"";
    planweek.text=@"";
    physiciansign.text=@"";
    additional.text=@"";
    othertext.text=@"";
    othertext1.text=@"";
    othertext.hidden=YES;
    othertext1.hidden=YES;
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
    outsidereferral.selected=NO;
    d.selected=NO;
    radio.selected=NO;
    other1.selected=NO;
    walking.selected=NO;
    standing.selected=NO;
    other.selected=NO;
    [walking setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [standing setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
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
    [outsidereferral setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [d setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [radio setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [other1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [patientstatus setSelectedSegmentIndex:0];
    patientstatuslabel=@"Excellent";
    
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    patientstatuslabel=@"Excellent";
    c5left.text=@"";
    c5right.text=@"";
    c6left.text=@"";
    c6right.text=@"";
    c7left.text=@"";
    c7right.text=@"";
    d1.text=@"";
    d2.text=@"";
    d3.text=@"";
    d4.text=@"";
    d5.text=@"";
    plantime.text=@"";
    planweek.text=@"";
    physiciansign.text=@"";
    additional.text=@"";
    othertext.text=@"";
    othertext1.text=@"";
    submit.hidden=NO;
    cancel1.hidden=NO;
    cancel2.hidden=YES;
    reset1.hidden=NO;
    reset2.hidden=YES;
    update.hidden=YES;
    deletefunc.hidden=YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self getdata];
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    
}
-(void)getdata
{
    if ([resultset count]>0) {
        
        
        update.hidden=NO;submit.hidden=YES;deletefunc.hidden=NO;
        
        cancel1.hidden=YES;
        cancel2.hidden=NO;
        reset1.hidden=YES;
        reset2.hidden=NO;
        c5left.text=[resultset objectForKey:@"bicepsleft"];
        c5right.text=[resultset objectForKey:@"bicepsright"];
        c6left.text=[resultset objectForKey:@"brachioradleft"];
        c6right.text=[resultset objectForKey:@"brachioradright"];
        c7left.text=[resultset objectForKey:@"tricepsleft"];
        c7right.text=[resultset objectForKey:@"tricepsright"];
        othertext.text=[resultset objectForKey:@"otherdefict"];
        plantime.text=[resultset objectForKey:@"times"];
        planweek.text=[resultset objectForKey:@"weeks"];
        d1.text=[resultset objectForKey:@"diagnosis1"];
        d2.text=[resultset objectForKey:@"diagnosis2"];
        d3.text=[resultset objectForKey:@"diagnosis3"];
        d4.text=[resultset objectForKey:@"diagnosis4"];
        d5.text=[resultset objectForKey:@"diagnosis5"];
        physiciansign.text=[resultset objectForKey:@"signature"];
        additional.text=[resultset objectForKey:@"comments"];
        othertext1.text=[resultset objectForKey:@"othervalue"];
        
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
        if ([[resultset objectForKey:@"overhead"] isEqualToString:@"Overhead Activities"]) {
            walking.selected=YES;
            [walking setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Overhead Activities" forKey:@"overhead"];
            
            
            
            
            
        }
        else
        {
            walking.selected=NO;
            [walking setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"overhead"];
            
        }
        
        if ([[resultset objectForKey:@"lifting"] isEqualToString:@"Lifting"]) {
            standing.selected=YES;
            [standing setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Lifting" forKey:@"lifting"];
            
        }
        else
        {
            standing.selected=NO;
            [standing setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"lifting"];
            
        }
        if ([[resultset objectForKey:@"other"] isEqualToString:@"Other"]) {
            other.selected=YES;
            [other setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            othertext.hidden=NO;
            [recorddict setValue:@"Other" forKey:@"fdother"];
            [recorddict setValue:otherlabel forKey:@"fdothertext"];
            
        }
        else
        {
            other.selected=NO;
            [other setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            othertext.hidden=YES;
            [recorddict setValue:@"null" forKey:@"fdother"];
            [recorddict setValue:@"" forKey:@"fdothertext"];
            
        }
        
        if ([[resultset objectForKey:@"spinaldecompression"] isEqualToString:@"Spinal Decompression"]) {
            spinal.selected=YES;
            [spinal setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Spinal Decompression" forKey:@"spinal"];
        }
        else
        {
            spinal.selected=NO;
            [spinal setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"spinal"];
            
            
        }
        
        if ([[resultset objectForKey:@"chiropractic"] isEqualToString:@"Chiropractic"]) {
            chiropractic.selected=YES;
            [chiropractic setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Chiropractic" forKey:@"chiro"];
            
        }
        else
        {
            chiropractic.selected=NO;
            [chiropractic setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"chiro"];
            
        }
        if ([[resultset objectForKey:@"physicaltherapy"] isEqualToString:@"Physical Theraphy"]) {
            physical.selected=YES;
            [physical setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Physical Theraphy" forKey:@"phy"];
            
        }
        else
        {
            physical.selected=NO;
            [physical setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"phy"];
            
        }
        if ([[resultset objectForKey:@"bracing"] isEqualToString:@"Orthotics/Bracing"]) {
            orthotics.selected=YES;
            [orthotics setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Orthotics/Bracing" forKey:@"ortho"];
            
        }
        else
        {
            orthotics.selected=NO;
            [orthotics setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"ortho"];
            
        }
        if ([[resultset objectForKey:@"modalities"] isEqualToString:@"Modalities"]) {
            modalities.selected=YES;
            [modalities setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Modalities" forKey:@"modal"];
            
        }
        else
        {
            modalities.selected=NO;
            [modalities setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"modal"];
            
        }
        
        if ([[resultset objectForKey:@"supplementation"] isEqualToString:@"Supplementation"]) {
            supplementation.selected=YES;
            [supplementation setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Supplementation" forKey:@"supple"];
            
        }
        else
        {
            supplementation.selected=NO;
            [supplementation setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"supple"];
            
        }
        if ([[resultset objectForKey:@"hep"] isEqualToString:@"HEP"]) {
            hep.selected=YES;
            [hep setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"HEP" forKey:@"hep"];
            
        }
        else
        {
            hep.selected=NO;
            [hep setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"hep"];
            
        }
        if ([[resultset objectForKey:@"radiographic"] isEqualToString:@"Radiographic X-Ray"]) {
            radio.selected=YES;
            [radio setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Radiographic X-Ray" forKey:@"xray"];
            
            
        }
        else
        {
            radio.selected=NO;
            [radio setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"xray"];
            
        }
        
        
        
        if ([[resultset objectForKey:@"mri"] isEqualToString:@"MRI"]) {
            mri.selected=YES;
            [mri setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"MRI" forKey:@"mri"];
            
            
        }
        else
        {
            mri.selected=NO;
            [mri setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"mri"];
            
        }
        if ([[resultset objectForKey:@"scan"] isEqualToString:@"CT Scan"]) {
            ct.selected=YES;
            [ct setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"CT Scan" forKey:@"ct"];
            
            
        }
        else
        {
            ct.selected=NO;
            [ct setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"ct"];
            
        }
        if ([[resultset objectForKey:@"conduction"] isEqualToString:@"Nerve Conduction"]) {
            nerve.selected=YES;
            [nerve setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Nerver Conduction" forKey:@"nev"];
            
            
            
        }
        else
        {
            nerve.selected=NO;
            [nerve setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"nev"];
            
        }
        
        if ([[resultset objectForKey:@"emg"] isEqualToString:@"EMG"]) {
            emg.selected=YES;
            [emg setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"EMG" forKey:@"emg"];
            
            
        }
        else
        {
            emg.selected=NO;
            [emg setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"emg"];
            
        }
        if ([[resultset objectForKey:@"outsiderefferal"] isEqualToString:@"Outside Referral"]) {
            outsidereferral.selected=YES;
            [outsidereferral setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Outside Referral" forKey:@"outref"];
            
            
        }
        else
        {
            outsidereferral.selected=NO;
            [outsidereferral setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"outref"];
            
        }
        if ([[resultset objectForKey:@"dc"] isEqualToString:@"D/C"]) {
            d.selected=YES;
            [d setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"D/C" forKey:@"dc"];
            
            
        }
        else
        {
            d.selected=NO;
            [d setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"dc"];
            
        }
        
        if ([[resultset objectForKey:@"others"] isEqualToString:@"Other"]) {
            other1.selected=YES;
            [other1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            othertext1.hidden=NO;
            [recorddict setValue:@"Other" forKey:@"planother"];
            [recorddict setValue:other1label forKey:@"planothertext"];
            
        }
        else
        {
            other1.selected=NO;
            [other1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            othertext1.hidden=YES;
            [recorddict setValue:@"null" forKey:@"planother"];
            [recorddict setValue:@"" forKey:@"planothertext"];
            
        }
        
        
    }
}
-(void)dismissKeyboard
{
    [c5left resignFirstResponder];
    [c5right resignFirstResponder];
    [c6left resignFirstResponder];
    [c6right resignFirstResponder];
    [c7left resignFirstResponder];
    [c7right resignFirstResponder];
    [d1 resignFirstResponder];
    [d2 resignFirstResponder];
    [d3 resignFirstResponder];
    [d4 resignFirstResponder];
    [d5 resignFirstResponder];
    [plantime resignFirstResponder];
    [planweek resignFirstResponder];
    [physiciansign resignFirstResponder];
    [additional resignFirstResponder];
    [othertext resignFirstResponder];
    [othertext1 resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    
    
    [cancel2 release];
    [cancel1 release];
    [reset1 release];
    [reset2 release];
    [super dealloc];
}
@end
