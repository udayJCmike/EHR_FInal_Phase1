//
//  LoginViewController.m
//  EHR
//
//  Created by DeemSysInc on 04/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.

#import "ViewAppAppDelegate.h"
#import "LoginViewController.h"
#import "databaseurl.h"
#import "TWMessageBarManager.h"
#import "StringConstants.h"
@interface LoginViewController ()
{
    ViewAppAppDelegate *appDelegate;
}
@end

@implementation LoginViewController
@synthesize username;
@synthesize password;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
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
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    appDelegate=(ViewAppAppDelegate*)[[UIApplication sharedApplication]delegate];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
}
-(void)dismissKeyboard
{
    [username resignFirstResponder];
    [password resignFirstResponder];
    
    
}
- (IBAction)signin:(id)sender {
    
    [self dismissKeyboard];
    a=1;
    if (([username.text length]==0)&&([password.text length]==0))
    {
        a=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter login credentials."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
    }
    else
    {
        NSString* temp1 = [username.text stringByReplacingOccurrencesOfString:@" " withString:@""];
        if (([username.text length]>0)&&([self onlyalphabetsexpress:temp1]==1))
        {
            if ([password.text length]>0)
            {
                a=1;
                [[NSUserDefaults standardUserDefaults]setObject:username.text forKey:@"username"];
                [[NSUserDefaults standardUserDefaults]synchronize];
                // [self navigate_storyboard];
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
    
    if (a==1)
    {
        appDelegate.search_from=@"";
        appDelegate.staff=@"";
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
-(void)navigate_storyboard
{
   
    UIStoryboard *welcome=[UIStoryboard storyboardWithName:@"Patient_interface" bundle:nil];
    UIViewController *initialvc=[welcome instantiateInitialViewController];
   //  UINavigationController *navigationController=[[UINavigationController alloc]initWithRootViewController:initialvc];
    [self.navigationController pushViewController:initialvc animated:YES];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"Login Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarInfoTitle
                                                               description:[NSString stringWithFormat:@"Welcome %@!",username.text]
                                                                      type:TWMessageBarMessageTypeInfo
                                                            statusBarStyle:YES
                                                                  callback:nil];
                [self navigate_storyboard];
                
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                
                
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Invalid username or password."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                username.text=@"";
                password.text=@"";
                
            }
            
        }
    }
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Login.php?service=login";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&password=%@&role=0&%@=%@",firstEntity,value1,password.text,secondEntity,value2];
    
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


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    [super dealloc];
}
@end
