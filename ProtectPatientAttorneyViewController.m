//
//  ProtectPatientAttorneyViewController.m
//  EHR
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "ProtectPatientAttorneyViewController.h"
#import "TWMessageBarManager.h"
#import "StringConstants.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
@interface ProtectPatientAttorneyViewController ()
{
    databaseurl *du;
    
}

@end

@implementation ProtectPatientAttorneyViewController
@synthesize recorddict;
@synthesize save;
@synthesize cancel;
@synthesize cancel1;
@synthesize reset;
@synthesize reset1;
@synthesize update;
@synthesize deletefuc;
int suc;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12;

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
-(void)dismissKeyboard {
    [clinicname resignFirstResponder];
    [date resignFirstResponder];
    [patattory resignFirstResponder];
    [dearname resignFirstResponder];
    [dofacc resignFirstResponder];
    [sincname resignFirstResponder];
    [addrs resignFirstResponder];
    [myclient resignFirstResponder];
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
    myclient.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    update.hidden=YES;
    deletefuc.hidden=YES;
    reset1.hidden=YES;
    cancel1.hidden=YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self Getdata];
    
	// Do any additional setup after loading the view.
}


-(void)Getdata
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSLog(@"response %@",json);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSLog(@"luckynumbers %@",luckyNumbers);
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSLog(@"items app %@",itemsApp);
    NSArray *items1App=[itemsApp objectForKey:@"letterofprotectionuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            NSLog(@"arraylist count %d",[arrayList1 count]);
            
            
            temp10=[arrayList1 objectForKey:@"date"];
            temp11=[arrayList1 objectForKey:@"dc"];
            temp12=[arrayList1 objectForKey:@"clinicname"];
            
            
            temp13=[arrayList1 objectForKey:@"address1"];
            
            temp15=[arrayList1 objectForKey:@"myclient"];
            temp16=[arrayList1 objectForKey:@"dateofaccident"];
            temp17=[arrayList1 objectForKey:@"dearsir"];
            
            temp18=[arrayList1 objectForKey:@"esq"];
            
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
        //  NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
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
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"LetterOfProtection.php?service=letterofprotectionselect";
    
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

-(void)setdatas
{
    date.text=temp10;
    patattory.text=temp11;
    clinicname.text=temp12;
    addrs.text=temp13;
    myclient.text=temp15;
    
    dofacc.text=temp16;
    dearname.text=temp17;
    sincname.text=temp18;
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(BOOL)validateString:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateString1:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateString3:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z0-9@_]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateString2:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateAdds:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z,-]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submit:(id)sender {
    
    du=[[databaseurl alloc]init];
    texty1=[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[patattory.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[clinicname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[[addrs.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[texty4 stringByReplacingOccurrencesOfString:@"\r" withString:@" "];
    texty4=[texty4 stringByReplacingOccurrencesOfString:@"\t" withString:@" "];
    texty5=[myclient.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[dofacc.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[dearname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[sincname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if([patattory.text length]!=0&&[myclient.text length]!=0&&[date.text length]!=0&&[dofacc.text length]!=0&&[dearname.text length]!=0&&[sincname.text length]!=0&&[clinicname.text length]!=0){
        if([self validateDate:texty1]==1)
        {
            if([du patname:texty2]==1)
            {
                if([du otherfields:texty3]==1)
                {
                    if((([addrs.text length]>0)&&([du address:texty4]==1))||([texty4 length]==0))
                    {
                        if([du patname:texty5]==1)
                        {
                            if([self validateDate:texty6]==1)
                            {
                                if([du patname:texty7]==1)
                                {
                                    if([du patname:texty8]==1)
                                    {
                                        suc=1;
                                        recorddict=[[NSMutableDictionary alloc]init];
                                        
                                        [recorddict setValue:patattory.text forKey:@"D.C"];
                                        
                                        [recorddict setValue:date.text forKey:@"Date"];
                                        
                                        [recorddict setValue:addrs.text forKey:@"address"];
                                        
                                        [recorddict setValue:myclient.text forKey:@"client name"];
                                        
                                        [recorddict setValue:dofacc.text forKey:@"date field"];
                                        
                                        [recorddict setValue:dearname.text forKey:@"doctor name"];
                                        [recorddict setValue:sincname.text forKey:@"doctor signature"];
                                        [recorddict setValue:clinicname.text forKey:@"clicnic name"];
                                        // NSLog(@"Record dict Value in Protect Attorney::%@",recorddict);
                                        
                                        
                                    }
                                    else{
                                        suc=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid signature."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                    }
                                    
                                }
                                else{
                                    suc=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid doctor name."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                }
                                
                            }
                            else{
                                suc=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid date of accident."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                            }
                            
                        }
                        else{
                            suc=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid client name."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                        }
                        
                    }
                    else{
                        suc=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid address."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                    }
                    
                }
                else{
                    suc=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid clinic field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                }
                
            }
            else{
                suc=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid D.C.field."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
            }
            
        }
        else{
            suc=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid date."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
        }
    }
    else{
        suc=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Required field should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
    }
    if (suc==1) {
        
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"letterofprotection Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form updation successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                [self performSegueWithIdentifier:@"protecttowelcome" sender:self];
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form updation failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                [self performSegueWithIdentifier:@"protecttowelcome" sender:self];
                
            }
        }
    }
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"LetterOfProtection.php?service=letterofprotectionedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&date=%@&dc=%@&clinicname=%@&address1=%@&myclient=%@&dateofaccident=%@&dearsir=%@&esq=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"Date"],[recorddict objectForKey:@"D.C"],[recorddict objectForKey:@"clicnic name"],[recorddict objectForKey:@"address"],[recorddict objectForKey:@"client name"],[recorddict objectForKey:@"date field"],[recorddict objectForKey:@"doctor name"],[recorddict objectForKey:@"doctor signature"],secondEntity,value2];
    
    
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"letterofprotection Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                [self performSegueWithIdentifier:@"protecttowelcome" sender:self];
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                [self performSegueWithIdentifier:@"protecttowelcome" sender:self];
                
            }
        }
    }
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"LetterOfProtection.php?service=letterofprotectioninsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    //  NSLog(@"values in record dictionaries::%@",recorddict);
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&date=%@&dc=%@&clinicname=%@&address1=%@&myclient=%@&dateofaccident=%@&dearsir=%@&esq=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"Date"],[recorddict objectForKey:@"D.C"],[recorddict objectForKey:@"clicnic name"],[recorddict objectForKey:@"address"],[recorddict objectForKey:@"client name"],[recorddict objectForKey:@"date field"],[recorddict objectForKey:@"doctor name"],[recorddict objectForKey:@"doctor signature"],secondEntity,value2];
    
    
    
    
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


- (IBAction)deletefuc:(id)sender {
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"letterofprotection Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form deletion successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];
                    [self performSegueWithIdentifier:@"protecttowelcome" sender:self];
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form deletion failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    [self performSegueWithIdentifier:@"protecttowelcome" sender:self];
                }
            }
        }
        
    }
}
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"LetterOfProtection.php?service=letterofprotectiondelete";
    
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

- (void)dealloc {
    [super dealloc];
}
- (IBAction)reset:(id)sender {
    date.text=@"";
    patattory.text=@"";
    clinicname.text=@"";
    addrs.text=@"";
    myclient.text=@"";
    
    dofacc.text=@"";
    dearname.text=@"";
    sincname.text=@"";
    
}

- (IBAction)cancel:(id)sender {
    
    [self performSegueWithIdentifier:@"protecttowelcome" sender:self];
}


@end
