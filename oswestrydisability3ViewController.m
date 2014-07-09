//
//  oswestrydisability3ViewController.m
//  oswestrydisability
//
//  Created by DeemsysInc on 3/7/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "oswestrydisability3ViewController.h"
#import "JSON.h"
#import "Reachability.h"
#import "databaseurl.h"
#import "QuadrupleVisualAnalogueScale.h"
@interface oswestrydisability3ViewController ()
{
    databaseurl *du;
}
@end

@implementation oswestrydisability3ViewController
@synthesize recorddict;
@synthesize segp1;
@synthesize segp2;
@synthesize segp3;
@synthesize segp4;
@synthesize sport;
@synthesize dontplay;
@synthesize resultset;
@synthesize reset1;
@synthesize reset2;
@synthesize submit;
@synthesize deleteform;
@synthesize update;
@synthesize cancel1;
@synthesize cancel2;
@synthesize label1,label2,label3,label4,label5,label6,label7,label8,label9,label10,label11,lineImage;

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
- (IBAction)checkboxselected:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        label1.hidden = YES;
        label2.hidden = YES;
        label3.hidden = YES;
        label4.hidden = YES;
        label5.hidden = YES;
        label6.hidden = YES;
        label7.hidden = YES;
        label8.hidden = YES;
        label9.hidden = YES;
        label10.hidden = YES;
        label11.hidden = YES;
        lineImage.hidden = YES;
        segp1.hidden = YES;
        segp2.hidden = YES;
        segp3.hidden = YES;
        segp4.hidden = YES;
        //[segp1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        //[segp2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        //[segp3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        //[segp4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
        label1.hidden = NO;
        label2.hidden = NO;
        label3.hidden = NO;
        label4.hidden = NO;
        label5.hidden = NO;
        label6.hidden = NO;
        label7.hidden = NO;
        label8.hidden = NO;
        label9.hidden = NO;
        label10.hidden = NO;
        label11.hidden = NO;
        lineImage.hidden = NO;
        segp1.hidden = NO;
        segp2.hidden = NO;
        segp3.hidden = NO;
        segp4.hidden = NO;
    }
}
- (IBAction)seg1selected:(id)sender
{
    if (segp1.selectedSegmentIndex==0) {
        seg1val=@"1";
    }
    else if (segp1.selectedSegmentIndex==1) {
        seg1val=@"2";
    }
    
    else if (segp1.selectedSegmentIndex==2) {
        seg1val=@"3";
        
    }
    
    else if (segp1.selectedSegmentIndex==3) {
        seg1val=@"4";
    }
    else  if (segp1.selectedSegmentIndex==4) {
        seg1val=@"5";
    }
    
    
}
- (IBAction)seg2selected:(id)sender
{
    if (segp2.selectedSegmentIndex==0) {
        seg2val=@"1";
    }
    else if (segp2.selectedSegmentIndex==1) {
        seg2val=@"2";
    }
    
    else if (segp2.selectedSegmentIndex==2) {
        seg2val=@"3";
    }
    
    else if (segp2.selectedSegmentIndex==3) {
        seg2val=@"4";
    }
    else  if (segp2.selectedSegmentIndex==4) {
        seg2val=@"5";
    }
    
}
- (IBAction)seg3selected:(id)sender
{
    if (segp3.selectedSegmentIndex==0) {
        seg3val=@"1";
    }
    else if (segp3.selectedSegmentIndex==1) {
        seg3val=@"2";
    }
    
    else if (segp3.selectedSegmentIndex==2) {
        seg3val=@"3";
    }
    
    else if (segp3.selectedSegmentIndex==3) {
        seg3val=@"4";
    }
    else  if (segp3.selectedSegmentIndex==4) {
        seg3val=@"5";
    }
    
}
- (IBAction)seg4selected:(id)sender
{
    if (segp4.selectedSegmentIndex==0) {
        seg4val=@"1";
    }
    else if (segp4.selectedSegmentIndex==1) {
        seg4val=@"2";
    }
    
    else if (segp4.selectedSegmentIndex==2) {
        seg4val=@"3";
    }
    
    else if (segp4.selectedSegmentIndex==3) {
        seg4val=@"4";
    }
    else  if (segp4.selectedSegmentIndex==4) {
        seg4val=@"5";
    }
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    seg1val=@"null";
    seg2val=@"null";
    seg3val=@"null";
    seg4val=@"null";
    update.hidden=YES;
    deleteform.hidden=YES;
    reset2.hidden=YES;
    submit.hidden=NO;
    reset1.hidden=NO;
    cancel1.hidden=NO;
    cancel2.hidden=YES;
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
    
    [self displaydata];
	// Do any additional setup after loading the view.
}
-(void)dismissKeyboard
{
    [sport resignFirstResponder];
}
-(void)displaydata
{
    
    if ([resultset count]>0)
    {
        update.hidden=NO;
        deleteform.hidden=NO;
        reset2.hidden=NO;
        submit.hidden=YES;
        reset1.hidden=YES;
        cancel1.hidden=YES;
        cancel2.hidden=NO;
        
        sport.text=[resultset objectForKey:@"sport"];
        if ([[resultset objectForKey:@"sportoptional"]isEqualToString:@"on"])
        {
            dontplay.selected=YES;
            [dontplay setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            label1.hidden = YES;
            label2.hidden = YES;
            label3.hidden = YES;
            label4.hidden = YES;
            label5.hidden = YES;
            label6.hidden = YES;
            label7.hidden = YES;
            label8.hidden = YES;
            label9.hidden = YES;
            label10.hidden = YES;
            label11.hidden = YES;
            lineImage.hidden = YES;
            segp1.hidden = YES;
            segp2.hidden = YES;
            segp3.hidden = YES;
            segp4.hidden = YES;
            
            
        }
        else
        {
            dontplay.selected=NO;
            [dontplay setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            label1.hidden = NO;
            label2.hidden = NO;
            label3.hidden = NO;
            label4.hidden = NO;
            label5.hidden = NO;
            label6.hidden = NO;
            label7.hidden = NO;
            label8.hidden = NO;
            label9.hidden = NO;
            label10.hidden = NO;
            label11.hidden = NO;
            lineImage.hidden = NO;
        }
        if ([[resultset objectForKey:@"instrument"]isEqualToString:@"1"])
        {
            seg1val=@"1";
            [segp1 setSelectedSegmentIndex:0];
            
        }
        else if ([[resultset objectForKey:@"instrument"]isEqualToString:@"2"])
        {
            seg1val=@"2";
            [segp1 setSelectedSegmentIndex:1];
            
            
        }
        else if ([[resultset objectForKey:@"instrument"]isEqualToString:@"3"])
        {
            seg1val=@"3";
            [segp1 setSelectedSegmentIndex:2];
            
        }
        else if ([[resultset objectForKey:@"instrument"]isEqualToString:@"4"])
        {
            seg1val=@"4";
            [segp1 setSelectedSegmentIndex:3];
            
        }
        else if ([[resultset objectForKey:@"instrument"]isEqualToString:@"5"])
        {
            seg1val=@"5";
            [segp1 setSelectedSegmentIndex:4];
        }
        else
        {
            seg1val=@"null";
            [segp1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        }
        if ([[resultset objectForKey:@"instrumenta"]isEqualToString:@"1"])
        {
            seg2val=@"1";
            [segp2 setSelectedSegmentIndex:0];
            
        }
        else if ([[resultset objectForKey:@"instrumenta"]isEqualToString:@"2"])
        {
            seg2val=@"2";
            [segp2 setSelectedSegmentIndex:1];
            
            
        }
        else if ([[resultset objectForKey:@"instrumenta"]isEqualToString:@"3"])
        {
            seg2val=@"3";
            [segp2 setSelectedSegmentIndex:2];
            
        }
        else if ([[resultset objectForKey:@"instrumenta"]isEqualToString:@"4"])
        {
            seg2val=@"4";
            [segp2 setSelectedSegmentIndex:3];
            
        }
        else if ([[resultset objectForKey:@"instrumenta"]isEqualToString:@"5"])
        {
            seg2val=@"5";
            [segp2 setSelectedSegmentIndex:4];
        }
        else
        {
            seg2val=@"null";
            [segp2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        }
        if ([[resultset objectForKey:@"instrumentb"]isEqualToString:@"1"])
        {
            seg3val=@"1";
            [segp3 setSelectedSegmentIndex:0];
            
        }
        else if ([[resultset objectForKey:@"instrumentb"]isEqualToString:@"2"])
        {
            seg3val=@"2";
            [segp3 setSelectedSegmentIndex:1];
            
            
        }
        else if ([[resultset objectForKey:@"instrumentb"]isEqualToString:@"3"])
        {
            seg3val=@"3";
            [segp3 setSelectedSegmentIndex:2];
            
        }
        else if ([[resultset objectForKey:@"instrumentb"]isEqualToString:@"4"])
        {
            seg3val=@"4";
            [segp3 setSelectedSegmentIndex:3];
            
        }
        else if ([[resultset objectForKey:@"instrumentb"]isEqualToString:@"5"])
        {
            seg3val=@"5";
            [segp3 setSelectedSegmentIndex:4];
        }
        else
        {
            seg3val=@"null";
            [segp3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        }
        if ([[resultset objectForKey:@"instrumentc"]isEqualToString:@"1"])
        {
            seg4val=@"1";
            [segp4 setSelectedSegmentIndex:0];
            
        }
        else if ([[resultset objectForKey:@"instrumentc"]isEqualToString:@"2"])
        {
            seg4val=@"2";
            [segp4 setSelectedSegmentIndex:1];
            
            
        }
        else if ([[resultset objectForKey:@"instrumentc"]isEqualToString:@"3"])
        {
            seg4val=@"3";
            [segp4 setSelectedSegmentIndex:2];
            
        }
        else if ([[resultset objectForKey:@"instrumentc"]isEqualToString:@"4"])
        {
            seg4val=@"4";
            [segp4 setSelectedSegmentIndex:3];
            
        }
        else if ([[resultset objectForKey:@"instrumentc"]isEqualToString:@"5"])
        {
            seg4val=@"5";
            [segp4 setSelectedSegmentIndex:4];
        }
        else
        {
            seg4val=@"null";
            [segp4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"Oswestry Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form updation successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                //[self performSegueWithIdentifier:@"oswestrytoquad" sender:self];
                [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form updation failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                //[self performSegueWithIdentifier:@"oswestrytoquad" sender:self];
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"Oswestry Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form deletion successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                    //[self performSegueWithIdentifier:@"oswestrytoquad" sender:self];
                    [self cancel:self];
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form deletion failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    //[self performSegueWithIdentifier:@"oswestrytoquad" sender:self];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"Oswestry Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form submission successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                //[self performSegueWithIdentifier:@"oswestrytoquad" sender:self];
                [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form submission failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                //[self performSegueWithIdentifier:@"oswestrytoquad" sender:self];
                [self cancel:self];
            }
        }
    }
    
}


-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"OswestryDisability.php?service=oswestryinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&painintensity=%@&standing=%@&personal=%@&sleeping=%@&lifting=%@&life=%@&walking=%@&social=%@&sitting=%@&traveling=%@&comments=%@&name=%@&date=%@&scores=%@&painscale=%@&painscale1=%@&job=%@&joboptional=%@&work=%@&worka=%@&workb=%@&workc=%@&sport=%@&sportoptional=%@&instrument=%@&instrumenta=%@&instrumentb=%@&instrumentc=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"symptomtext"],[recorddict objectForKey:@"sec1"],[recorddict objectForKey:@"sec2"],[recorddict objectForKey:@"sec3"],[recorddict objectForKey:@"sec4"],[recorddict objectForKey:@"sec5"],[recorddict objectForKey:@"sec6"],[recorddict objectForKey:@"sec7"],[recorddict objectForKey:@"sec8"],[recorddict objectForKey:@"sec9"],[recorddict objectForKey:@"sec10"],[recorddict objectForKey:@"comment"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"score"],[recorddict objectForKey:@"painlevel"],[recorddict objectForKey:@"painlevel1"],[recorddict objectForKey:@"jobwork"],[recorddict objectForKey:@"dontwork"],[recorddict objectForKey:@"seg1"],[recorddict objectForKey:@"seg2"],[recorddict objectForKey:@"seg3"],[recorddict objectForKey:@"seg4"],[recorddict objectForKey:@"sport"],[recorddict objectForKey:@"dontplay"],[recorddict objectForKey:@"segsport1"],[recorddict objectForKey:@"segsport2"],[recorddict objectForKey:@"segsport3"],[recorddict objectForKey:@"segsport4"],secondEntity,value2];
    
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
   // NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"OswestryDisability.php?service=oswestryedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&painintensity=%@&standing=%@&personal=%@&sleeping=%@&lifting=%@&life=%@&walking=%@&social=%@&sitting=%@&traveling=%@&comments=%@&name=%@&date=%@&scores=%@&painscale=%@&painscale1=%@&job=%@&joboptional=%@&work=%@&worka=%@&workb=%@&workc=%@&sport=%@&sportoptional=%@&instrument=%@&instrumenta=%@&instrumentb=%@&instrumentc=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"symptomtext"],[recorddict objectForKey:@"sec1"],[recorddict objectForKey:@"sec2"],[recorddict objectForKey:@"sec3"],[recorddict objectForKey:@"sec4"],[recorddict objectForKey:@"sec5"],[recorddict objectForKey:@"sec6"],[recorddict objectForKey:@"sec7"],[recorddict objectForKey:@"sec8"],[recorddict objectForKey:@"sec9"],[recorddict objectForKey:@"sec10"],[recorddict objectForKey:@"comment"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"score"],[recorddict objectForKey:@"painlevel"],[recorddict objectForKey:@"painlevel1"],[recorddict objectForKey:@"jobwork"],[recorddict objectForKey:@"dontwork"],[recorddict objectForKey:@"seg1"],[recorddict objectForKey:@"seg2"],[recorddict objectForKey:@"seg3"],[recorddict objectForKey:@"seg4"],[recorddict objectForKey:@"sport"],[recorddict objectForKey:@"dontplay"],[recorddict objectForKey:@"segsport1"],[recorddict objectForKey:@"segsport2"],[recorddict objectForKey:@"segsport3"],[recorddict objectForKey:@"segsport4"],secondEntity,value2];
    
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
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"OswestryDisability.php?service=oswestrydelete";
    
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
-(BOOL)validatePNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

- (IBAction)save:(id)sender
{
    int move=1;
    du=[[databaseurl alloc]init];
    if((([sport.text length]>0)&&([du otherfields:sport.text]==1))||([sport.text length]==0))
    {
        [recorddict setValue:sport.text forKey:@"sport"];
        
        if (dontplay.selected) {
            [recorddict setValue:@"on" forKey:@"dontplay"];
            [recorddict setValue:@"null" forKey:@"segsport1"];
            [recorddict setValue:@"null" forKey:@"segsport2"];
            [recorddict setValue:@"null" forKey:@"segsport3"];
            [recorddict setValue:@"null" forKey:@"segsport4"];
        }
        else
        {
            [recorddict setValue:@"null" forKey:@"dontplay"];
            [recorddict setValue:seg1val forKey:@"segsport1"];
            [recorddict setValue:seg2val forKey:@"segsport2"];
            [recorddict setValue:seg3val forKey:@"segsport3"];
            [recorddict setValue:seg4val forKey:@"segsport4"];
        }

    }
    else
    {
        move =0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid sport field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }

        if (move==1)
    {
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
    
    
    
   // NSLog(@"record dict %@",recorddict);
}
- (IBAction)reset:(id)sender
{
    sport.text=@"";
    dontplay.selected=NO;
    [dontplay setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    seg1val=@"null";
    seg2val=@"null";
    seg3val=@"null";
    seg4val=@"null";
    [segp1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [segp2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [segp3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [segp4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    label1.hidden = NO;
    label2.hidden = NO;
    label3.hidden = NO;
    label4.hidden = NO;
    label5.hidden = NO;
    label6.hidden = NO;
    label7.hidden = NO;
    label8.hidden = NO;
    label9.hidden = NO;
    label10.hidden = NO;
    label11.hidden = NO;
    lineImage.hidden = NO;
    segp1.hidden = NO;
    segp2.hidden = NO;
    segp3.hidden = NO;
    segp4.hidden = NO;
    
    
}
-(IBAction)cancel:(id)sender
{
    //    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
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
    
    
    [cancel1 release];
    [cancel2 release];
    [label1 release];
    [label2 release];
    [label3 release];
    [label4 release];
    [label5 release];
    [label6 release];
    [label7 release];
    [lineImage release];
    [label8 release];
    [label9 release];
    [label10 release];
    [label11 release];
    [super dealloc];
}
@end
