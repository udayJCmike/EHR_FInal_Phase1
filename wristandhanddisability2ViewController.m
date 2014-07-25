//
//  wristandhanddisability2ViewController.m
//  wristandhanddisability
//
//  Created by DeemsysInc on 3/5/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "wristandhanddisability2ViewController.h"

#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "QuadrupleVisualAnalogueScale.h"
@interface wristandhanddisability2ViewController ()
{
    databaseurl *du;
}
@end

@implementation wristandhanddisability2ViewController
@synthesize recorddict;
@synthesize sec101;
@synthesize sec102;
@synthesize sec103;
@synthesize sec104;
@synthesize sec105;
@synthesize sec106;
@synthesize painscale;
@synthesize painscalelab;
@synthesize disab;
@synthesize resultset;
@synthesize update;
@synthesize reset1;
@synthesize reset2;
@synthesize deleteform;
@synthesize submit;
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
- (IBAction)first:(id)sender {
    
    val10=@"0";
    [sec101 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result]                                                             ;
    
    
}
- (IBAction)second:(id)sender {
    val10=@"1";
    
    [sec102 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result]                                                             ;
}
- (IBAction)third:(id)sender {
    val10=@"2";
    [sec103 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result]                                                             ;
    
    
}
- (IBAction)fourth:(id)sender {
    val10=@"3";
    [sec104 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result]                                                             ;
    
    
}
- (IBAction)fifth:(id)sender {
    val10=@"4";
    [sec105 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result]                                                             ;
    
    
}
-(IBAction)sixth:(id)sender {
    val10=@"5";
    [sec106 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result]                                                             ;
    
    
}
- (IBAction)disact:(id)sender
{
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    exe=(float)result/50;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %f",result,exe];
}
- (IBAction)painscaleval:(id)sender {
    
    int val=(int)painscale.value;
    if (val==10) {
        painscalelab.text=@"Severe Pain";
    }
    else if(val==0)
    {
        painscalelab.text=@"No Pain";
    }
    else
    {
        painscalelab.text=[NSString stringWithFormat:@"%d",val];
    }
}
- (IBAction)save:(id)sender
{
    int suc=1;
    [recorddict setValue:val10 forKey:@"sec10"];
    exe=(float)result/50;
    [recorddict setValue:[NSString stringWithFormat:@"%f",exe] forKey:@"painratio"];
    [recorddict setValue:[NSString stringWithFormat:@"%d",result] forKey:@"total"];
    if ([painscalelab.text isEqualToString:@"Severe Pain"])
        
    {
        [recorddict setValue:@"10" forKey:@"painscale"];
       
    }
    else if ([painscalelab.text isEqualToString:@"No Pain"])
    {
        [recorddict setValue:@"0" forKey:@"painscale"];
    }
    else
    {
        [recorddict setValue:painscalelab.text forKey:@"painscale"];
    }
   
    if (suc==1) {
        
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    val10=@"null";
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result];
    update.hidden=YES;
    deleteform.hidden=YES;
    reset2.hidden=YES;
    submit.hidden=NO;
    reset1.hidden=NO;
    cancel2.hidden=YES;
    cancel1.hidden=NO;
    [self displaydata];
	// Do any additional setup after loading the view.
}
-(void)displaydata
{
    if ([resultset count]>0) {
        update.hidden=NO;
        deleteform.hidden=NO;
        reset2.hidden=NO;
        submit.hidden=YES;
        reset1.hidden=YES;
        cancel2.hidden=NO;
        cancel1.hidden=YES;
        painscalelab.text=[resultset objectForKey:@"painscale"];
        
        
        
        //[painscale setValue:[painscalelab.text floatValue] animated:YES];
        
        
        if (([painscalelab.text isEqualToString:@"Severe Pain"])|| ([painscalelab.text isEqualToString:@"10"]))
            
        {
            painscalelab.text=@"Severe Pain";
            [painscale setValue:10 animated:YES];
        }
        else if (([painscalelab.text isEqualToString:@"No Pain"])|| ([painscalelab.text isEqualToString:@"0"]))
        {
            painscalelab.text=@"No Pain";
            [painscale setValue:0 animated:YES];
        }
        else
        {
            [painscale setValue:[painscalelab.text floatValue] animated:YES];
        }
        
        painscalelab.text=[NSString stringWithFormat:@"%@",painscalelab.text];
        
        
        if ([[resultset objectForKey:@"recreation"]isEqualToString:@"0"])
        {
            [self first:nil];
        }
        else if ([[resultset objectForKey:@"recreation"]isEqualToString:@"1"])
        {
            [self second:nil];
        }
        else if ([[resultset objectForKey:@"recreation"]isEqualToString:@"2"])
        {
            [self third:nil];
            
        }
        else if ([[resultset objectForKey:@"recreation"]isEqualToString:@"3"])
        {
            [self fourth:nil];
        }
        else if ([[resultset objectForKey:@"recreation"]isEqualToString:@"4"])
        {
            [self fifth:nil];
        }
        else if ([[resultset objectForKey:@"recreation"]isEqualToString:@"5"])
        {
            [self sixth:nil];
        }
        result=[[resultset objectForKey:@"score"] intValue];
        
        exe =[[resultset objectForKey:@"total"]floatValue];
        
        disab.text=[NSString stringWithFormat:@"%d / 50 = %f",result,exe];
    }
    
}
- (IBAction)reset:(id)sender
{
    [painscale setValue:1.0 animated:YES];
    painscalelab.text=@"1";
    val10=@"null";
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=0;
    result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"%d / 50 = %%",result];
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

-(IBAction)cancel:(id)sender
{
    //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
    for (id controller in [self.navigationController viewControllers])
    {
        if ([controller isKindOfClass:[QuadrupleVisualAnalogueScale class]])
        {
            [self.navigationController popToViewController:controller animated:YES];
            break;
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"Wristhand Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form updation successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                // // [self performSegueWithIdentifier:@"wristtoquad" sender:self];
                [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form updation failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                // [self performSegueWithIdentifier:@"wristtoquad" sender:self];
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"Wristhand Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form deletion successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                    // [self performSegueWithIdentifier:@"wristtoquad" sender:self];
                    [self cancel:self];
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form deletion failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    // [self performSegueWithIdentifier:@"wristtoquad" sender:self];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"Wristhand Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form submission successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                // [self performSegueWithIdentifier:@"wristtoquad" sender:self];
                [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form submission failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                // [self performSegueWithIdentifier:@"wristtoquad" sender:self];
                [self cancel:self];
            }
        }
    }
    
}


-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"WristhandDisability.php?service=wristhandinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&name=%@&date=%@&painintensity=%@&work=%@&numbness=%@&driving=%@&personal=%@&sleeping=%@&strength=%@&house=%@&writing=%@&recreation=%@&painscale=%@&score=%@&total=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"symptomtext"],[recorddict objectForKey:@"patient name"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"sec1"],[recorddict objectForKey:@"sec6"],[recorddict objectForKey:@"sec2"],[recorddict objectForKey:@"sec7"],[recorddict objectForKey:@"sec3"],[recorddict objectForKey:@"sec8"],[recorddict objectForKey:@"sec4"],[recorddict objectForKey:@"sec9"],[recorddict objectForKey:@"sec5"],[recorddict objectForKey:@"sec10"],[recorddict objectForKey:@"painscale"],[recorddict objectForKey:@"total"],[recorddict objectForKey:@"painratio"],secondEntity,value2];
        NSLog(@"POST:%@",post);
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
    NSString *url1=@"WristhandDisability.php?service=wristhandedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
   NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&name=%@&date=%@&painintensity=%@&work=%@&numbness=%@&driving=%@&personal=%@&sleeping=%@&strength=%@&house=%@&writing=%@&recreation=%@&painscale=%@&score=%@&total=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"symptomtext"],[recorddict objectForKey:@"patient name"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"sec1"],[recorddict objectForKey:@"sec6"],[recorddict objectForKey:@"sec2"],[recorddict objectForKey:@"sec7"],[recorddict objectForKey:@"sec3"],[recorddict objectForKey:@"sec8"],[recorddict objectForKey:@"sec4"],[recorddict objectForKey:@"sec9"],[recorddict objectForKey:@"sec5"],[recorddict objectForKey:@"sec10"],[recorddict objectForKey:@"painscale"],[recorddict objectForKey:@"total"],[recorddict objectForKey:@"painratio"],secondEntity,value2];
    
    NSURL *url = [NSURL URLWithString:url2];
    
    NSLog(post);
    
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
    NSString *url1=@"WristhandDisability.php?service=wristhanddelete";
    
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


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    
    
    
    [super dealloc];
}
@end
