//
//  shoulderpainscoreViewController.m
//  shoulderpainscore
//
//  Created by DeemsysInc on 3/4/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "shoulderpainscoreViewController.h"
#import "shoulderpainscore1ViewController.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "QuadrupleVisualAnalogueScale.h"
@interface shoulderpainscoreViewController ()

@end

@implementation shoulderpainscoreViewController

//@synthesize painmotion;
//@synthesize painrest;
@synthesize painscale;
@synthesize patname;
@synthesize nightlypain;
@synthesize sleeping;
@synthesize degree;
@synthesize incapability;
@synthesize number;
@synthesize fdate;
@synthesize recorddict;
@synthesize painatrestseg;
@synthesize painmotionseg;
@synthesize scaleres;
@synthesize resultset;
@synthesize cancel;

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

- (void)viewDidLoad
{
    [super viewDidLoad];
 self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    resultset=[[NSMutableDictionary alloc]init];
    patname.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    painrest=@"null";
    painmotion=@"null";
    night=@"null";
    sleep=@"null";
    incap=@"null";
    deg=@"null";
    scaleres.text=@"1";
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]])
        {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    [self Getdata];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)dismissKeyboard
{
    [patname resignFirstResponder];
    [ number resignFirstResponder];
    [fdate resignFirstResponder];
    [scaleres resignFirstResponder];
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"shoulderpainscore.php?service=shoulderpainselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post=[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"symptomtext"],secondEntity,value2];
    
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
    NSArray *items1App=[itemsApp objectForKey:@"Shoulderpainuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            //        NSLog(@"arraylist count %d",[arrayList1 count]);
            temp=[arrayList1 objectForKey:@"pname"];
            temp1 =[arrayList1 objectForKey:@"number"];
            temp2 =[arrayList1 objectForKey:@"date"];
            temp3 =[arrayList1 objectForKey:@"painatrest"];
            temp4 =[arrayList1 objectForKey:@"paininmotion"];
            temp6=[arrayList1 objectForKey:@"nightlypain"];
            temp7=[arrayList1 objectForKey:@"sleepingproblem"];
            temp8=[arrayList1 objectForKey:@"incapability"];
            temp9=[arrayList1 objectForKey:@"degreeofradiation"];
            temp10=[arrayList1 objectForKey:@"painscale"];
            temp11=[arrayList1 objectForKey:@"date1"];
            temp12=[arrayList1 objectForKey:@"total"];
            temp13=[arrayList1 objectForKey:@"f"];
            temp14=[arrayList1 objectForKey:@"name123"];
            temp15=[arrayList1 objectForKey:@"age"];
            temp16=[arrayList1 objectForKey:@"headache"];
            temp17=[arrayList1 objectForKey:@"myheadache"];
            temp18=[arrayList1 objectForKey:@"handihapped"];
            temp19=[arrayList1 objectForKey:@"restricted"];
            temp20=[arrayList1 objectForKey:@"understand"];
            temp21=[arrayList1 objectForKey:@"recreational"];
            temp22=[arrayList1 objectForKey:@"angry"];
            temp23=[arrayList1 objectForKey:@"control"];
            temp24=[arrayList1 objectForKey:@"socialize"];
            temp25=[arrayList1 objectForKey:@"family"];
            temp26=[arrayList1 objectForKey:@"insane"];
            temp27=[arrayList1 objectForKey:@"outlook"];
            temp28=[arrayList1 objectForKey:@"afraid"];
            temp29=[arrayList1 objectForKey:@"desperate"];
            temp30=[arrayList1 objectForKey:@"penalties"];
            temp31=[arrayList1 objectForKey:@"relationship"];
            temp32=[arrayList1 objectForKey:@"avoid"];
            temp33=[arrayList1 objectForKey:@"goals"];
            temp34=[arrayList1 objectForKey:@"clear"];
            temp35=[arrayList1 objectForKey:@"tension"];
            temp36=[arrayList1 objectForKey:@"gatherings"];
            temp37=[arrayList1 objectForKey:@"irritable"];
            temp5=[arrayList1 objectForKey:@"travelling"];
            temp38=[arrayList1 objectForKey:@"confused"];
            temp39=[arrayList1 objectForKey:@"frustrated"];
            temp40=[arrayList1 objectForKey:@"difficult"];
            temp41=[arrayList1 objectForKey:@"attention"];
            
            
            
            [self setdatas];//set database values
            
            
            [resultset setObject:temp11 forKey:@"date1"];
            [resultset setObject:temp12 forKey:@"total"];
            [resultset setObject:temp13 forKey:@"f"];
            [resultset setObject:temp14 forKey:@"name123"];
            [resultset setObject:temp15 forKey:@"age"];
            [resultset setObject:temp16 forKey:@"headache"];
            [resultset setObject:temp17 forKey:@"myheadache"];
            [resultset setObject:temp18 forKey:@"handihapped"];
            [resultset setObject:temp19 forKey:@"restricted"];
            [resultset setObject:temp20 forKey:@"understand"];
            [resultset setObject:temp21 forKey:@"recreational"];
            [resultset setObject:temp22 forKey:@"angry"];
            [resultset setObject:temp23 forKey:@"control"];
            [resultset setObject:temp24 forKey:@"socialize"];
            [resultset setObject:temp25 forKey:@"family"];
            [resultset setObject:temp26 forKey:@"insane"];
            [resultset setObject:temp27 forKey:@"outlook"];
            [resultset setObject:temp28 forKey:@"afraid"];
            [resultset setObject:temp29 forKey:@"desperate"];
            [resultset setObject:temp30 forKey:@"penalties"];
            [resultset setObject:temp31 forKey:@"relationship"];
            [resultset setObject:temp32 forKey:@"avoid"];
            [resultset setObject:temp33 forKey:@"goals"];
            [resultset setObject:temp34 forKey:@"clear"];
            [resultset setObject:temp35 forKey:@"tension"];
            [resultset setObject:temp36 forKey:@"gatherings"];
            [resultset setObject:temp37 forKey:@"irritable"];
            [resultset setObject:temp5 forKey:@"travelling"];
            [resultset setObject:temp38 forKey:@"confused"];
            [resultset setObject:temp39 forKey:@"frustrated"];
            [resultset setObject:temp40 forKey:@"difficult"];
            [resultset setObject:temp41 forKey:@"attention"];
            
            
            
            
            
            
        }
        
        //         NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
    }
    else
    {
    }
    
    
}
-(void)setdatas
{
    patname.text=temp;
    number.text=temp1;
    fdate.text=temp2;
    scaleres.text=temp10;
    [painscale setValue:[temp10 floatValue] animated:YES];
    if ([temp3 length]>0)
    {
        if ([temp3 isEqualToString:@"None"])
        {
            [painatrestseg setSelectedSegmentIndex:0];
            painrest=@"None";
            
            
        }
        else if ([temp3 isEqualToString:@"Light"]) {
            [painatrestseg setSelectedSegmentIndex:1];
            painrest=@"Light";
            
        }
        else if ([temp3 isEqualToString:@"Average"])
        {
            [painatrestseg setSelectedSegmentIndex:2];
            painrest=@"Average";
            
        }
        else if ([temp3 isEqualToString:@"Severe"]) {
            [painatrestseg setSelectedSegmentIndex:3];
            painrest=@"Severe";
            
        }
        
        else {
            //no matches found
        }
        
    }
    else
    {
        //no value for segment 1
    }
    
    if ([temp4 length]>0)
    {
        if ([temp4 isEqualToString:@"None"])
        {
            [painmotionseg setSelectedSegmentIndex:0];
            painmotion=@"None";
            
            
        }
        else if ([temp4 isEqualToString:@"Light"]) {
            [painmotionseg setSelectedSegmentIndex:1];
            painmotion=@"Light";
            
        }
        else if ([temp4 isEqualToString:@"Average"])
        {
            [painmotionseg setSelectedSegmentIndex:2];
            painmotion=@"Average";
            
        }
        else if ([temp4 isEqualToString:@"Severe"]) {
            [painmotionseg setSelectedSegmentIndex:3];
            painmotion=@"Severe";
            
        }
        
        else {
            //no matches found
        }
        
    }
    else
    {
        //no value for segment 1
    }
    if ([temp6 length]>0)
    {
        if ([temp6 isEqualToString:@"None"])
        {
            [nightlypain setSelectedSegmentIndex:0];
            night=@"None";
            
            
        }
        else if ([temp6 isEqualToString:@"Light"]) {
            [nightlypain setSelectedSegmentIndex:1];
            night=@"Light";
            
        }
        else if ([temp6 isEqualToString:@"Average"])
        {
            [nightlypain setSelectedSegmentIndex:2];
            night=@"Average";
            
        }
        else if ([temp6 isEqualToString:@"Severe"]) {
            [nightlypain setSelectedSegmentIndex:3];
            night=@"Severe";
            
        }
        
        else {
            //no matches found
        }
        
    }
    else
    {
        //no value for segment 1
    }
    if ([temp7 length]>0)
    {
        if ([temp7 isEqualToString:@"None"])
        {
            [sleeping setSelectedSegmentIndex:0];
            sleep=@"None";
            
            
        }
        else if ([temp7 isEqualToString:@"Light"]) {
            [sleeping setSelectedSegmentIndex:1];
            sleep=@"Light";
            
        }
        else if ([temp7 isEqualToString:@"Average"])
        {
            [sleeping setSelectedSegmentIndex:2];
            sleep=@"Average";
            
        }
        else if ([temp7 isEqualToString:@"Severe"]) {
            [sleeping setSelectedSegmentIndex:3];
            sleep=@"Severe";
            
        }
        
        else {
            //no matches found
        }
        
    }
    else
    {
        //no value for segment 1
    }
    if ([temp8 length]>0)
    {
        if ([temp8 isEqualToString:@"None"])
        {
            [incapability setSelectedSegmentIndex:0];
            incap=@"None";
            
            
        }
        else if ([temp8 isEqualToString:@"Light"]) {
            [incapability setSelectedSegmentIndex:1];
            incap=@"Light";
            
        }
        else if ([temp8 isEqualToString:@"Average"])
        {
            [incapability setSelectedSegmentIndex:2];
            incap=@"Average";
            
        }
        else if ([temp8 isEqualToString:@"Severe"]) {
            [incapability setSelectedSegmentIndex:3];
            incap=@"Severe";
            
        }
        
        else {
            //no matches found
        }
        
    }
    else
    {
        //no value for segment 1
    }
    if ([temp9 length]>0)
    {
        if ([temp9 isEqualToString:@"None"])
        {
            [degree setSelectedSegmentIndex:0];
            deg=@"None";
            
        }
        else if ([temp9 isEqualToString:@"Till halfway the upper arm"]) {
            deg=@"Till halfway the upper arm";
            [degree setSelectedSegmentIndex:1];
        }
        else if ([temp9 isEqualToString:@"Till the elbow"])
        {
            deg=@"Till the elbow";
            [degree setSelectedSegmentIndex:2];
            
        }
        else if ([temp9 isEqualToString:@"Past the elbow"])
        {
            deg=@"Past the elbow";
            [degree  setSelectedSegmentIndex:3];
        }
        
        else
        {
            //no matches found
        }
        if ([temp10 isEqualToString:@"Severe Pain"])
        {
            [painscale setValue:100 animated:YES];
        }
        else if ([temp19 isEqualToString:@"No Pain"])
        {
            [painscale setValue:0 animated:YES];
        }
        else
        {
            [painscale setValue:[temp10 floatValue] animated:YES];
        }
        
        scaleres.text=[NSString stringWithFormat:@"%@",temp10];
        
        
    }
    else
    {
        //no value for segment
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


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
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

-(BOOL)validateNumber:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]+";
    
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
- (IBAction)painrest:(id)sender
{
    if (painatrestseg.selectedSegmentIndex==0)
    {
        painrest=@"None";
        
    }
    else if (painatrestseg.selectedSegmentIndex==1)
    {
        painrest=@"Light";
    }
    else if (painatrestseg.selectedSegmentIndex==2) {
        painrest=@"Average";
    }
    else if (painatrestseg.selectedSegmentIndex==3) {
        painrest=@"Severe";
    }
    
    
}
- (IBAction)painmotion:(id)sender
{
    if (painmotionseg.selectedSegmentIndex==0)
    {
        painmotion=@"None";
        
    }
    else if (painmotionseg.selectedSegmentIndex==1)
    {
        painmotion=@"Light";
    }
    else if (painmotionseg.selectedSegmentIndex==2) {
        painmotion=@"Average";
    }
    else if (painmotionseg.selectedSegmentIndex==3) {
        painmotion=@"Severe";
    }
    
}
- (IBAction)nightlypain:(id)sender
{
    if (nightlypain.selectedSegmentIndex==0)
    {
        night=@"None";
        
    }
    else if (nightlypain.selectedSegmentIndex==1)
    {
        night=@"Light";
    }
    else if (nightlypain.selectedSegmentIndex==2) {
        night=@"Average";
    }
    else if (nightlypain.selectedSegmentIndex==3) {
        night=@"Severe";
    }
    
}

- (IBAction)sleepingprob:(id)sender
{
    if (sleeping.selectedSegmentIndex==0)
    {
        sleep=@"None";
        
    }
    else if (sleeping.selectedSegmentIndex==1)
    {
        sleep=@"Light";
    }
    else if (sleeping.selectedSegmentIndex==2) {
        sleep=@"Average";
    }
    else if (sleeping.selectedSegmentIndex==3) {
        sleep=@"Severe";
    }
    
}
- (IBAction)incablyign:(id)sender
{
    if (incapability.selectedSegmentIndex==0)
    {
        incap=@"None";
        
    }
    else if (incapability.selectedSegmentIndex==1)
    {
        incap=@"Light";
    }
    else if (incapability.selectedSegmentIndex==2) {
        incap=@"Average";
    }
    else if (incapability.selectedSegmentIndex==3) {
        incap=@"Severe";
    }
    
}
- (IBAction)degrad:(id)sender
{
    if (degree.selectedSegmentIndex==0)
    {
        deg=@"None";
        
    }
    else if (degree.selectedSegmentIndex==1)
    {
        deg=@"Till halfway the upper arm";
    }
    else if (degree.selectedSegmentIndex==2) {
        deg=@"Till the elbow";
    }
    else if (degree.selectedSegmentIndex==3) {
        deg=@"Past the elbow";
    }
    
}
- (IBAction)scale:(id)sender {
    int val=(int)painscale.value;
    if (val==100) {
        scaleres.text=@"Severe Pain";
    }
    else if(val==0)
    {
        scaleres.text=@"No Pain";
    }
    else
    {
        scaleres.text=[NSString stringWithFormat:@"%d",val];
    }
}



- (IBAction)next:(id)sender
{
    a=1;
    temp1 = [patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 = [number.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 = [fdate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    [recorddict setValue:painrest forKey:@"painrest"];
    [recorddict setValue:painmotion forKey:@"painmotion"];
    [recorddict setValue:night forKey:@"nightlypain"];
    [recorddict setValue:sleep forKey:@"sleeping"];
    [recorddict setValue:incap forKey:@"incapability"];
    [recorddict setValue:deg forKey:@"degree"];
    [recorddict setValue:scaleres.text forKey:@"painscalevalues"];
    
    if( ([temp1 length]!=0)&&
       //([temp2 length]!=0)&&
       ([temp3 length]!=0))
    {
        if ([self validatePNames:temp1]==1) {
           if((([temp2 length]>0)&&([self validateNumber:temp2]==1))||([temp2 length]==0))
            {
                if ([self validateDate:temp3]==1)
                {
                    
                    [recorddict setValue:fdate.text forKey:@"fdate"];
                    [recorddict setValue:patname.text forKey:@"patient name"];
                    [recorddict setValue:number.text forKey:@"number"];
                }
                
                else
                {
                    a=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid date." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
                
            }
            else
            {
                a=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid number." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
        }
        else
        {
            a=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid patient name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
    }
    else{
        a=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Required fields should not be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    if (a==1)
    {
        
        
        [self performSegueWithIdentifier:@"shoulderpain1" sender:self];
        
    }
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"shoulderpain1"])
    {
        if (a==1)
        {
            return YES;
        }
        else
        {
            
            return NO;
        }
    }
    else
        return NO;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"shoulderpain1"])
    {
        
        shoulderpainscore1ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        NSLog(@"recorddict in shoulder first %@",recorddict);
    }
    
    
}
- (IBAction)reset:(id)sender
{
    painrest=@"null";
    painmotion=@"null";
    night=@"null";
    sleep=@"null";
    incap=@"null";
    deg=@"null";
    patname.text=@"";
    number.text=@"";
    fdate.text=@"";
    scaleres.text=@"1";
    
    [painscale setValue:1.0 animated:YES];
    
    [painatrestseg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [painmotionseg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [nightlypain setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [sleeping setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [incapability setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [degree setSelectedSegmentIndex:UISegmentedControlNoSegment];
}

-(IBAction)cancel:(id)sender
{
    // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
    for (id controller in [self.navigationController viewControllers])
    {
        if ([controller isKindOfClass:[QuadrupleVisualAnalogueScale class]])
        {
            [self.navigationController popToViewController:controller animated:YES];
            break;
        }
    }
    
}
- (void)dealloc {
    [super dealloc];
}
@end
