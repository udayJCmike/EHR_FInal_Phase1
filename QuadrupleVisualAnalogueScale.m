//
//  QuadrupleVisualAnalogueScale.m
//  EHR
//
//  Created by DeemsysInc on 4/1/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "QuadrupleVisualAnalogueScale.h"
#import "TextFieldDatePicker.h"
#import "Patient1ViewController.h"
#import "JSON.h"
#import "Reachability.h"
#import "databaseurl.h"
#import "wristandhanddisabilityViewController.h"
#import "lowbackdisabilityViewController.h"
#import "oswestrydisabilityViewController.h"
#import "neckmidbackdisabilityViewController.h"
#import "shoulderpainscoreViewController.h"

@interface QuadrupleVisualAnalogueScale ()

{
    NSString *symptom;
    databaseurl *du;
     
}
@end

@implementation QuadrupleVisualAnalogueScale
@synthesize segval;
@synthesize edit;
@synthesize name;
@synthesize number;
@synthesize date;
@synthesize painname;
@synthesize scale1;
@synthesize scale2;
@synthesize scale3;
@synthesize scale4;
@synthesize slider1;
@synthesize slider2;
@synthesize slider3;
@synthesize slider4;
@synthesize percentage;
@synthesize recorddict;
@synthesize painseg;
@synthesize submit;
@synthesize deleteform;
@synthesize reset1;
@synthesize reset2;
@synthesize update;
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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (IBAction)segvalues:(id)sender
{
    if (painseg.selectedSegmentIndex==0) {
        segval=@"Wrist/Hand";
        painname.hidden=YES;
        [self performSegueWithIdentifier:@"wristhand" sender:self];
    }
    else if (painseg.selectedSegmentIndex==1) {
        segval=@"LowBack";
        painname.hidden=YES;
        [self performSegueWithIdentifier:@"lowback" sender:self];
    }
    else if (painseg.selectedSegmentIndex==2) {
        segval=@"Neck/Mid Back";
        painname.hidden=YES;
        [self performSegueWithIdentifier:@"neckmid" sender:self];
    }
    else if (painseg.selectedSegmentIndex==3) {
        segval=@"Oswestry";
        painname.hidden=YES;
        [self performSegueWithIdentifier:@"oswestry" sender:self];
    }
    else if (painseg.selectedSegmentIndex==4) {
        segval=@"Shoulder";
        painname.hidden=YES;
        [self performSegueWithIdentifier:@"shoulderpain" sender:self];
    }
    else if (painseg.selectedSegmentIndex==5) {
        segval=@"Other";
        painname.hidden=NO;
    }
}
-(void)back
{
    
}
- (IBAction)edit:(id)sender {
    if ([segval isEqualToString:@"Wrist/Hand"]) {
        
        [self performSegueWithIdentifier:@"wristhand" sender:self];
    }
    else if ([segval isEqualToString:@"LowBack"]) {
        
        [self performSegueWithIdentifier:@"lowback" sender:self];
    }
    else if ([segval isEqualToString:@"Neck/Mid Back"]) {
        
        [self performSegueWithIdentifier:@"neckmid" sender:self];
    }
    else if ([segval isEqualToString:@"Oswestry"]) {
        
        [self performSegueWithIdentifier:@"oswestry" sender:self];
    }
    else if ([segval isEqualToString:@"Shoulder"]) {
        
        [self performSegueWithIdentifier:@"shoulderpain" sender:self];
    }
    else if (painseg.selectedSegmentIndex==5) {
        
        painname.hidden=NO;
    }
    
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    edit.hidden=YES;
    name.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    painname.text=@"";
    segval=@"null";
    painname.hidden=YES;
    UIButton *home = [UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *homeImage = [UIImage imageNamed:@" "]  ;
    [home setBackgroundImage:homeImage forState:UIControlStateNormal];
    [home addTarget:self action:@selector(back)
   forControlEvents:UIControlEventTouchUpInside];
    home.frame = CGRectMake(0, 0, 50, 30);
    UIBarButtonItem *cancelButton = [[[UIBarButtonItem alloc]
                                      initWithCustomView:home] autorelease];
    self.navigationItem.leftBarButtonItem = cancelButton;
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc]
                                    initWithTarget:self
                                    action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap1];
     self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]])
        {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    symptom=[recorddict objectForKey:@"symptomtext"];
    if ([[recorddict objectForKey:@"symptomtext"]isEqualToString:[recorddict objectForKey:@"oldsymptom"]])
    {
        symptom=[recorddict objectForKey:@"symptomtext"];
    }
    else
    {
        symptom=[recorddict objectForKey:@"symptomtext"];
    }
    [self Getdata];
	// Do any additional setup after loading the view.
}
-(void)dismissKeyboard
{
    [number resignFirstResponder];
    [name resignFirstResponder];
    [date resignFirstResponder];
    [painname resignFirstResponder];
    [percentage resignFirstResponder];
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Quadruple.php?service=quadrupleselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&%@=%@",firstEntity,value1,symptom,secondEntity,value2];
    
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
    NSArray *items1App=[itemsApp objectForKey:@"quadrupleuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        submit.hidden=YES;
        cancel1.hidden=YES;
        reset1.hidden=YES;
        update.hidden=NO;
        deleteform.hidden=NO;
        reset2.hidden=NO;
        cancel2.hidden=NO;
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            
            //        NSLog(@"arraylist count %d",[arrayList1 count]);
            temp=[arrayList1 objectForKey:@"name"];
            temp1 =[arrayList1 objectForKey:@"number"];
            temp2 =[arrayList1 objectForKey:@"date"];
            temp3 =[arrayList1 objectForKey:@"painname"];
            temp4 =[arrayList1 objectForKey:@"otherpainname"];
            temp5=[arrayList1 objectForKey:@"painscale"];
            temp6=[arrayList1 objectForKey:@"painscale1"];
            temp7=[arrayList1 objectForKey:@"painscale2"];
            temp8=[arrayList1 objectForKey:@"painscale3"];
            temp9=[arrayList1 objectForKey:@"awakehours"];
            temp10=[arrayList1 objectForKey:@"symptom"];
            
            
            
            
            number.text=temp1;
            name.text=temp;
            date.text=temp2;
            painname.text=temp4;
            percentage.text=temp9;
            scale1.text=temp5;
            scale2.text=temp6;
            scale3.text=temp7;
            scale4.text=temp8;
            
            
            if ([scale1.text isEqualToString:@"Severe Pain"])
            {
                [slider1 setValue:10 animated:YES];
            }
            else if ([scale1.text isEqualToString:@"No Pain"])
            {
                [slider1 setValue:0 animated:YES];
            }
            else
            {
                [slider1 setValue:[scale1.text floatValue] animated:YES];
            }
            if ([scale2.text isEqualToString:@"Severe Pain"])
            {
                [slider2 setValue:10 animated:YES];
            }
            else if ([scale2.text isEqualToString:@"No Pain"])
            {
                [slider2 setValue:0 animated:YES];
            }
            else
            {
                [slider2 setValue:[scale2.text floatValue] animated:YES];
            }
            if ([scale3.text isEqualToString:@"Severe Pain"])
            {
                [slider3 setValue:10 animated:YES];
            }
            else if ([scale3.text isEqualToString:@"No Pain"])
            {
                [slider3 setValue:0 animated:YES];
            }
            else
            {
                [slider3 setValue:[scale3.text floatValue] animated:YES];
            }
            if ([scale4.text isEqualToString:@"Severe Pain"])
            {
                [slider4 setValue:10 animated:YES];
            }
            else if ([scale4.text isEqualToString:@"No Pain"])
            {
                [slider4 setValue:0 animated:YES];
            }
            else
            {
                [slider4 setValue:[scale4.text floatValue] animated:YES];
            }
            NSLog(@"pain %@",temp3);
            if ([temp3 isEqualToString:@"Wrist/Hand"]) {
                [painseg setSelectedSegmentIndex:0];
                segval=@"Wrist/Hand";
                painname.hidden=YES;
                edit.hidden=NO;
                
            }
            else if ([temp3 isEqualToString:@"LowBack"]) {
                [painseg setSelectedSegmentIndex:1];
                segval=@"LowBack";
                painname.hidden=YES;
                edit.hidden=NO;
            }
            else if ([temp3 isEqualToString:@"Neck/Mid Back"]) {
                [painseg setSelectedSegmentIndex:2];
                segval=@"Neck/Mid Back";
                painname.hidden=YES;
                edit.hidden=NO;
                
            }
            else if ([temp3 isEqualToString:@"Oswestry"]) {
                [painseg setSelectedSegmentIndex:3];
                segval=@"Oswestry";
                painname.hidden=YES;
                edit.hidden=NO;
                
            }
            else if ([temp3 isEqualToString:@"Shoulder"]) {
                [painseg setSelectedSegmentIndex:4];
                segval=@"Shoulder";
                painname.hidden=YES;
                edit.hidden=NO;
                
            }
            else if ([temp3 isEqualToString:@"Other"]) {
                [painseg setSelectedSegmentIndex:5];
                segval=@"Other";
                painname.hidden=NO;
                edit.hidden=YES;
            }
            
            
            
        }
        
    }
    else
    {
        submit.hidden=NO;
        cancel1.hidden=NO;
        reset1.hidden=NO;
        update.hidden=YES;
        deleteform.hidden=YES;
        reset2.hidden=YES;
        cancel2.hidden=YES;
    }
    
    
}
- (IBAction)cancel:(id)sender
{
    for(UIViewController *controller in self.navigationController.viewControllers)
    {
        if ([controller isKindOfClass:[Patient1ViewController class]])
        {
            [self.navigationController popToViewController:controller animated:YES];
            break;
        }
    }
    
    
}
- (IBAction)slider1act:(id)sender
{
    int val=(int)slider1.value;
    if (val==10) {
        scale1.text=@"Severe Pain";
    }
    else if(val==0)
    {
        scale1.text=@"No Pain";
    }
    else
    {
        scale1.text=[NSString stringWithFormat:@"%d",val];
    }
}
- (IBAction)slider2act:(id)sender
{
    int val=(int)slider2.value;
    if (val==10) {
        scale2.text=@"Severe Pain";
    }
    else if(val==0)
    {
        scale2.text=@"No Pain";
    }
    else
    {
        scale2.text=[NSString stringWithFormat:@"%d",val];
    }
    
}
- (IBAction)slider3act:(id)sender {
    int val=(int)slider3.value;
    if (val==10) {
        scale3.text=@"Severe Pain";
    }
    else if(val==0)
    {
        scale3.text=@"No Pain";
    }
    else
    {
        scale3.text=[NSString stringWithFormat:@"%d",val];
    }
    
}
- (IBAction)slider4act:(id)sender {
    int val=(int)slider4.value;
    if (val==10) {
        scale4.text=@"Severe Pain";
    }
    else if(val==0)
    {
        scale4.text=@"No Pain";
    }
    else
    {
        scale4.text=[NSString stringWithFormat:@"%d",val];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validatePNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)save:(id)sender {
    int c=0;
    du=[[databaseurl alloc]init];
    NSString *tempp1,*tempp2;
    tempp1 = [number.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    tempp2 = [name.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if ([segval isEqualToString:@"Other"]) {
       
    }
    else
    {
        painname.text=@"";
    }
    
    if (//([tempp1 length]>0)&&
        ([tempp2 length]>0)&&([date.text length]>0))
    {
        c=1;
        // if ([self validateNames:tempp1]==1)
        //{
        if ([du patname:name.text]==1)
        {
             if((([number.text length]>0)&&([du date:number.text]==1))||([number.text length]==0))
             {
                 if((([painname.text length]>0)&&([du otherfields:painname.text]==1))||([painname.text length]==0))
                 {
                     if((([percentage.text length]>0)&&([du percentage:percentage.text]==1))||([percentage.text length]==0))
                     {
             c=1;
                         NSLog(@"segval %@",segval);
            
            [recorddict setValue:name.text forKey:@"name"];
            [recorddict setValue:number.text forKey:@"number"];
            [recorddict setValue:date.text forKey:@"date"];
            [recorddict setValue:segval forKey:@"segval1"];
            [recorddict setValue:painname.text forKey:@"othertext"];
            [recorddict setValue:scale1.text forKey:@"scale1"];
            [recorddict setValue:scale2.text forKey:@"scale2"];
            [recorddict setValue:scale3.text forKey:@"scale3"];
            [recorddict setValue:scale4.text forKey:@"scale4"];
            [recorddict setValue:percentage.text forKey:@"worst"];
                     }
                     else
                     {
                         c=0;
                         [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid percentage of awake hours field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                     }
                     
                 }
                 else
                 {
                     c=0;
                     [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid other field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                 }
             }
             else
             {
                 c=0;
                 [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid number." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
             }
            
        }
        else
        {
            c=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
        /*   }
         else
         {
         c=0;
         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Please enter valid name."];
         [alert setDestructiveButtonWithTitle:@"x" block:nil];
         [alert show];
         }*/
        
    }
    else
    {
        c=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Required fields should not be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    
    if (c==1) {
        
        UIButton *buton=(UIButton*)sender;
        if(buton.tag==12)
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
        else  if(buton.tag==14)
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
        
    }
    
    
    else
    {
        NULL;
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"quadruple Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form updation successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form updated failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                [self cancel:self];
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
-(IBAction)reset:(id)sender
{
    for (UIView *subview in [self.view subviews])
        if([subview isKindOfClass:[UITextField class]])
            [(UITextField*)subview setText:@""];
    painname.hidden = YES;
    painseg.selectedSegmentIndex=UISegmentedControlNoSegment;
    [slider1 setValue:1 animated:YES];
    scale1.text = @"1";
    [slider2 setValue:1 animated:YES];
    scale2.text = @"1";
    [slider3 setValue:1 animated:YES];
    scale3.text = @"1";
    [slider4 setValue:1 animated:YES];
    scale4.text = @"1";
    
    
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"quadruple Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form deletion successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                    [self cancel:self];
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form deletion failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    [self cancel:self];
                }
            }
        }
        
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"quadruple Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form submission successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form submission failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                [self cancel:self];
            }
        }
    }
    
}


-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
   // NSLog(@"record dict in insert %@",recorddict);
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Quadruple.php?service=quadrupleinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&name=%@&number=%@&date=%@&painname=%@&otherpainname=%@&painscale=%@&painscale1=%@&painscale2=%@&painscale3=%@&awakehours=%@&%@=%@",firstEntity,value1,[recorddict valueForKey:@"symptomtext"],[recorddict objectForKey:@"name"],[recorddict objectForKey:@"number"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"segval1"],[recorddict objectForKey:@"othertext"],[recorddict objectForKey:@"scale1"],[recorddict objectForKey:@"scale2"],[recorddict objectForKey:@"scale3"],[recorddict objectForKey:@"scale4"],[recorddict objectForKey:@"worst"],secondEntity,value2];
    
  //  NSLog(@"POST:%@",post);
    
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
    //   NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Quadruple.php?service=quadrupleedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&oldsymptom=%@&name=%@&number=%@&date=%@&painname=%@&otherpainname=%@&painscale=%@&painscale1=%@&painscale2=%@&painscale3=%@&awakehours=%@&%@=%@",firstEntity,value1,[recorddict valueForKey:@"symptomtext"],symptom,[recorddict objectForKey:@"name"],[recorddict objectForKey:@"number"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"segval1"],[recorddict objectForKey:@"othertext"],[recorddict objectForKey:@"scale1"],[recorddict objectForKey:@"scale2"],[recorddict objectForKey:@"scale3"],[recorddict objectForKey:@"scale4"],[recorddict objectForKey:@"worst"],secondEntity,value2];
    
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
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Quadruple.php?service=quadrupledelete";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&%@=%@",firstEntity,value1,symptom,secondEntity,value2];
    
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
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    if ([segue.identifier isEqualToString:@"wristhand"])
    {
        
        
        wristandhanddisabilityViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        
        
        
    }
    
    if ([segue.identifier isEqualToString:@"lowback"])
    {
        
        lowbackdisabilityViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        
        
    }
    if ([segue.identifier isEqualToString:@"neckmid"])
    {
        
        neckmidbackdisabilityViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        
        
    }
    if ([segue.identifier isEqualToString:@"oswestry"])
    {
        
        oswestrydisabilityViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        
        
    }
    if ([segue.identifier isEqualToString:@"shoulderpain"])
    {
        
        shoulderpainscoreViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        
        
    }
    
    
    
    
}


- (void)dealloc {
    
    
    
    [super dealloc];
}
@end
