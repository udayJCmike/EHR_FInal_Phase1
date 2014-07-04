//
//  radiological3ViewController.m
//  radiological
//
//  Created by deemsys on 3/3/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "radiological3ViewController.h"
#import "radiological1ViewController.h"

#import "radiological2ViewController.h"
#import "radiologicalViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
@interface radiological3ViewController ()

@end

@implementation radiological3ViewController
@synthesize viewtext;
@synthesize  recorddict;
@synthesize pos;
@synthesize nor;



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
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
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

- (IBAction)checkboxselected:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}
- (IBAction)save:(id)sender {
    //recorddict=[[NSMutableDictionary alloc]init];
    if(nor.selected)
    {
        
        [recorddict setValue:@"normal"forKey:@"E_normal1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"E_normal1"];
    }
    if(pos.selected)
    {
        
        
        [recorddict setValue:@"positive for" forKey:@"E_positive for"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"E_positive for"];
        
    }
    
    a=1;
    temp1 = [viewtext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if((([temp1 length]>0)&&([self validateNames:temp1]==1))||([temp1 length]==0))
    {
        if([viewtext.text isEqualToString:@""]){
            viewtext.text=@"null";
        }
        [recorddict setValue:viewtext.text forKey:@"E_views"];
        
        NSLog(@"record dict in 2nd page:%@",recorddict);
        
        NSLog(@"size in final recorddict %d",[recorddict count]);
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
    else
    {
        a=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter valid view text."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
        
        
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
    
    
}-(void)insertdata
{
    
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1:@"patient_id" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"radiologicreport Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
                
                
                [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
        }
    }
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"RadiologicReport.php?service=radiologicreportinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    //   NSLog(@"values in record dictionaries::%@",recorddict);
    // NSLog(@"recorddict values::%@",recorddict);
    NSLog(@"value of georges si:%@",[recorddict objectForKey:@"L_hyper"]);
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&id=%@&dob=%@&views1=%@&negative_1=%@&positive_for=%@&positive_text1=%@&break_1=%@&break_text1=%@&adi_1=%@&hypolorodosis_1=%@&hypolordosis_select1=%@&normalcurvature_1=%@&normalcurvature_select1=%@&hyperlordosis_1=%@&hyperlordosis_select1=%@&mcGregorslinenormal_1=%@&mcGregorslineinterupted_1=%@&degenerativejointdisease_1=%@&degenerativejointdisease_select1=%@&mild_1=%@&moderate_1=%@&severe_1=%@&narrowed_1=%@&narrowed_text1=%@&anterior_1=%@&anterior_text1=%@&subchondral_1=%@&subchondral_text1=%@&schmorls_1=%@&schmorls_text1=%@&foraminal_1=%@&foraminal_select1=%@&osteoporosis_1=%@&osteoporosis_select1=%@&decreasedFlexExt_1=%@&decreasedFlexExt_select1=%@&decreasedRLFlex_1=%@&decreasedRLFlex_select1=%@&dextro_Levoscoliosis_towering_select1=%@&mild_11=%@&moderate_11=%@&severe_11=%@&apexat_1=%@&apexat_text1=%@&softtissueedemaof_1=%@&softtissueedemaof_text1=%@&other_1=%@&other_text1=%@&views2=%@&negative_2=%@&hyperkyphosis_2=%@&hyperkyphosis_select2=%@&normalkyphosis_2=%@&normalkyphosis_select2=%@&hypokyphosis_2=%@&hypokyphosis_select2=%@&degenerative_2=%@&degenerative_text2=%@&mild_2=%@&moderate_2=%@&severe_2=%@&narrowed_2=%@&narrowed_text2=%@&schmorlsnodesat_2=%@&schmorlsnodesat_text2=%@&anterior_2=%@&anterior_text2=%@&subchondral_2=%@&subchondral_text2=%@&foraminal_2=%@&foraminal_text2=%@&osteoporosis_2=%@&osteoporosis_select2=%@&dextro_Levoscoliosis_towering_select2=%@&mild_22=%@&moderate_22=%@&severe_22=%@&apexat_2=%@&apexat_text2=%@&softtissueedemaof_2=%@&softtissueedemaof_text2=%@&other_2=%@&other_text2=%@&",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"patient id"],[recorddict objectForKey:@"dob"],[recorddict objectForKey:@"c_views"],[recorddict objectForKey:@"c_Negative"],[recorddict objectForKey:@"c_positive"],[recorddict objectForKey:@"c_positive for"],[recorddict objectForKey:@"c_Break in Georges "],[recorddict objectForKey:@"c_Break in Georges line at"],[recorddict objectForKey:@"c_ADI more"],[recorddict objectForKey:@"c_Hypolordosis1"],[recorddict objectForKey:@"c_Hypolordosis"],[recorddict objectForKey:@"c_Normal Curva"],[recorddict objectForKey:@"c_Normal Curvature"],[recorddict objectForKey:@"c_Hyperlor"],[recorddict objectForKey:@"c_Hyperlordosis"],[recorddict objectForKey:@"c_McGregor's line"],[recorddict objectForKey:@"c_McGregor's line interup"],[recorddict objectForKey:@"c_Degenerative joint"],[recorddict objectForKey:@"c_Degenerative joint disease at"],[recorddict objectForKey:@"c_mild"],[recorddict objectForKey:@"c_moderate"],[recorddict objectForKey:@"c_severe"],[recorddict objectForKey:@"c_Narrowed disc"],[recorddict objectForKey:@"c_Narrowed disc space at"],[recorddict objectForKey:@"c_Anterior vertebr"],[recorddict objectForKey:@"c_Anterior vertebral body osteophytes at"],[recorddict objectForKey:@"c_Subchondral"],[recorddict objectForKey:@"c_Subchondral sclerosis of"],[recorddict objectForKey:@"c_Schmorl's nodes"],[recorddict objectForKey:@"c_Schmorl's nodes at"],[recorddict objectForKey:@"c_Foraminal ench"],[recorddict objectForKey:@"c_Foraminal enchroachment between"],[recorddict objectForKey:@"c_Osteoporosis1"],[recorddict objectForKey:@"c_Osteoporosis"],[recorddict objectForKey:@"c_Decreased Flex/Ext1"],[recorddict objectForKey:@"c_Decreased Flex/Ext"],[recorddict objectForKey:@"c_Decreased R/L Flex1"],[recorddict objectForKey:@"c_Decreased R/L Flex"],[recorddict objectForKey:@"c_dlt"],[recorddict objectForKey:@"c_mild11c"],[recorddict objectForKey:@"c_moderate"],[recorddict objectForKey:@"c_severe11c"],[recorddict objectForKey:@"c_apex11"],[recorddict objectForKey:@"c_apex at"],[recorddict objectForKey:@"c_soft11"],[recorddict objectForKey:@"c_Soft tissue edema of"],[recorddict objectForKey:@"c_other11"],[recorddict objectForKey:@"c_other"],[recorddict objectForKey:@"T_views"],[recorddict objectForKey:@"T_negative1"],[recorddict objectForKey:@"T_hyper1"],[recorddict objectForKey:@"T_hyper"],[recorddict objectForKey:@"T_normal1"],[recorddict objectForKey:@"T_normal"],[recorddict objectForKey:@"T_hypo1"],[recorddict objectForKey:@"T_hypo"],[recorddict objectForKey:@"T_degen1"],[recorddict objectForKey:@"T_Degenerative joint disease"],[recorddict objectForKey:@"T_mild1"],[recorddict objectForKey:@"T_moderate1"],[recorddict objectForKey:@"T_severe1"],[recorddict objectForKey:@"T_narrow11"],[recorddict objectForKey:@"T_narrow"],[recorddict objectForKey:@"T_sch11"],[recorddict objectForKey:@"T_sch"],[recorddict objectForKey:@"T_anterior11"],[recorddict objectForKey:@"T_anterior"],[recorddict objectForKey:@"T_sub11"],[recorddict objectForKey:@"T_sub"],[recorddict objectForKey:@"T_foraminal1"],[recorddict objectForKey:@"T_foraminal"],[recorddict objectForKey:@"T_oster11"],[recorddict objectForKey:@"T_oster"],[recorddict objectForKey:@"T_dlt"],[recorddict objectForKey:@"T_mild11T"],[recorddict objectForKey:@"T_moderate11T"],[recorddict objectForKey:@"T_severe11T"],[recorddict objectForKey:@"T_apex11"],[recorddict objectForKey:@"T_apex"],[recorddict objectForKey:@"T_soft11"],[recorddict objectForKey:@"T_soft"],[recorddict objectForKey:@"T_other11"],[recorddict objectForKey:@"T_other"]];
    
    NSString *post1=[[NSString alloc] initWithFormat:@"views3=%@&negative_3=%@&break_3=%@&break_text3=%@&osteoporosis_3=%@&osteoporosis_select3=%@&hyperkyphosis_3=%@&hyperkyphosis_select3=%@&normalkyphosis_3=%@&normalkyphosis_select3=%@&hypokyphosis_3=%@&hypokyphosos_select_3=%@&degenerative_3=%@&degenerative_select3=%@&mild_3=%@&moderate_3=%@&severe_3=%@&narrowed_3=%@&narrowed_text3=%@&anterior_3=%@&anterior_text3=%@&subchondral_3=%@&subchondral_text3=%@&schmorls_3=%@&schmorls_text3=%@&spondylolisthesisof_3=%@&spondylolisthesisof_select3=%@&other_text3=%@&grade_3=%@&decreasedRLF_3=%@&decreasedLLF_3=%@&facettropism_3=%@&sacralization_3=%@&lumbarization_3=%@&dextro_Levoscoliosis_towering_select3=%@&mild_33=%@&moderate_33=%@&severe_33=%@&apexat_3=%@&apexat_text3=%@&softtissueedemaof_3=%@&softtissueedemaof_text3=%@&other_3=%@&other_text33=%@&views4=%@&normal_4=%@&positivefor_4=%@&%@=%@",[recorddict objectForKey:@"L_views"],[recorddict objectForKey:@"L_negative for recent"],[recorddict objectForKey:@"L_break1"],[recorddict objectForKey:@"L_break"],[recorddict objectForKey:@"L_osterporo11"],[recorddict objectForKey:@"L_oster"],[recorddict objectForKey:@"L_hyperkypho1"],[recorddict objectForKey:@"L_hyper"],[recorddict objectForKey:@"L_normalkypho1"],[recorddict objectForKey:@"L_normal"],[recorddict objectForKey:@"L_hypokypho1"],[recorddict objectForKey:@"L_hypo"],[recorddict objectForKey:@"L_degen1"],[recorddict objectForKey:@"L_Degenerative joint "],[recorddict objectForKey:@"L_mild1"],[recorddict objectForKey:@"L_moderate1"],[recorddict objectForKey:@"L_severe1"],[recorddict objectForKey:@"L_narrow11"],[recorddict objectForKey:@"L_narrow"],[recorddict objectForKey:@"L_anterior11"],[recorddict objectForKey:@"L_anterior"],[recorddict objectForKey:@"L_sub11"],[recorddict objectForKey:@"L_sub"],[recorddict objectForKey:@"L_sac1"],[recorddict objectForKey:@"L_sch"],[recorddict objectForKey:@"L_spon1"],[recorddict objectForKey:@"L_spon"],[recorddict objectForKey:@"L_other1"],[recorddict objectForKey:@"L_grade"],[recorddict objectForKey:@"L_decrlf1"],[recorddict objectForKey:@"L_decllf1"],[recorddict objectForKey:@"L_fact1"],[recorddict objectForKey:@"L_sac1"],[recorddict objectForKey:@"L_lumb1"],[recorddict objectForKey:@"L_dlt"],[recorddict objectForKey:@"L_mild11"],[recorddict objectForKey:@"L_moderate11"],[recorddict objectForKey:@"Lsevere11"],[recorddict objectForKey:@"L_apex11"],[recorddict objectForKey:@"L_apex"],[recorddict objectForKey:@"L_soft11"],[recorddict objectForKey:@"L_soft"],[recorddict objectForKey:@"L_other111"],[recorddict objectForKey:@"L_other"],[recorddict objectForKey:@"E_views"],[recorddict objectForKey:@"E_normal1"],[recorddict objectForKey:@"E_positive for"],secondEntity,value2];
    
    NSString *str = [NSString stringWithFormat: @"%@ %@", post, post1];
    NSLog(@"POST:%@",str);
    //[recorddict objectForKey:@"ml4left"],[recorddict objectForKey:@"Physician signature"]
    NSURL *url = [NSURL URLWithString:url2];
    
    //NSLog(post);
    
    NSData *postData = [str dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
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



- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)dismissKeyboard{
    [viewtext resignFirstResponder];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    NSLog(@"success!!!recorddict %@",recorddict);
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)reset:(id)sender {
    viewtext.text=@"";
    nor.selected=NO;
    pos.selected=NO;
    [nor setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [pos setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
}
- (void)dealloc {
    
    [super dealloc];
}

@end
