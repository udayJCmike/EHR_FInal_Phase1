//
//  WorkaccidentViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/11/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "WorkaccidentViewController.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "staffautocheckViewController.h"

@interface WorkaccidentViewController ()

@end

@implementation WorkaccidentViewController
@synthesize staff;
@synthesize switch1;
@synthesize switch2;
@synthesize switch3;
@synthesize switch4;
@synthesize recorddict;
@synthesize carryanything;
@synthesize jobinjury;
@synthesize liftinorout;
@synthesize pickuporlift;
@synthesize carrything;
@synthesize carrythinglabel;
@synthesize jobinjuryyes;
@synthesize jobinjuryyeslabel;
@synthesize howmuch;
@synthesize howmuchlabel;
@synthesize howoften;
@synthesize howoftenlabel;
@synthesize fromwhere;
@synthesize fromwherelabel;
@synthesize segdoyou;
@synthesize workingatmac;
@synthesize segliftfrom;
@synthesize segtypeoflifting;
@synthesize howoftensegment;
@synthesize resultset;

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
    NSString *countryFormat1 =@"(?:[A-Za-z0-9]+[A-Za-z]*)";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validatealphanumeric:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[A-Z0-9a-z.:_,-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
-(BOOL)validateperiod:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    
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
    
    carryanything.text=@"Yes";
    jobinjuryyeslabel.text=[NSString stringWithFormat:@"If \"Yes,\" explain(include dates):"];
    liftinorout.text=@"Yes";
    pickuporlift.text=@"Yes";
    doyou.text=@"Sit a desk";
    typeoflighting.text=@"Fluorescent";
    liftfrom.text=@"Ground";
    labworkingatmaching.text=@"Sit";
    howoften.text=@"Seldom";
    recorddict=[[NSMutableDictionary alloc]init];
    resultset=[[NSMutableDictionary alloc]init];
    [self Getdata];
	// Do any additional setup after loading the view.
    
}
-(void)dismissKeyboard
{
    [jobclass resignFirstResponder];
    [doyouother resignFirstResponder];
    [carrything resignFirstResponder];
    [howinjuryocc resignFirstResponder];
    [howmuch resignFirstResponder];
    [howoften resignFirstResponder];
    [jobclass resignFirstResponder];
    [jobinjuryyes resignFirstResponder];
    [period resignFirstResponder];
    [sawperson resignFirstResponder];
    [titletext resignFirstResponder];
    [typeother resignFirstResponder];
    [fromwhere resignFirstResponder];
}

- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (switch1.on)
    {
        carryanything.text = @"Yes";
        carrything.hidden=NO;
        carrythinglabel.hidden=NO;
	}
    else
    {
        carryanything.text = @"No";
        carrything.hidden=YES;
        carrythinglabel.hidden=YES;
        carrything.text=@"";
        
    }
}
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (switch2.on) {
        
        jobinjury.text = @"Yes";
        jobinjuryyes.hidden=NO;
        jobinjuryyeslabel.hidden=NO;
    }
	else
    {
        
        jobinjury.text = @"No";
        jobinjuryyes.hidden=YES;
        jobinjuryyeslabel.hidden=YES;
        jobinjuryyes.text=@"";
        
    }
}
- (IBAction) toggleEnabledTextForSwitch3onSomeLabel: (id) sender
{
	if (switch3.on) liftinorout.text = @"Yes";
	else liftinorout.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch4onSomeLabel: (id) sender
{
	if (switch4.on)
    {
        pickuporlift.text = @"Yes";
        howmuch.hidden=NO;
        howoftensegment.hidden=NO;
        fromwhere.hidden=NO;
        howmuchlabel.hidden=NO;
        howoftenlabel.hidden=NO;
        fromwherelabel.hidden=NO;
        howmuch.text=@"";
        fromwhere.text=@"";
        
    }
	else
    {
        pickuporlift.text = @"No";
        howoftensegment.hidden=YES;
        howmuch.hidden=YES;
        fromwhere.hidden=YES;
        howmuchlabel.hidden=YES;
        howoftenlabel.hidden=YES;
        fromwherelabel.hidden=YES;
        
    }
}
-(IBAction)segselected1:(id)sender{
    if(segdoyou.selectedSegmentIndex==0)
    {  doyouother.hidden=YES;
        doyou.text=@"Sit a desk";
    }
    else if (segdoyou.selectedSegmentIndex==1)
    {
        doyouother.hidden=YES;
        doyou.text=@"Walk";
    }
    else if (segdoyou.selectedSegmentIndex==2)
    {
        doyouother.hidden=YES;
        doyou.text=@"Stand";
    }
    else if (segdoyou.selectedSegmentIndex==3)
    {
        doyouother.hidden=YES;
        doyou.text=@"Stoop";
    }
    else if (segdoyou.selectedSegmentIndex==4)
    {
        doyouother.hidden=YES;
        doyou.text=@"Hold";
    }
    else if (segdoyou.selectedSegmentIndex==5)
    {
        doyouother.hidden=YES;
        doyou.text=@"Carry";
    }
    else if (segdoyou.selectedSegmentIndex==6)
    {
        doyouother.hidden=YES;
        doyou.text=@"Drive";
    }
    else if (segdoyou.selectedSegmentIndex==7)
    {
        doyouother.hidden=YES;
        doyou.text=@"Load";
    }
    else if (segdoyou.selectedSegmentIndex==8)
    {
        doyouother.hidden=NO;
        
        doyou.text=@"Other";
    }
}
-(IBAction)segselected2:(id)sender{
    if(segtypeoflighting.selectedSegmentIndex==0)
    { typeother.hidden=YES;
        typeoflighting.text=@"Fluorescent";
    }
    else if (segtypeoflighting.selectedSegmentIndex==1)
    {
        typeother.hidden=YES;
        typeoflighting.text=@"Overhead";
    }
    else if (segtypeoflighting.selectedSegmentIndex==2)
    {
        typeother.hidden=YES;
        typeoflighting.text=@"On Machine";
    }
    else if (segtypeoflighting.selectedSegmentIndex==3)
    {
        typeother.hidden=NO;
        typeoflighting.text=@"Other";
        typeother.text=@"";
        
    }
    
}
-(IBAction)segselected3:(id)sender{
    if (segliftfrom.selectedSegmentIndex==0)
    {
        liftfrom.text=@"Ground";
    }
    else if (segliftfrom.selectedSegmentIndex==1)
    {
        liftfrom.text=@"Bench";
    }
    else if (segliftfrom.selectedSegmentIndex==2)
    {
        liftfrom.text=@"Platform";
    }
    
}
-(IBAction)segselected4:(id)sender
{
    if(workingatmac.selectedSegmentIndex==0)
    {
        labworkingatmaching.text=@"Sit";
    }
    else if (workingatmac.selectedSegmentIndex==1)
    {
        labworkingatmaching.text=@"Stand";
    }
    else if (workingatmac.selectedSegmentIndex==2)
    {
        labworkingatmaching.text=@"Kneel";
    }
}

-(IBAction)segselected5:(id)sender
{
    if(howoftensegment.selectedSegmentIndex==0)
    {
        howoften.text=@"Seldom";
    }
    else if(howoftensegment.selectedSegmentIndex==1)
    {
        howoften.text=@"Sometimes";
    }
    else if(howoftensegment.selectedSegmentIndex==2)
    {
        howoften.text=@"Often";
    }
    else if(howoftensegment.selectedSegmentIndex==3)
    {
        howoften.text=@"Regularly";
    }
}

-(IBAction)saveandcontinue:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    a=0;
    b=0;
    d=0;
    c=0;
    NSString *text1,*text2,*text3,*text4,*text5,*text6,*text7,*text8,*text9,*text10,*text11;
    
    text1=[carrything.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text2=[jobinjuryyes.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text3=[fromwhere.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text4=[howmuch.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text5=[doyouother.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text6=[typeother.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text7=[jobclass.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text8=[howinjuryocc.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text9=[sawperson.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text10=[titletext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    text11=[period.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if ([carryanything.text  isEqual: @"Yes"])
    {
        a=[self validateNames:text1];
        
	}
    else
        a=1;
    
    if([jobinjury.text isEqual:@"Yes"])
    {
        b=[self validatealphanumeric:text2];
    }
    else
        b=1;
    if ([pickuporlift.text isEqual:@"Yes"])
    {
        if (([self validatealphanumeric:text3])&&
            ([self validatealphanumeric:text4]))
        {
            d=1;
        }
        else d=0;
    }
    else
        d=1;
    if (segdoyou.selectedSegmentIndex==8)
    {
        
        seg1=[self validateNames:text5];
    }
    else seg1=1;
    if (segtypeoflighting.selectedSegmentIndex==3)
    {
        
        
        seg2=[self validateNames:text6] ;
    }
    else
        seg2=1;
    
    if(([jobclass.text length]!=0)&&
       ([howinjuryocc.text length]!=0)&&
       ([sawperson.text length]!=0)&&
       ([titletext.text length]!=0)&&
       ([period.text length]!=0))
    {
        c=1;
        if([self validateNames:text7]==1)
        {
            if([self validateNames:text8]==1)
            {
                if([self validateNames:text9]==1)
                {
                    if([self validateNames:text10]==1)
                    {
                        if([self validateperiod:text11]==1)
                        {
                            [recorddict setValue:liftinorout.text forKey:@"liftinoroutofmachine"];
                            [recorddict setValue:jobclass.text forKey:@"jobclass"];
                            [recorddict setValue:howinjuryocc.text forKey:@"howinjuryocc"];
                            [recorddict setValue:sawperson.text forKey:@"sawperson"];
                            [recorddict setValue:titletext.text forKey:@"title"];
                            [recorddict setValue:period.text forKey:@"period"];
                            [recorddict setValue:liftfrom.text forKey:@"liftfrom"];
                            [recorddict setValue:labworkingatmaching.text forKey:@"labworkingatmaching"];
                            if(a==1){
                                
                                [recorddict setValue:carryanything.text forKey:@"carryanything"];
                                [recorddict setValue:carrything.text forKey:@"carrything"];
                                
                                
                                if(b==1)
                                {
                                    
                                    [recorddict setValue:jobinjury.text forKey:@"jobinjury"];
                                    [recorddict setValue:jobinjuryyes.text forKey:@"jobinjuryyesdetail"];
                                    
                                    
                                    if(d==1)
                                    {
                                        
                                        [recorddict setValue:pickuporlift.text forKey:@"pickuporlift"];
                                        [recorddict setValue:fromwhere.text forKey:@"fromwhere"];
                                        [recorddict setValue:howmuch.text forKey:@"howmuch"];
                                        [recorddict setValue:howoften.text forKey:@"howoften"];
                                        
                                        if(seg1==1){
                                            [recorddict setValue:doyou.text forKey:@"doyou"];
                                            [recorddict setValue:doyouother.text forKey:@"doyouother"];
                                            if(seg2==1)
                                            {c =1;
                                                [recorddict setValue:typeoflighting.text forKey:@"typeoflighting"];
                                                [recorddict setValue:typeother.text forKey:@"typeother"];
                                            }
                                            else{
                                                c=0;
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid type of lighting data." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                            }
                                        }
                                        else{
                                            c=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid do you field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                        }
                                        
                                    }
                                    else{
                                        c=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid pickup or lift data." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                    }
                                }
                                else
                                {
                                    c=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid time loss or absenteesim caused detail." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                }
                                
                            }
                            
                            
                            
                            else{
                                c=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid carry material name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                            }
                        }
                        else{
                            c=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid period." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                        }
                    }
                    else{
                        c=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid title name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    }
                }
                else
                {
                    c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid saw person name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
            }
            else{
                c=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid injury occured reason." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
        }
        else{
            c=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid job classification." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
    }
    else{
        c=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter all the required fields." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    if (c==1)    {
        c=0;
        
        [self performSegueWithIdentifier:@"Workaccident1" sender:self];
    }
}

- (IBAction)cancel:(id)sender
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


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    if ([segue.identifier isEqualToString:@"Workaccident1"])
    {
        c=0;
        a=0;
        b=0;
        d=0;
        Workaccident2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        destViewController.staff=staff;
        // destViewController.delegate=self;
    }
    
    
    
}
-(IBAction)clear:(id)sender
{
    for (UIView *subview in [self.view subviews])
        if([subview isKindOfClass:[UITextField class]])
            [(UITextField*)subview setText:@""];
    [segdoyou setSelectedSegmentIndex:0];
    doyouother.hidden = YES;
    [segtypeoflighting setSelectedSegmentIndex:0];
    typeother.hidden = YES;
    [segliftfrom setSelectedSegmentIndex:0];
    [workingatmac setSelectedSegmentIndex:0];
    [howoftensegment setSelectedSegmentIndex:0];
    [switch1 setOn:YES animated:YES];
    [self toggleEnabledTextForSwitch1onSomeLabel: Nil];
    [switch2 setOn:YES animated:YES];
    [self toggleEnabledTextForSwitch2onSomeLabel: Nil];
    [switch3 setOn:YES animated:YES];
    [self toggleEnabledTextForSwitch3onSomeLabel: Nil];
    [switch4 setOn:YES animated:YES];
    [self toggleEnabledTextForSwitch4onSomeLabel: Nil];
    
    
    
    
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Workaccident.php?service=workaccidentselect";
    
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
    NSArray *items1App=[itemsApp objectForKey:@"workaccidentuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            //        NSLog(@"arraylist count %d",[arrayList1 count]);
            temp=[arrayList1 objectForKey:@"patient_no"];
            temp1 =[arrayList1 objectForKey:@"username"];
            temp2 =[arrayList1 objectForKey:@"job_classification"];
            temp3 =[arrayList1 objectForKey:@"doyou_pos"];
            temp4 =[arrayList1 objectForKey:@"doyou"];
            
            temp6=[arrayList1 objectForKey:@"pick"];
            temp7=[arrayList1 objectForKey:@"carry"];
            temp8=[arrayList1 objectForKey:@"injury_occur"];
            temp9=[arrayList1 objectForKey:@"saw_accident"];
            temp10=[arrayList1 objectForKey:@"title"];
            temp11=[arrayList1 objectForKey:@"present_job"];
            temp12=[arrayList1 objectForKey:@"time_loss"];
            temp13=[arrayList1 objectForKey:@"absenteeism"];
            temp14=[arrayList1 objectForKey:@"type_of_light"];
            temp5=[arrayList1 objectForKey:@"lighting"];
            temp15=[arrayList1 objectForKey:@"pick_lift"];
            temp16=[arrayList1 objectForKey:@"how_much"];
            temp17=[arrayList1 objectForKey:@"how_often"];
            temp18=[arrayList1 objectForKey:@"where_to_where"];
            temp19=[arrayList1 objectForKey:@"lift_from"];
            
            temp20=[arrayList1 objectForKey:@"liftin_orout"];
            temp21=[arrayList1 objectForKey:@"workpos"];
            temp22=[arrayList1 objectForKey:@"push_pull"];
            temp23=[arrayList1 objectForKey:@"jobpp"];
            temp24=[arrayList1 objectForKey:@"work_area"];
            temp25=[arrayList1 objectForKey:@"warea"];
            temp26=[arrayList1 objectForKey:@"levers"];
            temp27=[arrayList1 objectForKey:@"overhead"];
            temp28=[arrayList1 objectForKey:@"no_of_employees"];
            temp29=[arrayList1 objectForKey:@"like_job"];
            temp30=[arrayList1 objectForKey:@"pre_employment"];
            temp31=[arrayList1 objectForKey:@"return_job"];
            temp32=[arrayList1 objectForKey:@"changes_in_job"];
            
            
            
            
            [self setdatas];//set database values
            
            [resultset setObject:temp22  forKey:@"push_pull"];
            [resultset setObject:temp23  forKey:@"jobpp"];
            [resultset setObject:temp24  forKey:@"work_area"];
            [resultset setObject:temp25  forKey:@"warea"];
            [resultset setObject:temp26  forKey:@"levers"];
            [resultset setObject:temp27  forKey:@"overhead"];
            [resultset setObject:temp28  forKey:@"no_of_employees"];
            [resultset setObject:temp29  forKey:@"like_job"];
            [resultset setObject:temp30  forKey:@"pre_employment"];
            [resultset setObject:temp31  forKey:@"return_job"];
            [resultset setObject:temp32  forKey:@"changes_in_job"];
            
            //            NSLog(@"result set %@",resultset);
            
            
            
            
            
            
            
        }
        
    }
    else
    {
        //no dats for this username
    }
    
    
}
-(void)setdatas
{
    
    jobclass.text=temp2;
    howinjuryocc.text=temp8;
    sawperson.text=temp9;
    titletext.text=temp10;
    period.text=temp11;
    
    
    if ([temp3 length]>0)
    {
        if ([temp3 isEqualToString:@"Sit a desk"])
        {
            [segdoyou setSelectedSegmentIndex:0];
            doyouother.hidden=YES;
            doyou.text=@"Sit a desk";
            
            
        }
        else if ([temp3  isEqualToString:@"Walk"]) {
            [segdoyou setSelectedSegmentIndex:1];
            doyouother.hidden=YES;
            doyou.text=@"Walk";
            
            
            
        }
        else if ([temp3  isEqualToString:@"Stand"])
        {
            [segdoyou setSelectedSegmentIndex:2];
            doyouother.hidden=YES;
            doyou.text=@"Stand";
            
        }
        else if ([temp3  isEqualToString:@"Stoop"]) {
            [segdoyou setSelectedSegmentIndex:3];
            doyouother.hidden=YES;
            doyou.text=@"Stoop";
            
            
            
        }
        else if ([temp3  isEqualToString:@"Hold"]) {
            [segdoyou setSelectedSegmentIndex:4];
            doyouother.hidden=YES;
            doyou.text=@"Hold";
            
        }
        else if ([temp3  isEqualToString:@"Carry"]) {
            [segdoyou setSelectedSegmentIndex:5];
            doyouother.hidden=YES;
            doyou.text=@"Carry";
            
        }
        else if ([temp3  isEqualToString:@"Drive"]) {
            [segdoyou setSelectedSegmentIndex:6];
            doyouother.hidden=YES;
            doyou.text=@"Drive";
            
        }
        else if ([temp3  isEqualToString:@"Load"]) {
            [segdoyou setSelectedSegmentIndex:7];
            doyouother.hidden=YES;
            doyou.text=@"Load";
            
        }
        else {
            [segdoyou setSelectedSegmentIndex:8];
            doyouother.hidden=NO;
            doyou.text=@"Other";
            doyouother.text=temp4;
        }
        
    }
    else
    {
        //no value for segment 1
    }
    if ([temp6 isEqualToString:@"Yes"]) {
        [switch1 setOn:YES animated:YES];
        carryanything.text = @"Yes";
        carrything.hidden=NO;
        carrythinglabel.hidden=NO;
        carrything.text=temp7;
    }
    else
    {
        [switch1 setOn:NO animated:YES];
        carryanything.text = @"No";
        carrything.hidden=YES;
        carrythinglabel.hidden=YES;
        carrything.text=@"";
        
    }
    if ([temp12 isEqualToString:@"Yes"]) {
        
        [switch2 setOn:YES animated:YES];
        jobinjury.text = @"Yes";
        jobinjuryyes.hidden=NO;
        jobinjuryyeslabel.hidden=NO;
        jobinjuryyes.text=temp13;
    }
	else
    {
        [switch2 setOn:NO animated:YES];
        jobinjury.text = @"No";
        jobinjuryyes.hidden=YES;
        jobinjuryyeslabel.hidden=YES;
        jobinjuryyes.text=@"";
        
    }
    if ([temp14 length]>0)
    {
        if ([temp14 isEqualToString:@"Fluorescent"])
        {
            [segtypeoflighting setSelectedSegmentIndex:0];
            typeother.hidden=YES;
            typeoflighting.text=@"Fluorescent";
            
        }
        else if ([temp14 isEqualToString:@"Overhead"]) {
            [segtypeoflighting setSelectedSegmentIndex:1];
            typeother.hidden=YES;
            typeoflighting.text=@"Overhead";
            
            
            
            
        }
        else if ([temp14 isEqualToString:@"On Machine"])
        {
            [segtypeoflighting setSelectedSegmentIndex:2];
            typeother.hidden=YES;
            typeoflighting.text=@"On Machine";
            
            
            
        }
        else if ([temp14 isEqualToString:@"Other"]) {
            [segtypeoflighting setSelectedSegmentIndex:3];
            typeother.hidden=NO;
            typeother.text=temp5;
            typeoflighting.text=@"Other";
        }
        
        else {
            //no matches found
        }
        
    }
    else
    {
        //no value for segment
    }
    if ([temp15 isEqualToString:@"Yes"])
    {
        [switch4 setOn:YES animated:YES];
        
        pickuporlift.text = @"Yes";
        howmuch.hidden=NO;
        howoftensegment.hidden=NO;
        fromwhere.hidden=NO;
        howmuchlabel.hidden=NO;
        howoftenlabel.hidden=NO;
        fromwherelabel.hidden=NO;
        howmuch.text=temp16;
        fromwhere.text=temp18;
        if ([temp17 length]>0)
        {
            if([temp17 isEqualToString:@"Seldom"])
            {
                [howoftensegment setSelectedSegmentIndex:0];
                howoften.text=@"Seldom";
            }
            else if([temp17 isEqualToString:@"Sometimes"])
            {
                [howoftensegment setSelectedSegmentIndex:1];
                howoften.text=@"Sometimes";
            }
            else if([temp17 isEqualToString:@"Often"])
            {
                [howoftensegment setSelectedSegmentIndex:2];
                howoften.text=@"Often";
            }
            else if([temp17 isEqualToString:@"Regularly"])
            {
                [howoftensegment setSelectedSegmentIndex:3];
                howoften.text=@"Regularly";
            }
        }
        
        
    }
	else
    {
        [switch4 setOn:NO animated:YES];
        pickuporlift.text = @"No";
        howoftensegment.hidden=YES;
        howmuch.hidden=YES;
        fromwhere.hidden=YES;
        howmuchlabel.hidden=YES;
        howoftenlabel.hidden=YES;
        fromwherelabel.hidden=YES;
        
    }
    
    if ([temp20 isEqualToString:@"Yes"]) {
        
        [switch3 setOn:YES animated:YES];
        liftinorout.text = @"Yes";
        
    }
	else
    {
        [switch3 setOn:NO animated:YES];
        liftinorout.text = @"No";
        
    }
    if ([temp19 length]>0)
    {
        if ([temp19 isEqualToString:@"Ground"])
        {
            [segliftfrom setSelectedSegmentIndex:0];
            liftfrom.text=@"Ground";
            
            
        }
        else if ([temp19 isEqualToString:@"Bench"]) {
            [segliftfrom setSelectedSegmentIndex:1];
            liftfrom.text=@"Bench";
            
        }
        else if ([temp19 isEqualToString:@"Platform"])
        {
            [segliftfrom setSelectedSegmentIndex:2];
            liftfrom.text=@"Platform";
            
        }
        
        else
        {
            //no matches found
        }
        
        
    }
    else
    {
        //no value for segment
    }
    if ([temp21 length]>0)
    {
        if ([temp21 isEqualToString:@"Sit"])
        {
            [workingatmac setSelectedSegmentIndex:0];
            labworkingatmaching.text=@"Sit";
            
            
        }
        else if ([temp21 isEqualToString:@"Stand"]) {
            [workingatmac setSelectedSegmentIndex:1];
            labworkingatmaching.text=@"Stand";
            
        }
        else if ([temp21 isEqualToString:@"Kneel"])
        {
            labworkingatmaching.text=@"Kneel";
            [workingatmac setSelectedSegmentIndex:2];
            
        }
        else
        {
            //no matches found
        }
        
        
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

@end
