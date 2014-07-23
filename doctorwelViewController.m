//
//  doctorwelViewController.m
//  EHR
//
//  Created by Admin on 02/05/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "doctorwelViewController.h"


#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "SBJSON.h"
#import "SBJSON.h"
#import "Recipe.h"
#import "SampleViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
@interface doctorwelViewController ()

@end

@implementation doctorwelViewController
@synthesize pat;
@synthesize forms;
@synthesize signout;
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
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =  @"[A-Za-z0-9@_]+";
    
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
     self.tabBarController.tabBar.hidden=YES;
    resultset=[[NSMutableArray alloc]init];
    UIButton *home = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *homeImage = [UIImage imageNamed:@" "]  ;
    [home setBackgroundImage:homeImage forState:UIControlStateNormal];
    [home addTarget:self action:@selector(back)
   forControlEvents:UIControlEventTouchUpInside];
    home.frame = CGRectMake(0, 0, 50, 30);
    UIBarButtonItem *cancelButton = [[[UIBarButtonItem alloc]
                                      initWithCustomView:home] autorelease];
    self.navigationItem.leftBarButtonItem = cancelButton;
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
    NSArray *items1App=[itemsApp objectForKey:@"patient_detailsuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //     NSLog(@"items1app %d",[items1App count]);
    //    NSLog(@"dats %@",items1App);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            //        NSLog(@"arraylist count %d",[arrayList1 count]);
            temp=[arrayList1 objectForKey:@"username"];
            temp1 =[arrayList1 objectForKey:@"Name"];
            temp2 =[arrayList1 objectForKey:@"typeofacc"];
            temp3=[arrayList1 objectForKey:@"attorney"];
            temp4=[arrayList1 objectForKey:@"insurance"];
            Recipe *res=[[Recipe alloc]init];
            res.name=temp1;
            res.type=temp2;
            res.attorney=temp3;
            res.health=temp4;
            res.username=temp;
            
            [resultset addObject:res];
            
        }
        
    }
    else
    {
        //no dats for this username
    }
    
    
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"PatientInfo.php?service=patientselect";
    
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
- (IBAction)signout:(id)sender {
     self.tabBarController.tabBar.hidden=NO;
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (IBAction)accesspatient:(id)sender
{
    [self performSegueWithIdentifier:@"search1" sender:self];
}
- (IBAction)accessforms:(id)sender
{
    UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"Checking for a Patient" message:@"Please enter a Patient Username" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alert addButtonWithTitle:@"Submit"];
    [alert show];
}
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
  
  //  NSLog(@"Button Index =%d",buttonIndex);
    if (buttonIndex == 1)
    {
        HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
        HUD.mode=MBProgressHUDModeIndeterminate;
        HUD.delegate = self;
        HUD.labelText = @"Submitting";
        [HUD show:YES];
        UITextField *username = [alertView textFieldAtIndex:0];
        NSString *result=[self Getdata1:username.text];
        if([result isEqualToString:@"Success"])
        {
            [HUD hide:YES];
            
            
            if(([username.text length]!=0)&&([self validateNames:username.text]==1))
            {
                [[NSUserDefaults standardUserDefaults]setObject:username.text forKey:@"username"];
                [[NSUserDefaults standardUserDefaults]synchronize];
                [self performSegueWithIdentifier:@"accessforms" sender:self];
            }
            else
            {
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid patient name."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
            }
            
        }//end of database checking
        else if([result isEqualToString:@"Successnopatient"])
        {
            [HUD hide:YES];
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Patient information not found."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
        }
        else if([result isEqualToString:@"Failure"])
        {
            [HUD hide:YES];
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"The user was not registered.Enter valid username."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
        }
        
    }//end of button index checking
}

-(void)back
{
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSString*)Getdata1:(NSString*)username
{
    NSString *res;
    NSString *response=[self HttpPostEntityFirst1:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    //NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        res= @"Failure";
        
    }
    else
    {
        [[NSUserDefaults standardUserDefaults] setObject:@"" forKey:@"patientname"];
        [[NSUserDefaults standardUserDefaults]synchronize];
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"Login Data"])
        {
            if ([[menu objectForKey:@"username"] isEqualToString:@"1"])
            {
                if (![[menu objectForKey:@"patientname"] isEqualToString:@""])
                {
                    
                    [[NSUserDefaults standardUserDefaults] setObject:[menu objectForKey:@"patientname"] forKey:@"patientname"];
                    [[NSUserDefaults standardUserDefaults]synchronize];
                    res= @"Success";
                }
                else
                {
                    res= @"Failure";
                }
                
                
                
                
                
            }
            else if ([[menu objectForKey:@"username"] isEqualToString:@"0"])
                
            {
                res= @"Failure";
                
            }
            
        }
        else
            res= @"Failure";
        
    }
    return res;
    
}

-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Login.php?service=patientnameverify";
    
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
    //NSLog(@"data %@",data);
    
    return data;
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"search1"])
    {
        
        SampleViewController *destViewController = [segue destinationViewController];
        destViewController.resultset=resultset;
        destViewController.from=@"doctor";
        //  NSLog(@"recorddict  %@",resultset);
    }
    
    
}
- (void)dealloc {
    
    
    [super dealloc];
}
@end
