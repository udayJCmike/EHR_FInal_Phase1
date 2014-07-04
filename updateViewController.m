//
//  updateViewController.m
//  update
//
//  Created by Admin on 28/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "updateViewController.h"

#import "MBProgressHUD.h"
#import "TWMessageBarManager.h"
#import "StringConstants.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
@interface updateViewController ()
{
    databaseurl *du;
}

@end

@implementation updateViewController
@synthesize recorddict;
@synthesize submit;
@synthesize update;
@synthesize deleteform;
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

-(BOOL)validateAddress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z ,-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (BOOL)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
    return NO;
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z]+";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)cancel:(id)sender {
    [self performSegueWithIdentifier:@"updatetowelcome" sender:self];
}
- (IBAction)reset:(id)sender {
    attorney1.text=@"";
    attorney2.text=@"";
    attorney3.text=@"";
    regards.text=@"";
    injury.text=@"";
    date.text=@"";
}

- (IBAction)save:(id)sender
{
    du=[[databaseurl alloc]init];
    
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:recorddict];
    a=1;
    temp1 =[attorney1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[attorney2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6 =[attorney3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    temp2=[regards.text stringByReplacingOccurrencesOfString:@" "withString:@""];
    temp3=[injury.text stringByReplacingOccurrencesOfString:@" "withString:@""];
    temp4=[date.text stringByReplacingOccurrencesOfString:@" "withString:@""];
    
    if(([temp1 length]!=0)&&
       ([temp2 length]!=0)&&
       ([temp3 length]!=0)&& ([temp5 length]!=0)&& ([temp6 length]!=0)&&
       ([temp4 length]!=0))
    {
        if([du patname:temp1]==1)
        {
            if([du patname:temp5]==1)
            {
                if([du patname:temp6]==1)
                {
                    
                    if([du patname:temp2]==1)
                    {
                        if([self validateDate:temp3]==1)
                        {
                            if([self validateDate:temp4]==1)
                            {
                                
                                
                                [recorddict setValue:attorney1.text forKey:@"To Attorney1"];
                                [recorddict setValue:attorney2.text forKey:@"To Attorney2"];
                                [recorddict setValue:attorney3.text forKey:@"To Attorney3"];
                                [recorddict setValue:regards.text forKey:@"Regards"];
                                [recorddict setValue:injury.text forKey:@"Date of injury"];
                                [recorddict setValue:date.text forKey:@"Date"];
                                NSLog(@"Success!!!%@",recorddict);
                                
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
                                                                           description:@"Please enter valid date of injury."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                        }
                    }
                    else
                    {
                        a=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid regards to."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                    }
                }
                else
                {
                    a=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid to attorney."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                }
            }
            else
            {
                a=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid to attorney."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
            }
        }
        else
        {
            a=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle                                                           description:@"Enter valid to attorney." type:TWMessageBarMessageTypeError  statusBarStyle:UIStatusBarStyleLightContent  callback:nil];
        }
    }
    else
    {
        a=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle                                                                                                                                                                                                                             description:@"Required field should not be empty."                                                                                                                                                                                                                                    type:TWMessageBarMessageTypeError                                                                                                                                                                                                                          statusBarStyle:UIStatusBarStyleLightContent                                                                                                                                                                                                                                callback:nil];
    }
    if (a==1) {
        NSLog(@"recorddict in updateletter %@",recorddict);
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

- (void)viewDidLoad
{
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    
    [super viewDidLoad];
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self Getdata];
}
-(void)Getdata
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    // NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"updateletteruser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            //        NSLog(@"arraylist count %d",[arrayList1 count]);
            temp=[arrayList1 objectForKey:@"toattorney1"];
            temp1 =[arrayList1 objectForKey:@"toattorney2"];
            temp2 =[arrayList1 objectForKey:@"toattorney3"];
            temp3 =[arrayList1 objectForKey:@"reg"];
            temp4 =[arrayList1 objectForKey:@"injury"];
            temp5=[arrayList1 objectForKey:@"todaydate"];
            
            
            attorney1.text=temp;
            attorney2.text=temp1;
            attorney3.text=temp2;
            regards.text=temp3;
            injury.text=temp4;
            date.text=temp5;
            
            
            
            
        }
        update.hidden=NO;
        deleteform.hidden=NO;
        reset2.hidden=NO;
        cancel2.hidden=NO;
        submit.hidden=YES;
        cancel1.hidden=YES;
        reset1.hidden=YES;
        
        //  NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
    }
    else
    {
        update.hidden=YES;
        deleteform.hidden=YES;
        reset2.hidden=YES;
        cancel2.hidden=YES;
        submit.hidden=NO;
        cancel1.hidden=NO;
        reset1.hidden=NO;
        
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"updateletter Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form updation successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                [self performSegueWithIdentifier:@"updatetowelcome" sender:self];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form updation failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                [self performSegueWithIdentifier:@"updatetowelcome" sender:self];
                
                
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"updateletter Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
                [self performSegueWithIdentifier:@"updatetowelcome" sender:self];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                [self performSegueWithIdentifier:@"updatetowelcome" sender:self];
                
                
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"updateletter Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form deletion successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];
                    [self performSegueWithIdentifier:@"updatetowelcome" sender:self];
                    
                    
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form deletion failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    [self performSegueWithIdentifier:@"updatetowelcome" sender:self];
                    
                    
                }
            }
        }
        
    }
    
}

-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Updateletter.php?service=updateletterinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&toattorney1=%@&toattorney2=%@&toattorney3=%@&reg=%@&injury=%@&todaydate=%@&%@=%@",firstEntity,value1,attorney1.text,attorney2.text,attorney3.text,regards.text,injury.text,date.text,secondEntity,value2];
    
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
    NSString *url1=@"Updateletter.php?service=updateletteredit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&toattorney1=%@&toattorney2=%@&toattorney3=%@&reg=%@&injury=%@&todaydate=%@&%@=%@",firstEntity,value1,attorney1.text,attorney2.text,attorney3.text,regards.text,injury.text,date.text,secondEntity,value2];
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
    NSString *url1=@"Updateletter.php?service=updateletterdelete";
    
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

-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Updateletter.php?service=updateletterselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    //   NSLog(@"POST:%@",post);
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


-(void)dismissKeyboard {
    [attorney1 resignFirstResponder];
    [attorney2 resignFirstResponder];
    [attorney3 resignFirstResponder];
    [regards resignFirstResponder];
    [date resignFirstResponder];
    [injury resignFirstResponder];
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
