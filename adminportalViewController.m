//
//  adminportalViewController.m
//  EHR
//
//  Created by DeemSysInc on 26/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "adminportalViewController.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
@interface adminportalViewController ()

@end

@implementation adminportalViewController
@synthesize logout;
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
- (IBAction)logout:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9@_.]+";
    
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)patient:(id)sender {
    [self performSegueWithIdentifier:@"search" sender:self];
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[/]+[0-9]{1,2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)accessforms:(id)sender
{
    tagnumber=[sender tag];
    NSLog(@"value of tag numbr value %d",tagnumber);
    
    UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"" message:@"Please enter a Patient User Name" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alert addButtonWithTitle:@"Submit"];
    alert.tag=9;
    [alert show];
}
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"Button Index =%d",buttonIndex);
   
    if (buttonIndex==1)
    {
        UITextField *username = [alertView textFieldAtIndex:0];
        NSString *result=[self Getdata1:username.text];
        if(([result isEqualToString:@"Success"])||([result isEqualToString:@"Successnopatient"]))
        {
        
        if ((alertView.tag==9)&&(tagnumber!=19))
        {
            
            NSString * temp11 =[username.text stringByReplacingOccurrencesOfString:@" " withString:@""];
            
            
            if(([temp11 length]!=0)&&([self validateNames:temp11 ]==1))
            {
                [[NSUserDefaults standardUserDefaults]setObject:username.text forKey:@"username"];
                [[NSUserDefaults standardUserDefaults]synchronize];
                if (tagnumber==1) {
                    [self performSegueWithIdentifier:@"staff" sender:self];
                }
                else if (tagnumber==2) {
                    [self performSegueWithIdentifier:@"insuranceverify" sender:self];
                }
                else if (tagnumber==3) {
                    [self performSegueWithIdentifier:@"formcover" sender:self];
                }
                else if (tagnumber==4) {
                    [self performSegueWithIdentifier:@"patientattorney" sender:self];
                }
                else if (tagnumber==5) {
                    [self performSegueWithIdentifier:@"updateletter" sender:self];
                }
                else if (tagnumber==6) {
                    [self performSegueWithIdentifier:@"feereduction" sender:self];
                }
                else if (tagnumber==7) {
                    [self performSegueWithIdentifier:@"xray" sender:self];
                }
                else if (tagnumber==8) {
                    [self performSegueWithIdentifier:@"formbill" sender:self];
                }
                else if (tagnumber==9) {
                    [self performSegueWithIdentifier:@"medpay" sender:self];
                }
                else if (tagnumber==10) {
                    [self performSegueWithIdentifier:@"letterofprotection" sender:self];
                }
                else if (tagnumber==11) {
                    if([result isEqualToString:@"Successnopatient"])
                    {
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Patient information not found."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                    }
                    else if([result isEqualToString:@"Success"])
                    {
                        [self performSegueWithIdentifier:@"narrativereport" sender:self];
                    }
                    
                }
                else if (tagnumber==12) {
                    [self performSegueWithIdentifier:@"faxcover" sender:self];
                }
                else if (tagnumber==13) {
                    [self performSegueWithIdentifier:@"lettertopatients" sender:self];
                }
                else if (tagnumber==14) {
                    [self performSegueWithIdentifier:@"noticeofassignment" sender:self];
                }
                else if (tagnumber==15) {
                    [self performSegueWithIdentifier:@"requestfordemand" sender:self];
                }
                else if (tagnumber==16) {
                    [self performSegueWithIdentifier:@"responsetoattorney" sender:self];
                }
                else if (tagnumber==17) {
                    [self performSegueWithIdentifier:@"workschool" sender:self];
                }
                else if (tagnumber==18) {
                    [self performSegueWithIdentifier:@"formcover" sender:self];
                }
                else if (tagnumber==19) {
                    [self performSegueWithIdentifier:@"dcfee" sender:self];
                }
                else if (tagnumber==20) {
                    [self performSegueWithIdentifier:@"piletter" sender:self];
                }
                
            }
            else
            {
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid patient name."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
            }
            
            
            
        }//end of normal alertview
        
        if ((alertView.tag==9)&&(tagnumber==19))
        {  //submit
            
            UITextField *username = [alertView textFieldAtIndex:0];
            NSString * temp11 =[username.text stringByReplacingOccurrencesOfString:@" " withString:@""];
            
            
            if(([temp11 length]!=0)&&([self validateNames:temp11 ]==1))
            {
                [[NSUserDefaults standardUserDefaults]setObject:username.text forKey:@"username"];
                [[NSUserDefaults standardUserDefaults]synchronize];
                UIAlertView * alert =[[UIAlertView alloc ] initWithTitle:@"" message:@"Please enter a Bill Date" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles: nil];
                alert.alertViewStyle = UIAlertViewStylePlainTextInput;
                alert.tag=10;
                [alert addButtonWithTitle:@"Submit"];
                [alert show];
            }
            else{
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid patient name."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
            }
            
            
        }//end of DC name alertview
        }//end of database checking for patient name
        else
        {
             if (alertView.tag!=10)
             {
                 [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                description:@"The user was not registered.Enter valid username."
                                                                       type:TWMessageBarMessageTypeError
                                                             statusBarStyle:UIStatusBarStyleLightContent
                                                                   callback:nil];
             }
        }
        if ((alertView.tag==10)&&(tagnumber==19))
        {
            
            
            
            UITextField *billdate=[alertView textFieldAtIndex:0];
            NSString * dat =[billdate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
            NSLog(@"value of date::%@",dat);
            
            if(([dat length]!=0)&&([self validateDate:dat ]==1))
            {
                
                [[NSUserDefaults standardUserDefaults]setObject:billdate.text forKey:@"billdate"];
                [[NSUserDefaults standardUserDefaults]synchronize];
                [self performSegueWithIdentifier:@"dcfee" sender:self];
                
                
            }
            else
            {
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid bill date."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
            }
            
            
        }//end of date alertview
        
       
        
    }//end of button index checking
    
}
-(void)back
{
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];

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
    
	// Do any additional setup after loading the view.
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
    //  NSLog(@"data %@",data);
    
    return data;
    
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
-(NSString*)Getdata1:(NSString*)username
{
    NSString *res;
    [[NSUserDefaults standardUserDefaults] setObject:@"" forKey:@"patientname"];
    [[NSUserDefaults standardUserDefaults]synchronize];
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
                    res= @"Successnopatient";
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    if ([segue.identifier isEqualToString:@"search"])
    {
        
        
        SampleViewController *destViewController = [segue destinationViewController];
        destViewController.resultset=resultset;
        destViewController.from=@"admin";
        // NSLog(@"recorddict in foot%@",resultset);
        // destViewController.delegate=self;
        
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
