//
//  Workaccident2ViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/11/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "Workaccident2ViewController.h"
#import "staffautocheckViewController.h"

@interface Workaccident2ViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation Workaccident2ViewController
@synthesize recorddict;
@synthesize switch1;
@synthesize switch2;
@synthesize switch3;
@synthesize switch4;
@synthesize switch5;
@synthesize switch6;
@synthesize reslabel1;
@synthesize reslabel2;
@synthesize reslabel3;
@synthesize reslabel4;
@synthesize reslabel5;
@synthesize reslabel6;
@synthesize seglabel;
@synthesize seg;
@synthesize segothertext;
@synthesize resultset;
@synthesize update;
@synthesize reset1;
@synthesize reset2;
@synthesize deleteform;
@synthesize submit;
@synthesize cancel1;
@synthesize cancel2;
@synthesize staff;
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

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =@"(?:[A-Za-z0-9]+[A-Za-z]*)";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
-(BOOL)validatealphanumeric:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[A-Z0-9a-z.:_,-]+";
    
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (switch1.on)
    {
        reslabel1.text=@"Yes";
        givespecificsyes.hidden=NO;
        givespecificsyestext.hidden=NO;
	}
    else
    {
        reslabel1.text=@"No";
        
        givespecificsyes.hidden=YES;
        givespecificsyestext.hidden=YES;
        
    }
}

-(IBAction)cancel:(id)sender
{
    if ([[staff objectForKey:@"staff"]isEqualToString:@"1"]) {
        
        
        for(UIViewController *controller in self.navigationController.viewControllers)
        {
            if ([controller isKindOfClass:[staffautocheckViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
    }
    else
        
    {
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
        
    }
}
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (switch2.on)
    {
        reslabel2.text=@"Yes";
	}
    else
    {
        reslabel2.text=@"No";
        
    }
}
- (IBAction) toggleEnabledTextForSwitch3onSomeLabel: (id) sender
{
	if (switch3.on)
    {
        reslabel3.text=@"Yes";
	}
    else
    {
        reslabel3.text=@"No";
        
    }
}
- (IBAction) toggleEnabledTextForSwitch4onSomeLabel: (id) sender
{
	if (switch4.on)
    {
        reslabel4.text=@"Yes";
	}
    else
    {
        reslabel4.text=@"No";
        
    }
}
- (IBAction) toggleEnabledTextForSwitch5onSomeLabel: (id) sender
{
	if (switch5.on)
    {
        reslabel5.text=@"Yes";
	}
    else
    {
        reslabel5.text=@"No";
        
    }
}
- (IBAction) toggleEnabledTextForSwitch6onSomeLabel: (id) sender
{
	if (switch6.on)
    {
        reslabel6.text=@"Yes";
	}
    else
    {
        reslabel6.text=@"No";
        
    }
}
-(IBAction)segselected:(id)sender
{
    
    if(seg.selectedSegmentIndex==0)
    {
        segothertext.hidden=YES;
        seglabel.text=@"Oily";
    }
    else if(seg.selectedSegmentIndex==1)
    {
        segothertext.hidden=YES;
        seglabel.text=@"Dirty";
    }
    else if(seg.selectedSegmentIndex==2)
    {
        segothertext.hidden=YES;
        seglabel.text=@"Slippery";
    }
    else if(seg.selectedSegmentIndex==3)
    {
        segothertext.hidden=NO;
        seglabel.text=@"Other";
        
        
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    [super viewDidLoad];
    // Adding BarButton With Action Symbol
    barButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(performAction:)];
    [self.navigationItem setRightBarButtonItem:barButton animated:NO];
    
    // Adding small sub view to main View
    printView = [[UIView alloc]initWithFrame:CGRectMake(695, 60, 75, 75)];
    // Creating Button
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(0, 0, 75, 75);
    [button setBackgroundImage:[UIImage imageNamed:@"print.png"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(printAction) forControlEvents:UIControlEventTouchUpInside];
    // adding button to small subview
    [printView addSubview:button];
    [self.view addSubview:printView];
    // default the subview was hidden
    printView.hidden = YES;
    self.picVisible = NO;

    
    temp=[[NSMutableDictionary alloc]init];
    temp=recorddict;
    //    NSLog(@"temp in didload %@",temp );
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]])
        {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    reslabel2.text=@"Yes";
    reslabel1.text=@"Yes";
    reslabel3.text=@"Yes";
    reslabel4.text=@"Yes";
    reslabel5.text=@"Yes";
    reslabel6.text=@"Yes";
    seglabel.text=@"Oily";
    update.hidden=YES;
    deleteform.hidden=YES;
    reset2.hidden=YES;
    submit.hidden=NO;
    reset1.hidden=NO;
    cancel1.hidden=NO;
    cancel2.hidden=YES;
    [self displaydata];
    
	// Do any additional setup after loading the view.
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
        
        noofemployessinjured.text=[resultset objectForKey:@"no_of_employees"];
        changesmadeinjob.text=[resultset objectForKey:@"changes_in_job"];
        if ([[resultset objectForKey:@"push_pull"] isEqualToString:@"Yes"]) {
            [switch1 setOn:YES animated:YES];
            reslabel1.text=@"Yes";
            givespecificsyes.hidden=NO;
            givespecificsyestext.hidden=NO;
            givespecificsyestext.text=[resultset objectForKey:@"jobpp"];
            
        }
        else
        {
            [switch1 setOn:NO animated:YES];
            reslabel1.text=@"No";
            givespecificsyestext.text=@"";
            givespecificsyes.hidden=YES;
            givespecificsyestext.hidden=YES;
            
        }
        if ([[resultset objectForKey:@"work_area"] length]>0)
        {
            if ([[resultset objectForKey:@"work_area"] isEqualToString:@"Oily"])
            {
                [seg setSelectedSegmentIndex:0];
                segothertext.hidden=YES;
                seglabel.text=@"Oily";
                
                
                
            }
            else if ([[resultset objectForKey:@"work_area"] isEqualToString:@"Dirty"]) {
                [seg setSelectedSegmentIndex:1];
                segothertext.hidden=YES;
                seglabel.text=@"Dirty";
                
                
            }
            else if ([[resultset objectForKey:@"work_area"] isEqualToString:@"Slippery"])
            {
                [seg setSelectedSegmentIndex:2];
                segothertext.hidden=YES;
                seglabel.text=@"Slippery";
                
                
            }
            
            else
            {
                [seg setSelectedSegmentIndex:3];
                segothertext.hidden=NO;
                seglabel.text=@"Other";
                segothertext.text=[resultset objectForKey:@"warea"];
            }
            
            
        }
        else
        {
            //no value for segment
        }
        if ([[resultset objectForKey:@"levers"]isEqualToString:@"Yes"])
        {
            [switch2 setOn:YES animated:YES];
            reslabel2.text=@"Yes";
        }
        else
        {
            [switch2 setOn:NO animated:YES];
            reslabel2.text=@"No";
            
        }
        if ([[resultset objectForKey:@"overhead"]isEqualToString:@"Yes"])
        {
            [switch3 setOn:YES animated:YES];
            reslabel3.text=@"Yes";
        }
        else
        {
            [switch3 setOn:NO animated:YES];
            reslabel3.text=@"No";
            
        }
        if ([[resultset objectForKey:@"like_job"]isEqualToString:@"Yes"])
        {
            [switch4 setOn:YES animated:YES];
            reslabel4.text=@"Yes";
        }
        else
        {
            [switch4 setOn:NO animated:YES];
            reslabel4.text=@"No";
            
        }
        if ([[resultset objectForKey:@"pre_employment"]isEqualToString:@"Yes"])
        {
            [switch5 setOn:YES animated:YES];
            reslabel5.text=@"Yes";
        }
        else
        {
            [switch5 setOn:NO animated:YES];
            reslabel5.text=@"No";
            
        }
        if ([[resultset objectForKey:@"return_job"]isEqualToString:@"Yes"])
        {
            [switch6 setOn:YES animated:YES];
            reslabel6.text=@"Yes";
        }
        else
        {
            [switch6 setOn:NO animated:YES];
            reslabel6.text=@"No";
            
        }
        
    }
    else{
        //no dats found for this username
    }
}
-(void)dismissKeyboard {
     printView.hidden = YES;
    [segothertext resignFirstResponder];
    [givespecificsyestext resignFirstResponder];
    [noofemployessinjured resignFirstResponder];
    [changesmadeinjob resignFirstResponder];
}

-(IBAction)submit:(id)sender
{
    du=[[databaseurl alloc]init];
    recorddict=[[NSMutableDictionary alloc]init];
    
    NSString *text1,*text2,*text3,*text4;
    
    text1=[segothertext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text2=[givespecificsyestext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text3=[noofemployessinjured.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text4=[changesmadeinjob.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if(seg.selectedSegmentIndex==3)
    {
        
        
    }
    else
        segothertext.text=@"";
    if([reslabel1.text isEqual:@"Yes"])
    {
        
    }
    else
        givespecificsyestext.text=@"";
    if(([noofemployessinjured.text length]!=0)&&
       ([changesmadeinjob.text length]!=0))
    {
        c=1;
        if((([givespecificsyestext.text length]>0)&&([du otherfields:givespecificsyestext.text]==1))||([givespecificsyestext.text length]==0))
        {
            if((([segothertext.text length]>0)&&([du otherfields:segothertext.text]==1))||([segothertext.text length]==0))
            {
                if([du date:noofemployessinjured.text]==1)
                {
                    if([du otherfields:changesmadeinjob.text]==1)
                    {
                        c=1;
                        [recorddict setValue:noofemployessinjured.text forKey:@"noofemployeesinjured"];
                        [recorddict setValue:changesmadeinjob.text forKey:@"changesmadeinjob"];
                        [recorddict setValue:reslabel1.text forKey:@"pushorpull"];
                        [recorddict setValue:reslabel2.text forKey:@"footorhandlevers"];
                        [recorddict setValue:reslabel3.text forKey:@"workoverhead"];
                        [recorddict setValue:reslabel4.text forKey:@"likeyourjob"];
                        [recorddict setValue:reslabel5.text forKey:@"preemploymentexam"];
                        [recorddict setValue:reslabel6.text forKey:@"wanttoreturnjob"];
                        [recorddict setValue:seglabel.text forKey:@"workarea"];
                        [recorddict setValue:segothertext.text forKey:@"workareaother"];
                        [recorddict setValue:givespecificsyestext.text forKey:@"givespecifics"];
                    }
                    else{
                        c=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid text for changes made in your job field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    }
                }
                else{
                    c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid number of employees have been injured field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
                
            }
            else{
                c=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid work area." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
        }
        else{
            c=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid push or pull field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
        
        
        
    }
    else
    {
        c=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Required fields should not be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    if (c==1)
    {
        [recorddict addEntriesFromDictionary:temp];
       // NSLog(@"record dict values %@",recorddict);
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
    
    
    //method end
}
-(IBAction)clear:(id)sender
{
    for (UIView *subview in [self.view subviews])
        if([subview isKindOfClass:[UITextField class]])
            [(UITextField*)subview setText:@""];
    [seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    seglabel.text=@"Oily";
    //  seglabel.text = @"null";
    segothertext.hidden = YES;
    [switch1 setOn:YES animated:YES];
    [self toggleEnabledTextForSwitch1onSomeLabel: Nil];
    [switch2 setOn:YES animated:YES];
    [self toggleEnabledTextForSwitch2onSomeLabel: Nil];
    [switch3 setOn:YES animated:YES];
    [self toggleEnabledTextForSwitch3onSomeLabel: Nil];
    [switch4 setOn:YES animated:YES];
    [self toggleEnabledTextForSwitch4onSomeLabel: Nil];
    [switch5 setOn:YES animated:YES];
    [self toggleEnabledTextForSwitch5onSomeLabel: Nil];
    [switch6 setOn:YES animated:YES];
    [self toggleEnabledTextForSwitch6onSomeLabel: Nil];
    
    
    
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"workaccident Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form updation successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                //// [self performSegueWithIdentifier:@"worktowelcome" sender:self];
                [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form updation failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                // [self performSegueWithIdentifier:@"worktowelcome" sender:self];
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"workaccident Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form deletion successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                    // [self performSegueWithIdentifier:@"worktowelcome" sender:self];
                    [self cancel:self];
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form deletion failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    // [self performSegueWithIdentifier:@"worktowelcome" sender:self];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"workaccident Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form submission successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                // [self performSegueWithIdentifier:@"worktowelcome" sender:self];
                [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form submission failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                // [self performSegueWithIdentifier:@"worktowelcome" sender:self];
                [self cancel:self];
            }
        }
    }
    
}

-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Workaccident.php?service=workaccidentinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&job_classification=%@&doyou_pos=%@&doyou=%@&pick=%@&carry=%@&injury_occur=%@&saw_accident=%@&title=%@&present_job=%@&time_loss=%@&absenteeism=%@&type_of_light=%@&lighting=%@&pick_lift=%@&how_much=%@&how_often=%@&where_to_where=%@&lift_from=%@&liftin_orout=%@&workpos=%@&push_pull=%@&jobpp=%@&work_area=%@&warea=%@&levers=%@&overhead=%@&no_of_employees=%@&like_job=%@&pre_employment=%@&return_job=%@&changes_in_job=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"jobclass"],[recorddict objectForKey:@"doyou"],[recorddict objectForKey:@"doyouother"],[recorddict objectForKey:@"carryanything"],[recorddict objectForKey:@"carrything"],[recorddict objectForKey:@"howinjuryocc"],[recorddict objectForKey:@"sawperson"],[recorddict objectForKey:@"title"],[recorddict objectForKey:@"period"],[recorddict objectForKey:@"jobinjury"],[recorddict objectForKey:@"jobinjuryyesdetail"],[recorddict objectForKey:@"typeoflighting"],[recorddict objectForKey:@"typeother"],[recorddict objectForKey:@"pickuporlift"],[recorddict objectForKey:@"howmuch"],[recorddict objectForKey:@"howoften"],[recorddict objectForKey:@"fromwhere"],[recorddict objectForKey:@"liftfrom"],[recorddict objectForKey:@"liftinoroutofmachine"],[recorddict objectForKey:@"labworkingatmaching"],[recorddict objectForKey:@"pushorpull"],[recorddict objectForKey:@"givespecifics"],[recorddict objectForKey:@"workarea"],[recorddict objectForKey:@"workareaother"],[recorddict objectForKey:@"footorhandlevers"],[recorddict objectForKey:@"workoverhead"],[recorddict objectForKey:@"noofemployeesinjured"],[recorddict objectForKey:@"likeyourjob"],[recorddict objectForKey:@"preemploymentexam"],[recorddict objectForKey:@"wanttoreturnjob"],[recorddict objectForKey:@"changesmadeinjob"],secondEntity,value2];
    
    
    
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
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Workaccident.php?service=workaccidentedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&job_classification=%@&doyou_pos=%@&doyou=%@&pick=%@&carry=%@&injury_occur=%@&saw_accident=%@&title=%@&present_job=%@&time_loss=%@&absenteeism=%@&type_of_light=%@&lighting=%@&pick_lift=%@&how_much=%@&how_often=%@&where_to_where=%@&lift_from=%@&liftin_orout=%@&workpos=%@&push_pull=%@&jobpp=%@&work_area=%@&warea=%@&levers=%@&overhead=%@&no_of_employees=%@&like_job=%@&pre_employment=%@&return_job=%@&changes_in_job=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"jobclass"],[recorddict objectForKey:@"doyou"],[recorddict objectForKey:@"doyouother"],[recorddict objectForKey:@"carryanything"],[recorddict objectForKey:@"carrything"],[recorddict objectForKey:@"howinjuryocc"],[recorddict objectForKey:@"sawperson"],[recorddict objectForKey:@"title"],[recorddict objectForKey:@"period"],[recorddict objectForKey:@"jobinjury"],[recorddict objectForKey:@"jobinjuryyesdetail"],[recorddict objectForKey:@"typeoflighting"],[recorddict objectForKey:@"typeother"],[recorddict objectForKey:@"pickuporlift"],[recorddict objectForKey:@"howmuch"],[recorddict objectForKey:@"howoften"],[recorddict objectForKey:@"fromwhere"],[recorddict objectForKey:@"liftfrom"],[recorddict objectForKey:@"liftinoroutofmachine"],[recorddict objectForKey:@"labworkingatmaching"],[recorddict objectForKey:@"pushorpull"],[recorddict objectForKey:@"givespecifics"],[recorddict objectForKey:@"workarea"],[recorddict objectForKey:@"workareaother"],[recorddict objectForKey:@"footorhandlevers"],[recorddict objectForKey:@"workoverhead"],[recorddict objectForKey:@"noofemployeesinjured"],[recorddict objectForKey:@"likeyourjob"],[recorddict objectForKey:@"preemploymentexam"],[recorddict objectForKey:@"wanttoreturnjob"],[recorddict objectForKey:@"changesmadeinjob"],secondEntity,value2];    //    NSLog(@"POST:%@",post);
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
    NSString *url1=@"Workaccident.php?service=workaccidentdelete";
    
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
- (void)viewWillDisappear:(BOOL)animated
{
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        
        if ([self isPicVisible]) {
            UIPrintInteractionController *pc = [UIPrintInteractionController sharedPrintController];
            [pc dismissAnimated:animated];
            self.picVisible = NO;
            printView.hidden = YES;
        }
    }
    
}

- (void)printInteractionControllerDidPresentPrinterOptions:(UIPrintInteractionController *)printInteractionController {
    [printView setHidden:YES];
    self.picVisible = YES;
}

- (void)printInteractionControllerDidDismissPrinterOptions:(UIPrintInteractionController *)printInteractionController {
    self.picVisible = NO;
}

-(void)performAction:(id)sender
{
    printView.hidden = NO;
}

- (void)printAction
{
    UIGraphicsBeginImageContext(self.view.frame.size);
	[self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
    NSData *imageData = UIImagePNGRepresentation(viewImage);
    [self printItem:imageData];
}
#pragma mark - Printing

-(void)printItem :(NSData*)data {
    UIPrintInteractionController *printController = [UIPrintInteractionController sharedPrintController];
    if(printController && [UIPrintInteractionController canPrintData:data]) {
        printController.delegate = self;
        UIPrintInfo *printInfo = [UIPrintInfo printInfo];
        printInfo.outputType = UIPrintInfoOutputGeneral;
        printInfo.jobName = [NSString stringWithFormat:@""];
        printInfo.duplex = UIPrintInfoDuplexLongEdge;
        printController.printInfo = printInfo;
        printController.showsPageRange = YES;
        printController.printingItem = data;
        
        
        
        void (^completionHandler)(UIPrintInteractionController *, BOOL, NSError *) = ^(UIPrintInteractionController *printController, BOOL completed, NSError *error) {
            if (!completed && error) {
                //NSLog(@"FAILED! due to error in domain %@ with error code %u", error.domain, error.code);
            }
        };
        [printController presentFromBarButtonItem:barButton animated:YES completionHandler:completionHandler];
    }
}

- (void)dealloc {
    [super dealloc];
}
@end
