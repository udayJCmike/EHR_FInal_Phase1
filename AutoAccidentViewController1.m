//
//  AutoAccidentViewController1.m
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "AutoAccidentViewController1.h"
#import "AutoAccidentViewController2.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "staffautocheckViewController.h"
@interface AutoAccidentViewController1 ()
{
    databaseurl *du;
}

@end

@implementation AutoAccidentViewController1
@synthesize roadother;
@synthesize staff;
@synthesize resultset;
@synthesize anyoneincarswitch;
@synthesize carstoppedswitch;
@synthesize footonbrakeswitch;
@synthesize vehiclemovingswitch;
@synthesize anyoneincarlabel;
@synthesize carstoppedlabel;
@synthesize footonbrakelabel;
@synthesize vehiclemovinglabel;
@synthesize recorddict;
@synthesize timeofdaysegment1;
@synthesize timeofdaylabel1;
@synthesize estimatesegment;
@synthesize estimatelabel;
@synthesize wereyouthelabel;
@synthesize wereyouthesegment;
@synthesize vehiclehitlabel;
@synthesize vehiclehitsegment;
@synthesize wasscarlabel;
@synthesize wasscarsegment;
@synthesize roadconditionlabel;
@synthesize roadconditionsegment;
@synthesize headrestraintlabel;
@synthesize headrestraintsegment;
@synthesize seatbeforelabel;
@synthesize seatbeforesegment;
@synthesize seatafterlabel;
@synthesize seataftersegment;
@synthesize lapseatbeltlabel;
@synthesize lapseatbeltsegment;
int a,b;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13;

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

- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (anyoneincarswitch.on)
    {
        anyoneincarlabel.text = @"Yes";
        anyoneincar.hidden=NO;
        //anyoneincar.text=@"";
    }
	else
    {
        anyoneincarlabel.text = @"No";
        anyoneincar.hidden=YES;
        
    }
}
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (carstoppedswitch.on) carstoppedlabel.text = @"Yes";
	else carstoppedlabel.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch3onSomeLabel: (id) sender
{
	if (footonbrakeswitch.on) footonbrakelabel.text = @"Yes";
	else footonbrakelabel.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch4onSomeLabel: (id) sender
{
	if (vehiclemovingswitch.on) vehiclemovinglabel.text = @"Yes";
	else vehiclemovinglabel.text = @"No";
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(IBAction)estimatechange:(id)sender
{
    if (estimatesegment.selectedSegmentIndex==0)
    {
        _1=@"your Insurance Company";
    }
    if (estimatesegment.selectedSegmentIndex==1)
    {
        _1=@"Other Driver's Insurance Company";
    }
    if (estimatesegment.selectedSegmentIndex==2)
    {
        _1=@"Body Shop";
    }
}

-(IBAction)timeofdaysegmentchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        _5=@"Daylight";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        _5=@"Dawn";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        _5=@"Dusk";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        _5=@"Dark";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        _5=@"UnKnown";
    }
}
-(IBAction)wereoyuthechange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        _2=@"Driver";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        _2=@"Front Seat";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        _2=@"Back Seat";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        _2=@"On the Job at the time of accident";
    }
    
}
-(IBAction)vehiclehitchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        _3=@"RightFront";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        _3=@"LeftFront";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        _3=@"RightRear";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        _3=@"LeftRear";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        _3=@"RightSide";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        _3=@"LeftSide";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        _3=@"Other";
    }
    
    
}
-(IBAction)wasscarchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        _4=@"Slowing Down";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        _4=@"Gaining Speed";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        _4=@"Steady rate of Speed";
    }
    
}
-(IBAction)roadconditionchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
         roadother.hidden=YES;
        _6=@"Dry";
        roadother.text=@"";
        _40=@"";
    }
    else if ([sender selectedSegmentIndex]==1)
    {
         roadother.hidden=YES;
        _6=@"Damp";
        roadother.text=@"";
        _40=@"";
    }
    else if ([sender selectedSegmentIndex]==2)
    {
         roadother.hidden=YES;
        _6=@"Wet";
        roadother.text=@"";
        _40=@"";
    }
    else if ([sender selectedSegmentIndex]==3)
    {
         roadother.hidden=YES;
        _6=@"Snow";
        roadother.text=@"";
        _40=@"";
    }
    else if ([sender selectedSegmentIndex]==4)
    {
        roadother.hidden=YES;
        _6=@"Ice";
        
    }
    else if ([sender selectedSegmentIndex]==5)
    {
        _6=@"Others";
        roadother.hidden=NO;
        _40=roadother.text;
        
        
    }
    if ([sender selectedSegmentIndex]==6)
    {
        roadother.hidden=YES;
        _6=@"Unknown";
        roadother.text=@"";
        _40=@"";
        
    }
   
    
}
-(IBAction)headrestraintchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        _7=@"Up";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        _7=@"Down";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        _7=@"Dont Know";
    }
    
    
}
-(IBAction)seatafterchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        _9=@"Broken";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        _9=@"Not Broken";
    }
    
}
-(IBAction)seatbeforechange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        _8=@"Was Altered";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        _8=@"Was Not Altered";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        _8=@"Dont Know";
    }
    
}
-(IBAction)lapseatbeltchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        _10=@"Worn";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        _10=@"Not Worn";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        _10=@"Dont Know";
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
    
    roadother.hidden=YES
    ;
    recorddict=[[NSMutableDictionary alloc]init];
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    [[NSUserDefaults standardUserDefaults]setObject:@"Datas not read" forKey:@"status"];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    anyoneincarlabel.text=@"Yes";
    carstoppedlabel.text=@"Yes";
    footonbrakelabel.text=@"Yes";
    vehiclemovinglabel.text=@"Yes";
    roadother.hidden=YES;
    _1=@"your Insurance Company";
    _5=@"Daylight";
    _2=@"Driver";
    _3=@"RightFront";
    _4=@"Slowing Down";
    _6=@"Dry";
    _7=@"Up";
    _9=@"Broken";
    _8=@"Was Altered";
    _10=@"Worn";
    _40=@"";
    
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]])
        {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    resultset=[[NSMutableDictionary alloc]init];
    [self Getdata];
	// Do any additional setup after loading the view.
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
    NSArray *items1App=[itemsApp objectForKey:@"autoaccidentuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            NSLog(@"arraylist count %d",[arrayList1 count]);
            temp=[arrayList1 objectForKey:@"patient_number"];
            temp1 =[arrayList1 objectForKey:@"username"];
            temp2 =[arrayList1 objectForKey:@"claimnumber"];
            temp3 =[arrayList1 objectForKey:@"adjustersname"];
            temp4 =[arrayList1 objectForKey:@"estimate"];
            
            temp6=[arrayList1 objectForKey:@"seating"];
            temp7=[arrayList1 objectForKey:@"companion"];
            temp8=[arrayList1 objectForKey:@"vehicle_make"];
            temp9=[arrayList1 objectForKey:@"vehicle_model"];
            temp10=[arrayList1 objectForKey:@"vehicle_year"];
            temp11=[arrayList1 objectForKey:@"vehicle_hit"];
            temp12=[arrayList1 objectForKey:@"other_vehicle_make"];
            temp13=[arrayList1 objectForKey:@"other_vehicle_model"];
            temp14=[arrayList1 objectForKey:@"other_vehicle_year"];
            temp15=[arrayList1 objectForKey:@"carstopped"];
            temp16=[arrayList1 objectForKey:@"driverposition"];
            temp17=[arrayList1 objectForKey:@"vehicle_moving_time"];
            temp18=[arrayList1 objectForKey:@"wascar"];
            temp19=[arrayList1 objectForKey:@"estimated_rate"];
            temp20=[arrayList1 objectForKey:@"time_of_day"];
            temp21=[arrayList1 objectForKey:@"road_conditions"];
            temp22=[arrayList1 objectForKey:@"conditions"];
            temp23=[arrayList1 objectForKey:@"head_restraints"];
            temp24=[arrayList1 objectForKey:@"seatpos_after_accident"];
            temp25=[arrayList1 objectForKey:@"seat_after_accident"];
            temp26=[arrayList1 objectForKey:@"lap_seat_belt"];
            temp27=[arrayList1 objectForKey:@"shoulder_seat_belt"];
            temp28=[arrayList1 objectForKey:@"airbag"];
            temp29=[arrayList1 objectForKey:@"wereyou"];
            temp30=[arrayList1 objectForKey:@"body_position"];
            
            temp31=[arrayList1 objectForKey:@"body_position1"];
            temp32 =[arrayList1 objectForKey:@"head_position"];
            temp33 =[arrayList1 objectForKey:@"head_position1"];
            temp34 =[arrayList1 objectForKey:@"hands_on_wheel"];
            temp35 =[arrayList1 objectForKey:@"aware_of_crash"];
            
            temp36=[arrayList1 objectForKey:@"brace"];
            temp37=[arrayList1 objectForKey:@"ifyes"];
            temp38=[arrayList1 objectForKey:@"further_injury"];
            temp39=[arrayList1 objectForKey:@"injurytext"];
            // temp40=[arrayList1 objectForKey:@"ifyes_explain"];
            // temp41=[arrayList1 objectForKey:@"during_after_crash"];
            temp42=[arrayList1 objectForKey:@"patient_body"];
            temp43=[arrayList1 objectForKey:@"patient_body1"];
            temp44=[arrayList1 objectForKey:@"body_strike"];
            temp45=[arrayList1 objectForKey:@"head_hit"];
            temp46=[arrayList1 objectForKey:@"rlshoulder_hit"];
            temp47=[arrayList1 objectForKey:@"rlhip_hit"];
            temp48=[arrayList1 objectForKey:@"rlknee_hit"];
            temp49=[arrayList1 objectForKey:@"chest_hit"];
            temp50=[arrayList1 objectForKey:@"rlarm_hit"];
            temp51=[arrayList1 objectForKey:@"rlleg_hit"];
            temp52=[arrayList1 objectForKey:@"otherpart_hit"];
            temp53=[arrayList1 objectForKey:@"wearing_glasses"];
            temp54=[arrayList1 objectForKey:@"glasses_impact"];
            temp55=[arrayList1 objectForKey:@"unconscious"];
            temp56=[arrayList1 objectForKey:@"uncon"];
            temp57=[arrayList1 objectForKey:@"estimated_amount"];
            temp58=[arrayList1 objectForKey:@"damage"];
            temp59=[arrayList1 objectForKey:@"was_anyone_cited"];
            temp60=[arrayList1 objectForKey:@"who"];
            
            temp61=[arrayList1 objectForKey:@"headache"];
            temp62=[arrayList1 objectForKey:@"dizziness"];
            temp63=[arrayList1 objectForKey:@"nausea"];
            temp64=[arrayList1 objectForKey:@"confusion"];
            temp65=[arrayList1 objectForKey:@"disorientation"];
            temp66=[arrayList1 objectForKey:@"neckpain"];
            temp67=[arrayList1 objectForKey:@"otherpain"];
            temp68=[arrayList1 objectForKey:@"otherpaintext"];
            temp69=[arrayList1 objectForKey:@"first_symptom"];
            temp70=[arrayList1 objectForKey:@"symptom"];
            temp71=[arrayList1 objectForKey:@"after_accident"];
            temp72=[arrayList1 objectForKey:@"accident"];
            temp73=[arrayList1 objectForKey:@"hosname"];
            temp74=[arrayList1 objectForKey:@"city"];
            temp75=[arrayList1 objectForKey:@"staylength"];
            temp76=[arrayList1 objectForKey:@"hospitalget"];
            temp77=[arrayList1 objectForKey:@"hospital1"];
            temp78=[arrayList1 objectForKey:@"xray"];
            temp79=[arrayList1 objectForKey:@"wrong"];
            NSLog(@"array list one::%@",arrayList1);
            
            
            [self setdatas];//set database values
            
            [resultset setObject:temp27  forKey:@"shoulder_seat_belt"];
            [resultset setObject:temp28  forKey:@"airbag"];
            [resultset setObject:temp29  forKey:@"wereyou"];
            [resultset setObject:temp30  forKey:@"body_position"];
            [resultset setObject:temp31  forKey:@"body_position1"];
            [resultset setObject:temp32  forKey:@"head_position"];
            [resultset setObject:temp33  forKey:@"head_position1"];
            [resultset setObject:temp34  forKey:@"hands_on_wheel"];
            [resultset setObject:temp35  forKey:@"aware_of_crash"];
            [resultset setObject:temp36  forKey:@"brace"];
            [resultset setObject:temp37  forKey:@"ifyes"];
            [resultset setObject:temp38  forKey:@"further_injury"];
            [resultset setObject:temp39  forKey:@"injurytext"];
            // [resultset setObject:temp40  forKey:@"ifyes_explain"];
            //[resultset setObject:temp41  forKey:@"during_after_crash"];
            [resultset setObject:temp42  forKey:@"patient_body"];
            [resultset setObject:temp43  forKey:@"patient_body1"];
            [resultset setObject:temp44  forKey:@"body_strike"];
            [resultset setObject:temp45  forKey:@"head_hit"];
            [resultset setObject:temp46  forKey:@"rlshoulder_hit"];
            [resultset setObject:temp47  forKey:@"rlhip_hit"];
            [resultset setObject:temp48  forKey:@"rlknee_hit"];
            [resultset setObject:temp49  forKey:@"chest_hit"];
            [resultset setObject:temp50  forKey:@"rlarm_hit"];
            [resultset setObject:temp51  forKey:@"rlleg_hit"];
            [resultset setObject:temp52  forKey:@"otherpart_hit"];
            [resultset setObject:temp53  forKey:@"wearing_glasses"];
            [resultset setObject:temp54  forKey:@"glasses_impact"];
            [resultset setObject:temp55  forKey:@"unconscious"];
            [resultset setObject:temp56  forKey:@"uncon"];
            [resultset setObject:temp57  forKey:@"estimated_amount"];
            [resultset setObject:temp58  forKey:@"damage"];
            [resultset setObject:temp59  forKey:@"was_anyone_cited"];
            [resultset setObject:temp60  forKey:@"who"];
            [resultset setObject:temp61  forKey:@"headache"];
            [resultset setObject:temp62  forKey:@"dizziness"];
            [resultset setObject:temp63  forKey:@"nausea"];
            [resultset setObject:temp64  forKey:@"confusion"];
            [resultset setObject:temp65  forKey:@"disorientation"];
            [resultset setObject:temp66  forKey:@"neckpain"];
            [resultset setObject:temp67  forKey:@"otherpain"];
            [resultset setObject:temp68  forKey:@"otherpaintext"];
            [resultset setObject:temp69  forKey:@"first_symptom"];
            [resultset setObject:temp70  forKey:@"symptom"];
            [resultset setObject:temp71  forKey:@"after_accident"];
            [resultset setObject:temp72  forKey:@"accident"];
            [resultset setObject:temp73  forKey:@"hosname"];
            [resultset setObject:temp74  forKey:@"city"];
            [resultset setObject:temp75  forKey:@"staylength"];
            [resultset setObject:temp76  forKey:@"hospitalget"];
            [resultset setObject:temp77  forKey:@"hospital1"];
            [resultset setObject:temp78  forKey:@"xray"];
            [resultset setObject:temp79  forKey:@"wrong"];
            
            
            
            
            
            
        }
        [[NSUserDefaults standardUserDefaults]setObject:@"Datas read" forKey:@"status"];
        NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
    }
    else
    {
        [[NSUserDefaults standardUserDefaults]setObject:@"Datas not read" forKey:@"status"];
    }
    [[NSUserDefaults standardUserDefaults]synchronize];
    
}

-(void)setdatas
{
    NSLog(@"In setdatas before condition");
    claimno.text=temp2;
    adjustername.text=temp3;
    mymake.text=temp8;
    mymodel.text=temp9;
    myyear.text=temp10;
    othermake.text=temp12;
    othermodel.text=temp13;
    otheryear.text=temp14;
    speed.text=temp19;
    //roadother.text=temp22;
    anyoneincar.text=temp7;
    NSLog(@"othr conditon::%@",temp22);
    NSLog(@"othr conditon::%@",[resultset objectForKey:@"conditions"]);
    if ([temp4 length]>0)
    {
        if ([temp4 isEqualToString:@"Your Insurance Company"])
        {
            [estimatesegment setSelectedSegmentIndex:0];
            _1=@"Your Insurance Company";
            
            
        }
        else if ([temp4 isEqualToString:@"Other Driver's Insurance Company"]) {
            [estimatesegment setSelectedSegmentIndex:1];
            _1=@"Other Driver's Insurance Company";
            
        }
        else if ([temp4 isEqualToString:@"Body Shop"])
        {
            [estimatesegment setSelectedSegmentIndex:2];
            _1=@"Body Shop";
            
        }
        
        else {
            //no matches found
        }
        
    }
    else
    {
    }
    
    
    if ([temp6 length]>0)
    {
        if ([temp6 isEqualToString:@"Driver"])
        {
            [wereyouthesegment setSelectedSegmentIndex:0];
            _2=@"Driver";
            
            
        }
        else if ([temp6 isEqualToString:@"Front Seat"]) {
            [wereyouthesegment setSelectedSegmentIndex:1];
            _2=@"Front Seat";
            
        }
        else if ([temp6 isEqualToString:@"Back Seat"])
        {
            [wereyouthesegment setSelectedSegmentIndex:2];
            _2=@"Back Seat";
            
        }
        else if ([temp6 isEqualToString:@"On the Job at the time of accident"])
        {
            [wereyouthesegment setSelectedSegmentIndex:2];
            _2=@"On the Job at the time of accident";
            
        }
        else {
            //no matches found
        }
        
    }
    else
    {
    }
    
    if ([temp11 length]>0)
    {
        if ([temp11 isEqualToString:@"RightFront"])
        {
            [vehiclehitsegment setSelectedSegmentIndex:0];
            
            _3=@"RightFront";
            
            
            
        }
        else if ([temp11 isEqualToString:@"LeftFront"]) {
            [vehiclehitsegment setSelectedSegmentIndex:1];
            _3=@"LeftFront";
            
        }
        else if ([temp11 isEqualToString:@"RightRear"])
        {
            [vehiclehitsegment setSelectedSegmentIndex:2];
            _3=@"RightRear";
            
        }
        else if ([temp11 isEqualToString:@"LeftRear"])
        {
            [vehiclehitsegment setSelectedSegmentIndex:3];
            _3=@"LeftRear";
            
        }
        
        else if ([temp11 isEqualToString:@"RightSide"])
        {
            [vehiclehitsegment setSelectedSegmentIndex:4];
            _3=@"LeftRear";
            
        }
        else if ([temp11 isEqualToString:@"LeftSide"])
        {
            [vehiclehitsegment setSelectedSegmentIndex:5];
            _3=@"RightRear";
            
        }
        else if ([temp11 isEqualToString:@"Other"])
        {
            [vehiclehitsegment setSelectedSegmentIndex:6];
            _3=@"LeftRear";
            
        }
        else {
            //no matches found
        }
        
    }
    else
    {
    }
    if([temp15 length]>0){
        if([temp15 isEqualToString:@"Yes"]){
            carstoppedswitch.on=true;
            carstoppedlabel.text = @"Yes";
        }else{ carstoppedlabel.text = @"No";
            carstoppedswitch.on=false;
        }
    }
    
    
    if([temp16 isEqualToString:@"Yes"]){
        footonbrakeswitch.on=true;
        footonbrakelabel.text = @"Yes";
    }else{
        footonbrakelabel.text = @"No";
        footonbrakeswitch.on=false;
    }
    if([temp17 isEqualToString:@"Yes"]){
        vehiclemovingswitch.on=true;
        vehiclemovinglabel.text = @"Yes";
    }else {
        vehiclemovinglabel.text = @"No";
        vehiclemovingswitch.on=false;
    }
    
    
    if ([temp18 length]>0)
    {
        if ([temp18 isEqualToString:@"Slowing Down"])
        {
            [wasscarsegment setSelectedSegmentIndex:0];
            
            _4=@"Slowing Down";
            
            
            
        }
        else if ([temp18 isEqualToString:@"Gaining Speed"])
        {
            [wasscarsegment setSelectedSegmentIndex:1];
            _4=@"Gaining Speed";
            
        }
        else if ([temp18 isEqualToString:@"Steady rate of Speed"])
        {
            [wasscarsegment setSelectedSegmentIndex:2];
            _4=@"Steady rate of Speed";
            
        }
        else {
            //no matches found
        }
        
    }
    else
    {
    }
    
    if ([temp20 length]>0)
    {
        if ([temp20 isEqualToString:@"Daylight"])
        {
            [timeofdaysegment1 setSelectedSegmentIndex:0];
            
            _5=@"Daylight";
            
            
            
        }
        else if ([temp20 isEqualToString:@"Dawn"])
        {
            [timeofdaysegment1 setSelectedSegmentIndex:1];
            _5=@"Dawn";
            
        }
        else if ([temp20 isEqualToString:@"Dusk"])
        {
            [timeofdaysegment1 setSelectedSegmentIndex:2];
            _5=@"Dusk";
            
        }
        else if ([temp20 isEqualToString:@"Dark"])
        {
            [timeofdaysegment1 setSelectedSegmentIndex:3];
            _5=@"Dark";
            
        }
        else if ([temp20 isEqualToString:@"UnKnown"])
        {
            [timeofdaysegment1 setSelectedSegmentIndex:4];
            _5=@"UnKnown";
            
        }
        else {
            //no matches found
        }
        
    }
    else
    {
    }
    
    
    if ([temp21 length]>0)
    {
        NSLog(@"othr conditon::%@",[resultset objectForKey:@"conditions"]);
        if ([temp21 isEqualToString:@"Dry"])
        {
            [roadconditionsegment setSelectedSegmentIndex:0];
            roadother.hidden=YES;
            _6=@"Dry";
            roadother.text=@"";
            _40=@"";
            
            
        }
        else if ([temp21 isEqualToString:@"Damp"])
        {
            [roadconditionsegment setSelectedSegmentIndex:1];
            _6=@"Damp";
             roadother.hidden=YES;
            roadother.text=@"";
            _40=@"";
        }
        else if ([temp21 isEqualToString:@"Wet"])
        {
            [roadconditionsegment setSelectedSegmentIndex:2];
            _6=@"Wet";
            roadother.text=@"";
             roadother.hidden=YES;
            _40=@"";
            
        }
        else if ([temp21 isEqualToString:@"Snow"])
        {
            [roadconditionsegment setSelectedSegmentIndex:3];
            _6=@"Snow";
            roadother.text=@"";
             roadother.hidden=YES;
            _40=@"";
            
        }
        else if ([temp21 isEqualToString:@"Ice"])
        {
            [roadconditionsegment setSelectedSegmentIndex:4];
            _6=@"Ice";
             roadother.hidden=YES;
            roadother.text=@"";
            _40=@"";
        }
        else if ([temp21 isEqualToString:@"Others"])
        {
            [roadconditionsegment setSelectedSegmentIndex:5];
            _6=@"Others";
            NSLog(@"othr conditon::%@",[resultset objectForKey:@"conditions"]);
            roadother.text=temp22;
            _40=roadother.text;
            roadother.hidden=NO;
        }
        else if ([temp21 isEqualToString:@"Unknown"])
        {
            [roadconditionsegment setSelectedSegmentIndex:6];
            _6=@"Unknown";
            roadother.text=@"";
            _40=@"";
             roadother.hidden=YES;
        }
        else {
            //no matches found
        }
        
    }
    else
    {
    }
    
    if ([temp23 length]>0)
    {
        if ([temp23 isEqualToString:@"Up"])
        {
            [headrestraintsegment setSelectedSegmentIndex:0];
            
            _7=@"Up";
            
            
            
        }
        else if ([temp23 isEqualToString:@"Down"])
        {
            [headrestraintsegment setSelectedSegmentIndex:1];
            _7=@"Down";
            
        }
        else if ([temp23 isEqualToString:@"Dont Know"])
        {
            [headrestraintsegment setSelectedSegmentIndex:2];
            _7=@"Dont Know";
            
        }
        else {
            //no matches found
        }
        
    }
    else
    {
    }
    
    if ([temp24 length]>0)
    {
        if ([temp24 isEqualToString:@"Was Altered"])
        {
            [seatbeforesegment setSelectedSegmentIndex:0];
            
            _8=@"Was Altered";
            
            
            
        }
        else if ([temp24 isEqualToString:@"Was Not Altered"])
        {
            [seatbeforesegment setSelectedSegmentIndex:1];
            _8=@"Was Not Altered";
            
        }
        else if ([temp24 isEqualToString:@"Dont Know"])
        {
            [seatbeforesegment setSelectedSegmentIndex:2];
            _8=@"Dont Know";
            
        }
        else {
            //no matches found
        }
        
    }
    else
    {
    }
    if ([temp25 length]>0)
    {
        if ([temp25 isEqualToString:@"Broken"])
        {
            [seataftersegment setSelectedSegmentIndex:0];
            
            _9=@"Broken";
            
            
            
        }
        else if ([temp25 isEqualToString:@"Not Broken"])
        {
            [seataftersegment setSelectedSegmentIndex:1];
            _9=@"Not Broken";
            
        }
        
        else {
            //no matches found
        }
        
    }
    else
    {
    }
    
    if ([temp26 length]>0)
    {
        if ([temp26 isEqualToString:@"Worn"])
        {
            [lapseatbeltsegment setSelectedSegmentIndex:0];
            
            _10=@"Worn";
            
            
            
        }
        else if ([temp26 isEqualToString:@"Not Worn"])
        {
            [lapseatbeltsegment setSelectedSegmentIndex:1];
            _10=@"Not Worn";
            
        }
        else if ([temp26 isEqualToString:@"Dont Know"])
        {
            [lapseatbeltsegment setSelectedSegmentIndex:2];
            _10=@"Dont Know";
            
        }
        else {
            //no matches found
        }
        
    }
    else
    {
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
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"AutoAccident.php?service=autoaccidentselect";
    
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


-(BOOL)modelvalidate:(NSString *)user

{
    NSString *userFormat1 =@"(?:[A-Za-z]+[a-z0-9,/+-.]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)yearvalidate:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{4}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
-(BOOL)speedvalidate:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{1,3}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}

-(BOOL)claimnovalidate:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[0-9]{1,10}?";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
-(BOOL)onlyalphabetsexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z._/-]+";
    //@"(?:[A-Za-z]+[a-z]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)dateexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(IBAction)savecontinue:(id)sender
{
    //NSLog(@"estimee %@",estimatelabel.text);
  
    du=[[databaseurl alloc]init];
    NSLog(@"b value::%d",b);
    texty1=[claimno.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[adjustername.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[mymake.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[mymodel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[myyear.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[othermake.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[othermodel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[otheryear.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty9=[speed.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty10=[roadother.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty11=[anyoneincar.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if([anyoneincarlabel.text isEqual:@"Yes"] )
    {
        
    }
    else if(([anyoneincarlabel.text isEqual:@"No"] )&&(anyoneincar.hidden==YES))
    {
        anyoneincar.text=@"";
    }
    if(roadconditionsegment.selectedSegmentIndex==5){
      
        
    }
    else{
        roadother.text=@"";
        _40=@"";
       
    }
    if(([claimno.text length]!=0)&&
       ([adjustername.text length]!=0)&&
       ([mymake.text length]!=0)&&
       ([mymodel.text length]!=0)&&
       ([myyear.text length]!=0)&&
       ([othermake.text length]!=0)&&
       ([othermodel.text length]!=0)&&
       ([otheryear.text length]!=0)&&
       ([speed.text length]!=0))
    {
        c=1;
        
        if ([du formreg:claimno.text]==1)
        {
            if([du patname:adjustername.text]==1)
            {
                if((([anyoneincar.text length]>0)&&([du otherfields:anyoneincar.text]==1))||([anyoneincar.text length]==0))
                {
                if([du otherfields:mymake.text]==1)
                {
                    if([du otherfields:mymodel.text]==1)
                    {
                        if([du year:myyear.text]==1)
                        {
                            if([du otherfields:othermake.text]==1)
                            {
                                if([du otherfields:othermodel.text]==1)
                                {
                                    if([du year:otheryear.text]==1)
                                    {
                                        if([self speedvalidate:speed.text]==1)
                                        {
                                            
                                                if((([roadother.text length]>0)&&([du otherfields:roadother.text]==1))||([roadother.text length]==0))
                                                {
                                                    
                                               
                                                
                                          
                                        

                                        
                                                c=1;
                                                [recorddict setValue:_1 forKey:@"estimatelabel"];
                                                [recorddict setValue:_2 forKey:@"wereyouthelabel"];
                                                [recorddict setValue:_3 forKey:@"vehiclehitlabel"];
                                                [recorddict setValue:_4 forKey:@"wasscarlabel"];
                                                [recorddict setValue:_6 forKey:@"roadconditionlabel"];
                                                [recorddict setValue:_7 forKey:@"headrestraintlabel"];
                                                [recorddict setValue:_9 forKey:@"seatafterlabel"];
                                                [recorddict setValue:_8 forKey:@"seatbeforelabel"];
                                                [recorddict setValue:_10 forKey:@"lapseatbeltlabel"];
                                                [recorddict setValue:_40 forKey:@"roadother"];
                                                [recorddict setValue:claimno.text forKey:@"claim No"];
                                                [recorddict setValue:adjustername.text forKey:@"adjustername"];
                                                [recorddict setValue:anyoneincarlabel.text forKey:@"anyoneincarlabel"];
                                                [recorddict setValue:anyoneincar.text forKey:@"anyoneincar"];
                                                [recorddict setValue:mymake.text forKey:@"mymake"];
                                                [recorddict setValue:mymodel.text forKey:@"mymodel"];
                                                [recorddict setValue:myyear.text forKey:@"myyear"];
                                                [recorddict setValue:othermake.text forKey:@"othermake"];
                                                [recorddict setValue:othermodel.text forKey:@"othermodel"];
                                                [recorddict setValue:otheryear.text forKey:@"otheryear"];
                                                [recorddict setValue:carstoppedlabel.text forKey:@"carstoppedlabel"];
                                                [recorddict setValue:footonbrakelabel.text forKey:@"footonbrakelabel"];
                                                [recorddict setValue:vehiclemovinglabel.text forKey:@"vehiclemovinglabel"];
                                                [recorddict setValue:speed.text forKey:@"speed"];
                                                NSLog(@"record dict value in auto accident one:%@",recorddict);
                                                [recorddict setValue:_5 forKey:@"timeofdaylabel"];
                                                 [recorddict setValue:anyoneincar.text forKey:@"anyoneincar"];
                                                }
                                                else{
                                                    c=0;
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter road condition text." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                }
                                            
                                            
                                        }
                                        
                                        else
                                        {
                                            c=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid speed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                        }
                                        
                                    }
                                    else
                                    {
                                        c=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid year." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                    }
                                }
                                else
                                {
                                    c=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid model." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                }
                            }
                            else
                            {
                                c=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid make." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                            }
                        }
                        else
                        {
                            c=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid year." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                        }
                        
                    }
                    else
                    {
                        c=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid model." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    }
                }
                else
                {
                    c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid make." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
            }
                else{
                    c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid anyone else in the car field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
                
            }
            else
            {
                c=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid adjuster's name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
        }
        else
        {
            c=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid claim no." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
    }
    else
    {
        c=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Required fields should not be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    if (c==1) {
        [self performSegueWithIdentifier:@"autoacc1" sender:self];
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

-(IBAction)clearall:(id)sender
{
    claimno.text=@"";
    adjustername.text=@"";
    anyoneincar.text=@"";
    mymake.text=@"";
    mymodel.text=@"";
    myyear.text=@"";
    othermake.text=@"";
    othermodel.text=@"";
    otheryear.text=@"";
    wascar.text=@"";
    speed.text=@"";
    roadother.text=@"";
    anyoneincarlabel.text=@"Yes";
    carstoppedlabel.text=@"Yes";
    footonbrakelabel.text=@"Yes";
    vehiclemovinglabel.text=@"Yes";
    estimatelabel.text=@"your Insurance Company";
    timeofdaylabel1.text=@"Daylight";
    wereyouthelabel.text=@"Driver";
    vehiclehitlabel.text=@"RightFront";
    wasscarlabel.text=@"Slowing Down";
    roadconditionlabel.text=@"Dry";
    headrestraintlabel.text=@"Up";
    seatafterlabel.text=@"Broken";
    seatbeforelabel.text=@"Was Altered";
    lapseatbeltlabel.text=@"Worn";
    estimatesegment.selectedSegmentIndex=0;
    wereyouthesegment.selectedSegmentIndex=0;
    wasscarsegment.selectedSegmentIndex=0;
    roadconditionsegment.selectedSegmentIndex=0;
    seataftersegment.selectedSegmentIndex=0;
    seatbeforesegment.selectedSegmentIndex=0;
    lapseatbeltsegment.selectedSegmentIndex=0;
    vehiclehitsegment.selectedSegmentIndex=0;
    timeofdaysegment1.selectedSegmentIndex=0;
    headrestarintsegment.selectedSegmentIndex=0;
    headrestraintsegment.selectedSegmentIndex=0;
    
    
    roadother.hidden=true;
    [anyoneincarswitch setOn:YES animated:YES];
    [carstoppedswitch setOn:YES animated:YES];
    [footonbrakeswitch setOn:YES animated:YES];
    [vehiclemovingswitch setOn:YES animated:YES];
    //    anyoneincarswitch.on=true;
    //    carstoppedswitch.on=true;
    //    footonbrakeswitch.on=true;
    //    vehiclemovingswitch.on=true;
    
    
    
    
    
    
}
-(void)dismissKeyboard
{
    [claimno resignFirstResponder];
    [adjustername resignFirstResponder];
    [anyoneincar resignFirstResponder];
    [mymake resignFirstResponder];
    [mymodel resignFirstResponder];
    [myyear resignFirstResponder];
    [othermake resignFirstResponder];
    [othermodel resignFirstResponder];
    [otheryear resignFirstResponder];
    [wascar resignFirstResponder]  ;
    [speed resignFirstResponder];
    [roadother resignFirstResponder];
    
}

-(BOOL)validateUsername:(NSString *)user

{
    NSString *userFormat1 =@"(?:[A-Za-z]+[a-z0-9,/+-.]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateZip:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{5}?";
    
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    if ([zipTest1 evaluateWithObject:zipnumber])
    {
        if ([zipnumber isEqualToString:@"00000"]) {
            return 0;
        }
        else
            return 1;
    }
    else
        return 0;

    
}

-(BOOL)validatePager:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[A-Z0-9a-z._%+-]+";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
-(BOOL)validateMobile:(NSString*)mobilenumber{
    NSCharacterSet *textremove = [NSCharacterSet characterSetWithCharactersInString:@"(-)"];
    mobilenumber= [[mobilenumber componentsSeparatedByCharactersInSet: textremove] componentsJoinedByString:@""];
    
    
    
    NSString *mobileFormat1 =  @"[0-9]{10}";
    
    
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    if ([mobileTest1 evaluateWithObject:mobilenumber])
    {
        NSString *indexvalues=[mobilenumber substringWithRange: NSMakeRange (0, 3)];
        NSString *indexvalues1=[mobilenumber substringWithRange: NSMakeRange (3,3)];
        
        if (([indexvalues isEqualToString:@"000"])||([indexvalues1 isEqualToString:@"000"]))
        {
            return 0;
        }
        else
            return 1;
        
    }
    else
    {
        return [mobileTest1 evaluateWithObject:mobilenumber];
    }

    
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-z]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validatessn:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{3}\\-[0-9]{2}\\-[0-9]{4}?";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    if( [countryTest1 evaluateWithObject:country1])
    {
        NSCharacterSet *textremove = [NSCharacterSet characterSetWithCharactersInString:@"-"];
        NSString* country11= [[country1 componentsSeparatedByCharactersInSet: textremove] componentsJoinedByString:@""];
        
        NSString *indexvalues=[country11 substringWithRange: NSMakeRange (0, 3)];
        NSString *indexvalues1=[country11 substringWithRange: NSMakeRange (3,2)];
        NSString *indexvalues2=[country11 substringWithRange: NSMakeRange (5,4)];
        //        NSLog(@"val1 %@",indexvalues);
        //         NSLog(@"val2 %@",indexvalues1);
        //         NSLog(@"val3 %@",indexvalues2);
        
        if (([indexvalues isEqualToString:@"000"])||([indexvalues1 isEqualToString:@"00"])||([indexvalues2 isEqualToString:@"0000"]))
        {
            return 0;
        }
        else{
            
            
            return 1;
        }
    }
    else
        return 0;

    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"autoacc1"])
    {
        
        AutoAccidentViewController2 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        
        destViewController.resultset=resultset;
         destViewController.staff=staff;
        NSLog(@"value in resultset::%@",resultset);
        NSLog(@"recorddict in autoaccident first page %@",recorddict);
    }
    
    
}


- (void)dealloc {
    [roadother release];
    [super dealloc];
}
@end
