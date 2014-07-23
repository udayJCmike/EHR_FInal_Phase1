//
//  WelcomeViewController.m
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "WelcomeViewController.h"
#import "SWRevealViewController.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "databaseurl.h"
#import "hardshipViewController.h"
#import "SBJSON.h"

@interface WelcomeViewController ()
{
    int age1;
}
@end

@implementation WelcomeViewController
@synthesize hardshipdatas;
@synthesize consenttotreat;
@synthesize consenttotreatminor;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)back
{
    
}
- (IBAction)logout:(id)sender
{
     self.tabBarController.tabBar.hidden=NO;
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    self.tabBarController.tabBar.hidden=YES;
    
    
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    temp=@"";
    
    UIButton *home = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *homeImage = [UIImage imageNamed:@" "]  ;
    [home setBackgroundImage:homeImage forState:UIControlStateNormal];
    [home addTarget:self action:@selector(back)
   forControlEvents:UIControlEventTouchUpInside];
    home.frame = CGRectMake(0, 0, 50, 30);
    UIBarButtonItem *cancelButton = [[[UIBarButtonItem alloc]
                                      initWithCustomView:home] autorelease];
    self.navigationItem.leftBarButtonItem = cancelButton;
    
    [self selectage];
    @try {
        if (![temp isEqualToString:@""]) {
            
            NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
            
            //set the dateFormat
            [dateFormatter setDateFormat:@"MM/dd/yyyy"];
            
            //allocating the date
            NSDate *dateFromString = [[NSDate alloc] init];
            
            //Start the Date From
            dateFromString = [dateFormatter dateFromString:temp];
            NSInteger age=[self calculateage:dateFromString];
            NSLog(@"age int %d",(int)age);
            age1=(int)age;
        }
    }
    @catch (NSException *exception) {
      //  NSLog(@"exception %@",exception);
    }
    @finally
    {
        if ([temp isEqualToString:@""]) {
            consenttotreat.hidden=NO;
            consenttotreatminor.hidden=NO;
        }
        else if ((![temp isEqualToString:@""])&&((age1>=0)&&(age1<18))) {
            consenttotreat.hidden=YES;
            consenttotreatminor.hidden=NO;
        }
        else if ((![temp isEqualToString:@""])&&(age1>=18)) {
            consenttotreat.hidden=NO;
            consenttotreatminor.hidden=YES;
        }
        
        
    }
    
    
    
    
	// Do any additional setup after loading the view.
}
-(NSInteger)calculateage:(NSDate *)dateOfBirth {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    unsigned unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
    
    NSDateComponents *dateComponentsNow = [calendar components:unitFlags fromDate:[NSDate date]];
    
    NSDateComponents *dateComponentsBirth = [calendar components:unitFlags fromDate:dateOfBirth];
    
    if (([dateComponentsNow month] < [dateComponentsBirth month]) ||
        (([dateComponentsNow month] == [dateComponentsBirth month]) && ([dateComponentsNow day] < [dateComponentsBirth day])))
    {
        return [dateComponentsNow year] - [dateComponentsBirth year] - 1;
        
    } else {
        
        return [dateComponentsNow year] - [dateComponentsBirth year];
    }
}


- (IBAction)hardshipfunction:(id)sender
{
    
    
    [self performSegueWithIdentifier:@"welcometohardship" sender:self];
    
    
}
- (IBAction)patient:(id)sender {
       [self performSegueWithIdentifier:@"welcometopatientinfo" sender:self];
}
-(void)selectage
{
    
    HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
    HUD.mode=MBProgressHUDModeIndeterminate;
    HUD.delegate = self;
    HUD.labelText = @"Loading";
    [HUD show:YES];
    [[NSUserDefaults standardUserDefaults] setObject:@"" forKey:@"patientname"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    // NSLog(@"response %@",resultResponse);
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"age List"];
    
    
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            //        NSLog(@"arraylist count %d",[arrayList1 count]);
            temp=[arrayList1 objectForKey:@"DateOfBirth"];
            [[NSUserDefaults standardUserDefaults] setObject:[arrayList1 objectForKey:@"Name"] forKey:@"patientname"];
            [[NSUserDefaults standardUserDefaults]synchronize];
            
            [HUD hide:YES];
            
            
            
            
            
            
        }
        
    }
    [HUD hide:YES];
   // NSLog(@"age %@",temp);
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Login.php?service=patientageselect";
    
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
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
