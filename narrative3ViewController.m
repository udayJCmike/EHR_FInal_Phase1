//
//  narrative3ViewController.m
//  narrative
//
//  Created by deemsys on 2/28/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "narrative3ViewController.h"
#import "narrative1ViewController.h"
#import "narrative2ViewController.h"
#import "narrativeViewController.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"

#import "TWMessageBarManager.h"
#import "StringConstants.h"


@interface narrative3ViewController ()

@end

@implementation narrative3ViewController
@synthesize mutearray;
@synthesize submit;
@synthesize update;
@synthesize deleteform;
@synthesize resultset;
@synthesize i1;
@synthesize i2;
@synthesize i3;
@synthesize de1;
@synthesize de2;
@synthesize de3;
@synthesize mr1;
@synthesize mr2;
@synthesize mr3;
@synthesize date1;
@synthesize date2;
@synthesize hope;
@synthesize he1;
@synthesize he2;
@synthesize he3;
@synthesize his1;
@synthesize his2;
@synthesize his3;
@synthesize his4;
@synthesize his5;
@synthesize his6;
@synthesize name;
@synthesize name1;
@synthesize name2;
@synthesize name3;
@synthesize mrseg;
@synthesize goodseg;
@synthesize cancel;
@synthesize cancel2;
@synthesize reset;
@synthesize reset2;


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




@synthesize recorddict;

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames2:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
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
- (IBAction)reset:(id)sender {
    [mrseg setSelectedSegmentIndex:0];
    [goodseg setSelectedSegmentIndex:0];
    good=@"Good at this time";
    mr=@"Mr";
    i1.text=@"";
    i1.text=@"";
    i2.text=@"";
    i3.text=@"";
    i4.text=@"";
    de1.text=@"";
    de2.text=@"";
    de3.text=@"";
    de4.text=@"";
    name.text=@"";
    date1.text=@"";
    date2.text=@"";
    hope.text=@"";
    self.name1.text = name.text;
    self.name2.text=name.text;
    self.name3.text=name.text;
    mr=@"Mr";
    he1.text=@"He";
    he2.text=@"He";
    he3.text=@"He";
    his1.text=@"his";
    his2.text=@"his";
    his3.text=@"his";
    his4.text=@"his";
    his5.text=@"his";
    his6.text=@"his";
    mr1.text=[NSString stringWithFormat:@"%@%@",mr,@"."];
    mr2.text=[NSString stringWithFormat:@"%@%@",mr,@"."];
    mr3.text=[NSString stringWithFormat:@"%@%@",mr,@"."];
    
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
}

- (IBAction)save:(id)sender {
    
    a=1;
    
    temp4 =[i1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[i2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[i3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[de1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[de2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[de3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //    temp10=[exp1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[name.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //    temp12=[hope.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[date1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[date2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    
    temp19=[hope.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[i4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[de4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    
    if(([temp19 length]!=0)&&([temp11 length]!=0))
        
    {
        if((([temp4 length]>0)&&([self validateNames:temp4 ]==1))||([temp4 length]==0))
        {
            if((([temp5 length]>0)&&([self validateNames:temp5]==1))||([temp5 length]==0))
            {
                if((([temp6 length]>0)&&([self validateNames:temp6]==1))||([temp6 length]==0))
                {
                    if((([temp20 length]>0)&&([self validateNames:temp20]==1))||([temp20 length]==0))
                    {
                        if((([temp7 length]>0)&&([self validateNames:temp7]==1))||([temp7 length]==0))
                        {
                            if((([temp8 length]>0)&&([self validateNames:temp8]==1))||([temp8 length]==0))
                            {
                                if((([temp9 length]>0)&&([self validateNames:temp9]==1))||([temp9 length]==0))
                                {
                                    if((([temp21 length]>0)&&([self validateNames:temp21]==1))||([temp21 length]==0))
                                    {
                                        if((([temp11 length]>0)&&([self validateNames2:temp11]==1))||([temp11 length]==0))
                                        {
                                            
                                            if((([temp13 length]>0)&&([self validateDate:temp13]==1))||([temp13 length]==0))
                                            {
                                                if((([temp14 length]>0)&&([self validateDate:temp14]==1))||([temp14 length]==0))
                                                {
                                                    
                                                    
                                                    
                                                    if((([temp19 length]>0)&&([self validateNames1:temp19]==1))||([temp19 length]==0))
                                                    {
                                                        
                                                        
                                                        a=1;
                                                        
                                                        [recorddict setValue:i1.text forKey:@"i1"];
                                                        [recorddict setValue:i2.text forKey:@"i2"];
                                                        [recorddict setValue:i3.text forKey:@"i3"];
                                                        [recorddict setValue:i4.text forKey:@"i4"];
                                                        [recorddict setValue:name.text forKey:@"patientname2"];
                                                        [recorddict setValue:mr forKey:@"mr2"];
                                                        [recorddict setValue:good forKey:@"goodsegval"];
                                                        [recorddict setValue:his1.text forKey:@"gennnn"];
                                                        [recorddict setValue:date1.text forKey:@"date1"];
                                                        [recorddict setValue:date2.text forKey:@"date2"];
                                                        //[recorddict setValue:exp1.text forKey:@"exp1"];
                                                        [recorddict setValue:hope.text forKey:@"hope"];
                                                        [recorddict setValue:de1.text forKey:@"de1"];
                                                        [recorddict setValue:de2.text forKey:@"de2"];
                                                        [recorddict setValue:de3.text forKey:@"de3"];
                                                        [recorddict setValue:de4.text forKey:@"de4"];
                                                        [recorddict setValue:he1.text forKey:@"he1"];
                                                        [recorddict setValue:his1.text forKey:@"his1"];
                                                        NSLog(@"success!!!recorddict %@",recorddict);
                                                        
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Enter valid signature."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                     
                                                        
                                                    }
                                                    
                                                    
                                                    
                                                    
                                                    
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Enter valid improved on date field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Enter valid date."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                               
                                                
                                            }
                                            
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Enter valid name."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                           
                                            
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Enter valid description 4."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                        
                                    }
                                }
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Enter valid description 3."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                   
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Enter valid  description 2."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                               
                                
                            }
                        }
                        else
                        {
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Enter valid  description 1."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                          
                        }
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Enter valid ICD 4."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                       
                        
                    }
                }
                
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Enter valid ICD 3."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                   
                    
                }
            }
            else
            {
                a=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Enter valid ICD 2."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
               
            }
        }
        else
        {
            a=0;
            
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Enter valid ICD 1."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
           
            
        }
    }
    
    else
    {
        a=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter all the required fields."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
       
        
    }
    if (a==1) {
        
        
        UIButton *buton=(UIButton*)sender;
        if(buton.tag==12)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"narrative Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form updation successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
                
                [self performSegueWithIdentifier:@"narrativetowelcome" sender:self];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form updation failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
               
                
                [self performSegueWithIdentifier:@"narrativetowelcome" sender:self];
                
                
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"narrative Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
             
                
                [self performSegueWithIdentifier:@"narrativetowelcome" sender:self];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
               
                
                [self performSegueWithIdentifier:@"narrativetowelcome" sender:self];
                
                
            }
        }
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"narrative Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form deletion successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];
                    
                 
                    
                    [self performSegueWithIdentifier:@"narrativetowelcome" sender:self];
                    
                    
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form deletion failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    [self performSegueWithIdentifier:@"narrativetowelcome" sender:self];
                    
                    
                }
            }
        }
        
    }
    
}

-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    // NSLog(@"dermatome=%@&gender42=%@&gender43=%@&gender44=%@&level1=%@&level=%@&gender45=%@&level2=%@&orthopedictest1=%@&jacksonsr=%@&jacksonsl=%@&orthopedictest2=%@&doublelegraiser=%@&doublelegraisel=%@&orthopedictest3=%@&yeomansr=%@&yeomansl=%@&orthopedictest4=%@&foraminalr=%@&foraminall=%@&orthopedictest5=%@&shoulderr=%@&shoulderl=%@&orthopedictest6=%@&orthopedicr=%@&orthopedicl=%@",[recorddict objectForKey:@"textl1"],[recorddict objectForKey:@"s1r"],[recorddict objectForKey:@"s2r"],[recorddict objectForKey:@"s3r"],[recorddict objectForKey:@"textl2"],[recorddict objectForKey:@"s4r"],@"null",@"null",[recorddict objectForKey:@"o1"],[recorddict objectForKey:@"rs1"],[recorddict objectForKey:@"ls1"],[recorddict objectForKey:@"o2"],[recorddict objectForKey:@"rs2"],[recorddict objectForKey:@"ls2"],[recorddict objectForKey:@"o3"],[recorddict objectForKey:@"rs3"],[recorddict objectForKey:@"ls3"],[recorddict objectForKey:@"o4"],[recorddict objectForKey:@"rs4"],[recorddict objectForKey:@"ls4"],[recorddict objectForKey:@"o5"],[recorddict objectForKey:@"rs5"],[recorddict objectForKey:@"ls5"],[recorddict objectForKey:@"o6"],[recorddict objectForKey:@"rs6"],[recorddict objectForKey:@"ls6"]);
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Narrativereport.php?service=narrativeinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post1 =[[NSString alloc] initWithFormat:@"%@=%@&reportdate=%@&patient=%@&dateofinjury=%@&dateoffirstvisit=%@&towhom=%@&patientname=%@&gender=%@&accident=%@&name=%@&dateofconsultation=%@&gender1=%@&gender2=%@&accidentdate=%@&gender3=%@&gender4=%@&gender5=%@&name1=%@&gendernew=%@&gender6=%@&gender7=%@&gender8=%@&gender9=%@&name2=%@&body=%@&gender10=%@&slammed=%@&slammed1=%@&symptom=%@&appeared=%@&priordate=%@&gender11=%@&name3=%@&gender12=%@&pastmedicalhistory=%@&gender13=%@&gender14=%@&gender15=%@&gender16=%@&gender17=%@&gender18=%@&name4=%@&clinicdate=%@&gender19=%@&vehicleaccident=%@&gender20=%@&gender21=%@&allieviated=%@&gender22=%@&gender23=%@&gender24=%@&gendernew2=%@&gendernew3=%@&gender25=%@&gender26=%@&gender27=%@&gender28=%@&gender29=%@&gender30=%@&age=%@&age1=%@&lb=%@&gender31=%@&gender32=%@&gender33=%@&gender34=%@&gendernew4=%@&gender35=%@&gender36=%@&gender37=%@&gender38=%@&gender39=%@&gendernew5=%@&tenderness=%@&gender40=%@&gendernew6=%@&gender41=%@&noted=%@&rangeofmotion=%@&painres1=%@&tonicity1=%@&painres2=%@&tonicity2=%@&painres3=%@&tonicity3=%@&painres4=%@&tonicity4=%@&painres5=%@&tonicity5=%@&painres6=%@&tonicity6=%@&painres7=%@&tonicity7=%@&painres8=%@&tonicity8=%@&painres9=%@&tonicity9=%@&painres10=%@&tonicity10=%@&painres11=%@&tonicity11=%@&painres12=%@&tonicity12=%@",firstEntity,value1,[recorddict objectForKey:@"reportdate"],[recorddict objectForKey:@"patientname11"],[recorddict objectForKey:@"dateofinjury"],[recorddict objectForKey:@"dateofvisit"],[recorddict objectForKey:@"to"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"accon"],[recorddict objectForKey:@"patientname11"],[recorddict objectForKey:@"examon"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"accon1"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"mr1"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"text2"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"text6"],[recorddict objectForKey:@"text3"],[recorddict objectForKey:@"text4"],[recorddict objectForKey:@"text5"],[recorddict objectForKey:@"textf1"],[recorddict objectForKey:@"mr1"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"textf2"],[recorddict objectForKey:@"s7l"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"s8l"],[recorddict objectForKey:@"s9l"],[recorddict objectForKey:@"s10l"],[recorddict objectForKey:@"mr1"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"text14"],[recorddict objectForKey:@"text13"],[recorddict objectForKey:@"text15"],[recorddict objectForKey:@"s1l"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"alleviate"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"s3l"],[recorddict objectForKey:@"s4l"],[recorddict objectForKey:@"s5l"],[recorddict objectForKey:@"s6l"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"wasnotlabel"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"s2l"],[recorddict objectForKey:@"age"],[recorddict objectForKey:@"height"],[recorddict objectForKey:@"lb"],[recorddict objectForKey:@"s11l"],[recorddict objectForKey:@"s12l"],[recorddict objectForKey:@"s13l"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"s14l"],[recorddict objectForKey:@"s15l"],[recorddict objectForKey:@"s16l"],[recorddict objectForKey:@"s17l"],[recorddict objectForKey:@"s18l"],[recorddict objectForKey:@"s19l"],[recorddict objectForKey:@"cervicalanother"],[recorddict objectForKey:@"tender"],[recorddict objectForKey:@"lrlabel"],[recorddict objectForKey:@"lrtrapezius"],[recorddict objectForKey:@"lrother"],[recorddict objectForKey:@"note"],[recorddict objectForKey:@"range"],[recorddict objectForKey:@"flexionpain"],[recorddict objectForKey:@"flexionton"],[recorddict objectForKey:@"extensionpain"],[recorddict objectForKey:@"extensionton"],[recorddict objectForKey:@"rightlateralpain"],[recorddict objectForKey:@"rightlateralton"],[recorddict objectForKey:@"leftlateralpain"],[recorddict objectForKey:@"leftlateralton"],[recorddict objectForKey:@"rightrotationpain"],[recorddict objectForKey:@"rightrotationton"],[recorddict objectForKey:@"leftrotationpain"],[recorddict objectForKey:@"leftrotationton"],[recorddict objectForKey:@"flexpain"],[recorddict objectForKey:@"flexton"],[recorddict objectForKey:@"exetpain"],[recorddict objectForKey:@"exetton"],[recorddict objectForKey:@"rightlatpain"],[recorddict objectForKey:@"rightlatton"],[recorddict objectForKey:@"leftlatpain"],[recorddict objectForKey:@"leftlatton"],[recorddict objectForKey:@"rightrotpain"],[recorddict objectForKey:@"rightrotton"],[recorddict objectForKey:@"leftrotpain"],[recorddict objectForKey:@"leftrotton"]];
    
    NSString *post2 =[[NSString alloc] initWithFormat:@"&dermatome=%@&gender42=%@&gender43=%@&gender44=%@&level1=%@&level=%@&gender45=%@&level2=%@&orthopedictest1=%@&jacksonsr=%@&jacksonsl=%@&orthopedictest2=%@&doublelegraiser=%@&doublelegraisel=%@&orthopedictest3=%@&yeomansr=%@&yeomansl=%@&orthopedictest4=%@&foraminalr=%@&foraminall=%@&orthopedictest5=%@&shoulderr=%@&shoulderl=%@&orthopedictest6=%@&orthopedicr=%@&orthopedicl=%@&gender46=%@&gender47=%@&gender48=%@&gender49=%@&gender50=%@&gender51=%@&fracture=%@&gender52=%@&gender53=%@&gender54=%@&presentlevel=%@&gender55=%@&osteophytes=%@&gender56=%@&gender57=%@&gender58=%@&gender59=%@&gender60=%@&subluxations=%@&icd1=%@&description1=%@&icd2=%@&description2=%@&icd3=%@&description3=%@&icd4=%@&description4=%@&gender61=%@&pname=%@&date9=%@&gender62=%@&gender63=%@&pname1=%@&datenew=%@&gender64=%@&gender65=%@&poor=%@&gender67=%@&gender68=%@&gender69=%@&gender70=%@&pname2=%@&gender71=%@&gender72=%@&gender73=%@&gender74=%@&gender75=%@&pname3=%@&sign=%@&%@=%@",[recorddict objectForKey:@"textl1"],[recorddict objectForKey:@"s1r"],[recorddict objectForKey:@"s2r"],[recorddict objectForKey:@"s3r"],@"null",[recorddict objectForKey:@"textl2"],[recorddict objectForKey:@"s4r"],@"null",[recorddict objectForKey:@"o1"],[recorddict objectForKey:@"rs1"],[recorddict objectForKey:@"ls1"],[recorddict objectForKey:@"o2"],[recorddict objectForKey:@"rs2"],[recorddict objectForKey:@"ls2"],[recorddict objectForKey:@"o3"],[recorddict objectForKey:@"rs3"],[recorddict objectForKey:@"ls3"],[recorddict objectForKey:@"o4"],[recorddict objectForKey:@"rs4"],[recorddict objectForKey:@"ls4"],[recorddict objectForKey:@"o5"],[recorddict objectForKey:@"rs5"],[recorddict objectForKey:@"ls5"],[recorddict objectForKey:@"o6"],[recorddict objectForKey:@"rs6"],[recorddict objectForKey:@"ls6"],[recorddict objectForKey:@"s5r"],[recorddict objectForKey:@"s6r"],[recorddict objectForKey:@"s7r"],[recorddict objectForKey:@"s8r"],[recorddict objectForKey:@"s9r"],[recorddict objectForKey:@"s10r"],@"null",[recorddict objectForKey:@"s11r"],[recorddict objectForKey:@"s12r"],[recorddict objectForKey:@"s13r"],@"null",[recorddict objectForKey:@"s14r"],[recorddict objectForKey:@"textl3"],[recorddict objectForKey:@"s15r"],[recorddict objectForKey:@"s16r"],[recorddict objectForKey:@"s17r"],[recorddict objectForKey:@"s18r"],[recorddict objectForKey:@"s19r"],[recorddict objectForKey:@"textl4"],[recorddict objectForKey:@"i1"],[recorddict objectForKey:@"de1"],[recorddict objectForKey:@"i2"],[recorddict objectForKey:@"de2"],[recorddict objectForKey:@"i3"],[recorddict objectForKey:@"de3"],[recorddict objectForKey:@"i4"],[recorddict objectForKey:@"de4"],[recorddict objectForKey:@"mr2"],[recorddict objectForKey:@"patientname2"],[recorddict objectForKey:@"date1"],[recorddict objectForKey:@"he1"],[recorddict objectForKey:@"mr2"],[recorddict objectForKey:@"patientname2"],[recorddict objectForKey:@"date2"],[recorddict objectForKey:@"goodsegval"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"he1"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"mr2"],[recorddict objectForKey:@"patientname2"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"he1"],[recorddict objectForKey:@"mr2"],[recorddict objectForKey:@"patientname2"],[recorddict objectForKey:@"hope"],secondEntity,value2];
    
    NSString *post=[NSString stringWithFormat:@"%@%@",post1,post2];
    
    // NSLog(@"POST:%@",post);
    
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
    //  NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Narrativereport.php?service=narrativeedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post1 =[[NSString alloc] initWithFormat:@"%@=%@&reportdate=%@&patient=%@&dateofinjury=%@&dateoffirstvisit=%@&towhom=%@&patientname=%@&gender=%@&accident=%@&name=%@&dateofconsultation=%@&gender1=%@&gender2=%@&accidentdate=%@&gender3=%@&gender4=%@&gender5=%@&name1=%@&gendernew=%@&gender6=%@&gender7=%@&gender8=%@&gender9=%@&name2=%@&body=%@&gender10=%@&slammed=%@&slammed1=%@&symptom=%@&appeared=%@&priordate=%@&gender11=%@&name3=%@&gender12=%@&pastmedicalhistory=%@&gender13=%@&gender14=%@&gender15=%@&gender16=%@&gender17=%@&gender18=%@&name4=%@&clinicdate=%@&gender19=%@&vehicleaccident=%@&gender20=%@&gender21=%@&allieviated=%@&gender22=%@&gender23=%@&gender24=%@&gendernew2=%@&gendernew3=%@&gender25=%@&gender26=%@&gender27=%@&gender28=%@&gender29=%@&gender30=%@&age=%@&age1=%@&lb=%@&gender31=%@&gender32=%@&gender33=%@&gender34=%@&gendernew4=%@&gender35=%@&gender36=%@&gender37=%@&gender38=%@&gender39=%@&gendernew5=%@&tenderness=%@&gender40=%@&gendernew6=%@&gender41=%@&noted=%@&rangeofmotion=%@&painres1=%@&tonicity1=%@&painres2=%@&tonicity2=%@&painres3=%@&tonicity3=%@&painres4=%@&tonicity4=%@&painres5=%@&tonicity5=%@&painres6=%@&tonicity6=%@&painres7=%@&tonicity7=%@&painres8=%@&tonicity8=%@&painres9=%@&tonicity9=%@&painres10=%@&tonicity10=%@&painres11=%@&tonicity11=%@&painres12=%@&tonicity12=%@",firstEntity,value1,[recorddict objectForKey:@"reportdate"],[recorddict objectForKey:@"patientname11"],[recorddict objectForKey:@"dateofinjury"],[recorddict objectForKey:@"dateofvisit"],[recorddict objectForKey:@"to"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"accon"],[recorddict objectForKey:@"patientname11"],[recorddict objectForKey:@"examon"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"accon1"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"mr1"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"text2"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"text6"],[recorddict objectForKey:@"text3"],[recorddict objectForKey:@"text4"],[recorddict objectForKey:@"text5"],[recorddict objectForKey:@"textf1"],[recorddict objectForKey:@"mr1"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"textf2"],[recorddict objectForKey:@"s7l"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"s8l"],[recorddict objectForKey:@"s9l"],[recorddict objectForKey:@"s10l"],[recorddict objectForKey:@"mr1"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"text14"],[recorddict objectForKey:@"text13"],[recorddict objectForKey:@"text15"],[recorddict objectForKey:@"s1l"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"alleviate"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"s3l"],[recorddict objectForKey:@"s4l"],[recorddict objectForKey:@"s5l"],[recorddict objectForKey:@"s6l"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"wasnotlabel"],[recorddict objectForKey:@"his"],[recorddict objectForKey:@"s2l"],[recorddict objectForKey:@"age"],[recorddict objectForKey:@"height"],[recorddict objectForKey:@"lb"],[recorddict objectForKey:@"s11l"],[recorddict objectForKey:@"s12l"],[recorddict objectForKey:@"s13l"],[recorddict objectForKey:@"he"],[recorddict objectForKey:@"s14l"],[recorddict objectForKey:@"s15l"],[recorddict objectForKey:@"s16l"],[recorddict objectForKey:@"s17l"],[recorddict objectForKey:@"s18l"],[recorddict objectForKey:@"s19l"],[recorddict objectForKey:@"cervicalanother"],[recorddict objectForKey:@"tender"],[recorddict objectForKey:@"lrlabel"],[recorddict objectForKey:@"lrtrapezius"],[recorddict objectForKey:@"lrother"],[recorddict objectForKey:@"note"],[recorddict objectForKey:@"range"],[recorddict objectForKey:@"flexionpain"],[recorddict objectForKey:@"flexionton"],[recorddict objectForKey:@"extensionpain"],[recorddict objectForKey:@"extensionton"],[recorddict objectForKey:@"rightlateralpain"],[recorddict objectForKey:@"rightlateralton"],[recorddict objectForKey:@"leftlateralpain"],[recorddict objectForKey:@"leftlateralton"],[recorddict objectForKey:@"rightrotationpain"],[recorddict objectForKey:@"rightrotationton"],[recorddict objectForKey:@"leftrotationpain"],[recorddict objectForKey:@"leftrotationton"],[recorddict objectForKey:@"flexpain"],[recorddict objectForKey:@"flexton"],[recorddict objectForKey:@"exetpain"],[recorddict objectForKey:@"exetton"],[recorddict objectForKey:@"rightlatpain"],[recorddict objectForKey:@"rightlatton"],[recorddict objectForKey:@"leftlatpain"],[recorddict objectForKey:@"leftlatton"],[recorddict objectForKey:@"rightrotpain"],[recorddict objectForKey:@"rightrotton"],[recorddict objectForKey:@"leftrotpain"],[recorddict objectForKey:@"leftrotton"]];
    
    NSString *post2 =[[NSString alloc] initWithFormat:@"&dermatome=%@&gender42=%@&gender43=%@&gender44=%@&level1=%@&level=%@&gender45=%@&level2=%@&orthopedictest1=%@&jacksonsr=%@&jacksonsl=%@&orthopedictest2=%@&doublelegraiser=%@&doublelegraisel=%@&orthopedictest3=%@&yeomansr=%@&yeomansl=%@&orthopedictest4=%@&foraminalr=%@&foraminall=%@&orthopedictest5=%@&shoulderr=%@&shoulderl=%@&orthopedictest6=%@&orthopedicr=%@&orthopedicl=%@&gender46=%@&gender47=%@&gender48=%@&gender49=%@&gender50=%@&gender51=%@&fracture=%@&gender52=%@&gender53=%@&gender54=%@&presentlevel=%@&gender55=%@&osteophytes=%@&gender56=%@&gender57=%@&gender58=%@&gender59=%@&gender60=%@&subluxations=%@&icd1=%@&description1=%@&icd2=%@&description2=%@&icd3=%@&description3=%@&icd4=%@&description4=%@&gender61=%@&pname=%@&date9=%@&gender62=%@&gender63=%@&pname1=%@&datenew=%@&gender64=%@&gender65=%@&poor=%@&gender67=%@&gender68=%@&gender69=%@&gender70=%@&pname2=%@&gender71=%@&gender72=%@&gender73=%@&gender74=%@&gender75=%@&pname3=%@&sign=%@&%@=%@",[recorddict objectForKey:@"textl1"],[recorddict objectForKey:@"s1r"],[recorddict objectForKey:@"s2r"],[recorddict objectForKey:@"s3r"],@"null",[recorddict objectForKey:@"textl2"],[recorddict objectForKey:@"s4r"],@"null",[recorddict objectForKey:@"o1"],[recorddict objectForKey:@"rs1"],[recorddict objectForKey:@"ls1"],[recorddict objectForKey:@"o2"],[recorddict objectForKey:@"rs2"],[recorddict objectForKey:@"ls2"],[recorddict objectForKey:@"o3"],[recorddict objectForKey:@"rs3"],[recorddict objectForKey:@"ls3"],[recorddict objectForKey:@"o4"],[recorddict objectForKey:@"rs4"],[recorddict objectForKey:@"ls4"],[recorddict objectForKey:@"o5"],[recorddict objectForKey:@"rs5"],[recorddict objectForKey:@"ls5"],[recorddict objectForKey:@"o6"],[recorddict objectForKey:@"rs6"],[recorddict objectForKey:@"ls6"],[recorddict objectForKey:@"s5r"],[recorddict objectForKey:@"s6r"],[recorddict objectForKey:@"s7r"],[recorddict objectForKey:@"s8r"],[recorddict objectForKey:@"s9r"],[recorddict objectForKey:@"s10r"],@"null",[recorddict objectForKey:@"s11r"],[recorddict objectForKey:@"s12r"],[recorddict objectForKey:@"s13r"],@"null",[recorddict objectForKey:@"s14r"],[recorddict objectForKey:@"textl3"],[recorddict objectForKey:@"s15r"],[recorddict objectForKey:@"s16r"],[recorddict objectForKey:@"s17r"],[recorddict objectForKey:@"s18r"],[recorddict objectForKey:@"s19r"],[recorddict objectForKey:@"textl4"],[recorddict objectForKey:@"i1"],[recorddict objectForKey:@"de1"],[recorddict objectForKey:@"i2"],[recorddict objectForKey:@"de2"],[recorddict objectForKey:@"i3"],[recorddict objectForKey:@"de3"],[recorddict objectForKey:@"i4"],[recorddict objectForKey:@"de4"],[recorddict objectForKey:@"mr2"],[recorddict objectForKey:@"patientname2"],[recorddict objectForKey:@"date1"],[recorddict objectForKey:@"he1"],[recorddict objectForKey:@"mr2"],[recorddict objectForKey:@"patientname2"],[recorddict objectForKey:@"date2"],[recorddict objectForKey:@"goodsegval"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"he1"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"mr2"],[recorddict objectForKey:@"patientname2"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"his1"],[recorddict objectForKey:@"he1"],[recorddict objectForKey:@"mr2"],[recorddict objectForKey:@"patientname2"],[recorddict objectForKey:@"hope"],secondEntity,value2];
    
    NSString *post=[NSString stringWithFormat:@"%@%@",post1,post2];
    
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
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Narrativereport.php?service=narrativedelete";
    
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


- (IBAction)goodsegact:(id)sender {
    if (goodseg.selectedSegmentIndex==0) {
        good=@"Good at this time";
    }
    if (goodseg.selectedSegmentIndex==1) {
        good=@"Poor due to";
    }
}
- (IBAction)mrsegact:(id)sender {
    if (mrseg.selectedSegmentIndex==0) {
        mr=@"Mr";
    }
    if (mrseg.selectedSegmentIndex==1) {
        mr=@"Mrs";
    }
    if (mrseg.selectedSegmentIndex==2) {
        mr=@"Ms";
    }
    if (([mr isEqualToString:@"Ms"])||([mr isEqualToString:@"Mrs"]))
    {
        he1.text=@"She";
        he2.text=@"She";
        he3.text=@"She";
        his1.text=@"her";
        his2.text=@"her";
        his3.text=@"her";
        his4.text=@"her";
        his5.text=@"her";
        his6.text=@"her";
        
        
    }
    else  if ([mr isEqualToString:@"Mr"])
    {
        he1.text=@"He";
        he2.text=@"He";
        he3.text=@"He";
        his1.text=@"his";
        his2.text=@"his";
        his3.text=@"his";
        his4.text=@"his";
        his5.text=@"his";
        his6.text=@"his";
    }
    mr1.text=[NSString stringWithFormat:@"%@%@",mr,@"."];
    mr2.text=[NSString stringWithFormat:@"%@%@",mr,@"."];
    mr3.text=[NSString stringWithFormat:@"%@%@",mr,@"."];;
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (textField.tag==2) {
        
        NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
        
        self.name1.text = newString;
        self.name2.text=newString;
        self.name3.text=newString;
        return YES;
        
        
    }
    else
        return YES;
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)dataset{
    NSLog(@"in dataset narrative third");
    name.text=[mutearray objectForKey:@"patiname"];
    self.name1.text = name.text;
    self.name2.text=name.text;
    self.name3.text=name.text;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    name.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    name1.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    name2.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    name3.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    good=@"Good at this time";
    mr=@"Mr";
    name.delegate=self;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    mr1.text=[NSString stringWithFormat:@"%@%@",mr,@"."];
    mr2.text=[NSString stringWithFormat:@"%@%@",mr,@"."];
    mr3.text=[NSString stringWithFormat:@"%@%@",mr,@"."];
    [self displaydata];
    NSLog(@"mute array count in submit page::%d",[mutearray count]);
    if([mutearray count]>0){
        [self dataset];
    }
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)displaydata

{
    if([resultset count]>0)
    {
        submit.hidden=YES;
        update.hidden=NO;
        deleteform.hidden=NO;
        reset.hidden=YES;
        cancel.hidden=YES;
        reset2.hidden=NO;
        cancel2.hidden=NO;
        
        i1.text=[resultset objectForKey:@"icd1"];
        i2.text=[resultset objectForKey:@"icd2"];
        i3.text=[resultset objectForKey:@"icd3"];
        i4.text=[resultset objectForKey:@"icd4"];
        de1.text=[resultset objectForKey:@"description1"];
        de2.text=[resultset objectForKey:@"description2"];
        de3.text=[resultset objectForKey:@"description3"];
        de4.text=[resultset objectForKey:@"description4"];
        name.text=[resultset objectForKey:@"pname"];
        date1.text=[resultset objectForKey:@"date9"];
        date2.text=[resultset objectForKey:@"datenew"];
        hope.text=[resultset objectForKey:@"sign"];
        self.name1.text = name.text;
        self.name2.text=name.text;
        self.name3.text=name.text;
        
        if ([[resultset objectForKey:@"gender61"]isEqualToString:@"Mr"])
        {
            [mrseg setSelectedSegmentIndex:0];
            mr=@"Mr";
            he1.text=@"He";
            he2.text=@"He";
            he3.text=@"He";
            his1.text=@"his";
            his2.text=@"his";
            his3.text=@"his";
            his4.text=@"his";
            his5.text=@"his";
            his6.text=@"his";
            
        }
        if ([[resultset objectForKey:@"gender61"]isEqualToString:@"Mrs"] )
        {
            [mrseg setSelectedSegmentIndex:1];
            mr=@"Mrs";
            he1.text=@"She";
            he2.text=@"She";
            he3.text=@"She";
            his1.text=@"her";
            his2.text=@"her";
            his3.text=@"her";
            his4.text=@"her";
            his5.text=@"her";
            his6.text=@"her";
        }
        if ( [[resultset objectForKey:@"gender61"]isEqualToString:@"Ms"])
        {
            [mrseg setSelectedSegmentIndex:2];
            mr=@"Ms";
            he1.text=@"She";
            he2.text=@"She";
            he3.text=@"She";
            his1.text=@"her";
            his2.text=@"her";
            his3.text=@"her";
            his4.text=@"her";
            his5.text=@"her";
            his6.text=@"her";
        }
        mr1.text=[NSString stringWithFormat:@"%@%@",mr,@"."];;
        mr2.text=[NSString stringWithFormat:@"%@%@",mr,@"."];;
        mr3.text=[NSString stringWithFormat:@"%@%@",mr,@"."];;
        if ([[resultset objectForKey:@"gender64"]isEqualToString:@"Good at this time"])
        {
            [goodseg setSelectedSegmentIndex:0];
            good=@"Good at this time";
        }
        if ([[resultset objectForKey:@"gender64"]isEqualToString:@"Poor due to"] )
        {
            [goodseg setSelectedSegmentIndex:1];
            good=@"Poor due to";
        }
        
    }
    else
    {
        submit.hidden=NO;
        update.hidden=YES;
        deleteform.hidden=YES;
        reset.hidden=NO;
        cancel.hidden=NO;
        reset2.hidden=YES;
        cancel2.hidden=YES;
    }
    
}
-(void)dismissKeyboard
{
    [i1 resignFirstResponder];
    [i2 resignFirstResponder];
    [i3 resignFirstResponder];
    [i4 resignFirstResponder];
    [de1 resignFirstResponder];
    [de2 resignFirstResponder];
    [de3 resignFirstResponder];
    [de4 resignFirstResponder];
    [name resignFirstResponder];
    [date1 resignFirstResponder];
    [date2 resignFirstResponder];
    [hope resignFirstResponder];
    
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    
    
    [reset release];
    [reset2 release];
    [cancel release];
    [cancel2 release];
    [super dealloc];
}
@end
