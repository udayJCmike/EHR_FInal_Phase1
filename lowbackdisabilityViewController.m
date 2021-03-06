//
//  lowbackdisabilityViewController.m
//  lowbackdisability
//
//  Created by DeemsysInc on 3/6/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "lowbackdisabilityViewController.h"
#import "lowbackdisability1ViewController.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "QuadrupleVisualAnalogueScale.h"
@interface lowbackdisabilityViewController ()
{
    databaseurl *du;
}
@end

@implementation lowbackdisabilityViewController
@synthesize name;
@synthesize date;
@synthesize sec11;
@synthesize sec12;
@synthesize sec13;
@synthesize sec14;
@synthesize sec15;
@synthesize sec16;
@synthesize sec21;
@synthesize sec22;
@synthesize sec23;
@synthesize sec24;
@synthesize sec25;
@synthesize sec26;
@synthesize sec31;
@synthesize sec32;
@synthesize sec33;
@synthesize sec34;
@synthesize sec35;
@synthesize sec36;
@synthesize sec41;
@synthesize sec42;
@synthesize sec43;
@synthesize sec44;
@synthesize sec45;
@synthesize sec46;
@synthesize recorddict;
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
    name.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    val1=@"null";
    val2=@"null";
    val3=@"null";
    val4=@"null";
    clicked1=0;
    clicked2=0;
    clicked3=0;
    clicked4=0;
    
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]])
        {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self  Getdata];
    
	// Do any additional setup after loading the view, typically from a nib.
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"LowbackDisability.php?service=lowbackselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"symptomtext"],secondEntity,value2];
    
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
    NSArray *items1App=[itemsApp objectForKey:@"Lowbackuser List"];
    
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
            temp=[arrayList1 objectForKey:@"Lowback_no"];
            temp1 =[arrayList1 objectForKey:@"pname"];
            temp2 =[arrayList1 objectForKey:@"date"];
            temp3 =[arrayList1 objectForKey:@"tolerate"];
            temp4 =[arrayList1 objectForKey:@"withoutpain"];
            temp6=[arrayList1 objectForKey:@"withoutcausingpain"];
            temp7=[arrayList1 objectForKey:@"sleepingwell"];
            
            temp8=[arrayList1 objectForKey:@"canlift"];
            temp9=[arrayList1 objectForKey:@"normal"];
            temp10=[arrayList1 objectForKey:@"walkingdistance"];
            temp11=[arrayList1 objectForKey:@"withoutextrapain"];
            temp12=[arrayList1 objectForKey:@"cansit"];
            
            temp13=[arrayList1 objectForKey:@"rapidlybetter"];
            temp14=[arrayList1 objectForKey:@"score"];
            temp15=[arrayList1 objectForKey:@"section"];
            temp16=[arrayList1 objectForKey:@"adl"];
            temp17=[arrayList1 objectForKey:@"adl2"];
            temp18=[arrayList1 objectForKey:@"comment"];
            
            [self setdatas];//set database values
            
            [resultset setObject:temp8  forKey:@"canlift"];
            [resultset setObject:temp9  forKey:@"normal"];
            [resultset setObject:temp10  forKey:@"walkingdistance"];
            [resultset setObject:temp11  forKey:@"withoutextrapain"];
            [resultset setObject:temp12  forKey:@"cansit"];
            [resultset setObject:temp13  forKey:@"rapidlybetter"];
            [resultset setObject:temp14  forKey:@"score"];
            [resultset setObject:temp15  forKey:@"section"];
            [resultset setObject:temp16  forKey:@"adl"];
            [resultset setObject:temp17  forKey:@"adl2"];
            [resultset setObject:temp18  forKey:@"comment"];
            
        }
        
    }
    else
    {
        //no dats for this username
    }
    
    
}
-(void)setdatas
{
    name.text=temp1;
    date.text=temp2;
    
    if ([temp3 length]>0)
    {
        if ([temp3 isEqualToString:@"0"])
        {
            [self first:nil];
        }
        else if ([temp3 isEqualToString:@"1"])
        {
            [self second:nil];
        }
        else if ([temp3 isEqualToString:@"2"])
        {
            [self third:nil];
            
        }
        else if ([temp3 isEqualToString:@"3"])
        {
            [self fourth:nil];
        }
        else if ([temp3 isEqualToString:@"4"])
        {
            [self fifth:nil];
        }
        else if ([temp3 isEqualToString:@"5"])
        {
            [self sixth:nil];
        }
        
    }
    if ([temp4 length]>0)
    {
        if ([temp4 isEqualToString:@"0"])
        {
            [self first2:nil];
        }
        else if ([temp4 isEqualToString:@"1"])
        {
            [self second2:nil];
        }
        else if ([temp4 isEqualToString:@"2"])
        {
            [self third2:nil];
            
        }
        else if ([temp4 isEqualToString:@"3"])
        {
            [self fourth2:nil];
        }
        else if ([temp4 isEqualToString:@"4"])
        {
            [self fifth2:nil];
        }
        else if ([temp4 isEqualToString:@"5"])
        {
            [self sixth2:nil];
        }
        
    }
    if ([temp6 length]>0)
    {
        if ([temp6 isEqualToString:@"0"])
        {
            [self first3:nil];
        }
        else if ([temp6 isEqualToString:@"1"])
        {
            [self second3:nil];
        }
        else if ([temp6 isEqualToString:@"2"])
        {
            [self third3:nil];
            
        }
        else if ([temp6 isEqualToString:@"3"])
        {
            [self fourth3:nil];
        }
        else if ([temp6 isEqualToString:@"4"])
        {
            [self fifth3:nil];
        }
        else if ([temp6 isEqualToString:@"5"])
        {
            [self sixth3:nil];
        }
        
    }
    if ([temp7 length]>0)
    {
        if ([temp7 isEqualToString:@"0"])
        {
            [self first4:nil];
        }
        else if ([temp7 isEqualToString:@"1"])
        {
            [self second4:nil];
        }
        else if ([temp7 isEqualToString:@"2"])
        {
            [self third4:nil];
            
        }
        else if ([temp7 isEqualToString:@"3"])
        {
            [self fourth4:nil];
        }
        else if ([temp7 isEqualToString:@"4"])
        {
            [self fifth4:nil];
        }
        else if ([temp7 isEqualToString:@"5"])
        {
            [self sixth4:nil];
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

-(void)dismissKeyboard
{
    [name resignFirstResponder];
    [date resignFirstResponder];
}
- (IBAction)first:(id)sender {
    
    val1=@"0";
    clicked1=1;
    [sec11 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec16 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second:(id)sender {
    val1=@"1";
    clicked1=1;
    [sec12 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec16 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (IBAction)third:(id)sender {
    val1=@"2";
    clicked1=1;
    [sec13 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec16 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fourth:(id)sender {
    val1=@"3";
    clicked1=1;
    [sec14 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec16 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fifth:(id)sender {
    val1=@"4";
    clicked1=1;
    [sec15 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec16 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
-(IBAction)sixth:(id)sender {
    val1=@"5";
    clicked1=1;
    [sec16 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)first2:(id)sender {
    
    val2=@"0";
    clicked2=1;
    [sec21 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec22 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec23 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec24 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec25 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec26 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second2:(id)sender {
    val2=@"1";
    clicked2=1;
    [sec22 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec21 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec23 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec24 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec25 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec26 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (IBAction)third2:(id)sender {
    val2=@"2";
    clicked2=1;
    [sec23 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec21 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec22 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec24 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec25 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec26 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fourth2:(id)sender {
    val2=@"3";
    clicked2=1;
    [sec24 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec21 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec22 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec23 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec25 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec26 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fifth2:(id)sender {
    val2=@"4";
    clicked2=1;
    [sec25 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec21 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec22 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec24 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec23 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec26 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
-(IBAction)sixth2:(id)sender {
    val2=@"5";
    clicked2=1;
    [sec26 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec21 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec22 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec24 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec23 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec25 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)first3:(id)sender {
    
    val3=@"0";
    clicked3=1;
    [sec31 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec32 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec33 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec34 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec35 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec36 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second3:(id)sender {
    val3=@"1";
    clicked3=1;
    
    [sec32 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec31 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec33 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec34 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec35 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec36 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (IBAction)third3:(id)sender {
    val3=@"2";
    clicked3=1;
    
    [sec33 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec31 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec32 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec34 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec35 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec36 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fourth3:(id)sender {
    val3=@"3";
    clicked3=1;
    
    [sec34 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec31 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec32 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec33 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec35 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec36 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fifth3:(id)sender {
    val3=@"4";
    clicked3=1;
    
    [sec35 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec31 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec32 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec34 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec33 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec36 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
-(IBAction)sixth3:(id)sender {
    val3=@"5";
    clicked3=1;
    
    [sec36 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec31 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec32 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec34 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec33 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec35 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)first4:(id)sender {
    
    val4=@"0";
    clicked4=1;
    
    [sec41 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec42 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec43 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec44 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec45 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec46 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second4:(id)sender {
    val4=@"1";
    clicked4=1;
    [sec42 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec41 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec43 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec44 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec45 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec46 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (IBAction)third4:(id)sender {
    val4=@"2";
    clicked4=1;
    [sec43 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec41 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec42 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec44 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec45 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec46 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fourth4:(id)sender {
    val4=@"3";
    clicked4=1;
    [sec44 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec41 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec42 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec43 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec45 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec46 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fifth4:(id)sender {
    val4=@"4";
    clicked4=1;
    [sec45 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec41 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec42 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec44 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec43 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec46 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
-(IBAction)sixth4:(id)sender {
    val4=@"5";
    clicked4=1;
    [sec46 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec41 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec42 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec44 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec43 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec45 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
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


-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[/]+[0-9]{1,2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)nextaction:(id)sender
{
    c=1;
    du=[[databaseurl alloc]init];
    NSInteger a = [val1 integerValue];
    NSInteger a1=[val2 integerValue];
    NSInteger a2 = [val3 integerValue];
    NSInteger a3=[val4 integerValue];
    NSInteger result=a+a1+a2+a3;
    [recorddict setValue:[NSNumber numberWithInteger:result] forKey:@"total1"];
    [recorddict setValue:val1 forKey:@"sec1"];
    [recorddict setValue:val2 forKey:@"sec2"];
    [recorddict setValue:val3 forKey:@"sec3"];
    [recorddict setValue:val4 forKey:@"sec4"];
    NSString *tempp1,*tempp2;
    tempp1 = [name.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    tempp2 = [date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if (([tempp1 length]>0)&&([tempp2 length]>0))
    {
        if ([du patname:name.text]==1)
        {
            if ([du dateexpress:date.text]==1)
            {
                if (clicked1==1) {
                    [recorddict setValue:@"selected" forKey:@"ssec1"];
                }
                else
                {
                    [recorddict setValue:@"unselected" forKey:@"ssec1"];
                }
                if (clicked2==1) {
                    [recorddict setValue:@"selected" forKey:@"ssec2"];
                }
                else
                {
                    [recorddict setValue:@"unselected" forKey:@"ssec2"];
                }
                if (clicked3==1) {
                    [recorddict setValue:@"selected" forKey:@"ssec3"];
                }
                else
                {
                    [recorddict setValue:@"unselected" forKey:@"ssec3"];
                }
                if (clicked4==1) {
                    [recorddict setValue:@"selected" forKey:@"ssec4"];
                }
                else
                {
                    [recorddict setValue:@"unselected" forKey:@"ssec4"];
                }
                
                
                [recorddict setValue:name.text forKey:@"patient name"];
                [recorddict setValue:date.text forKey:@"date"];
            }
            else
            {
                c =0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid date." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
        }
        else
        {
            c =0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid patient name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
        
    }
    else{
        c =0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Required fields should not be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    if (c==1) {
        [self performSegueWithIdentifier:@"lowback1" sender:self];
        //        NSLog(@"recod %@",recorddict);
    }
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"lowback1"])
    {
        if (c==1)
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
    
    if ([segue.identifier isEqualToString:@"lowback1"])
    {
        
        lowbackdisability1ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
      //  NSLog(@"recorddict in low back first %@",recorddict);
    }
    
    
}
- (IBAction)reset:(id)sender
{
    name.text=@"";
    date.text=@"";
    val1=@"null";
    val2=@"null";
    val3=@"null";
    val4=@"null";
    clicked1=0;
    clicked2=0;
    clicked3=0;
    clicked4=0;
    [sec11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec16 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec21 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec22 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec23 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec24 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec25 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec26 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec31 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec32 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec33 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec34 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec35 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec36 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [sec41 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec42 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec43 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec44 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec45 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec46 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
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


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [super dealloc];
}
@end
