//
//  staffautocheckViewController.m
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "staffautocheckViewController.h"
#import "HippaViewController.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "TWMessageBarManager.h"
#import "StringConstants.h"
#import "PaindiagramViewController.h"
#import "PatientInfoViewController.h"
#import "AutoAccidentViewController1.h"
#import "WorkaccidentViewController.h"
#import "insuranceverifyViewController.h"
#import "healthinsuranceverificationViewController.h"
#import "authorizeandconsenttreatViewController.h"
#import "treatminorViewController.h"
#import "hardshipViewController.h"
#import "screendisclosureViewController.h"
#import "HipKneeViewController.h"
#import "FootAnkleViewController.h"
#import "ROMRAViewController.h"
#import "aobViewController.h"
#import "noticeandrequestViewController.h"
#import "ViewAppAppDelegate.h"

@interface staffautocheckViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
    
}

@end

@implementation staffautocheckViewController
@synthesize  im1;
@synthesize im2;
@synthesize im3;
@synthesize im4;
@synthesize im5;
@synthesize im6;
@synthesize im7;
@synthesize im8;
@synthesize im9;
@synthesize staff;
@synthesize recorddict;
@synthesize selectforms;
@synthesize save;
@synthesize cancel;
@synthesize cancel1;
@synthesize reset;
@synthesize reset1;
@synthesize update;
@synthesize deletefuc;
@synthesize scrollview;
@synthesize lab1;
@synthesize lab2;
@synthesize lab3;
@synthesize lab4;
@synthesize lab5;
@synthesize lab6;
@synthesize lab7;
@synthesize lab8;
@synthesize lab9;
@synthesize patientname;
@synthesize billeddate;
@synthesize insuramceattroney;
@synthesize damageamount;
@synthesize medpay;
@synthesize botherattroney;
@synthesize faultinsurance;
@synthesize protectionreceived;
@synthesize remdate;
@synthesize imageview;
int a;
int inc;
int changesize;
int y;


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
-(BOOL)onlyalphabetsexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)onlyalphabetsexpress1:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z]+";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)onlyalphabetsexpress2:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)dateexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	//NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	//NSLog(@"begin editing");
}
-(BOOL)number:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]+";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)cancel:(id)sender {
    [self performSegueWithIdentifier:@"stafftowelcome" sender:self];
}

- (IBAction)deletefunc:(id)sender {
    HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
    HUD.mode=MBProgressHUDModeIndeterminate;
    HUD.delegate = self;
    HUD.labelText = @"Deleting";
    [HUD show:YES];
    //        [self updatedata];
    if ([[self submitvalues]isEqualToString:@"success"])
    {
        NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
        NSString *response=[self HttpPostEntityFirst1delete:@"patientusername" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
        NSError *error;
        SBJSON *json = [[SBJSON new] autorelease];
        NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
        
        ////NSLog(@"%@ lucky numbers",luckyNumbers);
        if (luckyNumbers == nil)
        {
            
            ////NSLog(@"luckyNumbers == nil");
            
        }
        else
        {
            
            NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
            // //NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"staff Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form deletion successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];
                    
                    [self performSegueWithIdentifier:@"stafftowelcome" sender:self];
                    
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form deletion failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    [self performSegueWithIdentifier:@"stafftowelcome" sender:self];
                    
                }
            }
        }
        
    }
    
}

-(IBAction)submit:(id)sender
{
    du=[[databaseurl alloc]init];
    
    selectforms=[[NSMutableArray alloc]init];
    /* if(button1.selected)
     {
     patinfo.text=@"Confidential Patient Information";
     [selectforms addObject:@"Confidential Patient Information"];
     
     }
     else
     patinfo.text=NULL;
     if(button2.selected)
     {
     screening.text=@"Screening Disclosure/referral";
     [selectforms addObject:@"Screening Disclosure/referral"];
     
     }
     else
     screening.text=NULL;
     if(button3.selected)
     {
     aob.text=@"Assignment of Benefits/Lien";
     [selectforms addObject:@"Assignment of Benefits/Lien"];
     
     
     }
     else
     aob.text=NULL;
     if(button4.selected)
     {
     history.text=@" History/Exam Sheet";
     [selectforms addObject:@" History/Exam Sheet"];
     
     }
     history.text=NULL;
     if(button5.selected)
     {
     xray_sheet.text=@"SOAP Note/X-ray Sheet";
     [selectforms addObject:@"SOAP Note/X-ray Sheet"];
     
     }
     else
     xray_sheet.text=NULL;
     
     if(button6.selected)
     {
     consent.text=@"Consent to Treat Form/Minor";
     [selectforms addObject:@"Consent to Treat Form/Minor"];
     }
     else
     consent.text=NULL;
     if(button7.selected)
     {
     report.text=@"Accident Report";
     [selectforms addObject:@"Accident Report"];
     
     }
     else
     report.text=NULL;
     if(button8.selected)
     {
     hiv.text=@"Health insurance Verification";
     [selectforms addObject:@"Health insurance Verification"];
     }
     else
     hiv.text=NULL;
     if(button9.selected)
     {
     releaseofmed.text=@"Release Of Medical Records Authorization";
     [selectforms addObject:@"Release Of Medical Records Authorization"];
     }
     else
     releaseofmed.text=NULL;
     if(button10.selected)
     {
     hippa.text=@"HIPPA Notice Of Privacy Practices";
     [selectforms addObject:@"HIPPA Notice Of Privacy Practices"];
     
     }
     else
     hippa.text=NULL;
     if(button12.selected)
     {
     notice.text=@"Notice And Request To Not Bill Private Health Insurance ";
     [selectforms addObject:@"Notice And Request To Not Bill Private Health Insurance "];
     }
     else
     notice.text=NULL;
     if(button11.selected)
     {
     hardship.text=@"Hardship Agreement";
     [selectforms addObject:@"Hardship Agreement"];
     
     }
     else
     hardship.text=NULL;
     if(button13.selected)
     {
     consenttotreat.text=@"Authorization And Consent To Treat";
     [selectforms addObject:@"Authorization And Consent To Treat"];
     }
     else
     consenttotreat.text=NULL;
     if(button14.selected)
     {
     radiologic.text=@"Radiologic Report";
     [selectforms addObject:@"Radiologic Report"];
     
     }
     else
     radiologic.text=NULL;
     if(button15.selected)
     {
     physicalexam.text=@"Physical Exam";
     [selectforms addObject:@"Physical Exam"];
     
     }
     else
     physicalexam.text=NULL;
     */
    //[recorddict setObject:selectforms forKey:@"selectforms"];
    
    
    temp20=[patientname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[insuramceattroney.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[damageamount.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[faultinsurance.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp24=[medpay.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp25=[botherattroney.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp26=[protectionreceived.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp27=[billeddate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp28=[remdate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if(([patientname.text length]!=0)&&
       ([insuramceattroney.text length]!=0)&&
       ([damageamount.text length]!=0)&&
       ([faultinsurance.text length]!=0)&&
       ([medpay.text length]!=0)&&
       ([botherattroney.text length]!=0)&&
       ([protectionreceived.text length]!=0)&&
       ([billeddate.text length]!=0)&&
       ([remdate.text length]!=0))
    {
        a=1;
        if ([du patname:temp20]==1)
        {
            if([du patname:temp21]==1)
            {
                if([du date:[damageamount text]]==1)
                {
                    
                    if([du patname:temp23]==1)
                    {
                        
                        if([du patname:temp24]==1)
                        {
                            
                            if([du patname:temp25]==1)
                            {
                                if([du patname:temp26]==1)
                                {
                                    
                                    
                                    
                                    if([self dateexpress:[billeddate text]]==1)
                                    {
                                        if([self dateexpress:[remdate text]]==1)
                                        {
                                            
                                            a=1;
                                            [recorddict setValue:patientname.text forKey:@"patientname"];
                                            [recorddict setValue:insuramceattroney.text forKey:@"insuranceattorney"];
                                            [recorddict setValue:damageamount.text forKey:@"damageamount"];
                                            [recorddict setValue:faultinsurance.text forKey:@"faultinsurance"];
                                            [recorddict setValue:medpay.text forKey:@"medpay"];
                                            [recorddict setValue:botherattroney.text forKey:@"otherattorney"];
                                            [recorddict setValue:protectionreceived.text forKey:@"protectionreceived"];
                                            [recorddict setValue:billeddate.text forKey:@"billed"];
                                            [recorddict setValue:remdate.text forKey:@"remdate"];
                                        }
                                        else
                                        {
                                            a=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid date."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid billed date."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                    }
                                }
                                
                                else
                                {
                                    a=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid protection details."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid attorney."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                            }
                        }
                        else
                        {
                            a=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid med pay."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                        }
                    }
                    else
                    {
                        a=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid fault insurance."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                    }
                }
                else
                {
                    a=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid damage value."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                }
            }
            else
            {
                a=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid insurance attorney."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
            }
        }
        else
        {
            a=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid name."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
        }
    }
    else
    {
        a=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Required field should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
    }
    if (a==1)
    {
        UIButton *buton=(UIButton*)sender;
        if(buton.tag==11)
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
        else  if(buton.tag==12)
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
        else
        {
            NULL;
        }
        
        
        
        
        
        //NSLog(@"recorddict in Staff Auto Checklist %@",recorddict);
    }
    
    
}
-(IBAction)reset:(id)sender
{
    patientname.text=@"";
    insuramceattroney.text=@"";
    damageamount.text=@"";
    faultinsurance.text=@"";
    billeddate.text=@"";
    remdate.text=@"";
    botherattroney.text=@"";
    medpay.text=@"";
    protectionreceived.text=@"";
}
-(void)dismissKeyboard
{
     printView.hidden = YES;
    [patientname resignFirstResponder];
    [insuramceattroney resignFirstResponder];
    [damageamount resignFirstResponder];
    [faultinsurance resignFirstResponder];
    [billeddate resignFirstResponder];
    [remdate resignFirstResponder];
    [botherattroney resignFirstResponder];
    [medpay resignFirstResponder];
    [protectionreceived resignFirstResponder];
    
}


-(void)updatedata
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1update:@"patientusername" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    ////NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        ////NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // //NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"staff Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form updation successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                [self performSegueWithIdentifier:@"stafftowelcome" sender:self];
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form updation failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                [self performSegueWithIdentifier:@"stafftowelcome" sender:self];
                
            }
        }
    }
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Staffchecklist.php?service=staffedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pat_name=%@&insure=%@&damage_amount=%@&fault_insure=%@&med_pay=%@&other_attorney=%@&protect_received=%@&bill=%@&re_date=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"insuranceattorney"],[recorddict objectForKey:@"damageamount"],[recorddict objectForKey:@"faultinsurance"],[recorddict objectForKey:@"medpay"],[recorddict objectForKey:@"otherattorney"],[recorddict objectForKey:@"protectionreceived"],[recorddict objectForKey:@"billed"],[recorddict objectForKey:@"remdate"],secondEntity,value2];
    
    
    
    NSURL *url = [NSURL URLWithString:url2];
    
    ////////NSLog(post);
    
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
    //    //NSLog(@"data %@",data);
    
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
			////NSLog(@"Access Not Available");
			break;
		}
            
		case ReachableViaWWAN:
		{
			isConnect=YES;
			////NSLog(@"Reachable WWAN");
			break;
		}
		case ReachableViaWiFi:
		{
			isConnect=YES;
			////NSLog(@"Reachable WiFi");
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
    
    
}-(void)insertdata
{
    
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1:@"patientusername" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    ////NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        ////NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // //NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"staff Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
                [self performSegueWithIdentifier:@"stafftowelcome" sender:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                [self performSegueWithIdentifier:@"stafftowelcome" sender:self];
                
            }
        }
    }
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Staffchecklist.php?service=staffinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    //NSLog(@"values in record dictionaries::%@",recorddict);
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pat_name=%@&insure=%@&damage_amount=%@&fault_insure=%@&med_pay=%@&other_attorney=%@&protect_received=%@&bill=%@&re_date=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"insuranceattorney"],[recorddict objectForKey:@"damageamount"],[recorddict objectForKey:@"faultinsurance"],[recorddict objectForKey:@"medpay"],[recorddict objectForKey:@"otherattorney"],[recorddict objectForKey:@"protectionreceived"],[recorddict objectForKey:@"billed"],[recorddict objectForKey:@"remdate"],secondEntity,value2];
    
    
    
    
    NSURL *url = [NSURL URLWithString:url2];
    
    //NSLog(@"postvalue%@",post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
    //NSLog(@"postrequest %@",url);
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
    
    //NSLog(@"data %@",data);
    
    return data;
    
}


- (IBAction)deletefuc:(id)sender {
}
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Staffchecklist.php?service=staffdelete";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    //    //NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    ////////NSLog(post);
    
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
    //    //NSLog(@"data %@",data);
    
    return data;
    
}



-(IBAction)checkboxSelected:(UIButton*)sender
{
    sender.selected = !sender.selected;
    if(sender.selected)
    {
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else
    {
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}

- (void)viewDidLoad
{
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    // Adding BarButton With Action Symbol
    barButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(performAction:)];
    [self.navigationItem setRightBarButtonItem:barButton animated:NO];
    
    // Adding small sub view to main View
    printView = [[UIView alloc]initWithFrame:CGRectMake(695, 60, 75, 75)];
    // Creating Button
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(0, 0, 75, 75);
    [button setBackgroundImage:[UIImage imageNamed:@"print.png"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(printAction) forControlEvents:UIControlEventTouchUpInside];
    // adding button to small subview
    [printView addSubview:button];
    [self.view addSubview:printView];
    // default the subview was hidden
    printView.hidden = YES;
    self.picVisible = NO;

    selectforms=[[NSMutableArray alloc]init];
    recorddict=[[NSMutableDictionary alloc]init];
    
    staff=[[NSMutableDictionary alloc]init];
    
    [super viewDidLoad];
    
    for (UIScrollView *v in [self.scrollview subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    table_name=[[NSMutableArray alloc]initWithObjects:@"patient_details",@"tbl_autoaccident",@"tbl_workaccident",@"tbl_insuranceplan",@"tbl_insuranceinformation",@"treat_details",@"minor_details",@"tbl_hardshipagreement",@"screening_details",@"medical_details",@"assignment_details",@"hipquestionnaire",@"tbl_footquestionnarie",@"hippa_privacy",@"symptom", nil];
    buttonname=[[NSMutableArray alloc]initWithObjects:@"Confidential Patient Information",@"Auto Accident",@"Work Accident",@"Insurance Waiver",@"Health Insurance Information",@"Authorization And Consent To Treat",@"Consent to Treat Minor",@"Hardship Agreement",@"Screening Disclosure",@"Release Of Records",@"Assignment Of Benefits",@"Hip And Knee Questionnaire",@"Foot And Ankle Questionnaire",@"Hippa Privacy",@"Pain Diagram", nil];
    patientname.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    
    update.hidden=YES;
    deletefuc.hidden=YES;
    cancel1.hidden=YES;
    reset1.hidden=YES;
    scrollview.canCancelContentTouches = NO;
    scrollview.delaysContentTouches = NO;
    changesize=1024;
    y=100;
    [scrollview setScrollEnabled:YES];
    [scrollview setContentSize:CGSizeMake(768, changesize)];
    [imageview setImage:[UIImage imageNamed:@"BG.png"]];
    CGSize x1 = imageview.image.size;
    x1.height= changesize;
    x1.width=x1.width;
    imageview.frame=CGRectMake(0.0 ,0.0, x1.width, changesize);
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    inc=1;
    [self findusertable];
    [self Getdata];
	// Do any additional setup after loading the view.
}
-(void)findusertable
{
    
    
    NSMutableArray *resulttable=[[NSMutableArray alloc]init];
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    for (int k=0; k<[table_name count]; k++)
    {
        
        NSString *resultResponse=[self HttpPostGetpatientdetails:@"patientusername" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV" Value3:[table_name objectAtIndex:k]];
        NSError *error;
        SBJSON *json = [[SBJSON new] autorelease];
        
        NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
        
        NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
        
        NSArray *items1App=[itemsApp objectForKey:@"staffuser List"];
        
        
        
        
        if ([items1App count]>0)
        {
            
            for (id anUpdate1 in items1App)
            {
                NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
                
                temp10=[arrayList1 objectForKey:@"available"];
                if ([temp10 isEqualToString:@"1"])
                {
                    [self displaybuttons:[buttonname objectAtIndex:k]];
                    [resulttable addObject:temp10];
                    [recorddict setValue:temp10 forKey:[table_name objectAtIndex:k]];
                }
                else
                {
                    [resulttable addObject:temp10];
                    [recorddict setValue:temp10 forKey:[table_name objectAtIndex:k]];
                }
                
            }
            
            
            
        }
        else
        {
            //NSLog(@"no data filled");
            
        }
        
        
    }
    
    //NSLog(@"result value %@",recorddict);
    
}
-(void)displaybuttons:(NSString*)buttonname
{
    UIButton *mybut = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    mybut.frame = CGRectMake(74, y+35, 300, 35);
    [mybut setTitle:buttonname forState:UIControlStateNormal];
    [mybut setBackgroundImage:[UIImage imageNamed:@"bgbutton.png"] forState:UIControlStateNormal];
    [mybut setTintColor:[UIColor whiteColor]];
    mybut.titleLabel.font=[UIFont fontWithName:@"Helvetica Neua" size:17.0];
    mybut.tag = inc;
    
    [mybut addTarget:self  action:@selector(navigate:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self moveobjects];
    [self.scrollview addSubview:mybut];
    [scrollview setScrollEnabled:YES];
    
    [scrollview setContentSize:CGSizeMake(768, changesize)];
    
    imageview.frame=CGRectMake(0.0 ,0.0, imageview.image.size.width, changesize);
    changesize=changesize+75;
    
    inc++;
    y=y+60;
    
}
-(void)moveobjects
{
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UILabel class]])
        {
            //if ((view.tag != 1)&&(view.tag != 2)&&(view.tag != 3)&&(view.tag != 4))
            if (view.tag ==0)
            {
                
                CGRect labelval = view.frame;
                labelval.origin.x = labelval.origin.x;
                labelval.origin.y = labelval.origin.y+60;
                view.frame = labelval;
                
            }
        }
        
    }
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UITextField class]])
        {
            if (view.tag == 0)
            {
                
                CGRect labelval = view.frame;
                labelval.origin.x = labelval.origin.x;
                labelval.origin.y = labelval.origin.y+60;
                view.frame = labelval;
                
            }
        }
        
    }
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UIImageView class]])
        {
            if (view.tag == 0)
            {
                
                CGRect labelval = view.frame;
                labelval.origin.x = labelval.origin.x;
                labelval.origin.y = labelval.origin.y+60;
                view.frame = labelval;
                
            }
        }
        
    }

    
    CGRect btFrame = save.frame;
    btFrame.origin.x = btFrame.origin.x;
    btFrame.origin.y = btFrame.origin.y+60;
    save.frame = btFrame;
    
    CGRect btFrame1 = reset.frame;
    btFrame1.origin.x = btFrame1.origin.x;
    btFrame1.origin.y = btFrame1.origin.y+60;
    reset.frame = btFrame1;
    
    CGRect btFrame2 = cancel.frame;
    btFrame2.origin.x = btFrame2.origin.x;
    btFrame2.origin.y = btFrame2.origin.y+60;
    cancel.frame = btFrame2;
    
    CGRect btFrame3 = deletefuc.frame;
    btFrame3.origin.x = btFrame3.origin.x;
    btFrame3.origin.y = btFrame3.origin.y+60;
    deletefuc.frame = btFrame3;
    
    CGRect btFrame4 = update.frame;
    btFrame4.origin.x = btFrame4.origin.x;
    btFrame4.origin.y = btFrame4.origin.y+60;
    update.frame = btFrame4;
    
    CGRect btFrame5 = cancel1.frame;
    btFrame5.origin.x = btFrame5.origin.x;
    btFrame5.origin.y = btFrame5.origin.y+60;
    cancel1.frame = btFrame5;
    
    CGRect btFrame6 = reset1.frame;
    btFrame6.origin.x = btFrame6.origin.x;
    btFrame6.origin.y = btFrame6.origin.y+60;
    reset1.frame = btFrame6;
    
    
    
    
    
    
}
-(void)move_to_viewcontroller:(NSString*)vcname
{
    UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"Patient_interface" bundle:nil];
    UIViewController *initialvc=[welcome instantiateViewControllerWithIdentifier:vcname];
    
    [self.navigationController pushViewController:initialvc animated:YES];
}
-(void)navigate:(id)sender
{
    ViewAppAppDelegate* appDelegate = (ViewAppAppDelegate*)[[UIApplication sharedApplication] delegate];
appDelegate.staff=@"1";
    NSString *name=[sender titleForState:UIControlStateNormal];
    ////NSLog(@"selected button name %@",name);
    if ([name isEqualToString:@"Confidential Patient Information"]) {
        [self move_to_viewcontroller:@"PatientInfoViewController"];
    }
    if ([name isEqualToString:@"Auto Accident"]) {
     [self move_to_viewcontroller:@"AutoAccidentViewController1"];
        
    }
    if ([name isEqualToString:@"Work Accident"]) {
       [self move_to_viewcontroller:@"WorkaccidentViewController"];
        
    }
    if ([name isEqualToString:@"Insurance Waiver"]) {
      [self move_to_viewcontroller:@"noticeandrequestViewController"];
        
    }
    if ([name isEqualToString:@"Health Insurance Information"]) {
        [self move_to_viewcontroller:@"healthinsuranceverificationViewController"];
        
    }
    if ([name isEqualToString:@"Authorization And Consent To Treat"]) {
        [self move_to_viewcontroller:@"authorizeandconsenttreatViewController"];
        
    }
    if ([name isEqualToString:@"Consent to Treat Minor"]) {
   [self move_to_viewcontroller:@"treatminorViewController"];
        
    }
    if ([name isEqualToString:@"Hardship Agreement"]) {
        
        [self move_to_viewcontroller:@"hardshipViewController"];
       
        
    }
    if ([name isEqualToString:@"Screening Disclosure"]) {
    [self move_to_viewcontroller:@"screendisclosureViewController"];
        
    }
    if ([name isEqualToString:@"Release Of Records"]) {
      [self move_to_viewcontroller:@"ROMRAViewController"];
        
    }
    if ([name isEqualToString:@"Assignment Of Benefits"]) {
     [self move_to_viewcontroller:@"aobViewController"];
        
    }
    if ([name isEqualToString:@"Hip And Knee Questionnaire"]) {
     [self move_to_viewcontroller:@"HipKneeViewController"];
        
    }
    if ([name isEqualToString:@"Foot And Ankle Questionnaire"]) {
      [self move_to_viewcontroller:@"FootAnkleViewController"];
    }
    if ([name isEqualToString:@"Hippa Privacy"]) {
    [self move_to_viewcontroller:@"HippaViewController"];
    }
    if ([name isEqualToString:@"Pain Diagram"]) {
      [self move_to_viewcontroller:@"PaindiagramViewController"];
        
    }
}
-(void)Getdata
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"patientusername" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    
    NSArray *items1App=[itemsApp objectForKey:@"staffuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            ////NSLog(@"arraylist count %d",[arrayList1 count]);
            
            
            temp10=[arrayList1 objectForKey:@"patientusername"];
            temp11=[arrayList1 objectForKey:@"pat_name"];
            temp12=[arrayList1 objectForKey:@"insure"];
            temp13=[arrayList1 objectForKey:@"damage_amount"];
            
            temp14=[arrayList1 objectForKey:@"fault_insure"];
            temp15=[arrayList1 objectForKey:@"med_pay"];
            temp16=[arrayList1 objectForKey:@"other_attorney"];
            temp17=[arrayList1 objectForKey:@"protect_received"];
            temp18=[arrayList1 objectForKey:@"bill"];
            temp19=[arrayList1 objectForKey:@"re_date"];
            
            
            
            
            
            
            [self setdatas];
            
            
            
        }
        update.hidden=NO;
        reset1.hidden=NO;
        deletefuc.hidden=NO;
        cancel1.hidden=NO;
        save.hidden=YES;
        reset.hidden=YES;
        cancel.hidden=YES;
        
        
        [[NSUserDefaults standardUserDefaults]setObject:@"Datas read" forKey:@"status"];
        //  ////NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
    }
    else
    {
        update.hidden=YES;
        reset1.hidden=YES;
        deletefuc.hidden=YES;
        save.hidden=NO;
        reset.hidden=NO;
        cancel.hidden=NO;
        cancel1.hidden=YES;
        
        [[NSUserDefaults standardUserDefaults]setObject:@"Datas not read" forKey:@"status"];
    }
    //  [[NSUserDefaults standardUserDefaults]synchronize];
    
}
-(void)setdatas{
    
    patientname.text=temp11;
    insuramceattroney.text=temp12;
    damageamount.text=temp13;
    faultinsurance.text=temp14;
    billeddate.text=temp18;
    remdate.text=temp19;
    botherattroney.text=temp16;
    medpay.text=temp15;
    protectionreceived.text=temp17;
    
    
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Staffchecklist.php?service=staffselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    //    ////NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    //////////NSLog(post);
    
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
    // ////NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostGetpatientdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2 Value3:(NSString*)value3
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Staffchecklist.php?service=staffuserselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&table=%@&%@=%@",firstEntity,value1,value3,secondEntity,value2];
    
    //    //NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    ////////NSLog(post);
    
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
    ////NSLog(@"data %@",data);
    
    return data;
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"stafftopatient"])
    {
        
        PatientInfoViewController *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftoautoacc"])
    {
        
        AutoAccidentViewController1 *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftoworkacc"])
    {
        
        WorkaccidentViewController *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftowaiver"])
    {
        
        noticeandrequestViewController*destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftohealth"])
    {
        
        healthinsuranceverificationViewController *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftotreat"])
    {
        
        authorizeandconsenttreatViewController*destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftominor"])
    {
        
        treatminorViewController *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftohardship"])
    {
        
        hardshipViewController *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftoscreen"])
    {
        
        screendisclosureViewController *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftorelease"])
    {
        
        ROMRAViewController *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftoaob"])
    {
        
        aobViewController *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftohip"])
    {
        
        HipKneeViewController *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftoknee"])
    {
        
        FootAnkleViewController *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftohippa"])
    {
        
        HippaViewController *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    else if ([segue.identifier isEqualToString:@"stafftopain"])
    {
        
        PaindiagramViewController *destViewController = [segue destinationViewController];
        
        destViewController.staff=recorddict;
        
        //NSLog(@"recorddict in staff first page %@",recorddict);
    }
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        
        if ([self isPicVisible]) {
            UIPrintInteractionController *pc = [UIPrintInteractionController sharedPrintController];
            [pc dismissAnimated:animated];
            self.picVisible = NO;
            printView.hidden = YES;
        }
    }
    
}

- (void)printInteractionControllerDidPresentPrinterOptions:(UIPrintInteractionController *)printInteractionController {
    [printView setHidden:YES];
    self.picVisible = YES;
}

- (void)printInteractionControllerDidDismissPrinterOptions:(UIPrintInteractionController *)printInteractionController {
    self.picVisible = NO;
}

-(void)performAction:(id)sender
{
    printView.hidden = NO;
}

- (void)printAction
{
    UIGraphicsBeginImageContext(self.view.frame.size);
	[self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
    NSData *imageData = UIImagePNGRepresentation(viewImage);
    [self printItem:imageData];
}
#pragma mark - Printing

-(void)printItem :(NSData*)data {
    UIPrintInteractionController *printController = [UIPrintInteractionController sharedPrintController];
    if(printController && [UIPrintInteractionController canPrintData:data]) {
        printController.delegate = self;
        UIPrintInfo *printInfo = [UIPrintInfo printInfo];
        printInfo.outputType = UIPrintInfoOutputGeneral;
        printInfo.jobName = [NSString stringWithFormat:@""];
        printInfo.duplex = UIPrintInfoDuplexLongEdge;
        printController.printInfo = printInfo;
        printController.showsPageRange = YES;
        printController.printingItem = data;
        
        
        
        void (^completionHandler)(UIPrintInteractionController *, BOOL, NSError *) = ^(UIPrintInteractionController *printController, BOOL completed, NSError *error) {
            if (!completed && error) {
                ////NSLog(@"FAILED! due to error in domain %@ with error code %u", error.domain, error.code);
            }
        };
        [printController presentFromBarButtonItem:barButton animated:YES completionHandler:completionHandler];
    }
}

- (void)dealloc {
    
    
    
    

    [super dealloc];
}
@end


