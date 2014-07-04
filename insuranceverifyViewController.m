//
//  insuranceverifyViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/16/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "insuranceverifyViewController.h"
#import "TWMessageBarManager.h"
#import "StringConstants.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "UITextField+AKNumericFormatter.h"
#import "AKNumericFormatter.h"
@interface insuranceverifyViewController ()
{
    databaseurl *du;
    
}

@end

@implementation insuranceverifyViewController
@synthesize delete;
@synthesize cancel;
@synthesize cancel0;
@synthesize submit;
@synthesize reset;
@synthesize reset1;
@synthesize update;

@synthesize recorddict;
@synthesize patientname;
@synthesize spokewith;
@synthesize date;
@synthesize fax;
@synthesize amountdeduct;
@synthesize deductmet;
@synthesize visits;
@synthesize manipulationcovered;
@synthesize manipulationpercent;
@synthesize therapycovered;
@synthesize therapypercent;
@synthesize xrayscovered;
@synthesize xraypercent;
@synthesize subjectdeduct;
@synthesize benefitshonored;
@synthesize networkbenefits;
@synthesize deductible;
@synthesize percentcovered;

@synthesize xraydeduct;
@synthesize honored;
@synthesize address;
@synthesize manipulationcoveredswitchlabel;
@synthesize therapycoveredswitchlabel;
@synthesize xraycoveredswitchlabel;
@synthesize subjectdeductswitchlabel;
@synthesize benefitshonoredswitchlabel;
@synthesize networkbenefitsswitchlabel;
@synthesize xraydeductswitchlabel;
@synthesize honoredswitchlabel;
NSString *temp,*temp1,*temp2,*temp3,*temp4,*temp5,*temp6,*temp7,*temp8,*temp9,*temp10,*temp11,*temp12,*temp13,*temp14,*temp15,*temp16,*temp17,*temp18,*temp19,*temp20,*temp21,*temp22,*temp23,*temp24,*temp25,*temp26,*temp27,*temp28,*temp29,*temp30;


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
-(BOOL)validatealphanumeric:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[A-Z0-9a-z]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
-(BOOL)validatealphanumeric1:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
-(BOOL)validatealphanumeric2:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[0-9]{4}+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
-(BOOL)validateFax:(NSString *)country1
{
    NSString *countryFormat1 =@"^(\\([0-9]{3})\\)[0-9]{3}-[0-9]{4}$";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateEmail:(NSString*)candidate{
    NSString *emailFormat1 = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    
    NSPredicate *emailTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailFormat1];
    return [emailTest1 evaluateWithObject:candidate];
    
}
- (IBAction)cancel:(id)sender {
    [self performSegueWithIdentifier:@"insuranceverifytowelcome" sender:self];
}

- (IBAction)checkchanged:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =@"[A-Za-z0-9._/-]+";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 =@"[A-Za-z]+";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames2:(NSString *)country1
{
    NSString *countryFormat1 =@"[A-Za-z0-9@_]+";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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

-(BOOL)validateMobile:(NSString*)mobilenumber{
    NSCharacterSet *textremove = [NSCharacterSet characterSetWithCharactersInString:@"(-)"];
    mobilenumber= [[mobilenumber componentsSeparatedByCharactersInSet: textremove] componentsJoinedByString:@""];
    
    
    
    NSString *mobileFormat1 =  @"[0-9]{10}";
    
    
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    if ([mobileTest1 evaluateWithObject:mobilenumber])
    {
        NSString *indexvalues=[mobilenumber substringWithRange: NSMakeRange (0, 3)];
        NSString *indexvalues1=[mobilenumber substringWithRange: NSMakeRange (3,3)];
        
        if (([indexvalues isEqualToString:@"000"])||([indexvalues1 isEqualToString:@"000"]))
        {
            return 0;
        }
        else
            return 1;
        
    }
    else
    {
        return [mobileTest1 evaluateWithObject:mobilenumber];
    }
    
    
}

-(IBAction)submit:(id)sender
{
    du=[[databaseurl alloc]init];
    recorddict=[[NSMutableDictionary alloc]init];
    
    
    if(checkbut1.selected){
        [recorddict setValue:@"CM" forKey:@"CM"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"CM"];
    }
    
    if(checkbut2.selected){
        [recorddict setValue:@"PT" forKey:@"PT"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"PT"];
    }
    
    if(checkbut3.selected){
        [recorddict setValue:@"OV" forKey:@"OV"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"OV"];
    }
    
    if([manipulationcoveredswitchlabel.text isEqual:@"Yes"])
    {
        a=[du percentage:[manipulationpercent text]];
    }
    
    
    
    if([xraycoveredswitchlabel.text isEqual:@"Yes"])
    {
        d =[du percentage:[xraypercent text]];
    }
    
    if(([patientname.text length]!=0)&&
       ([spokewith.text length]!=0)&&
       ([date.text length]!=0)&&
       ([fax.text length]!=0)&&
       ([amountdeduct.text length]!=0)&&
       ([deductmet.text length]!=0)&&
       ([visits.text length]!=0)&&
       ([deductible.text length]!=0)&&
       ([percentcovered.text length]!=0)&&
       ([address.text length]!=0))
        
    {
        if([du patname:[patientname text]]==1)
        {
            if([du patname:[spokewith text]]==1)
            {
                if([self validateDate:[date text]]==1)
                {
                    if([du mobilenumber:[fax text]]==1)
                    {
                        if ([du date:[amountdeduct text]]==1)
                        {
                            if([du date:[deductmet text]]==1)
                            {
                                if([du date:[visits text]]==1){
                                    if([du otherfields:[deductible text]]==1)
                                    {
                                        if([du percentage:[percentcovered text]]==1)
                                        {
                                            if([du email:[address text]]==1)
                                            {
                                                
                                                [recorddict setValue:patientname.text forKey:@"patientname"];
                                                [recorddict setValue:spokewith.text forKey:@"spokewith"];
                                                [recorddict setValue:date.text forKey:@"date"];
                                                [recorddict setValue:fax.text forKey:@"fax"];
                                                [recorddict setValue:amountdeduct.text forKey:@"amountdeduct"];
                                                [recorddict setValue:deductmet.text forKey:@"deductment"];
                                                [recorddict setValue:visits.text forKey:@"visits"];
                                                [recorddict setValue:deductible.text forKey:@"deductible"];
                                                [recorddict setValue:percentcovered.text forKey:@"percentcovered"];
                                                [recorddict setValue:address.text forKey:@"addresstext"];
                                                [recorddict setValue:manipulationcoveredswitchlabel.text forKey:@"manipulationcovered"];
                                                [recorddict setValue:therapycoveredswitchlabel.text forKey:@"theraphycovered"];
                                                [recorddict setValue:xraycoveredswitchlabel.text forKey:@"xraycovered"];
                                                [recorddict setValue:subjectdeductswitchlabel.text forKey:@"subjectdeduct"];
                                                [recorddict setValue:benefitshonoredswitchlabel.text forKey:@"benefitshonored"];
                                                [recorddict setValue:networkbenefitsswitchlabel.text forKey:@"networkbenefits"];
                                                [recorddict setValue:xraycoveredswitchlabel.text forKey:@"xraycoveredswitchlabel"];
                                                [recorddict setValue:honoredswitchlabel.text forKey:@"honouredswitchlabel"];
                                                
                                                
                                                [recorddict setValue:manipulationpercent.text forKey:@"manipultionpercent"];
                                                [recorddict setValue:xraypercent.text forKey:@"xray percent"];
                                                
                                                
                                                
                                                b=1;
                                                
                                                
                                            }
                                            
                                            else
                                            {
                                                b=0;
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid email id."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                            }
                                        }
                                        else{
                                            b=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid percentage covered in non-provider benefits."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                        }
                                    }
                                    else
                                    {
                                        b=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid deductible data in non-provider benefits."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                    }
                                }
                                else{
                                    b=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid maximum visit's/year in provider benefits."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                }
                            }
                            else{
                                b=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid amount of deductible met in provider benefits."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                            }
                        }
                        else{
                            b=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid amount of deductible in provider benefits."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                        }
                    }
                    else
                    {
                        b=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid fax number."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                    }
                }
                else
                {
                    b=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid date."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                }
            }
            else{
                b=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid spoke with person name."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
            }
        }
        else
        {
            b=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid patient name."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
        }
    }
    else
    {
        b=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Required field should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
    }
    if (b==1) {
        
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
        
        // [self performSegueWithIdentifier:@"insuranceverifytowelcome" sender:self];
        
        // NSLog(@"success!!!recorddict %@",recorddict);
        // NSLog(@"success!!!recorddict coundt %d",[recorddict count]);
    }
}
-(void)updatedata
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1update:@"pusername" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"insuranceverif Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form updation successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                [self performSegueWithIdentifier:@"insuranceverifytowelcome" sender:self];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form updation failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                [self performSegueWithIdentifier:@"insuranceverifytowelcome" sender:self];
                
                
            }
        }
    }
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"InsuranceVerification.php?service=insuranceverifedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&verify_name=%@&spoke_with=%@&date=%@&fax=%@&amount_deduct=%@&amount_deduct_met=%@&max_visit=%@&is_chiropractic=%@&at_what=%@&xray_cover=%@&atwhat=%@&subject_deduct=%@&benefits_honored=%@&network_benefits=%@&deductible=%@&covered=%@&cm=%@&pt=%@&ov=%@&xray_deduct=%@&doctors_assign=%@&mail_claims=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"spokewith"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"fax"],[recorddict objectForKey:@"amountdeduct"],[recorddict objectForKey:@"deductment"],[recorddict objectForKey:@"visits"],[recorddict objectForKey:@"manipulationcovered"],[recorddict objectForKey:@"manipultionpercent"],[recorddict objectForKey:@"xraycovered"],[recorddict objectForKey:@"xray percent"],[recorddict objectForKey:@"subjectdeduct"],[recorddict objectForKey:@"benefitshonored"],[recorddict objectForKey:@"networkbenefits"],[recorddict objectForKey:@"deductible"],[recorddict objectForKey:@"percentcovered"],[recorddict objectForKey:@"CM"],[recorddict objectForKey:@"PT"],[recorddict objectForKey:@"OV"],[recorddict objectForKey:@"xraycoveredswitchlabel"],[recorddict objectForKey:@"honouredswitchlabel"],[recorddict objectForKey:@"addresstext"],secondEntity,value2];
    
    
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
    
    
}-(void)insertdata
{
    
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1:@"pusername" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"insuranceverif Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                [self performSegueWithIdentifier:@"insuranceverifytowelcome" sender:self];
                
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                [self performSegueWithIdentifier:@"insuranceverifytowelcome" sender:self];
                
                
                
            }
        }
    }
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"InsuranceVerification.php?service=insuranceverifinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    //  NSLog(@"values in record dictionaries::%@",recorddict);
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&verify_name=%@&spoke_with=%@&date=%@&fax=%@&amount_deduct=%@&amount_deduct_met=%@&max_visit=%@&is_chiropractic=%@&at_what=%@&xray_cover=%@&atwhat=%@&subject_deduct=%@&benefits_honored=%@&network_benefits=%@&deductible=%@&covered=%@&cm=%@&pt=%@&ov=%@&xray_deduct=%@&doctors_assign=%@&mail_claims=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"spokewith"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"fax"],[recorddict objectForKey:@"amountdeduct"],[recorddict objectForKey:@"deductment"],[recorddict objectForKey:@"visits"],[recorddict objectForKey:@"manipulationcovered"],[recorddict objectForKey:@"manipultionpercent"],[recorddict objectForKey:@"xraycovered"],[recorddict objectForKey:@"xray percent"],[recorddict objectForKey:@"subjectdeduct"],[recorddict objectForKey:@"benefitshonored"],[recorddict objectForKey:@"networkbenefits"],[recorddict objectForKey:@"deductible"],[recorddict objectForKey:@"percentcovered"],[recorddict objectForKey:@"CM"],[recorddict objectForKey:@"PT"],[recorddict objectForKey:@"OV"],[recorddict objectForKey:@"xraycoveredswitchlabel"],[recorddict objectForKey:@"honouredswitchlabel"],[recorddict objectForKey:@"addresstext"],secondEntity,value2];
    
    
    
    
    NSURL *url = [NSURL URLWithString:url2];
    
    // NSLog(@"postvalue%@",post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
    NSLog(@"postrequest %@",url);
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
    
    // NSLog(@"data %@",data);
    
    return data;
    
}
-(IBAction)reset:(id)sender
{
    honored.on=true;
    honoredswitchlabel.text=@"Yes";
    [checkbut2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    checkbut1.selected=NO;
    checkbut2.selected=NO;
    checkbut3.selected=NO;
    networkbenefits.on=true;
    networkbenefitsswitchlabel.text=@"Yes";
    benefitshonoredswitchlabel.text=@"Yes";
    benefitshonored.on=true;
    xraydeductswitchlabel.text=@"Yes";
    xrayscovered.on=true;
    subjectdeduct.on=true;
    subjectdeductswitchlabel.text=@"Yes";
    xraycoveredswitchlabel.text=@"Yes";
    xraydeduct.on=true;
    xraypercent.hidden=NO;
    manipulationcoveredswitchlabel.text=@"Yes";
    manipulationcovered.on=true;
    manipulationpercent.hidden=NO;
    patientname.text=@"";
    spokewith.text=@"";
    date.text=@"";
    fax.text=@"";
    amountdeduct.text=@"";
    deductmet.text=@"";
    visits.text=@"";
    manipulationpercent.text=@"";
    therapypercent.text=@"";
    xraypercent.text=@"";
    deductible.text=@"";
    percentcovered.text=@"";
    address.text=@"";
    
    
}
-(IBAction)manipulationcoveredswitchchange:(id)sender
{
    if (manipulationcovered.isOn)
    {
        manipulationpercent.hidden=NO;
        what1.hidden=NO;
        manipulationcoveredswitchlabel.text=@"Yes";
    }
    else
    {
        manipulationpercent.hidden=YES;
        what1.hidden=YES;
        manipulationpercent.text=@"";
        manipulationcoveredswitchlabel.text=@"No";
    }
}
-(IBAction)therapycoveredswitchchange:(id)sender
{
    if (therapycovered.isOn)
    {
        therapypercent.hidden=NO;
        what2.hidden=NO;
        therapycoveredswitchlabel.text=@"Yes";
    }
    else
    {
        therapypercent.hidden=YES;
        what2.hidden=YES;
        therapypercent.text=@"";
        therapycoveredswitchlabel.text=@"No";
    }
}
-(IBAction)xraycoveredswitchchange:(id)sender
{
    if (xrayscovered.isOn)
    {
        xraypercent.hidden=NO;
        what3.hidden=NO;
        xraycoveredswitchlabel.text=@"Yes";
    }
    else
    {
        xraypercent.hidden=YES;
        what3.hidden=YES;
        xraypercent.text=@"";
        xraycoveredswitchlabel.text=@"No";
    }
}
-(IBAction)subjectdeductibleswitchswitchchange:(id)sender
{
    if (subjectdeduct.isOn)
    {
        subjectdeductswitchlabel.text=@"Yes";
    }
    else
    {
        subjectdeductswitchlabel.text=@"No";
    }
}
-(IBAction)benefitshonoredswitchange:(id)sender
{
    if (benefitshonored.isOn)
    {
        benefitshonoredswitchlabel.text=@"Yes";
    }
    else
    {
        benefitshonoredswitchlabel.text=@"No";
    }
}
-(IBAction)networkbenefitsswitchchange:(id)sender
{
    if (networkbenefits.isOn)
    {
        networkbenefitsswitchlabel.text=@"Yes";
    }
    else
    {
        networkbenefitsswitchlabel.text=@"No";
    }
    
}

-(IBAction)xraydeductswitchchange:(id)sender
{
    if (xraydeduct.isOn)
    {
        xraydeductswitchlabel.text=@"Yes";
    }
    else
    {
        xraydeductswitchlabel.text=@"No";
    }
}
-(IBAction)honoredswitchchange:(id)sender
{
    if (honored.isOn)
    {
        honoredswitchlabel.text=@"Yes";
    }
    else
    {
        honoredswitchlabel.text=@"No";
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
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    recorddict=[[NSMutableDictionary alloc]init];
    
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    patientname.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    update.hidden=YES;
    delete.hidden=YES;
    reset1.hidden=YES;
    cancel.hidden=YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    AKNumericFormatterMode mode = AKNumericFormatterMixed;
    fax.numericFormatter = [AKNumericFormatter formatterWithMask:@"(***)***-****" placeholderCharacter:'*'mode:mode];
	
    [self Getdata];
	// Do any additional setup after loading the view.
}
-(void)dismissKeyboard
{
    [patientname resignFirstResponder];
    [spokewith resignFirstResponder];
    [date resignFirstResponder];
    [fax resignFirstResponder];
    [amountdeduct resignFirstResponder];
    [deductible resignFirstResponder];
    [deductmet resignFirstResponder];
    [visits resignFirstResponder];
    [manipulationpercent resignFirstResponder];
    [therapypercent resignFirstResponder];
    [xraypercent resignFirstResponder];
    [percentcovered resignFirstResponder];
    [address resignFirstResponder];
    
}
-(void)Getdata
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"pusername" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    // NSLog(@"response %@",json);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    // NSLog(@"luckynumbers %@",luckyNumbers);
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    // NSLog(@"items app %@",itemsApp);
    NSArray *items1App=[itemsApp objectForKey:@"insuranceverif List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    // NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            // NSLog(@"arraylist count %d",[arrayList1 count]);
            
            temp1 =[arrayList1 objectForKey:@"form_no"];
            temp2 =[arrayList1 objectForKey:@"pusername"];
            temp3 =[arrayList1 objectForKey:@"verify_name"];
            temp4 =[arrayList1 objectForKey:@"spoke_with"];
            
            temp6=[arrayList1 objectForKey:@"date"];
            temp7=[arrayList1 objectForKey:@"fax"];
            temp8=[arrayList1 objectForKey:@"amount_deduct"];
            temp9=[arrayList1 objectForKey:@"amount_deduct_met"];
            temp5=[arrayList1 objectForKey:@"atwhat"];
            temp10=[arrayList1 objectForKey:@"max_visit"];
            temp11=[arrayList1 objectForKey:@"is_chiropractic"];
            temp12=[arrayList1 objectForKey:@"at_what"];
            temp13=[arrayList1 objectForKey:@"xray_cover"];
            temp14=[arrayList1 objectForKey:@"subject_deduct"];
            temp15=[arrayList1 objectForKey:@"benefits_honored"];
            temp16=[arrayList1 objectForKey:@"network_benefits"];
            temp17=[arrayList1 objectForKey:@"deductible"];
            temp18=[arrayList1 objectForKey:@"covered"];
            temp19=[arrayList1 objectForKey:@"cm"];
            temp20=[arrayList1 objectForKey:@"pt"];
            temp21=[arrayList1 objectForKey:@"ov"];
            temp22=[arrayList1 objectForKey:@"xray_deduct"];
            temp23=[arrayList1 objectForKey:@"doctors_assign"];
            temp24=[arrayList1 objectForKey:@"mail_claims"];
            
            [self setdatas];
            
            
            
        }
        update.hidden=NO;
        reset1.hidden=NO;
        delete.hidden=NO;
        cancel.hidden=NO;
        submit.hidden=YES;
        reset.hidden=YES;
        cancel0.hidden=YES;
        
        
        [[NSUserDefaults standardUserDefaults]setObject:@"Datas read" forKey:@"status"];
        // NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
    }
    else
    {
        update.hidden=YES;
        reset1.hidden=YES;
        delete.hidden=YES;
        submit.hidden=NO;
        reset.hidden=NO;
        cancel0.hidden=NO;
        cancel.hidden=YES;
        
        [[NSUserDefaults standardUserDefaults]setObject:@"Datas not read" forKey:@"status"];
    }
    //  [[NSUserDefaults standardUserDefaults]synchronize];
    
}
-(void)setdatas
{
    // NSLog(@"In setdatas before condition");
    patientname.text=temp3;
    spokewith.text=temp4;
    date.text=temp6;
    fax.text=temp7;
    amountdeduct.text=temp8;
    deductmet.text=temp9;
    visits.text=temp10;
    manipulationcoveredswitchlabel.text=temp11;
    if([manipulationcoveredswitchlabel.text isEqual:@"Yes"])
    {
        manipulationcovered.on=true;
        manipulationpercent.hidden=NO;
        manipulationpercent.text=temp12;
        what1.hidden=NO;
    }
    else{
        manipulationcovered.on=false;
        manipulationpercent.hidden=YES;
        manipulationpercent.text=@"";
        what1.hidden=YES;
    }
    xraycoveredswitchlabel.text=temp13;
    if([xraycoveredswitchlabel.text isEqual:@"Yes"])
    {
        xrayscovered.on=true;
        xraypercent.hidden=NO;
        what3.hidden=NO;
        xraypercent.text=temp5;
    }
    else{
        xrayscovered.on=false;
        xraypercent.hidden=YES;
        what3.hidden=YES;
        xraypercent.text=@"";
    }
    subjectdeductswitchlabel.text=temp14;
    if([subjectdeductswitchlabel.text isEqual:@"Yes"])
    {
        subjectdeduct.on=true;
    }
    else{
        subjectdeduct.on=false;
    }
    
    benefitshonoredswitchlabel.text=temp15;
    if([benefitshonoredswitchlabel.text isEqual:@"Yes"])
    {
        benefitshonored.on=true;
    }
    else{
        benefitshonored.on=false;
    }
    networkbenefitsswitchlabel.text=temp16;
    if([networkbenefitsswitchlabel.text isEqual:@"Yes"])
    {
        networkbenefits.on=true;
    }
    else{
        networkbenefits.on=false;
    }
    deductible.text=temp17;
    percentcovered.text=temp18;
    if([temp19 isEqualToString:@"CM"]){
        [checkbut1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [checkbut1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
    
    
    if([temp20 isEqualToString:@"PT"]){
        [checkbut2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [checkbut2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
    
    if([temp21 isEqualToString:@"OV"]){
        [checkbut3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [checkbut3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
    
    xraydeductswitchlabel.text=temp22;
    if([xraydeductswitchlabel.text isEqual:@"Yes"])
    {
        xraydeduct.on=true;
    }
    else{
        xraydeduct.on=false;
    }
    
    honoredswitchlabel.text=temp23;
    if([honoredswitchlabel.text isEqual:@"Yes"])
    {
        honored.on=true;
    }
    else{
        honored.on=false;
    }
    address.text=temp24;
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"InsuranceVerification.php?service=insuranceverifselect";
    
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
    // NSLog(@"data %@",data);
    
    return data;
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    [super dealloc];
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
        NSString *response=[self HttpPostEntityFirst1delete:@"pusername" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"insuranceverif Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form deletion successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];
                    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
                    
                    
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form deletion failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
                    
                    
                }
            }
        }
        
    }
}


-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"InsuranceVerification.php?service=insuranceverifdelete";
    
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
@end
