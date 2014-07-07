//
//  RegisterViewController.m
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "RegisterViewController.h"
#import "JSON.h"
#import "databaseurl.h"
#import "Reachability.h"
#import "StringConstants.h"
@interface RegisterViewController ()
{
    
    databaseurl *du;
}
@end

@implementation RegisterViewController
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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(BOOL)onlyalphabetsexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9_@]+";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)emailexpress:(NSString*)candidate{
    NSString *emailFormat1 = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    
    NSPredicate *emailTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailFormat1];
    return [emailTest1 evaluateWithObject:candidate];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    role=@"1";
    du=[[databaseurl alloc]init];
    [self reset];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    
	// Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated
{
    
    [self reset];
    [super viewWillAppear:animated];
    
    
    
}
-(void)dismissKeyboard
{
    [username resignFirstResponder];
    [email resignFirstResponder];
    [pass resignFirstResponder];
    [cpass resignFirstResponder];
    
}

-(IBAction)registerkey:(id)sender
{
    [self dismissKeyboard];
    NSString *text1,*text2;
    text1=username.text;
    text2=email.text;
    
    if (([username.text length]>0)&&([email.text length]>0)&&([pass.text length]>0)&&([cpass.text length]>0))
    {
        a=1;
        if ([du username:text1]==1)
        {
            
            
            if([du password:pass.text]==1)
            {
                
                
                if ([pass.text isEqualToString:cpass.text])
                {
                    if([du email:text2]==1)
                    {
                        a=1;
                        [recorddict setObject:username.text forKey:@"name"];
                        [recorddict setObject:email.text forKey:@"email"];
                        [recorddict setObject:pass.text forKey:@"password"];
                        [recorddict setObject:cpass.text forKey:@"cpassword"];
                        [recorddict setObject:role forKey:@"role"];
                        
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid email id."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                    }
                }
                
                else
                {
                    a=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Password doesnot match."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                }
                
                
                
                
                
            }
            
            else
            {
                a=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid password."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
            }
        }
        else
        {
            a=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid username."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
        }
    }
    else
    {
        a=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Required fields should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
    }
    if (a==1)
    {
        
        HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
        HUD.mode=MBProgressHUDModeIndeterminate;
        HUD.delegate = self;
        HUD.labelText = @"Submitting";
        [HUD show:YES];
        //                  [self insertdata];
        if ([[self submitvalues]isEqualToString:@"success"]) {
            [self insertdata];
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
-(void)reset
{
    username.text=@"";
    email.text=@"";
    pass.text=@"";
    cpass.text=@"";
    rolesegment.selectedSegmentIndex=0;
}
-(void)insertdata
{
    
    
    NSString *response=[self HttpPostEntityFirst1:@"username" ForValue1:username.text  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"Signup"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Registration done successfully." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                
                [self reset];
                
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                if([[menu objectForKey:@"emaill"]isEqualToString:@"emailexist"])
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Email id already exist." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    [self reset];
                    
                    
                }
                else if([[menu objectForKey:@"emaill"]isEqualToString:@"usernameexist"])
                {
                    
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Username already exist." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    
                    [self reset];
                }
                else
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Registration Failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    
                    [self reset];
                }
                
            }
        }
    }
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Registration.php?service=signup";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&email=%@&pass=%@&cpass=%@&role=%@&%@=%@",firstEntity,value1,email.text,pass.text,cpass.text,role,secondEntity,value2];
    
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

-(IBAction)rolechange:(id)sender
{
    if (rolesegment.selectedSegmentIndex==0)
    {
        role=@"1";
        
    }
    else if (rolesegment.selectedSegmentIndex==1)
    {
        role=@"0";
        
    }
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
