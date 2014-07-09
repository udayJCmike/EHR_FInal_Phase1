//
//  WristExamViewController.m
//  EHR
//
//  Created by deemsys on 2/24/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//
#import "WristExamViewController1.h"
#import "WristExamViewController.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "hamilViewController.h"
#import "JSON.h"
#import "databaseurl.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"


@interface WristExamViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}

@end

@implementation WristExamViewController
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


NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty41,*texty42;
int suc;
NSString *checkstring1,*checkstring2,*checkstring3,*checkstring4;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
    //  [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}
- (IBAction)reset:(id)sender {
    
    checkstring1=@"";
    checkstring2=@"";
    checkstring3=@"";
    first.text=@"";
    sec.text=@"";
    thr.text=@"";
    four.text=@"";
    txtv1.text=@"";
    fiv.text=@"";
    six.text=@"";
    sev.text=@"";
    eigh.text=@"";
    nine.text=@"";
    ten.text=@"";
    ele.text=@"";
    twel.text=@"";
    thrt.text=@"";
    fourt.text=@"";
    fift.text=@"";
    sixteen.text=@"";
    seventeen.text=@"";
    eighteen.text=@"";
    ninteen.text=@"";
    twenty.text=@"";
    twentyone.text=@"";
    twentytwo.text=@"";
    patname.text=@"";
    datefield.text=@"";
    muscle.text=@"";
    swell.text=@"";
    texty1=@"";
    texty2=@"Excellent";
    texty3=@"";
    texty4=@"";
    texty5=@"";
    texty6=@"";
    texty7=@"";
    texty8=@"";
    texty9=@"";
    texty10=@"";
    texty11=@"";
    patname.text=@"";
    datefield.text=@"";
    muscle.text=@"";
    swell.text=@"";
    [check1 setSelected:NO];
    [check1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check2 setSelected:NO];
    [check2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check3 setSelected:NO];
    [check3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg2 setSelectedSegmentIndex:0];
    [seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg5 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg6 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg7 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg8 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg9 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg10 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg11 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    
    
    
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    checkstring1=@"";
    checkstring2=@"";
    checkstring3=@"";
    
    texty1=@"";
    texty2=@"Excellent";
    texty3=@"";
    texty4=@"";
    texty5=@"";
    texty6=@"";
    texty7=@"";
    texty8=@"";
    texty9=@"";
    texty10=@"";
    texty11=@"";
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

    resultset=[[NSMutableDictionary alloc]init] ;
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    patname.text=username;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    
	// Do any additional setup after loading the view.
    [self Getdata];
    
}
-(void)Getdata
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    //NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"wristexamuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
  //  NSLog(@"items1app %@",items1App);
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            temp1 =[arrayList1 objectForKey:@"pname"];
            temp2 =[arrayList1 objectForKey:@"date"];
            
            temp4 =[arrayList1 objectForKey:@"muscle"];
            temp5 =[arrayList1 objectForKey:@"swelling"];
            temp3=[arrayList1 objectForKey:@"dominanthand"];
            temp6 =[arrayList1 objectForKey:@"ao"];
            temp9=[arrayList1 objectForKey:@"dysfunction"];
            temp10 =[arrayList1 objectForKey:@"thenareminence"];
            temp11 =[arrayList1 objectForKey:@"flexorcarpiradialis"];
            temp12=[arrayList1 objectForKey:@"commonflexors"];
            temp13 =[arrayList1 objectForKey:@"hypothenareminence"];
            temp14 =[arrayList1 objectForKey:@"extensorcarpiradialis"];
            temp15=[arrayList1 objectForKey:@"commonextensor"];
            temp16=[arrayList1 objectForKey:@"abductorpolliuslongus"];
            temp17=[arrayList1 objectForKey:@"abductorpollicisbrevis"];
            temp18=[arrayList1 objectForKey:@"extensorpollicisbrevis"];
            temp19=[arrayList1 objectForKey:@"note"];
            temp20=[arrayList1 objectForKey:@"functional"];
            temp21 =[arrayList1 objectForKey:@"orthotpedic"];
            temp22 =[arrayList1 objectForKey:@"flexionleft"];
            temp23 =[arrayList1 objectForKey:@"flexionright"];
            temp24 =[arrayList1 objectForKey:@"extensionleft"];
            temp25 =[arrayList1 objectForKey:@"extensionright"];
            temp26=[arrayList1 objectForKey:@"ulnarleft"];
            temp27 =[arrayList1 objectForKey:@"ulnarright"];
            temp28 =[arrayList1 objectForKey:@"radialleft"];
            temp29 =[arrayList1 objectForKey:@"radialright"];
            temp30 =[arrayList1 objectForKey:@"pronationleft"];
            temp31 =[arrayList1 objectForKey:@"pronationright"];
            temp32 =[arrayList1 objectForKey:@"allenleft"];
            temp33 =[arrayList1 objectForKey:@"allenright"];
            temp34 =[arrayList1 objectForKey:@"phalenleft"];
            temp35 =[arrayList1 objectForKey:@"phalenright"];
            temp36 =[arrayList1 objectForKey:@"reverseleft"];
            temp37 =[arrayList1 objectForKey:@"reverseright"];
            temp38 =[arrayList1 objectForKey:@"tenosynovitisleft"];
            temp39 =[arrayList1 objectForKey:@"tenosynovitisright"];
            temp40 =[arrayList1 objectForKey:@"tinnelsleft"];
            temp41 =[arrayList1 objectForKey:@"tinnelsright"];
            temp42 =[arrayList1 objectForKey:@"ulttleft"];
            temp43 =[arrayList1 objectForKey:@"ulttright"];
            temp44 =[arrayList1 objectForKey:@"neurological"];
            temp45 =[arrayList1 objectForKey:@"latdeltoidleft"];
            temp46 =[arrayList1 objectForKey:@"latdeltoidright"];
            temp47 =[arrayList1 objectForKey:@"latarmleft"];
            temp48 =[arrayList1 objectForKey:@"latarmright"];
            temp49 =[arrayList1 objectForKey:@"thirdleft"];
            temp50 =[arrayList1 objectForKey:@"thirdright"];
            temp51 =[arrayList1 objectForKey:@"medforearmleft"];
            temp52 =[arrayList1 objectForKey:@"medforearmright"];
            temp53 =[arrayList1 objectForKey:@"medelbowleft"];
            temp54 =[arrayList1 objectForKey:@"medelbowright"];
            temp55 =[arrayList1 objectForKey:@"shdleft"];
            temp56=[arrayList1 objectForKey:@"shdright"];
            temp57 =[arrayList1 objectForKey:@"elbflexleft"];
            temp58 =[arrayList1 objectForKey:@"elbflexright"];
            
            [resultset setValue:temp44 forKey:@"neurological"];
            [resultset setValue:temp45 forKey:@"latdeltoidleft"];
            [resultset setValue:temp46 forKey:@"latdeltoidright"];
            [resultset setValue:temp47 forKey:@"latarmleft"];
            [resultset setValue:temp48 forKey:@"latarmright"];
            [resultset setValue:temp49 forKey:@"thirdleft"];
            [resultset setValue:temp50 forKey:@"thirdright"];
            [resultset setValue:temp51 forKey:@"medforearmleft"];
            [resultset setValue:temp52 forKey:@"medforearmright"];
            [resultset setValue:temp53 forKey:@"medelbowleft"];
            [resultset setValue:temp54 forKey:@"medelbowright"];
            [resultset setValue:temp55 forKey:@"shdleft"];
            [resultset setValue:temp56 forKey:@"shdright"];
            [resultset setValue:temp57 forKey:@"elbflexleft"];
            [resultset setValue:temp58 forKey:@"elbflexright"];
            [resultset setValue:[arrayList1 objectForKey:@"elbextleft"] forKey:@"elbextleft"];
            [resultset setValue:[arrayList1 objectForKey:@"elbextright"] forKey:@"elbextright"];
            [resultset setValue:[arrayList1 objectForKey:@"digitflexionleft"] forKey:@"digitflexionleft"];
            [resultset setValue:[arrayList1 objectForKey:@"digitflexionright"] forKey:@"digitflexionright"];
            [resultset setValue:[arrayList1 objectForKey:@"digitabdleft"] forKey:@"digitabdleft"];
            [resultset setValue:[arrayList1 objectForKey:@"digitabdright"] forKey:@"digitabdright"];
            [resultset setValue:[arrayList1 objectForKey:@"bicepsleft"] forKey:@"bicepsleft"];
            [resultset setValue:[arrayList1 objectForKey:@"bicepsright"] forKey:@"bicepsright"];
            [resultset setValue:[arrayList1 objectForKey:@"brachioradleft"] forKey:@"brachioradleft"];
            [resultset setValue:[arrayList1 objectForKey:@"brachioradright"] forKey:@"brachioradright"];
            [resultset setValue:[arrayList1 objectForKey:@"tricepsleft"] forKey:@"tricepsleft"];
            [resultset setValue:[arrayList1 objectForKey:@"tricepsright"] forKey:@"tricepsright"];
            [resultset setValue:[arrayList1 objectForKey:@"typing"] forKey:@"typing"];
            [resultset setValue:[arrayList1 objectForKey:@"driving"] forKey:@"driving"];
            [resultset setValue:[arrayList1 objectForKey:@"other"] forKey:@"other"];
            [resultset setValue:[arrayList1 objectForKey:@"otherdefict"] forKey:@"otherdefict"];
            [resultset setValue:[arrayList1 objectForKey:@"comments"] forKey:@"comments"];
            [resultset setValue:[arrayList1 objectForKey:@"patientstatus"] forKey:@"patientstatus"];
            
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis1"] forKey:@"diagnosis1"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis2"] forKey:@"diagnosis2"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis3"] forKey:@"diagnosis3"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis4"] forKey:@"diagnosis4"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis5"] forKey:@"diagnosis5"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis6"] forKey:@"diagnosis6"];
            [resultset setValue:[arrayList1 objectForKey:@"times"] forKey:@"times"];
            [resultset setValue:[arrayList1 objectForKey:@"weeks"] forKey:@"weeks"];
            [resultset setValue:[arrayList1 objectForKey:@"spinaldecompression"] forKey:@"spinaldecompression"];
            [resultset setValue:[arrayList1 objectForKey:@"chiropractic"] forKey:@"chiropractic"];
            [resultset setValue:[arrayList1 objectForKey:@"physicaltherapy"] forKey:@"physicaltherapy"];
            [resultset setValue:[arrayList1 objectForKey:@"bracing"] forKey:@"bracing"];
            [resultset setValue:[arrayList1 objectForKey:@"modalities"] forKey:@"modalities"];
            [resultset setValue:[arrayList1 objectForKey:@"supplementation"] forKey:@"supplementation"];
            [resultset setValue:[arrayList1 objectForKey:@"hep"] forKey:@"hep"];
            [resultset setValue:[arrayList1 objectForKey:@"radiographic"] forKey:@"radiographic"];
            [resultset setValue:[arrayList1 objectForKey:@"mri"] forKey:@"mri"];
            [resultset setValue:[arrayList1 objectForKey:@"scan"] forKey:@"scan"];
            [resultset setValue:[arrayList1 objectForKey:@"conduction"] forKey:@"conduction"];
            [resultset setValue:[arrayList1 objectForKey:@"emg"] forKey:@"emg"];
            [resultset setValue:[arrayList1 objectForKey:@"outsiderefferal"] forKey:@"outsiderefferal"];
            [resultset setValue:[arrayList1 objectForKey:@"dc"] forKey:@"dc"];
            [resultset setValue:[arrayList1 objectForKey:@"others"] forKey:@"others"];
            [resultset setValue:[arrayList1 objectForKey:@"othervalue"] forKey:@"othervalue"];
            [resultset setValue:[arrayList1 objectForKey:@"signature"] forKey:@"signature"];
            
            
            
            
            patname.text=temp1;
            datefield.text=temp2;
            muscle.text=temp4;
            swell.text=temp5;
            txtv1 .text=temp19;
            first.text=temp22;
            sec.text=temp23;
            thr.text=temp32;
            four.text=temp33;
            fiv.text=temp24;
            six.text=temp25;
            sev.text=temp34;
            eigh.text=temp35;
            nine.text=temp26;
            ten.text=temp27;
            ele.text=temp36;
            twel.text=temp37;
            thrt.text=temp28;
            fourt.text=temp29;
            fift.text=temp38;
            sixteen.text=temp39;
            seventeen.text=temp30;
            eighteen.text=temp31;
            ninteen.text=temp40;
            twenty.text=temp41;
            twentyone.text=temp42;
            twentytwo.text=temp43;
            
            
            if ([temp9 isEqualToString:@"All Soft Tissue Unremarkable"]) {
                check1.selected=YES;
                [check1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                checkstring1=@"All Soft Tissue Unremarkable";
                
            }
            else
            {
                check1.selected=NO;
                [check1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                checkstring1=@"null";
                
                
            }
            if ([temp20 isEqualToString:@"Unremarkable"]) {
                check2.selected=YES;
                [check2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                checkstring2=@"Unremarkable";
            }
            else
            {
                check2.selected=NO;
                [check2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                checkstring2=@"null";
            }
            
            if ([temp21 isEqualToString:@"Unremarkable"]) {
                check3.selected=YES;
                [check3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                checkstring3=@"Unremarkable";
            }
            else
            {
                check3.selected=NO;
                [check3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                checkstring3=@"null";
            }
            
            
            if ([temp6 isEqualToString:@"Excellent"] ) {
                [seg2 setSelectedSegmentIndex:0];
                texty2=@"Excellent";
            }
            else if ([temp6 isEqualToString:@"Good"] ) {
                [seg2 setSelectedSegmentIndex:1];
                texty2=@"Good";
            }
            else if ([temp6 isEqualToString:@"Fair"] ) {
                [seg2 setSelectedSegmentIndex:2];
                texty2=@"Fair";
            }
            else if ([temp6 isEqualToString:@"Severe"] ) {
                [seg2 setSelectedSegmentIndex:3];
                texty2=@"Severe";
            }
            
            
            
            
            if ([temp3 isEqualToString:@"Left"] ) {
                [seg1 setSelectedSegmentIndex:0];
                texty1=@"Left";
            }
            else if ([temp3 isEqualToString:@"Right"] ) {
                [seg1 setSelectedSegmentIndex:1];
                texty1=@"Right";
            }
            else
            {
                [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                texty1=@"null";
            }
            if ([temp10 isEqualToString:@"Left"] ) {
                [seg3 setSelectedSegmentIndex:0];
                texty3=@"Left";
            }
            else if ([temp10 isEqualToString:@"Right"] ) {
                [seg3 setSelectedSegmentIndex:1];
                texty3=@"Right";
            }
            else
            {
                [seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                texty3=@"null";
            }
            
            
            if ([temp11 isEqualToString:@"Left"] ) {
                [seg4 setSelectedSegmentIndex:0];
                texty4=@"Left";
            }
            else if ([temp11 isEqualToString:@"Right"] ) {
                [seg4 setSelectedSegmentIndex:1];
                texty4=@"Right";
            }
            else
            {
                [seg4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                texty4=@"null";
            }
            
            if ([temp12 isEqualToString:@"Left"] ) {
                [seg5 setSelectedSegmentIndex:0];
                texty5=@"Left";
            }
            else if ([temp12 isEqualToString:@"Right"] ) {
                [seg5 setSelectedSegmentIndex:1];
                texty5=@"Right";
            }
            else
            {
                [seg5 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                texty5=@"null";
            }
            if ([temp13 isEqualToString:@"Left"] ) {
                [seg6 setSelectedSegmentIndex:0];
                texty6=@"Left";
            }
            else if ([temp13 isEqualToString:@"Right"] ) {
                [seg6 setSelectedSegmentIndex:1];
                texty6=@"Right";
            }
            else
            {
                [seg6 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                texty6=@"null";
            }
            
            if ([temp14 isEqualToString:@"Left"] ) {
                [seg7 setSelectedSegmentIndex:0];
                texty7=@"Left";
            }
            else if ([temp14 isEqualToString:@"Right"] ) {
                [seg7 setSelectedSegmentIndex:1];
                texty7=@"Right";
            }
            else
            {
                [seg7 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                texty7=@"null";
            }
            if ([temp15 isEqualToString:@"Left"] ) {
                [seg8 setSelectedSegmentIndex:0];
                texty8=@"Left";
            }
            else if ([temp15 isEqualToString:@"Right"] ) {
                [seg8 setSelectedSegmentIndex:1];
                texty8=@"Right";
            }
            else
            {
                [seg8 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                texty8=@"null";
            }
            
            if ([temp16 isEqualToString:@"Left"] ) {
                [seg9 setSelectedSegmentIndex:0];
                texty9=@"Left";
            }
            else if ([temp16 isEqualToString:@"Right"] ) {
                [seg9 setSelectedSegmentIndex:1];
                texty9=@"Right";
            }
            else
            {
                [seg9 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                texty9=@"null";
            }
            
            if ([temp17 isEqualToString:@"Left"] ) {
                [seg10 setSelectedSegmentIndex:0];
                texty10=@"Left";
            }
            else if ([temp17 isEqualToString:@"Right"] ) {
                [seg10 setSelectedSegmentIndex:1];
                texty10=@"Right";
            }
            else
            {
                [seg10 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                texty10=@"null";
            }
            if ([temp18 isEqualToString:@"Left"] ) {
                [seg11 setSelectedSegmentIndex:0];
                texty11=@"Left";
            }
            else if ([temp18 isEqualToString:@"Right"] ) {
                [seg11 setSelectedSegmentIndex:1];
                texty11=@"Right";
            }
            else
            {
                [seg11 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                texty11=@"null";
            }
            
            
        }
    }
    
}
-(BOOL)validatepatientname:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z0-9@_]+";
    
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateNumbers1:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9-_]{1,4}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Wristexam.php?service=wristexamselect";
    
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
   // NSLog(@"data %@",data);
    
    return data;
    
}


-(void)dismissKeyboard {
      printView.hidden = YES;
    [muscle resignFirstResponder];
    [swell resignFirstResponder];
    [txtv1 resignFirstResponder];
    [first resignFirstResponder];
    [sec resignFirstResponder];
    [thr resignFirstResponder];
    [four resignFirstResponder];
    [fiv resignFirstResponder];
    [six resignFirstResponder];
    [sev resignFirstResponder];
    [eigh resignFirstResponder];
    [nine resignFirstResponder];
    [ten resignFirstResponder];
    [ele resignFirstResponder];
    [twel resignFirstResponder];
    [thrt resignFirstResponder];
    [fourt resignFirstResponder];
    [fift resignFirstResponder];
    [sixteen resignFirstResponder];
    [seventeen resignFirstResponder];
    [eighteen resignFirstResponder];
    [ninteen resignFirstResponder];
    [twenty resignFirstResponder];
    [twentyone resignFirstResponder];
    [twentytwo resignFirstResponder];
    
    
    [patname resignFirstResponder];
    [datefield resignFirstResponder];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)validateNumberLessFive:(NSString *)user

{
    //  NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    NSString *userFormat1 =@"[0-5]{1}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateString:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (void)dealloc {
    
    [super dealloc];
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[A-Za-z0-9_-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
- (IBAction)next:(id)sender {
    texty12=first.text ;
    texty13=sec.text ;
    texty14=thr.text ;
    texty15=four.text ;
    texty38=[txtv1.text stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    texty38=[texty38 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    texty38=[texty38 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    texty16=fiv.text ;
    texty17=six.text ;
    texty18=sev.text ;
    texty19=eigh.text ;
    texty20=nine.text ;
    texty21=ten.text ;
    texty22=ele.text ;
    texty23=twel.text ;
    texty24=thrt.text ;
    texty25=fourt.text ;
    texty26=fift.text ;
    texty27=sixteen.text ;
    texty28=seventeen.text ;
    texty29=eighteen.text ;
    texty30=ninteen.text ;
    texty31=twenty.text ;
    texty32=twentyone.text ;
    texty33=twentytwo.text ;
    texty34=patname.text ;
    texty35=datefield.text ;
    texty36=muscle.text ;
    texty37=swell.text ;
    
    if(([patname.text length]!=0)&&([datefield.text length]!=0))
    {
        if([du patname:texty34]==1)
            
        {
            if([self validateDate:texty35]==1){
                if([muscle.text length]==0||([du otherfields:texty36]==1)){
                    
                    if([swell.text length]==0||([du otherfields:texty37]==1)){
                        if([txtv1.text length]==0||([du comments:texty38]==1))
                            
                        {
                            
                            if([first.text length]==0||([du date:texty12]==1))
                            {
                                if([sec.text length]==0||([du date:texty13]==1))
                                {
                                    if([thr.text length]==0||([du date:texty14]==1))
                                        
                                    {
                                        if([four.text length]==0||([du date:texty15]==1))
                                            
                                        {
                                            
                                            if([fiv.text length]==0||([du date:texty16]==1))
                                                
                                            {
                                                if([six.text length]==0||([du date:texty17]==1))
                                                    
                                                {
                                                    if([sev.text length]==0||([du date:texty18]==1))
                                                        
                                                    {
                                                        if([eigh.text length]==0||([du date:texty19]==1))
                                                            
                                                        {
                                                            if([nine.text length]==0||([du date:texty20]==1))
                                                                
                                                            {
                                                                if([ten.text length]==0||([du date:texty21]==1))
                                                                    
                                                                {
                                                                    if([ele.text length]==0||([du date:texty22]==1))
                                                                        
                                                                    {
                                                                        if([twel.text length]==0||([du date:texty23]==1))
                                                                            
                                                                        {
                                                                            if([thrt.text length]==0||([du date:texty24]==1))
                                                                                
                                                                            {
                                                                                if([fourt.text length]==0||([du date:texty25]==1))
                                                                                    
                                                                                {
                                                                                    if([fift.text length]==0||([du date:texty26]==1))
                                                                                        
                                                                                    {
                                                                                        if([sixteen.text length]==0||([du date:texty27]==1))
                                                                                            
                                                                                        {
                                                                                            if([seventeen.text length]==0||([du date:texty28]==1))
                                                                                                
                                                                                            {
                                                                                                if([eighteen.text length]==0||([du date:texty29]==1))
                                                                                                    
                                                                                                {
                                                                                                    if([ninteen.text length]==0||([du date:texty30]==1))
                                                                                                        
                                                                                                    {
                                                                                                        if([twenty.text length]==0||([du date:texty31]==1))
                                                                                                            
                                                                                                        {
                                                                                                            if([twentyone.text length]==0||([du date:texty32]==1))
                                                                                                                
                                                                                                            {
                                                                                                                if([twentytwo.text length]==0||([du date:texty33]==1))
                                                                                                                    
                                                                                                                {
                                                                                                                    suc=1;
                                                                                                                    if(check1.selected)
                                                                                                                    {
                                                                                                                        checkstring1=@"All Soft Tissue Unremarkable";
                                                                                                                    }
                                                                                                                    else
                                                                                                                        checkstring1=@"null";
                                                                                                                    if(check2.selected)
                                                                                                                    {
                                                                                                                        checkstring2=@"Unremarkable";
                                                                                                                    }
                                                                                                                    else
                                                                                                                        checkstring2=@"null";
                                                                                                                    if(check3.selected)
                                                                                                                    {
                                                                                                                        checkstring3=@"Unremarkable";
                                                                                                                    }
                                                                                                                    else
                                                                                                                        checkstring3=@"null";
                                                                                                                    
                                                                                                                    recorddict=[[NSMutableDictionary alloc]init];
                                                                                                                    [recorddict setValue:patname.text forKey:@"patname"];
                                                                                                                    
                                                                                                                    [recorddict setValue:datefield.text forKey:@"datefield"];
                                                                                                                    
                                                                                                                    [recorddict setValue:muscle.text forKey:@"muscle"];
                                                                                                                    
                                                                                                                    [recorddict setValue:swell.text forKey:@"swell"];
                                                                                                                    
                                                                                                                    [recorddict setValue:first.text forKey:@"one"];
                                                                                                                    
                                                                                                                    [recorddict setValue:sec.text forKey:@"two"];
                                                                                                                    
                                                                                                                    [recorddict setValue:thr.text forKey:@"three"];
                                                                                                                    
                                                                                                                    [recorddict setValue:four.text forKey:@"four"];
                                                                                                                    
                                                                                                                    [recorddict setValue:fiv.text forKey:@"five"];
                                                                                                                    
                                                                                                                    [recorddict setValue:six.text forKey:@"six"];
                                                                                                                    
                                                                                                                    [recorddict setValue:sev.text forKey:@"seven"];
                                                                                                                    
                                                                                                                    [recorddict setValue:eigh.text forKey:@"eight"];
                                                                                                                    
                                                                                                                    
                                                                                                                    [recorddict setValue:nine.text forKey:@"nine"];
                                                                                                                    
                                                                                                                    [recorddict setValue:ten.text forKey:@"ten"];
                                                                                                                    
                                                                                                                    [recorddict setValue:ele.text forKey:@"eleven"];
                                                                                                                    
                                                                                                                    [recorddict setValue:twel.text forKey:@"twelve"];
                                                                                                                    
                                                                                                                    [recorddict setValue:thrt.text forKey:@"thirteen"];
                                                                                                                    [recorddict setValue:fourt.text forKey:@"fourteen"];
                                                                                                                    [recorddict setValue:fift.text forKey:@"fifteen"];
                                                                                                                    [recorddict setValue:sixteen.text forKey:@"sixteen"];
                                                                                                                    [recorddict setValue:seventeen.text forKey:@"seventeen"];
                                                                                                                    [recorddict setValue:eighteen.text forKey:@"eighteen"];
                                                                                                                    [recorddict setValue:ninteen.text forKey:@"nineteen"];
                                                                                                                    [recorddict setValue:twenty.text forKey:@"twenty"];
                                                                                                                    [recorddict setValue:twentyone.text forKey:@"twentyone"];
                                                                                                                    [recorddict setValue:twentytwo.text forKey:@"twentytwo"];
                                                                                                                    
                                                                                                                    [recorddict setValue:txtv1.text forKey:@"textviewone"];
                                                                                                                    
                                                                                                                    [recorddict setValue:texty1 forKey:@"seg1"];
                                                                                                                    [recorddict setValue:texty2 forKey:@"seg2"];
                                                                                                                    [recorddict setValue:texty3 forKey:@"seg3"];
                                                                                                                    [recorddict setValue:texty4 forKey:@"seg4"];
                                                                                                                    [recorddict setValue:texty5 forKey:@"seg5"];
                                                                                                                    [recorddict setValue:texty6 forKey:@"seg6"];
                                                                                                                    [recorddict setValue:texty7 forKey:@"seg7"];
                                                                                                                    [recorddict setValue:texty8 forKey:@"seg8"];
                                                                                                                    [recorddict setValue:texty9 forKey:@"seg9"];
                                                                                                                    [recorddict setValue:texty10 forKey:@"seg10"];
                                                                                                                    [recorddict setValue:texty11 forKey:@"seg11"];
                                                                                                                    
                                                                                                                    [recorddict setObject:checkstring1 forKey:@"checkstringone"];
                                                                                                                    [recorddict setObject:checkstring2 forKey:@"checkstringtwo"];
                                                                                                                    [recorddict setObject:checkstring3 forKey:@"checkstringthree"];
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    suc=0;
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please Please enter valid ultt right field."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                suc=0;
                                                                                                                
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please Please enter valid ultt left field."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            suc=0;
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please Please enter valid tinnel's right field."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        suc=0;
                                                                                                        
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please Please enter valid tinnel's left field."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    suc=0;
                                                                                                    
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please Please enter valid pronation/supination right field."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                suc=0;
                                                                                                
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please Please enter valid pronation/supination left field."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            suc=0;
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please Please enter valid finkelstein's right field."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        suc=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please Please enter valid finkelstein's left field."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    suc=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please Please enter valid  wrist radial deviation right field."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                suc=0;
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please Please enter valid wrist radial deviation left field."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            suc=0;
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please Please enter valid reverse phalen right field."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        suc=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please Please enter valid reverse phalen left field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    suc=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please Please enter valid ulnar deviation right field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                    
                                                                }
                                                            }
                                                            else
                                                            {
                                                                suc=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please Please enter valid ulnar deviation left field."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            suc=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please Please enter valid phalen's right field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        suc=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please Please enter valid phalen's left field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    suc=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please Please enter valid wrist extension right field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                }
                                            }
                                            else
                                            {
                                                suc=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please Please enter valid wrist extension left field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                            }
                                        }
                                        
                                        else
                                        {
                                            suc=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please Please enter valid allen's right field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                        }
                                    }
                                    else
                                    {
                                        suc=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please Please enter valid allen's left field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                    }
                                }
                                else
                                {
                                    suc=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please Please enter valid wrist flexion right field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                }
                            }
                            else
                            {
                                suc=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please Please enter valid wrist flexion left field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                            }
                        }
                        else
                        {
                            suc=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please Please enter valid other/notes field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                        }
                    }
                    else
                    {
                        suc=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please Please enter valid swell field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                    }
                }
                else
                {
                    suc=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please Please enter valid muscle field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                }
            }
            else
            {
                suc=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please Please enter valid date field."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
            }
        }
        else
        {
            suc=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please Please enter valid patient name."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
        }
    }else{
        suc=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please Please enter all the required Fields."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
    }
    if(suc==1){
        [self performSegueWithIdentifier:@"wrist1" sender:self];
    }
}

- (IBAction)s11:(id)sender {
    if(seg11.selectedSegmentIndex==0){
        texty11=@"Left";
    }
    else if(seg11.selectedSegmentIndex==1){
        texty11=@"Right";
        
    }
}

- (IBAction)s10:(id)sender {
    if(seg10.selectedSegmentIndex==0){
        texty10=@"Left";
    }
    else if(seg10.selectedSegmentIndex==1){
        texty10=@"Right";
        
    }
}

- (IBAction)s9:(id)sender {
    if(seg9.selectedSegmentIndex==0){
        texty9=@"Left";
    }
    else if(seg9.selectedSegmentIndex==1){
        texty9=@"Right";
        
    }
}

- (IBAction)s8:(id)sender {
    if(seg8.selectedSegmentIndex==0){
        texty8=@"Left";
    }
    else if(seg8.selectedSegmentIndex==1){
        texty8=@"Right";
        
    }
}

- (IBAction)s7:(id)sender {
    if(seg7.selectedSegmentIndex==0){
        texty7=@"Left";
    }
    else if(seg7.selectedSegmentIndex==1){
        texty7=@"Right";
        
    }
}

- (IBAction)s6:(id)sender {
    if(seg6.selectedSegmentIndex==0){
        texty6=@"Left";
    }
    else if(seg6.selectedSegmentIndex==1){
        texty6=@"Right";
        
    }
}

- (IBAction)s5:(id)sender {
    if(seg5.selectedSegmentIndex==0){
        texty5=@"Left";
    }
    else if(seg5.selectedSegmentIndex==1){
        texty5=@"Right";
        
    }
}

- (IBAction)s4:(id)sender {
    if(seg4.selectedSegmentIndex==0){
        texty4=@"Left";
    }
    else if(seg4.selectedSegmentIndex==1){
        texty4=@"Right";
        
    }
}
- (IBAction)s2:(id)sender {
    if(seg2.selectedSegmentIndex==0){
        texty2=@"Excellent";
    }
    else if(seg2.selectedSegmentIndex==1){
        texty2=@"Good";
        
    }
    else if(seg2.selectedSegmentIndex==2){
        texty2=@"Fair";
        
    }
    else if(seg2.selectedSegmentIndex==3){
        texty2=@"Severe";
        
    }
}

- (IBAction)s1:(id)sender {
    if(seg1.selectedSegmentIndex==0){
        texty1=@"Left";
    }
    else if(seg1.selectedSegmentIndex==1){
        texty1=@"Right";
        
    }
    
    
}

- (IBAction)s3:(id)sender {
    if(seg3.selectedSegmentIndex==0){
        texty3=@"Left";
    }
    else if(seg3.selectedSegmentIndex==1){
        texty3=@"Right";
        
    }
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
  //  NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"wrist1"])
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
    
    
    if ([segue.identifier isEqualToString:@"wrist1"])
    {
        
       // NSLog(@"succc value in prepre segue %i ",suc);
        WristExamViewController1 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
       // NSLog(@"recorddict in knee exam controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
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




- (IBAction)checkchange:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}
@end
