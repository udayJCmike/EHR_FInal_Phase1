//
//  ThoracicExamViewController.m
//  EHR
//
//  Created by Admin on 22/02/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "ThoracicExamViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "databaseurl.h"
#import "ThoracicExamViewController1.h"
#import "hamilViewController.h"
@interface ThoracicExamViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation ThoracicExamViewController
@synthesize recorddict;
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

int suc;
NSString *check1,*check2,*check3,*check4;
NSString *segs1,*segs2,*segs3,*segs4,*segs5,*segs6,*segs7,*segs8,*segs9,*segs10,*segs11,*segs12,*segs13;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37;


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
    [super viewDidLoad];
    recorddict=[[NSMutableDictionary alloc]init];
    resultset=[[NSMutableDictionary alloc]init];
    segs1=@"null";
    segs2=@"null";
    segs3=@"null";
    segs4=@"null";
    segs5=@"null";
    segs6=@"null";
    segs7=@"null";
    segs8=@"null";
    segs9=@"null";
    segs10=@"null";
    segs11=@"null";
    segs12=@"null";
    segs13=@"null";
    check1=@"null";
    check2=@"null";
    
    check3=@"null";
    check4=@"null";
    du=[[databaseurl alloc]init];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
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

    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    patname.text=username;
    [self Getdata];
    
	// Do any additional setup after loading the view.
}
-(BOOL)validateNumbers1:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9-_]{1,4}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(void)Getdata
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    //NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    //NSLog(@"luckyNumbers %@",luckyNumbers);
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    //NSLog(@"itemsApp %@",itemsApp);
    NSArray *items1App=[itemsApp objectForKey:@"thoracicexam List"];
    //     To check whether its having data or not
    //   //NSLog(@"items1app %d",[items1App count]);
    
    //NSLog(@"items1app count %lu",(unsigned long)[items1App count]);
    //NSLog(@"items1app %@",items1App);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            //NSLog(@"Array list %@",arrayList1);
            texty1 = [arrayList1 objectForKey:@"pname"];
            texty2 = [arrayList1 objectForKey:@"date"];
            texty3 = [arrayList1 objectForKey:@"muscle"];
            texty4 = [arrayList1 objectForKey:@"swelling"];
            texty5 = [arrayList1 objectForKey:@"othernotes"];
            texty6 = [arrayList1 objectForKey:@"flexion"];
            texty7 = [arrayList1 objectForKey:@"t12"];
            texty8 = [arrayList1 objectForKey:@"t23"];
            texty9 = [arrayList1 objectForKey:@"adamsignl"];
            texty10 = [arrayList1 objectForKey:@"adamsignr"];
            texty11 = [arrayList1 objectForKey:@"extension"];
            texty12 = [arrayList1 objectForKey:@"t34"];
            texty13 = [arrayList1 objectForKey:@"t45"];
            texty14 = [arrayList1 objectForKey:@"schepelmanl"];
            texty15 = [arrayList1 objectForKey:@"schepelmanr"];
            texty16 = [arrayList1 objectForKey:@"lflexion"];
            texty17 = [arrayList1 objectForKey:@"t56"];
            texty18 = [arrayList1 objectForKey:@"t67"];
            texty19 = [arrayList1 objectForKey:@"valsalval"];
            texty20 = [arrayList1 objectForKey:@"valsalvar"];
            texty21 = [arrayList1 objectForKey:@"rflexion"];
            texty22 = [arrayList1 objectForKey:@"lrotation"];
            texty23 = [arrayList1 objectForKey:@"t78"];
            texty24 = [arrayList1 objectForKey:@"t89"];
            texty25 = [arrayList1 objectForKey:@"dejerinel"];
            texty26 = [arrayList1 objectForKey:@"dejeriner"];
            texty27 = [arrayList1 objectForKey:@"rrotation"];
            texty28 = [arrayList1 objectForKey:@"t910"];
            texty29 = [arrayList1 objectForKey:@"t1011"];
            texty30 = [arrayList1 objectForKey:@"sotohalll"];
            texty31 = [arrayList1 objectForKey:@"sotohallr"];
            texty32 = [arrayList1 objectForKey:@"t1112"];
            texty33 = [arrayList1 objectForKey:@"t12l1"];
            texty34 = [arrayList1 objectForKey:@"sternall"];
            texty35 = [arrayList1 objectForKey:@"sternalr"];
            texty36 = [arrayList1 objectForKey:@"beevorl"];
            texty37 = [arrayList1 objectForKey:@"beevorr"];
            [resultset setValue:[arrayList1 objectForKey:@"acromion"] forKeyPath:@"acromion"];
            [resultset setValue:[arrayList1 objectForKey:@"inferior"] forKeyPath:@"inferior"];
            [resultset setValue:[arrayList1 objectForKey:@"iliac"] forKeyPath:@"iliac"];
            [resultset setValue:[arrayList1 objectForKey:@"ribhumping"] forKeyPath:@"ribhumping"];
            [resultset setValue:[arrayList1 objectForKey:@"allsoft"] forKeyPath:@"allsoft"];
            [resultset setValue:[arrayList1 objectForKey:@"rectus"] forKeyPath:@"rectus"];
            [resultset setValue:[arrayList1 objectForKey:@"obliques"] forKeyPath:@"obliques"];
            [resultset setValue:[arrayList1 objectForKey:@"levator"] forKeyPath:@"levator"];
            [resultset setValue:[arrayList1 objectForKey:@"serratus"] forKey:@"serratus"];
            [resultset setValue:[arrayList1 objectForKey:@"pectoralis"] forKey:@"pectoralis"];
            [resultset setValue:[arrayList1 objectForKey:@"trapezius"] forKey:@"trapezius"];
            [resultset setValue:[arrayList1 objectForKey:@"rhomboids"] forKey:@"rhomboids"];
            [resultset setValue:[arrayList1 objectForKey:@"pectoralisminor"] forKey:@"pectoralisminor"];
            [resultset setValue:[arrayList1 objectForKey:@"paraspinals"] forKey:@"paraspinals"];
            [resultset setValue:[arrayList1 objectForKey:@"functionalrangeofmotion"] forKey:@"functionalrangeofmotion"];
            [resultset setValue:[arrayList1 objectForKey:@"subluxation"] forKey:@"subluxation"];
            [resultset setValue:[arrayList1 objectForKey:@"orthopedic"] forKey:@"orthopedic"];
            [resultset setValue:[arrayList1 objectForKey:@"neurologicaltest"] forKey:@"neurologicaltest"];
            [resultset setValue:[arrayList1 objectForKey:@"notes"] forKey:@"notes"];
            [resultset setValue:[arrayList1 objectForKey:@"intercostal"] forKey:@"intercostal"];
            [resultset setValue:[arrayList1 objectForKey:@"sitting"] forKey:@"sitting"];
            [resultset setValue:[arrayList1 objectForKey:@"standing"] forKey:@"standing"];
            [resultset setValue:[arrayList1 objectForKey:@"driving"] forKey:@"driving"];
            [resultset setValue:[arrayList1 objectForKey:@"otherfunctional"] forKey:@"otherfunctional"];
            [resultset setValue:[arrayList1 objectForKey:@"break_text3"] forKey:@"break_text3"];
            [resultset setValue:[arrayList1 objectForKey:@"assessment"] forKey:@"assessment"];
            [resultset setValue:[arrayList1 objectForKey:@"patientstatus"] forKey:@"patientstatus"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis1"] forKey:@"diagnosis1"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis2"] forKey:@"diagnosis2"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis3"] forKey:@"diagnosis3"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis4"] forKey:@"diagnosis4"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis5"] forKey:@"diagnosis5"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis6"] forKey:@"diagnosis6"];
            [resultset setValue:[arrayList1 objectForKey:@"times"] forKey:@"times"];
            [resultset setValue:[arrayList1 objectForKey:@"week"] forKey:@"week"];
            [resultset setValue:[arrayList1 objectForKey:@"spinal"] forKey:@"spinal"];
            [resultset setValue:[arrayList1 objectForKey:@"chiropractic"] forKey:@"chiropractic"];
            [resultset setValue:[arrayList1 objectForKey:@"physical"] forKey:@"physical"];
            [resultset setValue:[arrayList1 objectForKey:@"orthotics"] forKey:@"orthotics"];
            [resultset setValue:[arrayList1 objectForKey:@"modalities"] forKey:@"modalities"];
            [resultset setValue:[arrayList1 objectForKey:@"supplementation"] forKey:@"supplementation"];
            [resultset setValue:[arrayList1 objectForKey:@"hep"] forKey:@"hep"];
            [resultset setValue:[arrayList1 objectForKey:@"radiographic"] forKey:@"radiographic"];
            [resultset setValue:[arrayList1 objectForKey:@"mri"] forKey:@"mri"];
            [resultset setValue:[arrayList1 objectForKey:@"ctscan"] forKey:@"ctscan"];
            [resultset setValue:[arrayList1 objectForKey:@"nerve"] forKey:@"nerve"];
            [resultset setValue:[arrayList1 objectForKey:@"emg"] forKey:@"emg"];
            [resultset setValue:[arrayList1 objectForKey:@"outside"] forKey:@"outside"];
            [resultset setValue:[arrayList1 objectForKey:@"dc"] forKey:@"dc"];
            [resultset setValue:[arrayList1 objectForKey:@"otheraddress"] forKey:@"otheraddress"];
            [resultset setValue:[arrayList1 objectForKey:@"break_text4"] forKey:@"break_text4"];
            [resultset setValue:[arrayList1 objectForKey:@"sign"] forKey:@"sign"];
            patname.text = texty1;
            datefield.text = texty2;
            text2.text = texty3;
            text3.text = texty4;
            othernotes.text = texty5;
            flex.text = texty6;
            t1.text = texty7;
            t2.text = texty8;
            adl.text = texty9;
            adr.text = texty10;
            extens.text = texty11;
            t3.text = texty12;
            t4.text = texty13;
            sl.text = texty14;
            sr.text = texty15;
            latflex.text = texty16;
            t5.text = texty17;
            t6.text = texty18;
            vl.text = texty19;
            vr.text = texty20;
            latflexr.text = texty21;
            rotl.text = texty22;
            t7.text = texty23;
            t8.text = texty24;
            dl.text = texty25;
            dr.text = texty26;
            rotr.text = texty27;
            t9.text = texty28;
            t10.text = texty29;
            sol.text = texty30;
            sor.text = texty31;
            t11.text = texty32;
            t12.text = texty33;
            stl.text = texty34;
            str.text = texty35;
            bl.text = texty36;
            br.text = texty37;
            if ([[resultset objectForKey:@"allsoft"] isEqualToString:@"All Soft Tissue Unremarkable"])
            {
                checky1.selected = YES;
                [checky1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                check1 = @"All Soft Tissue Unremarkable";
            }
            else
            {
                checky1.selected = NO;
                [checky1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                check1 = @"null";
            }
            if ([[resultset objectForKey:@"functionalrangeofmotion"] isEqualToString:@"Unremarkable"])
            {
                checky2.selected = YES;
                [checky2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                check2 = @"Unremarkable";
            }
            else
            {
                checky2.selected = NO;
                [checky2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                check2 = @"null";
            }
            if ([[resultset objectForKey:@"subluxation"] isEqualToString:@"Unremarkable"])
            {
                checky3.selected = YES;
                [checky3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                check3 = @"Unremarkable";
            }
            else
            {
                checky3.selected = NO;
                [checky3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                check3 = @"null";
            }
            if ([[resultset objectForKey:@"orthopedic"] isEqualToString:@"Circumferential Measures are Unremarkable"])
            {
                checky4.selected = YES;
                [checky4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                check4 = @"Circumferential Measures are Unremarkable";
            }
            else
            {
                checky4.selected = NO;
                [checky4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                check4 = @"null";
            }
            if ([[resultset objectForKey:@"acromion"] isEqualToString:@"Left"])
            {
                [seg1 setSelectedSegmentIndex:0];
                segs1 = @"Left";
            }
            else if ([[resultset objectForKey:@"acromion"] isEqualToString:@"Right"])
            {
                [seg1 setSelectedSegmentIndex:1];
                segs1 = @"Right";
            }
            else
            {
                [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs1 = @"null";
            }
            if ([[resultset objectForKey:@"inferior"] isEqualToString:@"Left"])
            {
                [seg2 setSelectedSegmentIndex:0];
                segs2 = @"Left";
            }
            else if ([[resultset objectForKey:@"inferior"] isEqualToString:@"Right"])
            {
                [seg2 setSelectedSegmentIndex:1];
                segs2 = @"Right";
            }
            else
            {
                [seg2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs2 = @"null";
            }
            if ([[resultset objectForKey:@"iliac"] isEqualToString:@"Left"])
            {
                [seg3 setSelectedSegmentIndex:0];
                segs3 = @"Left";
            }
            else if ([[resultset objectForKey:@"iliac"] isEqualToString:@"Right"])
            {
                [seg3 setSelectedSegmentIndex:1];
                segs3 = @"Right";
            }
            else
            {
                [seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs3 = @"null";
            }
            if ([[resultset objectForKey:@"ribhumping"] isEqualToString:@"Left"])
            {
                [seg4 setSelectedSegmentIndex:0];
                segs4 = @"Left";
            }
            else if ([[resultset objectForKey:@"ribhumping"] isEqualToString:@"Right"])
            {
                [seg4 setSelectedSegmentIndex:1];
                segs4 = @"Right";
            }
            else
            {
                [seg4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs4 = @"null";
            }
            if ([[resultset objectForKey:@"rectus"] isEqualToString:@"Left"])
            {
                [seg5 setSelectedSegmentIndex:0];
                segs5 = @"Left";
            }
            else if ([[resultset objectForKey:@"rectus"] isEqualToString:@"Right"])
            {
                [seg5 setSelectedSegmentIndex:1];
                segs5 = @"Right";
            }
            else
            {
                [seg5 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs5 = @"null";
            }
            if ([[resultset objectForKey:@"obliques"] isEqualToString:@"Left"])
            {
                [seg6 setSelectedSegmentIndex:0];
                segs6 = @"Left";
            }
            else if ([[resultset objectForKey:@"obliques"] isEqualToString:@"Right"])
            {
                [seg6 setSelectedSegmentIndex:1];
                segs6 = @"Right";
            }
            else
            {
                [seg6 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs6 = @"null";
            }
            if ([[resultset objectForKey:@"levator"] isEqualToString:@"Left"])
            {
                [seg7 setSelectedSegmentIndex:0];
                segs7 = @"Left";
            }
            else if ([[resultset objectForKey:@"levator"] isEqualToString:@"Right"])
            {
                [seg7 setSelectedSegmentIndex:1];
                segs7 = @"Right";
            }
            else
            {
                [seg7 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs7 = @"null";
            }
            if ([[resultset objectForKey:@"serratus"] isEqualToString:@"Left"])
            {
                [seg8 setSelectedSegmentIndex:0];
                segs8 = @"Left";
            }
            else if ([[resultset objectForKey:@"serratus"] isEqualToString:@"Right"])
            {
                [seg8 setSelectedSegmentIndex:1];
                segs8 = @"Right";
            }
            else
            {
                [seg8 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs8 = @"null";
            }
            if ([[resultset objectForKey:@"pectoralis"] isEqualToString:@"Left"])
            {
                [seg9 setSelectedSegmentIndex:0];
                segs9 = @"Left";
            }
            else if ([[resultset objectForKey:@"pectoralis"] isEqualToString:@"Right"])
            {
                [seg9 setSelectedSegmentIndex:1];
                segs9 = @"Right";
            }
            else
            {
                [seg9 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs9 = @"null";
            }
            if ([[resultset objectForKey:@"trapezius"] isEqualToString:@"Left"])
            {
                [seg10 setSelectedSegmentIndex:0];
                segs10 = @"Left";
            }
            else if ([[resultset objectForKey:@"trapezius"] isEqualToString:@"Right"])
            {
                [seg10 setSelectedSegmentIndex:1];
                segs10 = @"Right";
            }
            else
            {
                [seg10 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs10 = @"null";
            }
            if ([[resultset objectForKey:@"rhomboids"] isEqualToString:@"Left"])
            {
                [seg11 setSelectedSegmentIndex:0];
                segs11 = @"Left";
            }
            else if ([[resultset objectForKey:@"rhomboids"] isEqualToString:@"Right"])
            {
                [seg11 setSelectedSegmentIndex:1];
                segs11 = @"Right";
            }
            else
            {
                [seg11 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs11 = @"null";
            }
            if ([[resultset objectForKey:@"pectoralisminor"] isEqualToString:@"Left"])
            {
                [seg12 setSelectedSegmentIndex:0];
                segs12 = @"Left";
            }
            else if ([[resultset objectForKey:@"pectoralisminor"] isEqualToString:@"Right"])
            {
                [seg12 setSelectedSegmentIndex:1];
                segs12 = @"Right";
            }
            else
            {
                [seg12 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs12 = @"null";
            }
            if ([[resultset objectForKey:@"paraspinals"] isEqualToString:@"Left"])
            {
                [seg13 setSelectedSegmentIndex:0];
                segs13 = @"Left";
            }
            else if ([[resultset objectForKey:@"paraspinals"] isEqualToString:@"Right"])
            {
                [seg13 setSelectedSegmentIndex:1];
                segs13 = @"Right";
            }
            else
            {
                [seg13 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segs13 = @"null";
            }
        }
    }
}

-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"ThoracicExam.php?service=thoracicexamselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    //NSLog(@"POST:%@",post);
    
    NSURL *url = [NSURL URLWithString:url2];
    
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
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
    
    //NSLog(@"data %@",data);
    
    return data;
}


-(void)dismissKeyboard {
      printView.hidden = YES;
    [datefield resignFirstResponder];
    [patname resignFirstResponder];
    [text2 resignFirstResponder];
    [text3 resignFirstResponder];
    [othernotes resignFirstResponder];
    [flex resignFirstResponder];
    [t1 resignFirstResponder];
    [t2 resignFirstResponder];
    [t3 resignFirstResponder];
    [t4 resignFirstResponder];
    [t5 resignFirstResponder];
    [t6 resignFirstResponder];
    [t7 resignFirstResponder];
    [t8 resignFirstResponder];
    [t9 resignFirstResponder];
    [t10 resignFirstResponder];
    [t11 resignFirstResponder];
    [t12 resignFirstResponder];
    [rotl resignFirstResponder];
    [rotr resignFirstResponder];
    [latflex resignFirstResponder];
    [latflexr resignFirstResponder];
    [extens resignFirstResponder];
    [br resignFirstResponder];
    [bl resignFirstResponder];
    [str resignFirstResponder];
    [stl resignFirstResponder];
    [sor resignFirstResponder];
    [sol resignFirstResponder];
    [dr resignFirstResponder];
    [dl resignFirstResponder];
    [vl resignFirstResponder];
    [vr resignFirstResponder];
    [sl resignFirstResponder];
    [sr resignFirstResponder];
    [adl resignFirstResponder];
    [adr resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    [checky1 release];
    [checky2 release];
    [checky3 release];
    [checky4 release];
    [super dealloc];
}

- (IBAction)seg13:(id)sender {
    if(seg13.selectedSegmentIndex==0)
    {
        segs13=@"Left";
    }
    else if (seg1.selectedSegmentIndex==1)
    {
        segs13=@"Right";
    }
    else segs13=@"null";
}

- (IBAction)seg12:(id)sender {
    if(seg12.selectedSegmentIndex==0)
    {
        segs12=@"Left";
    }
    else if (seg12.selectedSegmentIndex==1)
    {
        segs12=@"Right";
    }
    else segs12=@"null";
}

- (IBAction)sseg11:(id)sender {
    if(seg11.selectedSegmentIndex==0)
    {
        segs11=@"Left";
    }
    else if (seg11.selectedSegmentIndex==1)
    {
        segs11=@"Right";
    }
    else segs11=@"null";
}

- (IBAction)seg10:(id)sender {
    if(seg10.selectedSegmentIndex==0)
    {
        segs10=@"Left";
    }
    else if (seg10.selectedSegmentIndex==1)
    {
        segs10=@"Right";
    }
    else segs10=@"null";
}

- (IBAction)seg4:(id)sender {
    if(seg4.selectedSegmentIndex==0)
    {
        segs4=@"Left";
    }
    else if (seg4.selectedSegmentIndex==1)
    {
        segs4=@"Right";
    }
    else segs4=@"null";
}

- (IBAction)seg1:(id)sender {
    if(seg1.selectedSegmentIndex==0)
    {
        segs1=@"Left";
    }
    else if (seg1.selectedSegmentIndex==1)
    {
        segs1=@"Right";
    }
    else segs1=@"null";
}

- (IBAction)seg2:(id)sender {
    if(seg2.selectedSegmentIndex==0)
    {
        segs2=@"Left";
    }
    else if (seg2.selectedSegmentIndex==1)
    {
        segs2=@"Right";
    }
    else segs2=@"null";
}

- (IBAction)seg3:(id)sender {
    if(seg3.selectedSegmentIndex==0)
    {
        segs3=@"Left";
    }
    else if (seg3.selectedSegmentIndex==1)
    {
        segs3=@"Right";
    }
    else segs3=@"null";
}

- (IBAction)seg5:(id)sender {
    if(seg5.selectedSegmentIndex==0)
    {
        segs5=@"Left";
    }
    else if (seg5.selectedSegmentIndex==1)
    {
        segs5=@"Right";
    }
    else segs5=@"null";
}

- (IBAction)seg6:(id)sender {
    if(seg6.selectedSegmentIndex==0)
    {
        segs6=@"Left";
    }
    else if (seg6.selectedSegmentIndex==1)
    {
        segs6=@"Right";
    }
    else segs6=@"null";
}

- (IBAction)seg7:(id)sender {
    if(seg7.selectedSegmentIndex==0)
    {
        segs7=@"Left";
    }
    else if (seg7.selectedSegmentIndex==1)
    {
        segs7=@"Right";
    }
    else segs7=@"null";
}

- (IBAction)seg8:(id)sender {
    if(seg8.selectedSegmentIndex==0)
    {
        segs8=@"Left";
    }
    else if (seg8.selectedSegmentIndex==1)
    {
        segs8=@"Right";
    }
    else segs8=@"null";
}

- (IBAction)seg9:(id)sender {
    if(seg9.selectedSegmentIndex==0)
    {
        segs9=@"Left";
    }
    else if (seg9.selectedSegmentIndex==1)
    {
        segs9=@"Right";
    }
    else segs9=@"null";
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	//NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	//NSLog(@"begin editing");
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

- (IBAction)next:(id)sender {
    texty1=patname.text;
    texty2=datefield.text;
    texty3=text2.text;
    texty4=text3.text;
    texty5=othernotes.text;
    texty6=flex.text;
    texty7=t1.text;
    texty8=t2.text;
    texty9=adl.text;
    texty10=adr.text;
    texty11=extens.text;
    texty12=t3.text;
    texty13=t4.text;
    texty14=sl.text;
    texty15=sr.text;
    texty16=latflex.text;
    texty17=t5.text;
    texty18=t6.text;
    texty19=vl.text;
    texty20=vr.text;
    texty21=latflexr.text;
    texty22=rotl.text;
    texty23=t7.text;
    texty24=t8.text;
    texty25=dl.text;
    texty26=dr.text;
    texty27=rotr.text;
    texty28=t9.text;
    texty29=t10.text;
    texty30=sol.text;
    texty31=sor.text;
    texty32=t11.text;
    texty33=t12.text;
    
    texty34=stl.text;
    texty35=str.text;
    texty36=bl.text;
    texty37=br.text;
    if(([patname.text length]!=0)&&([datefield.text length]!=0))
    {
        if([du patname:texty1]==1)
        {
            if([self validateDate:texty2]==1)
            {
                if(([text2.text length]==0)||[du otherfields:texty3]==1)
                {
                    if(([text3.text length]==0)||[du otherfields:texty4]==1)
                    {
                        
                        if(([othernotes.text length]==0)||[du comments:texty5]==1)
                        {
                            
                            if(([flex.text length]==0)||[du date:texty6]==1)
                            {
                                if(([t1.text length]==0)||[du date:texty7]==1)
                                {
                                    if(([t2.text length]==0)||[du date:texty8]==1)
                                    {
                                        if(([adl.text length]==0)||[du date:texty9]==1)
                                        {
                                            if(([adr.text length]==0)||[du date:texty10]==1)
                                            {
                                                if(([extens.text length]==0)||[du date:texty11]==1)
                                                {
                                                    if(([t3.text length]==0)||[du date:texty12]==1)
                                                    {
                                                        if(([t4.text length]==0)||[du date:texty13]==1)
                                                        {
                                                            if(([sl.text length]==0)||[du date:texty14]==1)
                                                            {
                                                                if(([sr.text length]==0)||[du date:texty15]==1)
                                                                {
                                                                    if(([latflex.text length]==0)||[du date:texty16]==1)
                                                                    {
                                                                        
                                                                        if(([t5.text length]==0)||[du date:texty17]==1)
                                                                        {
                                                                            if(([t6.text length]==0)||[du date:texty18]==1)
                                                                            {
                                                                                if(([vl.text length]==0)||[du date:texty19]==1)
                                                                                {
                                                                                    if(([vr.text length]==0)||[du date:texty20]==1)
                                                                                    {
                                                                                        if(([latflexr.text length]==0)||[du date:texty21]==1)
                                                                                        {
                                                                                            if(([rotl.text length]==0)||[du date:texty22]==1)
                                                                                            {
                                                                                                if(([t7.text length]==0)||[du date:texty23]==1)
                                                                                                {
                                                                                                    if(([t8.text length]==0)||[du date:texty24]==1)
                                                                                                    {
                                                                                                        if(([dl.text length]==0)||[du date:texty25]==1)
                                                                                                        {
                                                                                                            if(([dr.text length]==0)||[du date:texty26]==1)
                                                                                                            {
                                                                                                                if(([rotr.text length]==0)||[du date:texty27]==1)
                                                                                                                {
                                                                                                                    if(([t9.text length]==0)||[du date:texty28]==1)
                                                                                                                    {
                                                                                                                        if(([t10.text length]==0)||[du date:texty29]==1)
                                                                                                                        {
                                                                                                                            if(([sol.text length]==0)||[du date:texty30]==1)
                                                                                                                            {
                                                                                                                                if(([sor.text length]==0)||[du date:texty31]==1)
                                                                                                                                {
                                                                                                                                    if(([t11.text length]==0)||[du date:texty32]==1)
                                                                                                                                    {
                                                                                                                                        if(([t12.text length]==0)||[du date:texty33]==1)
                                                                                                                                        {
                                                                                                                                            if(([stl.text length]==0)||[du date:texty34]==1)
                                                                                                                                            {
                                                                                                                                                
                                                                                                                                                if(([str.text length]==0)||[du date:texty35]==1)
                                                                                                                                                {
                                                                                                                                                    if(([bl.text length]==0)||[du date:texty36]==1)
                                                                                                                                                    {
                                                                                                                                                        
                                                                                                                                                        if(([br.text length]==0)||[du date:texty37]==1)
                                                                                                                                                        {
                                                                                                                                                            suc=1;
                                                                                                                                                            
                                                                                                                                                            /*     if([text2.text isEqualToString:@""]){
                                                                                                                                                             text2.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([text3.text isEqualToString:@""]){
                                                                                                                                                             text3.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([othernotes.text isEqualToString:@""]){
                                                                                                                                                             othernotes.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([flex.text isEqualToString:@""]){
                                                                                                                                                             flex.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([t1.text isEqualToString:@""]){
                                                                                                                                                             t1.text=@"null";
                                                                                                                                                             } if([t2.text isEqualToString:@""]){
                                                                                                                                                             t2.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([adl.text isEqualToString:@""]){
                                                                                                                                                             adl.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([adr.text isEqualToString:@""]){
                                                                                                                                                             adr.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([extens.text isEqualToString:@""]){
                                                                                                                                                             extens.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([t3.text isEqualToString:@""]){
                                                                                                                                                             t3.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([t4.text isEqualToString:@""]){
                                                                                                                                                             t4.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([sl.text isEqualToString:@""]){
                                                                                                                                                             sl.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([sr.text isEqualToString:@""]){
                                                                                                                                                             sr.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([latflex.text isEqualToString:@""]){
                                                                                                                                                             latflex.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([t5.text isEqualToString:@""]){
                                                                                                                                                             t5.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([t6.text isEqualToString:@""]){
                                                                                                                                                             t6.text=@"null";
                                                                                                                                                             } if([vl.text isEqualToString:@""]){
                                                                                                                                                             vl.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([vr.text isEqualToString:@""]){
                                                                                                                                                             vr.text=@"null";}
                                                                                                                                                             if([text2.text isEqualToString:@""]){
                                                                                                                                                             text2.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([latflexr.text isEqualToString:@""]){
                                                                                                                                                             latflexr.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([rotl.text isEqualToString:@""]){
                                                                                                                                                             rotl.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([t7.text isEqualToString:@""]){
                                                                                                                                                             t7.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([t8.text isEqualToString:@""]){
                                                                                                                                                             t8.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             
                                                                                                                                                             if([dl.text isEqualToString:@""]){
                                                                                                                                                             dl.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([dr.text isEqualToString:@""]){
                                                                                                                                                             dr.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([rotr.text isEqualToString:@""]){
                                                                                                                                                             rotr.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([t9.text isEqualToString:@""]){
                                                                                                                                                             t9.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([t10.text isEqualToString:@""]){
                                                                                                                                                             t10.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([sol.text isEqualToString:@""]){
                                                                                                                                                             sol.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([sor.text isEqualToString:@""]){
                                                                                                                                                             sor.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([t11.text isEqualToString:@""]){
                                                                                                                                                             t11.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([t12.text isEqualToString:@""]){
                                                                                                                                                             t12.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([stl.text isEqualToString:@""]){
                                                                                                                                                             stl.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([str.text isEqualToString:@""]){
                                                                                                                                                             str.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([bl.text isEqualToString:@""]){
                                                                                                                                                             bl.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             if([br.text isEqualToString:@""]){
                                                                                                                                                             br.text=@"null";
                                                                                                                                                             }
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             */
                                                                                                                                                            
                                                                                                                                                            [recorddict setValue:datefield.text forKey:@"datey"];
                                                                                                                                                            [recorddict setValue:patname.text forKey:@"patname"];
                                                                                                                                                            [recorddict setValue:text2.text forKey:@"text2"];
                                                                                                                                                            [recorddict setValue:text3.text forKey:@"text3"];
                                                                                                                                                            [recorddict setValue:othernotes.text forKey:@"othernotes"];
                                                                                                                                                            [recorddict setValue:flex.text forKey:@"flex"];
                                                                                                                                                            [recorddict setValue:t1.text forKey:@"t1"];
                                                                                                                                                            [recorddict setValue:t2.text forKey:@"t2"];
                                                                                                                                                            [recorddict setValue:t3.text forKey:@"t3"];
                                                                                                                                                            [recorddict setValue:t4.text forKey:@"t4"];
                                                                                                                                                            [recorddict setValue:t5.text forKey:@"t5"];
                                                                                                                                                            [recorddict setValue:t6.text forKey:@"t6"];
                                                                                                                                                            [recorddict setValue:t7.text forKey:@"t7"];
                                                                                                                                                            [recorddict setValue:t8.text forKey:@"t8"];
                                                                                                                                                            [recorddict setValue:t9.text forKey:@"t9"];
                                                                                                                                                            [recorddict setValue:t10.text forKey:@"t10"];
                                                                                                                                                            [recorddict setValue:t11.text forKey:@"t11"];
                                                                                                                                                            [recorddict setValue:t12.text forKey:@"t12"];
                                                                                                                                                            [recorddict setValue:extens.text forKey:@"extens"];
                                                                                                                                                            [recorddict setValue:rotl.text forKey:@"rotl"];
                                                                                                                                                            [recorddict setValue:rotr.text forKey:@"rotr"];
                                                                                                                                                            [recorddict setValue:latflex.text forKey:@"latflex"];
                                                                                                                                                            [recorddict setValue:latflexr.text forKey:@"latflexr"];
                                                                                                                                                            [recorddict setValue:br.text forKey:@"br"];
                                                                                                                                                            [recorddict setValue:bl.text forKey:@"bl"];
                                                                                                                                                            [recorddict setValue:str.text forKey:@"str"];
                                                                                                                                                            [recorddict setValue:stl.text forKey:@"stl"];
                                                                                                                                                            [recorddict setValue:sol.text forKey:@"sol"];
                                                                                                                                                            [recorddict setValue:sor.text forKey:@"sor"];
                                                                                                                                                            [recorddict setValue:dl.text forKey:@"dl"];
                                                                                                                                                            [recorddict setValue:dr.text forKey:@"dr"];
                                                                                                                                                            [recorddict setValue:vl.text forKey:@"vl"];
                                                                                                                                                            [recorddict setValue:vr.text forKey:@"vr"];
                                                                                                                                                            [recorddict setValue:sr.text forKey:@"sr"];
                                                                                                                                                            [recorddict setValue:sl.text forKey:@"sl"];
                                                                                                                                                            [recorddict setValue:adr.text forKey:@"adr"];
                                                                                                                                                            [recorddict setValue:adl.text forKey:@"adl"];
                                                                                                                                                            [recorddict setValue:segs1 forKey:@"firstseg"];
                                                                                                                                                            [recorddict setValue:segs2 forKey:@"secondseg"];
                                                                                                                                                            [recorddict setValue:segs3 forKey:@"thirdseg"];
                                                                                                                                                            [recorddict setValue:segs4 forKey:@"fourthseg"];
                                                                                                                                                            [recorddict setValue:segs5 forKey:@"fifthseg"];
                                                                                                                                                            [recorddict setValue:segs6 forKey:@"sixthseg"];
                                                                                                                                                            [recorddict setValue:segs7 forKey:@"seventhseg"];
                                                                                                                                                            [recorddict setValue:segs8 forKey:@"eigthseg"];
                                                                                                                                                            [recorddict setValue:segs9 forKey:@"ninthseg"];
                                                                                                                                                            [recorddict setValue:segs10 forKey:@"tenthseg"];
                                                                                                                                                            [recorddict setValue:segs11 forKey:@"eleventhseg"];
                                                                                                                                                            [recorddict setValue:segs12 forKey:@"twelthseg"];
                                                                                                                                                            [recorddict setValue:segs13 forKey:@"thirteenthseg"];
                                                                                                                                                            [recorddict setValue:check1 forKey:@"firstcheck"];
                                                                                                                                                            [recorddict setValue:check2 forKey:@"secondcheck"];
                                                                                                                                                            [recorddict setValue:check3 forKey:@"thirdcheck"];
                                                                                                                                                            [recorddict setValue:check4 forKey:@"fourthcheck"];
                                                                                                                                                            //NSLog(@"recorddict in thoracic exam controller %@",recorddict);
                                                                                                                                                            //NSLog(@"size of recorddict %d",[recorddict count]);
                                                                                                                                                        }
                                                                                                                                                        else{
                                                                                                                                                            suc=0;
                                                                                                                                                            
                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                           description:@"Please enter valid beevor's sign right field."
                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                              callback:nil];
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    else{
                                                                                                                                                        suc=0;
                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                       description:@"Please enter valid beevor's sign left field."
                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                          callback:nil];
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                else{
                                                                                                                                                    suc=0;
                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                   description:@"Please enter valid sternal compression right field."
                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                      callback:nil];
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            else{
                                                                                                                                                suc=0;
                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                               description:@"Please enter valid sternal compression left field."
                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                  callback:nil];
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        else{
                                                                                                                                            suc=0;
                                                                                                                                            
                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                           description:@"Please enter valid t12-12 field."
                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                              callback:nil];
                                                                                                                                            
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    else{
                                                                                                                                        suc=0;
                                                                                                                                        
                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                       description:@"Please enter valid t11-12 field."
                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                          callback:nil];
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                                else{
                                                                                                                                    suc=0;
                                                                                                                                    
                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                   description:@"Please enter valid soto hall right field."
                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                      callback:nil];
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                            else{
                                                                                                                                suc=0;
                                                                                                                                
                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                               description:@"Please enter valid sotohall left field."
                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                  callback:nil];
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                        else{
                                                                                                                            suc=0;
                                                                                                                            
                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                           description:@"Please enter valid t10-11 field."
                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                              callback:nil];
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                        
                                                                                                                    }
                                                                                                                    else{
                                                                                                                        suc=0;
                                                                                                                        
                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                       description:@"Please enter valid t9-10 field."
                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                          callback:nil];
                                                                                                                        
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                else{
                                                                                                                    suc=0;
                                                                                                                    
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please enter valid rotation right field."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                            else{
                                                                                                                suc=0;
                                                                                                                
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please enter valid dejerine's triad right field."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        else{
                                                                                                            suc=0;
                                                                                                            
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please enter valid dejerine's triad left field."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    else{
                                                                                                        suc=0;
                                                                                                        
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please enter valid t8-9 field."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                else{
                                                                                                    suc=0;
                                                                                                    
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid t7-8 field."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            else{
                                                                                                suc=0;
                                                                                                
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid rotation left field."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else{
                                                                                            suc=0;
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid lateral flexion right field."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else{
                                                                                        suc=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid valsalva right field."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                else{
                                                                                    suc=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid valsalva left field."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            else{
                                                                                suc=0;
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid t6-7 field."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        else{
                                                                            suc=0;
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid t5-6 field."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                    else{
                                                                        suc=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid lateral flexion  left field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                else{
                                                                    suc=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid schepelman's right  field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                }
                                                                
                                                            }
                                                            else{
                                                                suc=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid schepelman's left  field."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                            }
                                                            
                                                            
                                                        }
                                                        else{
                                                            suc=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid t4-5 field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                        }
                                                        
                                                        
                                                    }
                                                    else{
                                                        suc=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid t3-4 field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                    }
                                                    
                                                    
                                                }
                                                else{
                                                    suc=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid extension field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                }
                                                
                                                
                                            }
                                            else{
                                                suc=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid adam's right field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                            }
                                            
                                            
                                        }
                                        else{
                                            suc=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid adam's left field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                        }
                                        
                                        
                                    }
                                    else{
                                        suc=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid t2-3 field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                    }
                                    
                                    
                                }
                                else{
                                    suc=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid t1-2 field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                }
                                
                            }
                            else{
                                suc=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid flexion field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                            }
                        }
                        else{
                            suc=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid other notes field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                        }
                    }
                    else{
                        suc=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid swelling/discoloration field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                    }
                    
                }
                else{
                    suc=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid muscle symmetry field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                }
                
            }
            else{
                suc=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid date field."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
            }
            
            
        }
        else{
            suc=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid patient name."
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
    
    if(suc==1){
        [self performSegueWithIdentifier:@"thoracic1" sender:self];
    }
}
-(BOOL)validatepatientname:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z0-9@_]+";
    
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9_-]{1,3}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
- (IBAction)checkchange:(UIButton *)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    } if(checky1.selected){
        check1=@"All Soft Tissue Unremarkable";
    }
    else
        check1=@"null";
    
    if(checky2.selected){
        check2=@"Unremarkable";
    }
    else
        check2=@"null";
    if(checky3.selected){
        check3=@"Unremarkable";
    }
    else
        check3=@"null";
    if(checky4.selected){
        check4=@"Circumferential Measures are Unremarkable";
    }
    else
        check4=@"null";
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    //NSLog(@"succc value in perform segue %i",suc);
    ////NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"thoracic1"])
    {
        if (suc==1)
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
    
    
    if ([segue.identifier isEqualToString:@"thoracic1"])
    {
        
        //NSLog(@"succc value in prepre segue %i ",suc);
        ThoracicExamViewController1 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        //NSLog(@"recorddict in thoracic exam controller %@",recorddict);
        //NSLog(@"count of thoracic recorddict   %lu",(unsigned long)[recorddict count]);
        
    }
    
    
    
}


- (IBAction)reset:(id)sender {
    
    
    datefield.text=@"";
    patname.text=@"";
    text2.text=@"";
    text3.text=@"";
    othernotes.text=@"";
    flex.text=@"";
    t1.text=@"";
    t2.text=@"";
    t3.text=@"";
    t4.text=@"";
    t5.text=@"";
    t6.text=@"";
    t7.text=@"";
    t8.text=@"";
    t9.text=@"";
    t10.text=@"";
    t11.text=@"";
    t12.text=@"";
    rotl.text=@"";
    rotr.text=@"";
    latflex.text=@"";
    latflexr.text=@"";
    extens.text=@"";
    br.text=@"";
    bl.text=@"";
    str.text=@"";
    stl.text=@"";
    sor.text=@"";
    sol.text=@"";
    dr.text=@"";
    dl.text=@"";
    vl.text=@"";
    vr.text=@"";
    sl.text=@"";
    sr.text=@"";
    adl.text=@"";
    adr.text=@"";
    segs1=@"null";
    segs2=@"null";
    segs3=@"null";
    segs4=@"null";
    segs5=@"null";
    segs6=@"null";
    segs7=@"null";
    segs8=@"null";
    segs9=@"null";
    segs10=@"null";
    segs11=@"null";
    segs12=@"null";
    segs13=@"null";
    check1=@"null";
    check2=@"null";
    check3=@"null";
    check4=@"null";
    
    checky1.selected = NO;
    checky2.selected = NO;
    checky3.selected = NO;
    checky4.selected = NO;
    
    [checky1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    
    [checky2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checky3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checky4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    
    
    [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg5 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg6 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg7 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg8 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg9 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg10 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg11 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg12 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [seg13 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    
    
    
}

- (IBAction)cancel:(id)sender {
    for (id controller in [self.navigationController viewControllers])
    {
        if ([controller isKindOfClass:[hamilViewController class]])
        {
            [self.navigationController popToViewController:controller animated:YES];
            break;
        }
    }
    //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
    
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
                ////NSLog(@"FAILED! due to error in domain %@ with error code %u", error.domain, error.code);
            }
        };
        [printController presentFromBarButtonItem:barButton animated:YES completionHandler:completionHandler];
    }
}

@end
