//
//  narrativereport4ViewController.m
//  EHR
//
//  Created by DeemsysInc on 17/05/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "narrativereport4ViewController.h"
#import "narrativeViewController.h"
#import "narrative1ViewController.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"

#import "TWMessageBarManager.h"
#import "StringConstants.h"


@interface narrativereport4ViewController ()
{
    databaseurl *du;
    
}

@end

@implementation narrativereport4ViewController
@synthesize mutearray;
@synthesize headacheseg;
@synthesize resultset;
@synthesize physical2;
@synthesize gen8;
@synthesize gen1;
@synthesize gen2;
@synthesize gen6;
@synthesize gen7;
@synthesize hypo;
@synthesize hypobut;
@synthesize hypolabel;
@synthesize cervicsegg;
@synthesize age;
@synthesize heightval;
@synthesize lb;
@synthesize whiteseg;
@synthesize genderseg;
@synthesize nourishedseg;
@synthesize fairseg;
@synthesize normalseg;
@synthesize poorseg;
@synthesize pathoseg;
@synthesize physical;
@synthesize text8;
@synthesize text9;
@synthesize text10;
@synthesize recorddict;
@synthesize narra;
@synthesize precom;
@synthesize patname4;
@synthesize wasnot;
@synthesize his5;
@synthesize his7;
@synthesize his8;
@synthesize his9;
@synthesize seg6;
@synthesize seg7;
@synthesize seg8;
@synthesize seg9;
@synthesize seg10;
@synthesize s2;
@synthesize s1;

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
    NSString *countryFormat1 = @"[A-Z0-9a-z,._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateAge:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,3}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateHeight:(NSString *)country1
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
- (IBAction)s1:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s1l=@"Activity";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s1l=@"Bending";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s1l=@"Twisting";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        s1l=@"Lifting";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        s1l=@"Other";
    }
    
}
- (IBAction)head:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        headval=@"Headache";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        headval=@"Neckpain";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        headval=@"Mid Back Pain";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        headval=@"Low Back Pain";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        headval=@"L-R Shoulder Pain";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        headval=@"L-R Arm Pain";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        headval=@"L-R Hand Pain";
    }
    if ([sender selectedSegmentIndex]==7)
    {
        headval=@"L-R Leg Pain";
    }
    if ([sender selectedSegmentIndex]==8)
    {
        headval=@"L-R Foot Pain";
    }
    if ([sender selectedSegmentIndex]==9)
    {
        headval=@"L-R Gluteal Pain";
    }
    text9.text=headval;
    
    
}



- (IBAction)s2:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s2l=@"work";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s2l=@"sleep";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s2l=@"housework";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        s2l=@"recreation";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        s2l=@"Other";
    }
    
    
}
- (IBAction)wasnotaction:(id)sender {
    if (wasnot.selectedSegmentIndex==0) {
        wasnotlabel=@"was";
    }
    if (wasnot.selectedSegmentIndex==1) {
        wasnotlabel=@"was not";
    }
}

- (IBAction)s3:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s3l=@"Vicelike";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s3l=@"Sharp";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s3l=@"Shooting";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        s3l=@"Dull";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        s3l=@"Achy";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        s3l=@"Burning";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        s3l=@"Throbbing";
    }
    if ([sender selectedSegmentIndex]==7)
    {
        s3l=@"Numb";
    }
    if ([sender selectedSegmentIndex]==8)
    {
        s3l=@"Tingling";
    }
    if ([sender selectedSegmentIndex]==9)
    {
        s3l=@"Stiff";
    }
    if ([sender selectedSegmentIndex]==10)
    {
        s3l=@"Stabbing";
    }
    if ([sender selectedSegmentIndex]==11)
    {
        s3l=@"Cramping";
    }
}
- (IBAction)s4:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s4l=@"Intermittant";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s4l=@"Constant";
    }
}
- (IBAction)s5:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s5l=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s5l=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s5l=@"Severe";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        s5l=@"Crippling";
    }
    
    
}
- (IBAction)seg6:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s6l=@"Worse in Mornings";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s6l=@"Evenings";
    }
    
}
- (IBAction)seg7:(id)sender {
    if ([sender selectedSegmentIndex]==0) {
        s7l=@"were";
    }
    if ([sender selectedSegmentIndex]==1) {
        s7l=@"were no";
    }
}
- (IBAction)seg8:(id)sender {
    if ([sender selectedSegmentIndex]==0) {
        s8l=@"was";
    }
    if ([sender selectedSegmentIndex]==1) {
        s8l=@"was not";
    }
}
- (IBAction)seg9:(id)sender {
    if ([sender selectedSegmentIndex]==0) {
        s9l=@"Smoker";
    }
    if ([sender selectedSegmentIndex]==1) {
        s9l=@"Recreation drug user";
    }
}
- (IBAction)seg10:(id)sender {
    if ([sender selectedSegmentIndex]==0) {
        s10l=@"Excercises on a regular basis";
    }
    if ([sender selectedSegmentIndex]==1) {
        s10l=@"Drinks alcohol regularly";
    }
}
- (IBAction)genderr:(id)sender
{
    if (genderseg.selectedSegmentIndex==0) {
        genderlabel=@"Male";
    }
    if (genderseg.selectedSegmentIndex==1) {
        genderlabel=@"Female";
    }
}
- (IBAction)whiteee:(id)sender {
    if (whiteseg.selectedSegmentIndex==0) {
        whitelabel=@"White";
    }
    if (whiteseg.selectedSegmentIndex==1) {
        whitelabel=@"Black";
    }
}
- (IBAction)nourisheddd:(id)sender
{
    if (nourishedseg.selectedSegmentIndex==0) {
        nourishedlabel=@"Undernourished";
    }
    if (nourishedseg.selectedSegmentIndex==1) {
        nourishedlabel=@"Normal";
    }
    if (nourishedseg.selectedSegmentIndex==2) {
        nourishedlabel=@"Well nourished";
    }
    
}
- (IBAction)fairrr:(id)sender
{
    if (fairseg.selectedSegmentIndex==0) {
        fairlabel=@"Fair";
    }
    if (fairseg.selectedSegmentIndex==1) {
        fairlabel=@"Severe";
    }
}
- (IBAction)normall:(id)sender
{
    if (normalseg.selectedSegmentIndex==0) {
        normallabel=@"Normal";
    }
    if (normalseg.selectedSegmentIndex==1) {
        normallabel=@"Antalgic";
    }
    if (normalseg.selectedSegmentIndex==2) {
        normallabel=@"Staggering";
    }
    if (normalseg.selectedSegmentIndex==3) {
        normallabel=@"Limping";
    }
    if (normalseg.selectedSegmentIndex==4) {
        normallabel=@"Swaying";
    }
    
}
- (IBAction)poorr:(id)sender
{
    if (poorseg.selectedSegmentIndex==0) {
        poorlabel=@"Poor";
    }
    if (poorseg.selectedSegmentIndex==1) {
        poorlabel=@"Good";
    }
}
- (IBAction)patholll:(id)sender
{
    if (pathoseg.selectedSegmentIndex==0) {
        pathollabel=@"Normal";
    }
    if (pathoseg.selectedSegmentIndex==1) {
        pathollabel=@"Pathology";
    }
    if (pathoseg.selectedSegmentIndex==2) {
        pathollabel=@"Others";
    }
    
}
- (IBAction)cerviccc2:(id)sender
{
    if (cervicsegg.selectedSegmentIndex==0) {
        cervicanotherlabel=@"Cervical";
    }
    if (cervicsegg.selectedSegmentIndex==1) {
        cervicanotherlabel=@"Thoracic";
    }
    if (cervicsegg.selectedSegmentIndex==2) {
        cervicanotherlabel=@"Lumbar";
    }
}
- (IBAction)next:(id)sender {
    
    du=[[databaseurl alloc]init];
    a=1;
    text9.text=headval;
    temp2 =[textf1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[textf2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    temp8=[text8.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[text9.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[text10.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[age.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[heightval.text  stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[lb.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[alleviate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
//    
//    if(([temp2 length]!=0)&&
//       ([temp3 length]!=0)&&
//       ([temp8 length]!=0)&&
//       ([temp9 length]!=0)&&
//       ([temp10 length]!=0)&&
//       ([temp11 length]!=0)&&
//       ([temp12 length]!=0)&&
//       ([temp14 length]!=0)&&
//       ([temp15 length]!=0))
//        
//        
//    {
    
        
        
        if((([temp2 length]>0)&&([du otherfields:temp2]==1))||([temp2 length]==0))
        {
            if((([temp3 length]>0)&&([du otherfields:temp3 ]==1))||([temp3 length]==0))
            {
                
                if((([temp8 length]>0)&&([self validateDate:temp8]==1))||([temp8 length]==0))
                {
                    if((([temp9 length]>0)&&([du otherfields:temp9]==1))||([temp9 length]==0))
                    {
                        if((([temp10 length]>0)&&([self validateDate:temp10]==1))||([temp10 length]==0))
                        {
                            if((([temp15 length]>0)&&([self validateNames1:temp15]==1))||([temp15 length]==0))
                            {
                                if((([temp11 length]>0)&&([du age:temp11]==1))||([temp11 length]==0))
                                {
                                    if((([temp12 length]>0)&&([du percentage:temp12]==1))||([temp12 length]==0))
                                    {
                                        if((([temp14 length]>0)&&([du percentage:temp14]==1))||([temp14 length]==0))
                                        {
                                            
                                            
                                            
                                            
                                            a=1;
                                            
                                            [recorddict setValue:alleviate.text forKey:@"alleviate"];
                                            
                                            [recorddict setValue:text8.text forKey:@"text14"];
                                            [recorddict setValue:text9.text forKey:@"text13"];
                                            [recorddict setValue:text10.text forKey:@"text15"];
                                            [recorddict setValue:patname1.text forKey:@"patientname1"];
                                            [recorddict setValue:patname4.text forKey:@"patientname4"];
                                            [recorddict setValue:textf1.text forKey:@"textf1"];
                                            [recorddict setValue:textf2.text forKey:@"textf2"];
                                            [recorddict setValue:age.text forKey:@"age"];
                                            [recorddict setValue:heightval.text forKey:@"height"];
                                            [recorddict setValue:lb.text forKey:@"lb"];
                                            
                                            [recorddict setValue:s1l forKey:@"s1l"];
                                            [recorddict setValue:s2l forKey:@"s2l"];
                                            [recorddict setValue:s3l forKey:@"s3l"];
                                            [recorddict setValue:s4l forKey:@"s4l"];
                                            [recorddict setValue:s5l forKey:@"s5l"];
                                            [recorddict setValue:s6l forKey:@"s6l"];
                                            [recorddict setObject:s7l forKey:@"s7l"];
                                            [recorddict setObject:s8l forKey:@"s8l"];
                                            [recorddict setObject:s9l forKey:@"s9l"];
                                            [recorddict setObject:s10l forKey:@"s10l"];
                                            
                                            
                                            [recorddict setValue:whitelabel forKey:@"s11l"];
                                            [recorddict setValue:genderlabel forKey:@"s12l"];
                                            [recorddict setValue:nourishedlabel                                                                                                                                    forKey:@"s13l"];
                                            [recorddict setValue:fairlabel forKey:@"s14l"];
                                            [recorddict setValue:normallabel forKey:@"s15l"];
                                            [recorddict setValue:poorlabel forKey:@"s16l"];
                                            [recorddict setValue:pathollabel forKey:@"s17l"];
                                            [recorddict setValue:cervicanotherlabel forKey:@"s18l"];
                                            [recorddict setValue:hypolabel.text forKey:@"s19l"];
                                            
                                            [recorddict setValue:indexresult forKey:@"index"];
                                            [recorddict setValue:wasnotlabel forKey:@"wasnotlabel"];
                                            //                                                                                    [recorddict setValue:index1.text forKey:@"index1"];
                                            [recorddict setValue:gen1.text  forKey:@"genderval"];
                                            
                                            
                                            NSLog(@"success!!!recorddict %@",recorddict);
                                            
                                            
                                            
                                            
                                            
                                            
                                        }
                                        
                                        else
                                        {
                                            a=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid weight."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    
                                    else
                                    {
                                        a=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid height."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                    }
                                    
                                }
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid age."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                }
                                
                            }
                            
                            
                            else
                            {
                                a=0;
                                
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid alleviated field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                            }
                        }
                        
                        else
                        {
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid accident date."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid complaints."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                    }
                    
                }
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid date."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                }
                
                
            }
            else
            {
                a=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid revealed data."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
            }
            
        }
        else
        {
            a=0;
            
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid occured in field."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
        }
        
        
//    }
//    
//    
//    
//    else
//    {
//        a=0;
//        
//        
//        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
//                                                       description:@"Required field should not be empty."
//                                                              type:TWMessageBarMessageTypeError
//                                                    statusBarStyle:UIStatusBarStyleLightContent
//                                                          callback:nil];
//        
//        
//        
//        
//    }
    if (a==1)
    {
        [self performSegueWithIdentifier:@"narr11" sender:self];
    }
}


- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
    
}

- (IBAction)reset:(id)sender {
    wasnotlabel=@"was";
    s1l=@"Activity";
    s2l=@"work";
    wasnotlabel=@"was";
    s3l=@"Vicelike";
    s4l=@"Intermittant";
    s5l=@"Mild";
    s6l=@"Worse in Mornings";
    s7l=@"were";
    s8l=@"was";
    s9l=@"Smoker";
    s10l=@"Excercises on a regular basis";
    genderlabel=@"Male";
    whitelabel=@"White";
    nourishedlabel=@"Undernourished";
    fairlabel=@"Fair";
    normallabel=@"Normal";
    poorlabel=@"Poor";
    pathollabel=@"Normal";
    cervicanotherlabel=@"Cervical";
    hypolabel.text=@"hypolordosis";
    headval=@"Headache";
    [headacheseg setSelectedSegmentIndex:0];
    [genderseg setSelectedSegmentIndex:0];
    [whiteseg setSelectedSegmentIndex:0];
    [nourishedseg setSelectedSegmentIndex:0];
    [fairseg setSelectedSegmentIndex:0];
    [normalseg setSelectedSegmentIndex:0];
    [poorseg setSelectedSegmentIndex:0];
    [pathoseg setSelectedSegmentIndex:0];
    [cervicsegg setSelectedSegmentIndex:0];
    [wasnot setSelectedSegmentIndex:0];
    [s1 setSelectedSegmentIndex:0];
    [s2 setSelectedSegmentIndex:0];
    [s3 setSelectedSegmentIndex:0];
    [s4 setSelectedSegmentIndex:0];
    [s5 setSelectedSegmentIndex:0];
    [seg6 setSelectedSegmentIndex:0];
    [seg7 setSelectedSegmentIndex:0];
    [seg8 setSelectedSegmentIndex:0];
    [seg9 setSelectedSegmentIndex:0];
    [seg10 setSelectedSegmentIndex:0];
    
    textf1.text=@"";
    textf2.text=@"";
    text8.text=@"";
    text9.text=@"";
    text10.text=@"";
    alleviate.text=@"";
    age.text=@"";
    heightval.text=@"";
    lb.text=@"";
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
    patname1.text=[recorddict objectForKey:@"patientname"];
    patname4.text=[recorddict objectForKey:@"patientname"];
    gen1.text=[recorddict objectForKey:@"he"];
    gen2.text=[recorddict objectForKey:@"he"];
    
    gen6.text=[recorddict objectForKey:@"he"];
    gen7.text=[recorddict objectForKey:@"he"];
    gen8.text=[recorddict objectForKey:@"he"];
    his5.text=[recorddict objectForKey:@"his"];
    his7.text=[recorddict objectForKey:@"his"];
    his8.text=[recorddict objectForKey:@"his"];
    his9.text=[recorddict objectForKey:@"his"];
    
    headval=@"Headache";
    
    
    wasnotlabel=@"was";
    
    s1l=@"Activity";
    s2l=@"work";
    wasnotlabel=@"was";
    s3l=@"Vicelike";
    s4l=@"Intermittant";
    s5l=@"Mild";
    s6l=@"Worse in Mornings";
    s7l=@"were";
    s8l=@"was";
    s9l=@"Smoker";
    s10l=@"Excercises on a regular basis";
    genderlabel=@"Male";
    whitelabel=@"White";
    nourishedlabel=@"Undernourished";
    fairlabel=@"Fair";
    normallabel=@"Normal";
    poorlabel=@"Poor";
    pathollabel=@"Normal";
    cervicanotherlabel=@"Cervical";
    [hypo setBackgroundColor:([UIColor whiteColor])];
    hypo.hidden=YES;
    hypo.delegate = self;
    hypo.dataSource = self;
    hypolabel.text=@"hypolordosis";
    hypoarray=[[NSArray alloc]initWithObjects:@"Hypolordosis",@"Hyperlordosis",@"Hypokyphosis",@"Hyperkyposis",@"Cervical Tilting",@"L/R",@"Cervical Rotation L-R",@"Superior L-R scapula",@"L-R Scapular Winging",@"L-R rib hump",@"Superior L-R illaic crest", nil];
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:@"Past History"];
    [attributeString addAttribute:NSUnderlineStyleAttributeName
     
                            value:[NSNumber numberWithInt:1]
                            range:(NSRange){0,[attributeString length]}];
    narra.attributedText=[attributeString copy];
    NSMutableAttributedString *attributeString1 = [[NSMutableAttributedString alloc] initWithString:@"Physical Exam"];
    [attributeString1 addAttribute:NSUnderlineStyleAttributeName
     
                             value:[NSNumber numberWithInt:1]
                             range:(NSRange){0,[attributeString1 length]}];
    physical.attributedText=[attributeString1 copy];
    NSMutableAttributedString *attributeString11 = [[NSMutableAttributedString alloc] initWithString:@"Physical Inspection"];
    [attributeString11 addAttribute:NSUnderlineStyleAttributeName
     
                              value:[NSNumber numberWithInt:1]
                              range:(NSRange){0,[attributeString11 length]}];
    physical2.attributedText=[attributeString11 copy];
    NSMutableAttributedString *attributeString2 = [[NSMutableAttributedString alloc] initWithString:@"Present Complaint"];
    [attributeString2 addAttribute:NSUnderlineStyleAttributeName
     
                             value:[NSNumber numberWithInt:1]
                             range:(NSRange){0,[attributeString2 length]}];
    precom.attributedText=[attributeString2 copy];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self displaydata];
    
    if([mutearray count]>0){
        [self dataset];
    }
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)dataset{
    
    age.text=[mutearray objectForKey:@"age"];
    
    if ([[mutearray objectForKey:@"sex"]isEqualToString:@"Male"])
    {
        [genderseg setSelectedSegmentIndex:0];
        genderlabel=@"Male";
        
        
    }
    if ([[mutearray objectForKey:@"sex"]isEqualToString:@"Female"])
    {
        [genderseg setSelectedSegmentIndex:1];
        genderlabel=@"Female";
    }
    
    
    if ([[mutearray objectForKey:@"weight1"]isEqualToString:@"Undernourished"])
    {
        [nourishedseg setSelectedSegmentIndex:0];
        nourishedlabel=@"Undernourished";
    }
    if ([[mutearray objectForKey:@"weight1"]isEqualToString:@"Normal"])
    {
        [nourishedseg setSelectedSegmentIndex:1];
        nourishedlabel=@"Normal";
        
    }
    if ([[mutearray objectForKey:@"weight1"]isEqualToString:@"Well nourished"])
    {
        [nourishedseg setSelectedSegmentIndex:2];
        
        nourishedlabel=@"Well nourished";
    }
    
    
    
    if ([[mutearray objectForKey:@"gait"]isEqualToString:@"Normal"])
    {
        [normalseg setSelectedSegmentIndex:0];
        normallabel=@"Normal";
        
        
    }
    if ([[mutearray objectForKey:@"gait"]isEqualToString:@"Antalgic"])
    {
        [normalseg setSelectedSegmentIndex:1];
        normallabel=@"Antalgic";
    }
    if ([[mutearray objectForKey:@"gait"]isEqualToString:@"Staggering"])
    {
        [normalseg setSelectedSegmentIndex:2];
        normallabel=@"Staggering";
    }
    if ([[mutearray objectForKey:@"gait"]isEqualToString:@"Limping"])
    {
        [normalseg setSelectedSegmentIndex:3];
        normallabel=@"Limping";
    }
    if ([[mutearray objectForKey:@"gait"]isEqualToString:@"Swaying"])
    {
        [normalseg setSelectedSegmentIndex:4];
        normallabel=@"Swaying";
    }
    
    if ([[mutearray objectForKey:@"gait"]isEqualToString:@"Poor"])
    {
        [poorseg setSelectedSegmentIndex:0];
        poorlabel=@"Poor";
        
    }
    
    if ([[mutearray objectForKey:@"posture"]isEqualToString:@"Poor"])
    {
        [poorseg setSelectedSegmentIndex:0];
        poorlabel=@"Poor";
        
    }
    if ([[mutearray objectForKey:@"posture"]isEqualToString:@"Good"])
    {
        [poorseg setSelectedSegmentIndex:1];
        poorlabel=@"Good";
    }
}

-(void)dismissKeyboard
{
    [textf1 resignFirstResponder];
    [textf2 resignFirstResponder];
    [text8 resignFirstResponder];
    [text10 resignFirstResponder];
    [text9 resignFirstResponder];
    [age resignFirstResponder];
    [heightval resignFirstResponder];
    [lb resignFirstResponder];
    [alleviate resignFirstResponder];
    
    
}
#pragma mark - UIPickerView DataSource
// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    return [hypoarray count];
    
    
}


#pragma mark - UIPickerView Delegate
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 30.0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    return [hypoarray objectAtIndex:row];
    
    
}


//If the user chooses from the pickerview, it calls this function;
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    hypolabel.text=[hypoarray objectAtIndex:row];
    pickerView.hidden=YES;
    
    
    //Let's print in the console what the user had chosen;
    // NSLog(@"Chosen item: %@", [itemsArray objectAtIndex:row]);
}
- (IBAction)hypoact:(id)sender
{
    if(hypo.hidden==YES)
    {
        hypo.hidden=NO;
    }
    else
        hypo.hidden=YES;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"narr11"])
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
    
    if ([segue.identifier isEqualToString:@"narr11"])
    {
        
        narrative1ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        destViewController.mutearray=mutearray;
        NSLog(@"recorddict in narrative first page %@",recorddict);
    }
    
    
}
-(void)displaydata

{
    if([resultset count]>0)
    {
        textf1.text=[resultset objectForKey:@"priordate"];
        textf2.text=[resultset objectForKey:@"pastmedicalhistory"];
        text8.text=[resultset objectForKey:@"clinicdate"];
        text9.text=[resultset objectForKey:@"gender19"];
        
        text10.text=[resultset objectForKey:@"vehicleaccident"];
        age.text=[resultset objectForKey:@"age"];
        heightval.text=[resultset objectForKey:@"age1"];
        lb.text=[resultset objectForKey:@"lb"];
        alleviate.text=[resultset objectForKey:@"allieviated"];
        hypolabel.text=[resultset objectForKey:@"gender53"];
        if ([[resultset objectForKey:@"gender13"]isEqualToString:@"were"]) {
            [seg7 setSelectedSegmentIndex:0];
            
            s7l=@"were";
            
        }
        else if ([[resultset objectForKey:@"gender13"]isEqualToString:@"were no"]) {
            [seg7 setSelectedSegmentIndex:1];
            s7l=@"were no";
            
        }
        if ([[resultset objectForKey:@"gender15"]isEqualToString:@"was"]) {
            [seg8 setSelectedSegmentIndex:0];
            s8l=@"was";
            
        }
        else if ([[resultset objectForKey:@"gender15"]isEqualToString:@"was not"]) {
            [seg8 setSelectedSegmentIndex:1];
            s8l=@"was not";
        }
        if ([[resultset objectForKey:@"gender16"]isEqualToString:@"Smoker"]) {
            [seg9 setSelectedSegmentIndex:0];
            s9l=@"Smoker";
            
            
        }
        else if ([[resultset objectForKey:@"gender16"]isEqualToString:@"Recreation drug user"])
        {
            [seg9 setSelectedSegmentIndex:1];
            
            s9l=@"Recreation drug user";
        }
        if ([[resultset objectForKey:@"gender17"]isEqualToString:@"Excercises on a regular basis"]) {
            [seg10 setSelectedSegmentIndex:0];
            s10l=@"Excercises on a regular basis";
            
            
        }
        else if ([[resultset objectForKey:@"gender17"]isEqualToString:@"Drinks alcohol regularly"])
        {
            [seg10 setSelectedSegmentIndex:1];
            
            
            s10l=@"Drinks alcohol regularly";
        }
        if ([[resultset objectForKey:@"gender20"]isEqualToString:@"Activity"]) {
            [s1  setSelectedSegmentIndex:0];
            
            s1l=@"Activity";
            
            
        }
        else if ([[resultset objectForKey:@"gender20"]isEqualToString:@"Bending"]) {
            [s1 setSelectedSegmentIndex:1];
            s1l=@"Bending";
            
            
        }
        else if ([[resultset objectForKey:@"gender20"]isEqualToString:@"Twisting"]) {
            [s1 setSelectedSegmentIndex:2];
            s1l=@"Twisting";
            
            
        }
        else if ([[resultset objectForKey:@"gender20"]isEqualToString:@"Lifting"]) {
            [s1 setSelectedSegmentIndex:3];
            s1l=@"Lifting";
            
            
        }
        else if ([[resultset objectForKey:@"gender20"]isEqualToString:@"Other"]) {
            [s1 setSelectedSegmentIndex:4];
            s1l=@"Other";
            
        }
        if ([[resultset objectForKey:@"gendernew2"]isEqualToString:@"Intermittant"]) {
            [s4 setSelectedSegmentIndex:0];
            s4l=@"Intermittant";
            
            
            
        }
        else if ([[resultset objectForKey:@"gendernew2"]isEqualToString:@"Constant"])
        {
            [s4 setSelectedSegmentIndex:1];
            
            s4l=@"Constant";
        }
        if ([[resultset objectForKey:@"gendernew3"]isEqualToString:@"Mild"]) {
            [s5 setSelectedSegmentIndex:0];
            s5l=@"Mild";
            
            
            
            
        }
        else if ([[resultset objectForKey:@"gendernew3"]isEqualToString:@"Moderate"])
        {
            [s5 setSelectedSegmentIndex:1];
            s5l=@"Moderate";
            
        }
        else if ([[resultset objectForKey:@"gendernew3"]isEqualToString:@"Severe"])
        {
            [s5 setSelectedSegmentIndex:2];
            
            s5l=@"Severe";
            
        }
        else if ([[resultset objectForKey:@"gendernew3"]isEqualToString:@"Crippling"])
        {
            [s5 setSelectedSegmentIndex:3];
            s5l=@"Crippling";
            
        }
        if ([[resultset objectForKey:@"gender25"]isEqualToString:@"Worse in Mornings"])
        {
            [seg6 setSelectedSegmentIndex:0];
            s6l=@"Worse in Mornings";
        }
        if ([[resultset objectForKey:@"gender25"]isEqualToString:@"Evenings"])
        {
            [seg6 setSelectedSegmentIndex:1];
            s6l=@"Evenings";
        }
        if ([[resultset objectForKey:@"gender24"]isEqualToString:@"Vicelike"])
        {
            [s3 setSelectedSegmentIndex:0];
            s3l=@"Vicelike";
        }
        if ([[resultset objectForKey:@"gender24"]isEqualToString:@"Sharp"])
        {
            [s3 setSelectedSegmentIndex:1];
            s3l=@"Sharp";
        }
        if ([[resultset objectForKey:@"gender24"]isEqualToString:@"Shooting"])
        {
            [s3 setSelectedSegmentIndex:2];
            s3l=@"Shooting";
        }
        if ([[resultset objectForKey:@"gender24"]isEqualToString:@"Dull"])
        {
            [s3 setSelectedSegmentIndex:3];
            s3l=@"Dull";
        }
        if ([[resultset objectForKey:@"gender24"]isEqualToString:@"Achy"])
        {
            [s3 setSelectedSegmentIndex:4];
            s3l=@"Achy";
        }
        if ([[resultset objectForKey:@"gender24"]isEqualToString:@"Burning"])
        {
            [s3 setSelectedSegmentIndex:5];
            s3l=@"Burning";
        }
        if ([[resultset objectForKey:@"gender24"]isEqualToString:@"Throbbing"])
        {
            [s3 setSelectedSegmentIndex:6];
            s3l=@"Throbbing";
        }
        if ([[resultset objectForKey:@"gender24"]isEqualToString:@"Numb"])
        {
            [s3 setSelectedSegmentIndex:7];
            s3l=@"Numb";
        }
        if ([[resultset objectForKey:@"gender24"]isEqualToString:@"Tingling"])
        {
            [s3 setSelectedSegmentIndex:8];
            s3l=@"Tingling";
        }
        if ([[resultset objectForKey:@"gender24"]isEqualToString:@"Stiff"])
        {
            [s3 setSelectedSegmentIndex:9];
            s3l=@"Stiff";
        }
        if ([[resultset objectForKey:@"gender24"]isEqualToString:@"Stabbing"])
        {
            [s3 setSelectedSegmentIndex:10];
            s3l=@"Stabbing";
        }
        if ([[resultset objectForKey:@"gender24"]isEqualToString:@"Cramping"])
        {
            [s3 setSelectedSegmentIndex:11];
            s3l=@"Cramping";
        }
        if ([[resultset objectForKey:@"gender28"]isEqualToString:@"was"]) {
            [wasnot setSelectedSegmentIndex:0];
            wasnotlabel=@"was";
            
        }
        else if ([[resultset objectForKey:@"gender28"]isEqualToString:@"was not"]) {
            [wasnot setSelectedSegmentIndex:1];
            wasnotlabel=@"was not";
        }
        if ([[resultset objectForKey:@"gender25"]isEqualToString:@"Worse in Mornings"])
        {
            [seg6 setSelectedSegmentIndex:0];
            s6l=@"Worse in Mornings";
        }
        if ([[resultset objectForKey:@"gender25"]isEqualToString:@"Evenings"])
        {
            [seg6 setSelectedSegmentIndex:1];
            s6l=@"Evenings";
        }
        if ([[resultset objectForKey:@"gender30"]isEqualToString:@"work"])
        {
            [s2 setSelectedSegmentIndex:0];
            s2l=@"work";
            
        }
        if ([[resultset objectForKey:@"gender30"]isEqualToString:@"sleep"])
        {
            [s2 setSelectedSegmentIndex:1];
            s2l=@"sleep";
            
        }
        if ([[resultset objectForKey:@"gender30"]isEqualToString:@"housework"])
        {
            [s2 setSelectedSegmentIndex:2];
            s2l=@"housework";
            
        }
        if ([[resultset objectForKey:@"gender30"]isEqualToString:@"recreation"])
        {
            [s2 setSelectedSegmentIndex:3];
            s2l=@"recreation";
            
        }
        if ([[resultset objectForKey:@"gender30"]isEqualToString:@"Other"])
        {
            [s2 setSelectedSegmentIndex:4];
            s2l=@"Other";
        }
        
        if ([[resultset objectForKey:@"gender31"]isEqualToString:@"White"])
        {
            [whiteseg setSelectedSegmentIndex:0];
            whitelabel=@"White";
            
            
        }
        if ([[resultset objectForKey:@"gender31"]isEqualToString:@"Black"])
        {
            [whiteseg setSelectedSegmentIndex:1];
            whitelabel=@"Black";
        }
        if ([[resultset objectForKey:@"gender32"]isEqualToString:@"Male"])
        {
            [genderseg setSelectedSegmentIndex:0];
            genderlabel=@"Male";
            
            
        }
        if ([[resultset objectForKey:@"gender32"]isEqualToString:@"Female"])
        {
            [genderseg setSelectedSegmentIndex:1];
            genderlabel=@"Female";
        }
        if ([[resultset objectForKey:@"gender33"]isEqualToString:@"Undernourished"])
        {
            [nourishedseg setSelectedSegmentIndex:0];
            nourishedlabel=@"Undernourished";
        }
        if ([[resultset objectForKey:@"gender33"]isEqualToString:@"Normal"])
        {
            [nourishedseg setSelectedSegmentIndex:1];
            nourishedlabel=@"Normal";
            
        }
        if ([[resultset objectForKey:@"gender33"]isEqualToString:@"Well nourished"])
        {
            [nourishedseg setSelectedSegmentIndex:2];
            
            nourishedlabel=@"Well nourished";
        }
        if ([[resultset objectForKey:@"gendernew4"]isEqualToString:@"Fair"])
        {
            [fairseg setSelectedSegmentIndex:0];
            fairlabel=@"Fair";
            
            
        }
        if ([[resultset objectForKey:@"gendernew4"]isEqualToString:@"Severe"])
        {
            [fairseg setSelectedSegmentIndex:1];
            fairlabel=@"Severe";
        }
        if ([[resultset objectForKey:@"gender35"]isEqualToString:@"Normal"])
        {
            [normalseg setSelectedSegmentIndex:0];
            normallabel=@"Normal";
            
            
        }
        if ([[resultset objectForKey:@"gender35"]isEqualToString:@"Antalgic"])
        {
            [normalseg setSelectedSegmentIndex:1];
            normallabel=@"Antalgic";
        }
        if ([[resultset objectForKey:@"gender35"]isEqualToString:@"Staggering"])
        {
            [normalseg setSelectedSegmentIndex:2];
            normallabel=@"Staggering";
        }
        if ([[resultset objectForKey:@"gender35"]isEqualToString:@"Limping"])
        {
            [normalseg setSelectedSegmentIndex:3];
            normallabel=@"Limping";
        }
        if ([[resultset objectForKey:@"gender35"]isEqualToString:@"Swaying"])
        {
            [normalseg setSelectedSegmentIndex:4];
            normallabel=@"Swaying";
        }
        
        if ([[resultset objectForKey:@"gender36"]isEqualToString:@"Poor"])
        {
            [poorseg setSelectedSegmentIndex:0];
            poorlabel=@"Poor";
            
        }
        if ([[resultset objectForKey:@"gender36"]isEqualToString:@"Good"])
        {
            [poorseg setSelectedSegmentIndex:1];
            poorlabel=@"Good";
        }
        if ([[resultset objectForKey:@"gender37"]isEqualToString:@"Normal"])
        {
            [pathoseg setSelectedSegmentIndex:0];
            pathollabel=@"Normal";
            
            
            
        }
        if ([[resultset objectForKey:@"gender37"]isEqualToString:@"Pathology"])
        {
            [pathoseg setSelectedSegmentIndex:1];
            pathollabel=@"Pathology";
            
            
        }
        if ([[resultset objectForKey:@"gender37"]isEqualToString:@"Others"])
        {
            [pathoseg setSelectedSegmentIndex:2];
            pathollabel=@"Others";
        }
        if ([[resultset objectForKey:@"gender38"]isEqualToString:@"Cervical"])
        {
            [cervicsegg setSelectedSegmentIndex:0];
            cervicanotherlabel=@"Cervical";
            
        }
        if ([[resultset objectForKey:@"gender38"]isEqualToString:@"Thoracic"])
        {
            [cervicsegg setSelectedSegmentIndex:1];
            cervicanotherlabel=@"Thoracic";
            
        }
        if ([[resultset objectForKey:@"gender38"]isEqualToString:@"Lumbar"])
        {
            [cervicsegg setSelectedSegmentIndex:2];
            cervicanotherlabel=@"Lumbar";
        }
        if ([[resultset objectForKey:@"gender19"]isEqualToString:@"Headache"])
        {
            [headacheseg setSelectedSegmentIndex:0];
            headval=@"Headache";
            
        }
        if ([[resultset objectForKey:@"gender19"]isEqualToString:@"Neckpain"])
        {
            [headacheseg setSelectedSegmentIndex:1];
            headval=@"Neckpain";
            
        }
        if ([[resultset objectForKey:@"gender19"]isEqualToString:@"Mid Back Pain"])
        {
            [headacheseg setSelectedSegmentIndex:2];
            headval=@"Mid Back Pain";
            
        }
        if ([[resultset objectForKey:@"gender19"]isEqualToString:@"Low Back Pain"])
        {
            [headacheseg setSelectedSegmentIndex:3];
            headval=@"Low Back Pain";
            
        }
        if ([[resultset objectForKey:@"gender19"]isEqualToString:@"L-R Shoulder Pain"])
        {
            [headacheseg setSelectedSegmentIndex:4];
            headval=@"L-R Shoulder Pain";
        }
        if ([[resultset objectForKey:@"gender19"]isEqualToString:@"L-R Arm Pain"])
        {
            [headacheseg setSelectedSegmentIndex:5];
            headval=@"L-R Arm Pain";
        }
        if ([[resultset objectForKey:@"gender19"]isEqualToString:@"L-R Hand Pain"])
        {
            [headacheseg setSelectedSegmentIndex:6];
            headval=@"L-R Hand Pain";
        }
        if ([[resultset objectForKey:@"gender19"]isEqualToString:@"L-R Leg Pain"])
        {
            [headacheseg setSelectedSegmentIndex:7];
            headval=@"L-R Leg Pain";
            
        }
        if ([[resultset objectForKey:@"gender19"]isEqualToString:@"L-R Foot Pain"])
        {
            [headacheseg setSelectedSegmentIndex:8];
            headval=@"L-R Foot Pain";
        }
        if ([[resultset objectForKey:@"gender19"]isEqualToString:@"L-R Gluteal Pain"])
        {
            [headacheseg setSelectedSegmentIndex:9];
            headval=@"L-R Gluteal Pain";
        }
        text9.text=headval;
        
    }
    
}
- (void)dealloc {
    
    
    [super dealloc];
}
@end


