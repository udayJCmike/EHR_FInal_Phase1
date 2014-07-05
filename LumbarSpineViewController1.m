//
//  LumbarSpineViewController1.m
//  physicalexam
//
//  Created by deemsys on 2/28/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "LumbarSpineViewController1.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
@interface LumbarSpineViewController1 ()
{
    
    databaseurl *du;
    
}
@end

@implementation LumbarSpineViewController1
@synthesize recorddict;
@synthesize check17;
@synthesize check18;
@synthesize check19;
@synthesize check20;
@synthesize check21;
@synthesize check22;
@synthesize check23;

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
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty42,*texty43,*texty44,*texty45,*texty46,*texty47;
NSString *t1,*t2,*t3,*t4,*t5,*t6,*t7;
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
    
    du=[[databaseurl alloc]init];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    
    texty1=@"0";
    texty2=@"0";
    texty3=@"0";
    texty4=@"0";
    texty5=@"0";
    texty6=@"0";
    texty7=@"0";
    texty8=@"0";
    texty9=@"Positive";
    texty10=@"Positive";
    texty11=@"Positive";
    texty12=@"Positive";
    
    texty13=@"0";
    texty14=@"0";
    texty15=@"0";
    texty16=@"0";
    texty17=@"Positive";
    texty18=@"Positive";
    t1=@"null";
    t2=@"null";
    t3=@"null";
    t4=@"null";
    t5=@"null";
    t6=@"null";
    t7=@"null";
    
    
    texty27=@"null";
    texty28=@"null";
    texty29=@"null";
    texty30=@"null";
    texty31=@"null";
    texty32=@"null";
    texty33=@"null";
    texty34=@"null";
    texty35=@"null";
    texty36=@"null";
    texty37=@"null";
    texty38=@"null";
    texty46=@"null";
    texty47=@"null";
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view.
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
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
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9_-]{1,5}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)reset:(id)sender {
    t1=@"null";
    t2=@"null";
    t3=@"null";
    t4=@"null";
    t5=@"null";
    t6=@"null";
    t7=@"null";
    [check1 setSelected:NO];
    [check2 setSelected:NO];
    [check3 setSelected:NO];
    [check4 setSelected:NO];
    [check5 setSelected:NO];
    [check6 setSelected:NO];
    [check7 setSelected:NO];
    [check8 setSelected:NO];
    [check9 setSelected:NO];
    [check10 setSelected:NO];
    [check11 setSelected:NO];
    [check12 setSelected:NO];
    [check13 setSelected:NO];
    [check14 setSelected:NO];
    
    [check23 setSelected:NO];
    [check17 setSelected:NO];
    [check18 setSelected:NO];
    [check19 setSelected:NO];
    [check20 setSelected:NO];
    [check21 setSelected:NO];
    [check22 setSelected:NO];
    [seg1 setSelectedSegmentIndex:0];
    [seg2 setSelectedSegmentIndex:0];
    [seg3 setSelectedSegmentIndex:0];
    [seg4 setSelectedSegmentIndex:0];
    [seg5 setSelectedSegmentIndex:0];
    [seg6 setSelectedSegmentIndex:0];
    [seg7 setSelectedSegmentIndex:0];
    [seg8 setSelectedSegmentIndex:0];
    [seg9 setSelectedSegmentIndex:0];
    [seg10 setSelectedSegmentIndex:0];
    [seg11 setSelectedSegmentIndex:0];
    [seg12 setSelectedSegmentIndex:0];
    [seg13 setSelectedSegmentIndex:0];
    [seg14 setSelectedSegmentIndex:0];
    [seg15 setSelectedSegmentIndex:0];
    [seg16 setSelectedSegmentIndex:0];
    [seg17 setSelectedSegmentIndex:0];
    [seg18 setSelectedSegmentIndex:0];
    
    [check1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check19 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check20 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check21 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check22 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check23 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
}

- (void)dealloc {
    
    
    [super dealloc];
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}
-(void)dismissKeyboard {
    
}

- (IBAction)save:(id)sender {
    
    if(check1.selected){
        texty27=@"Right";
    }
    else{
        texty27=@"null";
    }
    if(check2.selected){
        texty28=@"Left";
    }
    else{
        texty28=@"null";
    }
    if(check3.selected){
        texty29=@"Right";
    }
    else{
        texty29=@"null";
    }
    if(check4.selected){
        texty30=@"Left";
    }
    else{
        texty30=@"null";
    }
    if(check5.selected){
        texty31=@"Right";
    }
    else{
        texty31=@"null";
    }
    if(check6.selected){
        texty32=@"Left";
    }
    else{
        texty32=@"null";
    }
    
    if(check7.selected){
        texty33=@"Right";
    }
    else{
        texty33=@"null";
    }
    if(check8.selected){
        texty34=@"Left";
    }
    else{
        texty34=@"null";
    }
    if(check9.selected){
        texty35=@"Right";
    }
    else{
        texty35=@"null";
    }
    if(check10.selected){
        texty36=@"Left";
    }
    else{
        texty36=@"null";
    }
    if(check11.selected){
        texty37=@"Right";
    }
    else{
        texty37=@"null";
    }
    if(check12.selected){
        texty38=@"Left";
    }
    else{
        texty38=@"null";
    }
    
    if(check13.selected){
        texty46=@"Right";
    }
    else{
        texty46=@"null";
    }
    if(check14.selected){
        texty47=@"Left";
    }
    else{
        texty47=@"null";
    }
    
    
    if(check17.selected){
        t1=@"Tonicity";
    }
    else{
        t1=@"null";
    }
    if(check18.selected){
        t2=@"R-L";
    }
    else{
        t2=@"null";
    }
    if(check19.selected){
        t3=@"Normal";
    }
    else{
        t3=@"null";
    }
    if(check20.selected){
        t4=@"Tonicity";
    }
    else{
        t4=@"null";
    }
    if(check21.selected){
        t5=@"R-L";
    }
    else{
        t5=@"null";
    }
    if(check22.selected){
        t6=@"Normal";
    }
    else{
        t6=@"null";
    }
    if(check23.selected){
        t7=@"Fixations";
    }
    else{
        t7=@"null";
    }
    
    
    [recorddict setObject:t1 forKey:@"lumbL-1"];
    [recorddict setObject:t2 forKey:@"lumbL-2"];
    [recorddict setObject:t3 forKey:@"lumbL-3"];
    [recorddict setObject:t4 forKey:@"lumbL-4"];
    [recorddict setObject:t5 forKey:@"lumbL-5"];
    [recorddict setObject:t6 forKey:@"lumbL-6"];
    [recorddict setObject:t7 forKey:@"lumbL-7"];
    
    [recorddict setObject:texty1 forKey:@"lumbarmyotomesneuroright1"];
    [recorddict setObject:texty2 forKey:@"lumbarmyotomesneuroleft1"];
    [recorddict setObject:texty3 forKey:@"lumbarmyotomesneuroright2"];
    [recorddict setObject:texty4 forKey:@"lumbarmyotomesneuroleft2"];
    [recorddict setObject:texty5 forKey:@"lumbarmyotomesneuroright3"];
    [recorddict setObject:texty6 forKey:@"lumbarmyotomesneuroleft3"];
    [recorddict setObject:texty7 forKey:@"lumbarmyotomesneuroright4"];
    [recorddict setObject:texty8 forKey:@"lumbarmyotomesneuroleft4"];
    [recorddict setObject:texty9 forKey:@"lumbarmyotomesneuroright5"];
    [recorddict setObject:texty10 forKey:@"lumbarmyotomesneuroleft5"];
    [recorddict setObject:texty11 forKey:@"lumbarmyotomesneuroright6"];
    [recorddict setObject:texty12 forKey:@"lumbarmyotomesneuroleft6"];
    
    
    [recorddict setObject:texty13 forKey:@"lumbdeeptendonneuroexamright1"];
    [recorddict setObject:texty14 forKey:@"lumbdeeptendonneuroexamleft1"];
    [recorddict setObject:texty15 forKey:@"lumbdeeptendonneuroexamright2"];
    [recorddict setObject:texty16 forKey:@"lumbdeeptendonneuroexamleft2"];
    [recorddict setObject:texty17 forKey:@"lumbdeeptendonneuroexamright3"];
    [recorddict setObject:texty18 forKey:@"lumbdeeptendonneuroexamleft3"];
    
    
    [recorddict setObject:texty27 forKey:@"lumbarabnormalright1"];
    [recorddict setObject:texty28 forKey:@"lumbarabnormalleft1"];
    [recorddict setObject:texty29 forKey:@"lumbarabnormalright2"];
    [recorddict setObject:texty30 forKey:@"lumbarabnormalleft2"];
    [recorddict setObject:texty31 forKey:@"lumbarabnormalright3"];
    [recorddict setObject:texty32 forKey:@"lumbarabnormalleft3"];
    [recorddict setObject:texty33 forKey:@"lumbarabnormalright4"];
    [recorddict setObject:texty34 forKey:@"lumbarabnormalleft4"];
    [recorddict setObject:texty35 forKey:@"lumbarabnormalright5"];
    [recorddict setObject:texty36 forKey:@"lumbarabnormalleft5"];
    [recorddict setObject:texty37 forKey:@"lumbarabnormalright6"];
    [recorddict setObject:texty38 forKey:@"lumbarabnormalleft6"];
    [recorddict setObject:texty46 forKey:@"lumbarabnormalright7"];
    [recorddict setObject:texty47 forKey:@"lumbarabnormalleft7"];
    // NSLog(@"Record dict in lumbarspine form two::%@",recorddict);
    suc=1;
    
    
    if(suc==1){
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"physicalexam Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                [self performSegueWithIdentifier:@"physicaltohamil" sender:self];
                // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                [self performSegueWithIdentifier:@"physicaltohamil" sender:self];
                //  [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
        }
    }
    
}

-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    // NSLog(@"name %@",username);
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Physicalexam.php?service=physicalexaminsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *postt =[[NSString alloc] initWithFormat:@"username=%@&sign=%@&name=%@&id=%@&date=%@&age=%@&sex=%@&height=%@&height1=%@&weight=%@&temp=%@&bp=%@&pulse=%@&appearance=%@&weight1=%@&gait=%@&head=%@&path=%@&posture=%@&romber=%@&exam=%@&abnormal=%@&headtiltright=%@&headtiltleft=%@&headtiltnormal=%@&rotationright=%@&rotationleft=%@&rotationnormal=%@&tmjright=%@&tmjleft=%@&tmjnormal=%@&highright=%@&highleft=%@&highnormal=%@&lordhyper=%@&lordhypo=%@&lordnormal=%@&lymphedema=%@&lymphnormal=%@&paraspain=%@&paraspasm=%@&paraedema=%@&paratriggerpoint=%@&trapeziusrl=%@&trapeziusrl1=%@&scm=%@&scm1=%@&vertebraefix=%@&vertebraenofix=%@&flexpain=%@&flexspasm=%@&flexstiff=%@&extpain=%@&extspasm=%@&extstiff=%@&rlfpain=%@&rlfspasm=%@&rlfstiff=%@&llfpain=%@&llfspasm=%@&llfstiff=%@&rrpain=%@&rrspasm=%@&rrstiff=%@&lrpain=%@&lrspasm=%@&lrstiff=%@&c5=%@&c5right=%@&c5left=%@&c6=%@&c6right=%@&c6left=%@&c7=%@&c7right=%@&c7left=%@&c8=%@&c8right=%@&c8left=%@&t1=%@&t1right=%@&t1left=%@&other=%@&otherright=%@&otherleft=%@&deltoidright=%@&deltoidleft=%@&wristright=%@&wristleft=%@&wristflexright=%@&wristflexleft=%@&fingerflexright=%@&fingerflexleft=%@&fingeraddright=%@&fingeraddleft=%@&bicepright=%@&bicepleft=%@&bracioradright=%@&bracioradleft=%@&tricepright=%@&tricepleft=%@&presentvisual=%@&presentrl=%@",username,[recorddict objectForKey:@"physiciansign"],[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"email"],[recorddict objectForKey:@"Date"],[recorddict objectForKey:@"age"],[recorddict objectForKey:@"sex"],[recorddict objectForKey:@"height"],[recorddict objectForKey:@"height1"],[recorddict objectForKey:@"weight"],[recorddict objectForKey:@"temp"],[recorddict objectForKey:@"bp"],[recorddict objectForKey:@"pulse"],[recorddict objectForKey:@"appearance"],[recorddict objectForKey:@"weight1"],[recorddict objectForKey:@"gait"],[recorddict objectForKey:@"head"],[recorddict objectForKey:@"visceralpatho"],[recorddict objectForKey:@"posture"],[recorddict objectForKey:@"romber"],[recorddict objectForKey:@"cnexam"],[recorddict objectForKey:@"abnormalfindings"],[recorddict objectForKey:@"inspection1"],[recorddict objectForKey:@"inspection2"],[recorddict objectForKey:@"inspection3"],[recorddict objectForKey:@"inspection4"],[recorddict objectForKey:@"inspection5"],[recorddict objectForKey:@"inspection6"],[recorddict objectForKey:@"inspection7"],[recorddict objectForKey:@"inspection8"],[recorddict objectForKey:@"inspection9"],[recorddict objectForKey:@"inspection10"],[recorddict objectForKey:@"inspection11"],[recorddict objectForKey:@"inspection12"],[recorddict objectForKey:@"inspection13"],[recorddict objectForKey:@"inspection14"],[recorddict objectForKey:@"inspection15"],[recorddict objectForKey:@"palpation1"],[recorddict objectForKey:@"palpation2"],[recorddict objectForKey:@"palpation3"],[recorddict objectForKey:@"palpation4"],[recorddict objectForKey:@"edema"],[recorddict objectForKey:@"trigger"],[recorddict objectForKey:@"t1"],[recorddict objectForKey:@"t2"],[recorddict objectForKey:@"t3"],[recorddict objectForKey:@"t4"],[recorddict objectForKey:@"palpation5"],[recorddict objectForKey:@"palpation6" ],[recorddict objectForKey:@"2nd"],[recorddict objectForKey:@"3rd"],[recorddict objectForKey:@"4th"],[recorddict objectForKey:@"6th"],[recorddict objectForKey:@"7th"],[recorddict objectForKey:@"8th"],[recorddict objectForKey:@"10th"],[recorddict objectForKey:@"11th"],[recorddict objectForKey:@"12th"],[recorddict objectForKey:@"14th"],[recorddict objectForKey:@"15th"],[recorddict objectForKey:@"16th"],[recorddict objectForKey:@"18th"],[recorddict objectForKey:@"19th"],[recorddict objectForKey:@"20th"],[recorddict objectForKey:@"22nd"],[recorddict objectForKey:@"23rd"],[recorddict objectForKey:@"24th"],[recorddict objectForKey:@"normal1"],[recorddict objectForKey:@"abnormalright1"],[recorddict objectForKey:@"abnormalleft1"],[recorddict objectForKey:@"normal2"],[recorddict objectForKey:@"abnormalright2"],[recorddict objectForKey:@"abnormalleft2"],[recorddict objectForKey:@"normal3"],[recorddict objectForKey:@"abnormalright3"],[recorddict objectForKey:@"abnormalleft3"],[recorddict objectForKey:@"normal4"],[recorddict objectForKey:@"abnormalright4"],[recorddict objectForKey:@"abnormalleft4"],[recorddict objectForKey:@"normal5"],[recorddict objectForKey:@"abnormalright5"],[recorddict objectForKey:@"abnormalleft5"],[recorddict objectForKey:@"normal6"],[recorddict objectForKey:@"abnormalright6"],[recorddict objectForKey:@"abnormalleft6"],[recorddict objectForKey:@"myotomesneuroexamright1"],[recorddict objectForKey:@"myotomesneuroexamleft1"],[recorddict objectForKey:@"myotomesneuroexamright2"],[recorddict objectForKey:@"myotomesneuroexamleft2"],[recorddict objectForKey:@"myotomesneuroexamright3"],[recorddict objectForKey:@"myotomesneuroexamleft3"],[recorddict objectForKey:@"myotomesneuroexamright4"],[recorddict objectForKey:@"myotomesneuroexamleft4"] ,[recorddict objectForKey:@"myotomesneuroexamright5"],[recorddict objectForKey:@"myotomesneuroexamleft5"],[recorddict objectForKey:@"deeptendonneuroexamright1"],[recorddict objectForKey:@"deeptendonneuroexamleft1"],[recorddict objectForKey:@"deeptendonneuroexamright2"],[recorddict objectForKey:@"deeptendonneuroexamleft2"],[recorddict objectForKey:@"deeptendonneuroexamright3"],[recorddict objectForKey:@"deeptendonneuroexamleft3"],[recorddict objectForKey:@"visual"],[recorddict objectForKey:@"visualrl"]];
    
    NSString *post1 =[[NSString alloc] initWithFormat:@"&highshoulderright=%@&highshoulderleft=%@&highshouldernormal=%@&curvatureright=%@&curvatureleft=%@&curvaturenormal=%@&wingingright=%@&wingingleft=%@&wingingnormal=%@&ribhumpright=%@&ribhumpleft=%@&ribhumpnormal=%@&chestmeasurein=%@&kyphosishyper=%@&kyphosishypo=%@&kyphosisnormal=%@&parapain=%@&paraspasm=%@&paraedema=%@&paratriggerpoint=%@&ribspost=%@&ribsnor=%@&vertefix=%@&vertenofix=%@&thoracicpain=%@&thoracicspasm=%@&thoracicstiff=%@&thoextpain=%@&thoextspasm=%@&thoextstiff=%@&thorlfpain=%@&thorlfspasm=%@&thorlfstiff=%@&thollfpain=%@&thollfspasm=%@&thollfstiff=%@&thorrpain=%@&thorrspasm=%@&thorrstiff=%@&tholrpain=%@&tholrspasm=%@&tholrstiff=%@&thot1=%@&thot1right=%@&thot1left=%@&thot4=%@&thot4right=%@&thot4left=%@&thot10=%@ &thot10right=%@&thot10left=%@&thoother=%@&thootherright=%@&thootherleft=%@&myotomes=%@&positiveruq=%@&positiveluq=%@&positiverlq=%@&positivellq=%@&myotomes1=%@&negativeruq=%@&negativeluq=%@&negativerlq=%@&negativellq=%@&patientsmoker=%@&highcrestright=%@&highcrestleft=%@&highcrestnormal=%@&highpsisright=%@&highpsisleft=%@&highpsisnormal=%@&curveright=%@&curveleft=%@&curvenormal=%@&lordosishyper=%@&lordosishypo=%@&lordosisnormal=%@&paraspinalpain=%@&paraspinalspasm=%@&paraspinaledema=%@&paraspinaltp=%@&quadrl=%@&quadrl1=%@&hamstringrl=%@&hamstringrl1=%@&verfix=%@&vernofix=%@&abdomentender=%@&abdomenpulse=%@&abdomenascites=%@&lumflexpain=%@&lumflexspasm=%@&lumflexstiff=%@&lumextpain=%@&lumextspasm=%@&lumextstiff=%@&lumrlfpain=%@&lumrlfspasm=%@ &lumrlfstiff=%@&lumllfpain=%@&lumllfspasm=%@&lumllfstiff=%@&lumrrpain=%@&lumrrspasm=%@&lumrrstiff=%@",[recorddict objectForKey:@"inspectthoracicspine1"],[recorddict objectForKey:@"inspectthoracicspine2"],[recorddict objectForKey:@"inspectthoracicspine3"],[recorddict objectForKey:@"inspectthoracicspine4"],[recorddict objectForKey:@"inspectthoracicspine5"],[recorddict objectForKey:@"inspectthoracicspine6"],[recorddict objectForKey:@"inspectthoracicspine7"],[recorddict objectForKey:@"inspectthoracicspine8"],[recorddict objectForKey:@"inspectthoracicspine9"],[recorddict objectForKey:@"inspectthoracicspine10"],[recorddict objectForKey:@"inspectthoracicspine11"],[recorddict objectForKey:@"inspectthoracicspine12"],[recorddict objectForKey:@"chest"],[recorddict objectForKey:@"inspectthoracicspine16"],[recorddict objectForKey:@"inspectthoracicspine17"],[recorddict objectForKey:@"inspectthoracicspine18"],[recorddict objectForKey:@"palpationthoracicspine19"],[recorddict objectForKey:@"palpationthoracicspine20"],[recorddict objectForKey:@"palpationthoracicspine21"],[recorddict objectForKey:@"palpationthoracicspine22"],[recorddict objectForKey:@"palpationthoracicspine23"],[recorddict objectForKey:@"palpationthoracicspine24"],[recorddict objectForKey:@"palpationthoracicspine25"],[recorddict objectForKey:@"palpationthoracicspine26"],[recorddict objectForKey:@"thoracicflexpain"],[recorddict objectForKey:@"thoracicflexspasm"],[recorddict objectForKey:@"thoracicflexstiff"],[recorddict objectForKey:@"thoracicextpain"],[recorddict objectForKey:@"thoracicextspasm"],[recorddict objectForKey:@"thoracicextstiff"],[recorddict objectForKey:@"thoracicrlfpain"],[recorddict objectForKey:@"thoracicrlfspasm"],[recorddict objectForKey:@"thoracicrlfstiff"],[recorddict objectForKey:@"thoracicllfpain"],[recorddict objectForKey:@"thoracicllfspasm"],[recorddict objectForKey:@"thoracicllfstiff"],[recorddict objectForKey:@"thoracicrrpain"],[recorddict objectForKey:@"thoracicrrspasm"],[recorddict objectForKey:@"thoracicrrstiff"],[recorddict objectForKey:@"thoraciclrpain"],[recorddict objectForKey:@"thoraciclrspasm"],[recorddict objectForKey:@"thoraciclrstiff"],[recorddict objectForKey:@"nor1"],[recorddict objectForKey:@"dermatomesthoracicspine27"],[recorddict objectForKey:@"dermatomesthoracicspine28"],[recorddict objectForKey:@"nor2"],[recorddict objectForKey:@"dermatomesthoracicspine29"],[recorddict objectForKey:@"dermatomesthoracicspine30"],[recorddict objectForKey:@"nor3"],[recorddict objectForKey:@"dermatomesthoracicspine31"],[recorddict objectForKey:@"dermatomesthoracicspine32"],[recorddict objectForKey:@"nor4" ],[recorddict objectForKey:@"dermatomesthoracicspine33"],[recorddict objectForKey:@"dermatomesthoracicspine34"],[recorddict objectForKey:@"beev"],[recorddict objectForKey:@"myotomesthoracicspine35"],[recorddict objectForKey:@"myotomesthoracicspine36"],[recorddict objectForKey:@"myotomesthoracicspine37"],[recorddict objectForKey:@"myotomesthoracicspine38"],[recorddict objectForKey:@"beev"],[recorddict objectForKey:@"myotomesthoracicspine35"],[recorddict objectForKey:@"myotomesthoracicspine36"],[recorddict objectForKey:@"myotomesthoracicspine37"],[recorddict objectForKey:@"myotomesthoracicspine38"],[recorddict objectForKey:@"smoker"],[recorddict objectForKey:@"lumbarspineinsection1"],[recorddict objectForKey:@"lumbarspineinsection2"],[recorddict objectForKey:@"lumbarspineinsection3"],[recorddict objectForKey:@"lumbarspineinsection4"],[recorddict objectForKey:@"lumbarspineinsection5"],[recorddict objectForKey:@"lumbarspineinsection6"],[recorddict objectForKey:@"lumbarspineinsection7"],[recorddict objectForKey:@"lumbarspineinsection8"],[recorddict objectForKey:@"lumbarspineinsection9"],[recorddict objectForKey:@"lumbarspineinsection10"],[recorddict objectForKey:@"lumbarspineinsection11"],[recorddict objectForKey:@"lumbarspineinsection12"],[recorddict objectForKey:@"lumbarspinepalpation1"],[recorddict objectForKey:@"lumbarspinepalpation2"],[recorddict objectForKey:@"lumbarspinepalpation3"],[recorddict objectForKey:@"lumbarspinepalpation4"],[recorddict objectForKey:@"seg1"],[recorddict objectForKey:@"seg2"],[recorddict objectForKey:@"seg3"],[recorddict objectForKey:@"seg4"],[recorddict objectForKey:@"lumbarspinepalpation11"],[recorddict objectForKey:@"lumbarspinepalpation12"],[recorddict objectForKey:@"lumbarspinepalpation13"],[recorddict objectForKey:@"lumbarspinepalpation14"],[recorddict objectForKey:@"lumbarspinepalpation15"],[recorddict objectForKey:@"lumbar2nd"],[recorddict objectForKey:@"lumbar3rd"],[recorddict objectForKey:@"lumbar4th"],[recorddict objectForKey:@"lumbar6th"],[recorddict objectForKey:@"lumbar7th"],[recorddict objectForKey:@"lumbar8th"] ,[recorddict objectForKey:@"lumbar10th"],[recorddict objectForKey:@"lumbar11th"],[recorddict objectForKey:@"lumbar12th"],[recorddict objectForKey:@"lumbar14th"],[recorddict objectForKey:@"lumbar15th"],[recorddict objectForKey:@"lumbar16th"],[recorddict objectForKey:@"lumbar18th"],[recorddict objectForKey:@"lumbar19th"],[recorddict objectForKey:@"lumbar20th"]];
    
    NSString *post2 =[[NSString alloc] initWithFormat:@"&lumlrpain=%@&lumlrspasm=%@&lumlrstiff=%@&lu1=%@&lu1right=%@&lu1left=%@&lu2=%@&lu2right=%@&lu2left=%@&lu3=%@&lu3right=%@&lu3left=%@&lu4=%@&lu4right=%@&lu4left=%@&lu5=%@&lu5right=%@&lu5left=%@&lu6=%@&lu6right=%@&lu6left=%@&lu7=%@&lu7right=%@&lu7left=%@&hipflexright=%@&hipflexleft=%@&legextright=%@&legextleft=%@&dorsiflexright=%@&dorsiflexleft=%@&digitflexright=%@&digitflexleft=%@&heelright=%@&heelleft=%@&toeright=%@&toeleft=%@&patellarright=%@&patellarleft=%@&achillesright=%@&achillesleft=%@&babinskiright=%@&babinskileft=%@&%@=%@",[recorddict objectForKey:@"lumbar22nd"],[recorddict objectForKey:@"lumbar23rd"],[recorddict objectForKey:@"lumbar24th"],[recorddict objectForKey:@"lumbL-1"],[recorddict objectForKey:@"lumbarabnormalright1"],[recorddict objectForKey:@"lumbarabnormalleft1"],[recorddict objectForKey:@"lumbL-2"],[recorddict objectForKey:@"lumbarabnormalright2"],[recorddict objectForKey:@"lumbarabnormalleft2"],[recorddict objectForKey:@"lumbL-3"],[recorddict objectForKey:@"lumbarabnormalright3"],[recorddict objectForKey:@"lumbarabnormalleft3"],[recorddict objectForKey:@"lumbL-4"],[recorddict objectForKey:@"lumbarabnormalright4"],[recorddict objectForKey:@"lumbarabnormalleft4"],[recorddict objectForKey:@"lumbL-5"],[recorddict objectForKey:@"lumbarabnormalright5"],[recorddict objectForKey:@"lumbarabnormalleft5"],[recorddict objectForKey:@"lumbL-6"],[recorddict objectForKey:@"lumbarabnormalright6"],[recorddict objectForKey:@"lumbarabnormalleft6"],[recorddict objectForKey:@"lumbL-7"],[recorddict objectForKey:@"lumbarabnormalright7"],[recorddict objectForKey:@"lumbarabnormalleft7"],[recorddict objectForKey:@"lumbarmyotomesneuroright1"],[recorddict objectForKey:@"lumbarmyotomesneuroleft1"],[recorddict objectForKey:@"lumbarmyotomesneuroright2"],[recorddict objectForKey:@"lumbarmyotomesneuroleft2"],[recorddict objectForKey:@"lumbarmyotomesneuroright3"],[recorddict objectForKey:@"lumbarmyotomesneuroleft3"],[recorddict objectForKey:@"lumbarmyotomesneuroright4"],[recorddict objectForKey:@"lumbarmyotomesneuroleft4"],[recorddict objectForKey:@"lumbarmyotomesneuroright5"],[recorddict objectForKey:@"lumbarmyotomesneuroleft5"],[recorddict objectForKey:@"lumbarmyotomesneuroright6"],[recorddict objectForKey:@"lumbarmyotomesneuroleft6"],[recorddict objectForKey:@"lumbdeeptendonneuroexamright1"],[recorddict objectForKey:@"lumbdeeptendonneuroexamleft1"],[recorddict objectForKey:@"lumbdeeptendonneuroexamright2"],[recorddict objectForKey:@"lumbdeeptendonneuroexamleft2"],[recorddict objectForKey:@"lumbdeeptendonneuroexamright3"],[recorddict objectForKey:@"lumbdeeptendonneuroexamleft3"],secondEntity,value2];
    
    
    
    NSString *post=[NSString stringWithFormat:@"%@%@%@",postt,post1,post2];
    
    // NSLog(@"POST:%@",post);
    
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
    
    //       NSLog(@"data %@",data);
    
    return data;
    
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
/*- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
 {
 NSLog(@"succc value in perform segue %i",suc);
 //NSLog(@"identifier %@",identifier);
 if([identifier isEqual:@"physic3"])
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
 }*/

/*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 
 
 if ([segue.identifier isEqualToString:@"physic3"])
 {
 
 NSLog(@"succc value in prepre segue %i ",suc);
 // ThoracicSpineViewController *destViewController = [segue destinationViewController];
 //destViewController.recorddict=recorddict;
 NSLog(@"recorddict in cervical 2 controller %@",recorddict);
 // destViewController.delegate=self;
 
 }
 
 
 
 }*/

- (IBAction)segbut1:(id)sender {
    if(seg1.selectedSegmentIndex==0){
        texty1=@"0";
    }
    else if(seg1.selectedSegmentIndex==1){
        texty1=@"1";
    }
    else if(seg1.selectedSegmentIndex==2){
        texty1=@"2";
    }
    else if(seg1.selectedSegmentIndex==3){
        texty1=@"3";
    }
    else if(seg1.selectedSegmentIndex==4){
        texty1=@"4";
    }
    else if(seg1.selectedSegmentIndex==5){
        texty1=@"5";
    }
    
}
- (IBAction)segbut2:(id)sender {
    if(seg2.selectedSegmentIndex==0){
        texty2=@"0";
    }
    else if(seg2.selectedSegmentIndex==1){
        texty2=@"1";
    }
    else if(seg2.selectedSegmentIndex==2){
        texty2=@"2";
    }
    else if(seg2.selectedSegmentIndex==3){
        texty2=@"3";
    }
    else if(seg2.selectedSegmentIndex==4){
        texty2=@"4";
    }
    else if(seg2.selectedSegmentIndex==5){
        texty2=@"5";
    }
    
}
- (IBAction)segbut3:(id)sender {
    if(seg3.selectedSegmentIndex==0){
        texty3=@"0";
    }
    else if(seg3.selectedSegmentIndex==1){
        texty3=@"1";
    }
    else if(seg3.selectedSegmentIndex==2){
        texty3=@"2";
    }
    else if(seg3.selectedSegmentIndex==3){
        texty3=@"3";
    }
    else if(seg3.selectedSegmentIndex==4){
        texty3=@"4";
    }
    else if(seg3.selectedSegmentIndex==5){
        texty3=@"5";
    }
    
}
- (IBAction)segbut4:(id)sender {
    if(seg4.selectedSegmentIndex==0){
        texty4=@"0";
    }
    else if(seg4.selectedSegmentIndex==1){
        texty4=@"1";
    }
    else if(seg4.selectedSegmentIndex==2){
        texty4=@"2";
    }
    else if(seg4.selectedSegmentIndex==3){
        texty4=@"3";
    }
    else if(seg4.selectedSegmentIndex==4){
        texty4=@"4";
    }
    else if(seg4.selectedSegmentIndex==5){
        texty4=@"5";
    }
    
}
- (IBAction)segbut5:(id)sender {
    if(seg5.selectedSegmentIndex==0){
        texty5=@"0";
    }
    else if(seg5.selectedSegmentIndex==1){
        texty5=@"1";
    }
    else if(seg5.selectedSegmentIndex==2){
        texty5=@"2";
    }
    else if(seg5.selectedSegmentIndex==3){
        texty5=@"3";
    }
    else if(seg5.selectedSegmentIndex==4){
        texty5=@"4";
    }
    else if(seg5.selectedSegmentIndex==5){
        texty5=@"5";
    }
    
}
- (IBAction)segbut6:(id)sender {
    if(seg6.selectedSegmentIndex==0){
        texty6=@"0";
    }
    else if(seg6.selectedSegmentIndex==1){
        texty6=@"1";
    }
    else if(seg6.selectedSegmentIndex==2){
        texty6=@"2";
    }
    else if(seg6.selectedSegmentIndex==3){
        texty6=@"3";
    }
    else if(seg6.selectedSegmentIndex==4){
        texty6=@"4";
    }
    else if(seg6.selectedSegmentIndex==5){
        texty6=@"5";
    }
    
}
- (IBAction)segbut7:(id)sender {
    if(seg7.selectedSegmentIndex==0){
        texty7=@"0";
    }
    else if(seg7.selectedSegmentIndex==1){
        texty7=@"1";
    }
    else if(seg7.selectedSegmentIndex==2){
        texty7=@"2";
    }
    else if(seg7.selectedSegmentIndex==3){
        texty7=@"3";
    }
    else if(seg7.selectedSegmentIndex==4){
        texty7=@"4";
    }
    else if(seg7.selectedSegmentIndex==5){
        texty7=@"5";
    }
    
}
- (IBAction)segbut8:(id)sender {
    if(seg8.selectedSegmentIndex==0){
        texty8=@"0";
    }
    else if(seg8.selectedSegmentIndex==1){
        texty8=@"1";
    }
    else if(seg8.selectedSegmentIndex==2){
        texty8=@"2";
    }
    else if(seg8.selectedSegmentIndex==3){
        texty8=@"3";
    }
    else if(seg8.selectedSegmentIndex==4){
        texty8=@"4";
    }
    else if(seg8.selectedSegmentIndex==5){
        texty8=@"5";
    }
    
}
- (IBAction)segbut9:(id)sender {
    if(seg9.selectedSegmentIndex==0){
        texty9=@"Positive";
    }
    else if(seg9.selectedSegmentIndex==1){
        texty9=@"Negative";
    }
    
}
- (IBAction)segbut10:(id)sender {
    if(seg10.selectedSegmentIndex==0){
        texty10=@"Positive";
    }
    else if(seg10.selectedSegmentIndex==1){
        texty10=@"Negative";
    }
    
}
- (IBAction)segbut11:(id)sender {
    if(seg11.selectedSegmentIndex==0){
        texty11=@"Positive";
    }
    else if(seg11.selectedSegmentIndex==1){
        texty11=@"Negative";
    }
    
    
}
- (IBAction)segbut12:(id)sender {
    if(seg12.selectedSegmentIndex==0){
        texty12=@"Positive";
    }
    else if(seg12.selectedSegmentIndex==1){
        texty12=@"Negative";
    }
    
}
- (IBAction)segbut13:(id)sender {
    if(seg13.selectedSegmentIndex==0){
        texty13=@"0";
    }
    else if(seg13.selectedSegmentIndex==1){
        texty13=@"1";
    }
    else if(seg13.selectedSegmentIndex==2){
        texty13=@"2";
    }
    else if(seg13.selectedSegmentIndex==3){
        texty13=@"3";
    }
    else if(seg13.selectedSegmentIndex==4){
        texty13=@"4";
    }
    
}
- (IBAction)segbut14:(id)sender {
    if(seg14.selectedSegmentIndex==0){
        texty14=@"0";
    }
    else if(seg14.selectedSegmentIndex==1){
        texty14=@"1";
    }
    else if(seg14.selectedSegmentIndex==2){
        texty14=@"2";
    }
    else if(seg14.selectedSegmentIndex==3){
        texty14=@"3";
    }
    else if(seg14.selectedSegmentIndex==4){
        texty14=@"4";
    }
    
}
- (IBAction)segbut15:(id)sender {
    if(seg15.selectedSegmentIndex==0){
        texty15=@"0";
    }
    else if(seg15.selectedSegmentIndex==1){
        texty15=@"1";
    }
    else if(seg15.selectedSegmentIndex==2){
        texty15=@"2";
    }
    else if(seg15.selectedSegmentIndex==3){
        texty15=@"3";
    }
    else if(seg15.selectedSegmentIndex==4){
        texty15=@"4";
    }
    
}
- (IBAction)segbut16:(id)sender {
    if(seg16.selectedSegmentIndex==0){
        texty16=@"0";
    }
    else if(seg16.selectedSegmentIndex==1){
        texty16=@"1";
    }
    else if(seg16.selectedSegmentIndex==2){
        texty16=@"2";
    }
    else if(seg16.selectedSegmentIndex==3){
        texty16=@"3";
    }
    else if(seg16.selectedSegmentIndex==4){
        texty16=@"4";
    }
    
}
- (IBAction)segbut17:(id)sender {
    if(seg17.selectedSegmentIndex==0){
        texty17=@"Positive";
    }
    else if(seg17.selectedSegmentIndex==1){
        texty17=@"Negative";
    }
}
- (IBAction)segbut18:(id)sender {
    if(seg18.selectedSegmentIndex==0){
        texty18=@"Positive";
    }
    else if(seg18.selectedSegmentIndex==1){
        texty18=@"Negative";
    }
    
    
}
@end
