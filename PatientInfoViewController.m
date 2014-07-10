//
//  PatientInfoViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/7/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "PatientInfoViewController.h"
#import "Patient2ViewController.h"
#import "UITextField+AKNumericFormatter.h"
#import "AKNumericFormatter.h"
#import "Patient1ViewController.h"
#import "Reachability.h"
#import "staffautocheckViewController.h"
#import "SampleViewController.h"

@interface PatientInfoViewController ()
{
    databaseurl *du;
   
        UIView *printView;
        UIBarButtonItem *barButton;
        UIButton *button;
    
}
@end

@implementation PatientInfoViewController
@synthesize switch1;
@synthesize resLabel;
@synthesize switch2;
@synthesize resLabel2;
@synthesize datePicker;
@synthesize seg;
@synthesize seggender;
@synthesize marital;
@synthesize segmarital;
@synthesize areyou;
@synthesize student;
@synthesize resultset;
@synthesize recorddict;
@synthesize staff;
@synthesize sl1;
@synthesize sl2;
@synthesize sl3;

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


- (IBAction)areyouaction:(id)sender
{
    if (areyou.selectedSegmentIndex==0)
    {
        areyoulabel=@"Student";
        sd1.hidden=TRUE;
        sd2.hidden=TRUE;
        sd3.hidden=TRUE;
        sd4.hidden=TRUE;
        sd5.hidden=TRUE;
        sd6.hidden=TRUE;
        sd7.hidden=TRUE;
        empname.hidden=TRUE;
        empadd.hidden=TRUE;
        workcity.hidden=TRUE;
        workzip.hidden=TRUE;
        occ.hidden=TRUE;
        workstate.hidden=TRUE;
        workph.hidden=TRUE;
        student.hidden=FALSE;
        resLabel.hidden=FALSE;
        switch1.hidden=FALSE;
    }
    else if(areyou.selectedSegmentIndex==1)
    {
        areyoulabel=@"Employee";
        sd1.hidden=FALSE;
        sd2.hidden=FALSE;
        sd3.hidden=FALSE;
        sd4.hidden=FALSE;
        sd5.hidden=FALSE;
        sd6.hidden=FALSE;
        sd7.hidden=FALSE;
        empname.hidden=FALSE;
        empadd.hidden=FALSE;
        workcity.hidden=FALSE;
        workzip.hidden=FALSE;
        occ.hidden=FALSE;
        workstate.hidden=FALSE;
        workph.hidden=FALSE;
        student.hidden=TRUE;
        resLabel.hidden=TRUE;
        switch1.hidden=TRUE;
    }
}

- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (switch1.on)
    {
        resLabel.text = @"Full Time";
        
        
    }
	else
    {
        resLabel.text = @"Part Time";
        
    }
}

- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (switch2.on) resLabel2.text = @"Yes";
	else resLabel2.text = @"No";
}

-(IBAction)segselected:(id)sender
{
    if(seggender.selectedSegmentIndex==0)
        seg.text=@"Male";
    else if (seggender.selectedSegmentIndex==1)
        seg.text=@"Female";
}

-(IBAction)segmaritalselected:(id)sender
{
    if(segmarital.selectedSegmentIndex==0)
    {
        marital.text=@"Single";
        sl1.hidden=NO;
        sl2.hidden=NO;
        sl3.hidden=NO;
        spouseemp.hidden=NO;
        spousename.hidden=NO;
        spouseph.hidden=NO;
    }
    else if (segmarital.selectedSegmentIndex==1)
    {
        marital.text=@"Married";
        sl1.hidden=YES;
        sl2.hidden=YES;
        sl3.hidden=YES;
        spouseemp.hidden=YES;
        spousename.hidden=YES;
        spouseph.hidden=YES;
    }
    else if (segmarital.selectedSegmentIndex==2)
    {
        marital.text=@"Divorced";
        sl1.hidden=YES;
        sl2.hidden=YES;
        sl3.hidden=YES;
        spouseemp.hidden=YES;
        spousename.hidden=YES;
        spouseph.hidden=YES;
    }
}

-(IBAction)setFromDate
{
    if(datePicker.hidden==YES)
    {
        self.datePicker.hidden=NO;
    }
    else
    {
        self.datePicker.hidden=YES;
    }
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(datePicker.hidden==NO)
    {
        datePicker.hidden=YES;
        
        
    }
    
    
    
    
}


-(BOOL)validateUsername:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
/*-(BOOL)validateAddress:(NSString *)zipnumber{
 
 NSString*zipFormat1=@"(^[A-Za-z]+( [A-Za-z']+)*$)";
 [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
 NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
 return [zipTest1 evaluateWithObject:zipnumber];
 
 
 
 }
 */
-(BOOL)validateEmail:(NSString*)candidate{
    NSString *emailFormat1 = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    
    NSPredicate *emailTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailFormat1];
    return [emailTest1 evaluateWithObject:candidate];
    
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
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)validatePNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
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
        //        //NSLog(@"val1 %@",indexvalues);
        //         //NSLog(@"val2 %@",indexvalues1);
        //         //NSLog(@"val3 %@",indexvalues2);
        
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

    
   
    for (UIView *v in [self.view subviews])  // loop for adding clear button to all textfileds of this view
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    du=[[databaseurl alloc]init];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    
    
    name.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    
    
    sl1.hidden=NO;
    sl2.hidden=NO;
    sl3.hidden=NO;
    spouseemp.hidden=NO;
    spousename.hidden=NO;
    spouseph.hidden=NO;
    resLabel.text=@"Full time";
    areyoulabel=@"Student";
    seg.text=@"Male";
    marital.text=@"Single";
    recorddict=[[NSMutableDictionary alloc]init];
    resultset=[[NSMutableDictionary alloc]init];
    AKNumericFormatterMode mode = AKNumericFormatterMixed;
    homeph.numericFormatter = [AKNumericFormatter formatterWithMask:@"(***)***-****" placeholderCharacter:'*'mode:mode];
    cellph.numericFormatter = [AKNumericFormatter formatterWithMask:@"(***)***-****" placeholderCharacter:'*'mode:mode];
    spouseph.numericFormatter = [AKNumericFormatter formatterWithMask:@"(***)***-****" placeholderCharacter:'*'mode:mode];
    relativeph.numericFormatter = [AKNumericFormatter formatterWithMask:@"(***)***-****" placeholderCharacter:'*'mode:mode];
    workph.numericFormatter = [AKNumericFormatter formatterWithMask:@"(***)***-****" placeholderCharacter:'*'mode:mode];
    @try {
        [self Getdata];
    }
    @catch (NSException *exception) {
        //NSLog(@"%@",exception);
    }
    @finally {
        
    }
    
}
-(void)Getdata
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    // //NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"patient_detailsuser List"];
    
    NSString *resultResponse1;
    
    //NSLog(@"datassssss %@",items1App);
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            //NSLog(@"arraylist Data %@",arrayList1);
            temp=[arrayList1 objectForKey:@"Patient_id"];
            temp1 =[arrayList1 objectForKey:@"Name"];
            temp2 =[arrayList1 objectForKey:@"Date"];
            temp3 =[arrayList1 objectForKey:@"StreetAddress"];
            temp4 =[arrayList1 objectForKey:@"City"];
            temp5 =[arrayList1 objectForKey:@"State"];
            temp6=[arrayList1 objectForKey:@"ZipCode"];
            temp7=[arrayList1 objectForKey:@"Homephone"];
            temp8=[arrayList1 objectForKey:@"Emailid"];
            temp9=[arrayList1 objectForKey:@"MobileNumber"];
            temp10=[arrayList1 objectForKey:@"DateOfBirth"];
            temp11=[arrayList1 objectForKey:@"SocialSecurityNumber"];
            temp12=[arrayList1 objectForKey:@"Gender"];
            temp13=[arrayList1 objectForKey:@"MaritalStatus"];
            temp14=[arrayList1 objectForKey:@"Areyou"];
            temp15=[arrayList1 objectForKey:@"Student"];
            temp16=[arrayList1 objectForKey:@"EmployerName"];
            temp17=[arrayList1 objectForKey:@"Occupation"];
            temp18=[arrayList1 objectForKey:@"EmployerAddress"];
            temp19=[arrayList1 objectForKey:@"Workphone"];
            temp20=[arrayList1 objectForKey:@"zip"];
            temp21=[arrayList1 objectForKey:@"EmployerCity"];
            temp22=[arrayList1 objectForKey:@"Estate"];
            temp23=[arrayList1 objectForKey:@"Ezip"];
            temp24=[arrayList1 objectForKey:@"SpousesName"];
            temp25=[arrayList1 objectForKey:@"SpousesEmp"];
            temp26=[arrayList1 objectForKey:@"Spousesph"];
            temp27=[arrayList1 objectForKey:@"Name_friend"];
            temp28=[arrayList1 objectForKey:@"Phone_friend"];
            temp29=[arrayList1 objectForKey:@"Chiropratic_care"];
            
            [resultset setObject:[arrayList1 objectForKey:@"Symptom_Accident"] forKey:@"Symptom_Accident"];
            [resultset setObject:[arrayList1 objectForKey:@"Type_Of_Accident"] forKey:@"Type_Of_Accident"];
            [resultset setObject:[arrayList1 objectForKey:@"accident"] forKey:@"accident"];
            [resultset setObject:[arrayList1 objectForKey:@"Date_Of_Accident"] forKey:@"Date_Of_Accident"];
            [resultset setObject:[arrayList1 objectForKey:@"Accident_Reported"] forKey:@"Accident_Reported"];
            [resultset setObject:[arrayList1 objectForKey:@"when1"] forKey:@"when1"];
            [resultset setObject:[arrayList1 objectForKey:@"where1"] forKey:@"where1"];
            [resultset setObject:[arrayList1 objectForKey:@"Attorney_accident"] forKey:@"Attorney_accident"];
            [resultset setObject:[arrayList1 objectForKey:@"retain"] forKey:@"retain"];
            [resultset setObject:[arrayList1 objectForKey:@"record"] forKey:@"record"];
            [resultset setObject:[arrayList1 objectForKey:@"phyname"] forKey:@"phyname"];
            [resultset setObject:[arrayList1 objectForKey:@"phyphone"] forKey:@"phyphone"];
            [resultset setObject:[arrayList1 objectForKey:@"car11"] forKey:@"car11"];
            [resultset setObject:[arrayList1 objectForKey:@"xray"] forKey:@"xray"];
            [resultset setObject:[arrayList1 objectForKey:@"treat"] forKey:@"treat"];
            [resultset setObject:[arrayList1 objectForKey:@"NameOfAttorney"] forKey:@"NameOfAttorney"];
            [resultset setObject:[arrayList1 objectForKey:@"Phone_Number"] forKey:@"Phone_Number"];
            [resultset setObject:[arrayList1 objectForKey:@"Fault_accident"] forKey:@"Fault_accident"];
            [resultset setObject:[arrayList1 objectForKey:@"claim_open"] forKey:@"claim_open"];
            [resultset setObject:[arrayList1 objectForKey:@"Insurance"] forKey:@"Insurance"];
            [resultset setObject:[arrayList1 objectForKey:@"Insurance_phone"] forKey:@"Insurance_phone"];
            [resultset setObject:[arrayList1 objectForKey:@"Name_auto"] forKey:@"Name_auto"];
            [resultset setObject:[arrayList1 objectForKey:@"Phone_auto"] forKey:@"Phone_auto"];
            [resultset setObject:[arrayList1 objectForKey:@"Policy"] forKey:@"Policy"];
            [resultset setObject:[arrayList1 objectForKey:@"Name_health"] forKey:@"Name_health"];
            [resultset setObject:[arrayList1 objectForKey:@"Health_phone"] forKey:@"Health_phone"];
            [resultset setObject:[arrayList1 objectForKey:@"Prev_accident"] forKey:@"Prev_accident"];
            [resultset setObject:[arrayList1 objectForKey:@"Prev_When"] forKey:@"Prev_When"];
            [resultset setObject:[arrayList1 objectForKey:@"Anemia"] forKey:@"Anemia"];
            [resultset setObject:[arrayList1 objectForKey:@"Muscular"] forKey:@"Muscular"];
            [resultset setObject:[arrayList1 objectForKey:@"Rheumatic"] forKey:@"Rheumatic"];
            [resultset setObject:[arrayList1 objectForKey:@"Allergies"] forKey:@"Allergies"];
            [resultset setObject:[arrayList1 objectForKey:@"Cancer"] forKey:@"Cancer"];
            [resultset setObject:[arrayList1 objectForKey:@"Polio1"] forKey:@"Polio1"];
            [resultset setObject:[arrayList1 objectForKey:@"Multiple"] forKey:@"Multiple"];
            [resultset setObject:[arrayList1 objectForKey:@"Scarlet"] forKey:@"Scarlet"];
            [resultset setObject:[arrayList1 objectForKey:@"HIV"] forKey:@"HIV"];
            [resultset setObject:[arrayList1 objectForKey:@"Sinus"] forKey:@"Sinus"];
            [resultset setObject:[arrayList1 objectForKey:@"Asthma"] forKey:@"Asthma"];
            [resultset setObject:[arrayList1 objectForKey:@"German"] forKey:@"German"];
            [resultset setObject:[arrayList1 objectForKey:@"Nervousness"] forKey:@"Nervousness"];
            [resultset setObject:[arrayList1 objectForKey:@"Numbness"] forKey:@"Numbness"];
            [resultset setObject:[arrayList1 objectForKey:@"Convulsions"] forKey:@"Convulsions"];
            [resultset setObject:[arrayList1 objectForKey:@"Epilepsy"] forKey:@"Epilepsy"];
            [resultset setObject:[arrayList1 objectForKey:@"Concussion"] forKey:@"Concussion"];
            [resultset setObject:[arrayList1 objectForKey:@"Dizziness"] forKey:@"Dizziness"];
            [resultset setObject:[arrayList1 objectForKey:@"Neuritis"] forKey:@"Neuritis"];
            [resultset setObject:[arrayList1 objectForKey:@"Rheumatism"] forKey:@"Rheumatism"];
            [resultset setObject:[arrayList1 objectForKey:@"Diabetes"] forKey:@"Diabetes"];
            [resultset setObject:[arrayList1 objectForKey:@"Arthritis"] forKey:@"Arthritis"];
            [resultset setObject:[arrayList1 objectForKey:@"Venereal"] forKey:@"Venereal"];
            [resultset setObject:[arrayList1 objectForKey:@"Backaches"] forKey:@"Backaches"];
            [resultset setObject:[arrayList1 objectForKey:@"Tuberculosis"] forKey:@"Tuberculosis"];
            [resultset setObject:[arrayList1 objectForKey:@"Liver"] forKey:@"Liver"];
            [resultset setObject:[arrayList1 objectForKey:@"Kidney"] forKey:@"Kidney"];
            [resultset setObject:[arrayList1 objectForKey:@"Thyroid"] forKey:@"Thyroid"];
            [resultset setObject:[arrayList1 objectForKey:@"Alcoholism"] forKey:@"Alcoholism"];
            [resultset setObject:[arrayList1 objectForKey:@"Hepatitis"] forKey:@"Hepatitis"];
            [resultset setObject:[arrayList1 objectForKey:@"Mental"] forKey:@"Mental"];
            [resultset setObject:[arrayList1 objectForKey:@"High"] forKey:@"High"];
            [resultset setObject:[arrayList1 objectForKey:@"Digestive"] forKey:@"Digestive"];
            [resultset setObject:[arrayList1 objectForKey:@"Heart"] forKey:@"Heart"];
            [resultset setObject:[arrayList1 objectForKey:@"Other"] forKey:@"Other"];
            [resultset setObject:[arrayList1 objectForKey:@"Ifother"] forKey:@"Ifother"];
            [resultset setObject:[arrayList1 objectForKey:@"Illness"] forKey:@"Illness"];
            [resultset setObject:[arrayList1 objectForKey:@"Dates"] forKey:@"Dates"];
            [resultset setObject:[arrayList1 objectForKey:@"Medications"] forKey:@"Medications"];
            [resultset setObject:[arrayList1 objectForKey:@"Drink"] forKey:@"Drink"];
            [resultset setObject:[arrayList1 objectForKey:@"Smoke"] forKey:@"Smoke"];
            [resultset setObject:[arrayList1 objectForKey:@"Drugs"] forKey:@"Drugs"];
            [resultset setObject:[arrayList1 objectForKey:@"Diet"] forKey:@"Diet"];
            [resultset setObject:[arrayList1 objectForKey:@"Exercise"] forKey:@"Exercise"];
            [resultset setObject:[arrayList1 objectForKey:@"Hazardous"] forKey:@"Hazardous"];
            [resultset setObject:[arrayList1 objectForKey:@"Hazardousyes"] forKey:@"Hazardousyes"];
            [resultset setObject:[arrayList1 objectForKey:@"Female"] forKey:@"Female"];
            [resultset setObject:[arrayList1 objectForKey:@"Dr"] forKey:@"Dr"];
            [resultset setObject:[arrayList1 objectForKey:@"Patient"] forKey:@"Patient"];
            
            name.text=temp1;
            todaydate.text=temp2;
            streetaddress.text=temp3;
            city.text=temp4;
            state.text=temp5;
            zip.text=temp6;
            homeph.text=temp7;
            pager.text=temp8;
            cellph.text=temp9;
            fromd.text=temp10;
            socialsecnum.text=temp11;
            empname.text=temp16;
            occ.text=temp17;
            empadd.text=temp18;
            workph.text=temp19;
            workzip.text=temp20;
            workcity.text=temp21;
            workstate.text=temp22;
            spousename.text=temp24;
            spouseemp.text=temp25;
            spouseph.text=temp26;
            relativename.text=temp27;
            relativeph.text=temp28;
            if ([temp15 isEqualToString:@"Full Time"]) {
                resLabel.text = @"Full Time";
                [switch1 setOn:YES animated:YES];
                
            }
            else if ([temp15 isEqualToString:@"Part Time"])
            {
                resLabel.text = @"Part Time";
                [switch1 setOn:NO animated:YES];
            }
            if ([temp29 isEqualToString:@"Yes"]) {
                resLabel2.text = @"Yes";
                [switch2 setOn:YES animated:YES];
                
            }
            else if ([temp29 isEqualToString:@"No"])
            {
                resLabel2.text = @"No";
                [switch2 setOn:NO animated:YES];
            }
            if ([temp12 isEqualToString:@"Male"])
            {
                [seggender setSelectedSegmentIndex:0];
                seg.text=@"Male";
            }
            else  if ([temp12 isEqualToString:@"Female"])
            {
                [seggender setSelectedSegmentIndex:1];
                seg.text=@"Female";
                
            }
            if ([temp13 isEqualToString:@"Single"])
            {
                [segmarital setSelectedSegmentIndex:0];
                marital.text=@"Single";
                sl1.hidden=NO;
                sl2.hidden=NO;
                sl3.hidden=NO;
                spouseemp.hidden=NO;
                spousename.hidden=NO;
                spouseph.hidden=NO;
                
            }
            else  if ([temp13 isEqualToString:@"Married"])
            {
                [segmarital setSelectedSegmentIndex:1];
                marital.text=@"Married";
                sl1.hidden=YES;
                sl2.hidden=YES;
                sl3.hidden=YES;
                spouseemp.hidden=YES;
                spousename.hidden=YES;
                spouseph.hidden=YES;
                
            }
            if ([temp13 isEqualToString:@"Divorced"])
            {
                [segmarital setSelectedSegmentIndex:2];
                marital.text=@"Divorced";
                sl1.hidden=YES;
                sl2.hidden=YES;
                sl3.hidden=YES;
                spouseemp.hidden=YES;
                spousename.hidden=YES;
                spouseph.hidden=YES;
            }
            
            
            if ([temp14 isEqualToString:@"Student"])
            {
                [areyou setSelectedSegmentIndex:0];
                areyoulabel=@"Student";
                sd1.hidden=TRUE;
                sd2.hidden=TRUE;
                sd3.hidden=TRUE;
                sd4.hidden=TRUE;
                sd5.hidden=TRUE;
                sd6.hidden=TRUE;
                sd7.hidden=TRUE;
                empname.hidden=TRUE;
                empadd.hidden=TRUE;
                workcity.hidden=TRUE;
                workzip.hidden=TRUE;
                occ.hidden=TRUE;
                workstate.hidden=TRUE;
                workph.hidden=TRUE;
                student.hidden=FALSE;
                resLabel.hidden=FALSE;
                switch1.hidden=FALSE;
            }
            else if ([temp14 isEqualToString:@"Employee"])
            {
                [areyou setSelectedSegmentIndex:1];
                areyoulabel=@"Employee";
                sd1.hidden=FALSE;
                sd2.hidden=FALSE;
                sd3.hidden=FALSE;
                sd4.hidden=FALSE;
                sd5.hidden=FALSE;
                sd6.hidden=FALSE;
                sd7.hidden=FALSE;
                empname.hidden=FALSE;
                empadd.hidden=FALSE;
                workcity.hidden=FALSE;
                workzip.hidden=FALSE;
                occ.hidden=FALSE;
                workstate.hidden=FALSE;
                workph.hidden=FALSE;
                student.hidden=TRUE;
                resLabel.hidden=TRUE;
                switch1.hidden=TRUE;
            }
            
           
           
            
            
            
        }
        
        //         //NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
    }
    else
    {
        // resultResponse1=@"";
    }
    @try {
        
         resultResponse1=[self HttpPostGetsymptomdetails:@"patient_id" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
        NSError *error1;
        SBJSON *json1 = [[SBJSON new] autorelease];
        //  //NSLog(@"response %@",resultResponse1);
        NSDictionary *luckyNumbers1 = [json1 objectWithString:resultResponse1 error:&error1];
        NSDictionary *itemsApp1 = [luckyNumbers1 objectForKey:@"serviceresponse"];
        NSArray *items1App1=[itemsApp1 objectForKey:@"patientinfodiagnosisuser List"];
        
        //NSLog(@"items1app1 %@",items1App1);
        NSMutableArray *sym=[[NSMutableArray alloc]init];
        
        if ([items1App1 count]>0)
        {
            
            for (id anUpdate1 in items1App1)
            {
                NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
                
                
                [sym addObject:[arrayList1 objectForKey:@"symptom"]];
                
                
            }
            //NSLog(@"symptom values %@",sym);
            [resultset setObject:sym forKey:@"symptoms"];
            
            
        }
        else
        {
            
        }
    }
    @catch (NSException *exception) {
        
    }
    @finally {
        
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
			////NSLog(@"Access Not Available");
			break;
		}
            
		case ReachableViaWWAN:
		{
			isConnect=YES;
			////NSLog(@"Reachable WWAN");
			break;
		}
		case ReachableViaWiFi:
		{
			isConnect=YES;
			////NSLog(@"Reachable WiFi");
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
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"PatientInfo.php?service=patient_detailsselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    // //NSLog(@"POST:%@ %@",post,url2);
    NSURL *url = [NSURL URLWithString:url2];
    
    ////////NSLog(post);
    
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
    //   //NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostGetsymptomdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"PatientInfo.php?service=patientinfodiagnosisselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    // //NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    ////////NSLog(post);
    
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
    // //NSLog(@"data %@",data);
    
    return data;
    
}

-(void)dismissKeyboard {
    [name resignFirstResponder];
    [todaydate resignFirstResponder];
    [streetaddress resignFirstResponder];
    [homeph resignFirstResponder];
     printView.hidden = YES;
    [city resignFirstResponder];
    
    [cellph resignFirstResponder];
    
    [state resignFirstResponder];
    
    [zip resignFirstResponder];
    [pager resignFirstResponder];
    [socialsecnum resignFirstResponder];
    
    [empname resignFirstResponder];
    [occ resignFirstResponder];
    [empadd resignFirstResponder];
    [workph resignFirstResponder];
    [workcity resignFirstResponder];
    [workstate resignFirstResponder];
    [workzip resignFirstResponder];
    [spouseemp resignFirstResponder];
    [spousename resignFirstResponder];
    [spouseph resignFirstResponder];
    [relativeph resignFirstResponder];
    [relativename resignFirstResponder];
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}

-(IBAction)saveandcontinue:(id)sender
{
    temp1 =name.text;
    temp2 =todaydate.text;
    temp3 =streetaddress.text;
    temp4 =homeph.text;
    temp5 =city.text;
    temp6 =cellph.text;
    temp7 =state.text;
    temp8 =zip.text;
    temp9=pager.text;
    temp10=socialsecnum.text;
    temp11=spousename.text;
    temp12=spouseemp.text;
    temp13=spouseph.text;
    temp14=relativeph.text;
    temp15=relativename.text;
    temp16 = fromd.text;
    
    
    if(([name.text length]!=0)&&
       ([todaydate.text length]!=0)&&
       ([streetaddress.text length]!=0)&&
       ([homeph.text length]!=0)&&
       ([city.text length]!=0)&&
       ([cellph.text length]!=0)&&
       ([state.text length]!=0)&&
       ([zip.text length]!=0)&&
       ([pager.text length]!=0)&&
       ([socialsecnum.text length]!=0)&&
       ([fromd.text length]!=0)&&
       
       ([relativeph.text length]!=0)&&
       
       ([resLabel.text length]!=0)&&
       ([resLabel2.text length]!=0)&&
       ([relativename.text length]!=0))
    {
        c=1;
        
        //NSLog(@"resu %hhd",[du username:temp1]);
        
        if  ([marital.text isEqualToString:@"Single"]) {
            
            
        }
        else
        {
            spouseemp.text=@"";
            spousename.text=@"";
            spouseph.text=@"";
            
        }
        
        
        
        
        if ([du patname:temp1]==1)
        {
            if([du address:temp3]==1)
            {
                if([du mobilenumber:temp4]==1)
                {
                    if([du mobilenumber:temp6]==1)
                    {
                        if([du otherfields:temp5]==1)
                        {
                            if([du otherfields:temp7]==1)
                            {
                                if([du zipcode:temp8]==1)
                                {
                                    if([du ssn:temp10]==1)
                                    {
                                        
                                        if((([temp11 length]>0)&&([du patname:temp11]==1))||([temp11 length]==0)||(![marital.text isEqualToString:@"Single"]))
                                        {
                                            if((([temp12 length]>0)&&([du otherfields:temp12]==1))||([temp12 length]==0)||(![marital.text isEqualToString:@"Single"]))
                                            {
                                                if((([temp13 length]>0)&&([du mobilenumber:temp13]==1))||([temp13 length]==0)||(![marital.text isEqualToString:@"Single"]))
                                                {
                                                    
                                                    if([du mobilenumber:temp14]==1)
                                                    {
                                                        if ([self validateDate:temp2]==1)
                                                        {
                                                            if([du email:temp9]==1)
                                                            {
                                                                if ([du patname:temp15]==1)
                                                                {
                                                                    if ([self validateDate:temp16]==1)
                                                                    {
                                                                        if  ([marital.text isEqualToString:@"Single"]) {
                                                                            
                                                                            [recorddict setValue:spousename.text forKey:@"spousename"];
                                                                            [recorddict setValue:spouseemp.text forKey:@"spouseemp"];
                                                                            [recorddict setValue:spouseph.text forKey:@"spousephone"];
                                                                        }
                                                                        else
                                                                        {
                                                                            [recorddict setValue:@"" forKey:@"spousename"];
                                                                            [recorddict setValue:@"" forKey:@"spouseemp"];
                                                                            [recorddict setValue:@""  forKey:@"spousephone"];
                                                                            
                                                                        }
                                                                        
                                                                        
                                                                        [recorddict setValue:name.text forKey:@"name"];
                                                                        [recorddict setValue:streetaddress.text forKey:@"streetaddress"];
                                                                        [recorddict setValue:homeph.text forKey:@"homephone"];
                                                                        [recorddict setValue:cellph.text forKey:@"cellphone"];
                                                                        [recorddict setValue:city.text forKey:@"city"];
                                                                        [recorddict setValue:state.text forKey:@"state"];
                                                                        [recorddict setValue:zip.text forKey:@"zipcode"];
                                                                        [recorddict setValue:socialsecnum.text forKey:@"ssn"];
                                                                        
                                                                        [recorddict setValue:relativeph.text forKey:@"relativephone"];
                                                                        [recorddict setValue:relativename.text forKey:@"relativename"];
                                                                        [recorddict setValue:todaydate.text forKey:@"todaydate"];
                                                                        [recorddict setValue:pager.text forKey:@"pager"];
                                                                        [recorddict setValue:fromd.text forKey:@"DateOfBirth"];
                                                                        [recorddict setValue:areyoulabel forKey:@"areyoulabel"];
                                                                        [recorddict setValue:resLabel.text forKey:@"Student"];
                                                                        [recorddict setValue:resLabel2.text forKey:@"hadchiropractic"];
                                                                        [recorddict setValue:seg.text forKey:@"sex"];
                                                                        [recorddict setValue:marital.text forKey:@"Maritalstatus"];
                                                                        [recorddict setValue:empname.text forKey:@"empname"];
                                                                        [recorddict setValue:occ.text forKey:@"occupation"];
                                                                        [recorddict setValue:empadd.text forKey:@"empaddress"];
                                                                        [recorddict setValue:workph.text forKey:@"workphone"];
                                                                        [recorddict setValue:workcity.text forKey:@"empcity"];
                                                                        [recorddict setValue:workstate.text forKey:@"workstate"];
                                                                        [recorddict setValue:workzip.text forKey:@"workzipcode"];
                                                                        [recorddict setValue:areyoulabel forKey:@"areyoulabel"];
                                                                        //NSLog(@"label %@",areyoulabel);
                                                                        if([areyoulabel isEqual:@"Student"])
                                                                        {
                                                                            c=1;
                                                                            [recorddict setValue:@"" forKey:@"empname"];
                                                                            [recorddict setValue:@"" forKey:@"occupation"];
                                                                            [recorddict setValue:@"" forKey:@"empaddress"];
                                                                            [recorddict setValue:@"" forKey:@"workphone"];
                                                                            [recorddict setValue:@"" forKey:@"empcity"];
                                                                            [recorddict setValue:@"" forKey:@"workstate"];
                                                                            [recorddict setValue:@"" forKey:@"workzipcode"];
                                                                            
                                                                        }
                                                                        else if([areyoulabel isEqual:@"Employee"])
                                                                        {
                                                                            temp17 = [empname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
                                                                            temp18 = [occ.text stringByReplacingOccurrencesOfString:@" " withString:@""];
                                                                            temp19 = [empadd.text stringByReplacingOccurrencesOfString:@" " withString:@""];
                                                                            temp20 = [workph.text stringByReplacingOccurrencesOfString:@" " withString:@""];
                                                                            temp21 = [workcity.text stringByReplacingOccurrencesOfString:@" " withString:@""];
                                                                            temp22 = [workstate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
                                                                            temp23 = [workzip.text stringByReplacingOccurrencesOfString:@" " withString:@""];
                                                                            if((([temp17 length]>0)&&([self validateNames:temp17]==1))||([temp17 length]==0))
                                                                            {
                                                                                
                                                                                if((([temp18 length]>0)&&([self validateNames:temp18]==1))||([temp18 length]==0))
                                                                                {
                                                                                    if((([temp19 length]>0)&&([self validateNames:temp19]==1))||([temp19 length]==0))
                                                                                        
                                                                                    {
                                                                                        if((([temp20 length]>0)&&([self validateMobile:temp20]==1))||([temp20 length]==0))
                                                                                        {
                                                                                            if((([temp21 length]>0)&&([self validateNames:temp21]==1))||([temp21 length]==0))
                                                                                            {
                                                                                                
                                                                                                if((([temp22 length]>0)&&([self validateNames:temp22]==1))||([temp22 length]==0))
                                                                                                    
                                                                                                {if((([temp23 length]>0)&&([self validateZip:temp23]==1))||([temp23 length]==0))
                                                                                                {
                                                                                                    c=1;
                                                                                                    [recorddict setValue:empname.text forKey:@"empname"];
                                                                                                    [recorddict setValue:occ.text forKey:@"occupation"];
                                                                                                    [recorddict setValue:empadd.text forKey:@"empaddress"];
                                                                                                    [recorddict setValue:workph.text forKey:@"workphone"];
                                                                                                    [recorddict setValue:workcity.text forKey:@"empcity"];
                                                                                                    [recorddict setValue:workstate.text forKey:@"workstate"];
                                                                                                    [recorddict setValue:workzip.text forKey:@"workzipcode"];
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                                    
                                                                                                else{
                                                                                                    c=0;
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid work zipcode." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                                                                }
                                                                                                    
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    c=0;
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid workState." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                                                                }
                                                                                            }
                                                                                            else   {
                                                                                                c=0;
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid workcity." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {c=0;
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid workPhone." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {c=0;
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid employee address." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                                                    }
                                                                                }
                                                                                
                                                                                else
                                                                                {
                                                                                    c=0;
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid occupation." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                c=0;
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid employee name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                                            }
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid DOB." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                                    }
                                                                }
                                                                else{
                                                                    c=0;
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid relative name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid email id." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                            }
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid date." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid relative phone number." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                    }
                                                }
                                                else
                                                {
                                                    c=0;
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid spouse phone number." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                }
                                            }
                                            else
                                            {
                                                c=0;
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid spouse employer." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                            }
                                        }
                                        else
                                        {
                                            c=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid spousename." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                        }
                                        
                                    }
                                    else
                                    {
                                        c=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid socialsecuritynumber." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                    }
                                }
                                else
                                {
                                    c=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid zipcode." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                }
                            }
                            else
                            {
                                c=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid state name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                            }
                        }
                        else
                        {
                            c=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid city name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                        }
                    }
                    else
                    {
                        c=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid cellphone number." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    }
                }
                else
                {
                    c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid homephone number." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
            }
            else
            {
                c=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid streetaddress." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
            
        }
        else
        {
            c=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
    }
    else
    {
        c=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Required fields should not be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    
    if (c==1) {
        [self performSegueWithIdentifier:@"Patientdetail1" sender:self];
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
    else if ([[staff objectForKey:@"search"]isEqualToString:@"1"]) {
        
        
        for(UIViewController *controller in self.navigationController.viewControllers)
        {
            if ([controller isKindOfClass:[SampleViewController class]])
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



- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (textField.tag==11)
    {
        
        NSUInteger newLength = [textField.text length] + [string length] - range.length;
        NSString *rangeOfString = @"0123456789";
        NSCharacterSet *rangeOfCharacters = [NSCharacterSet characterSetWithCharactersInString:rangeOfString];
        
        
        
        
        for (int i = 0; i<[string length]; i++)
        {
            UniChar c1 = [string characterAtIndex:i];
            if (![rangeOfCharacters characterIsMember:c1])
            {
                return NO;
            }
        }
        
        
        
        return (newLength > 5) ? NO : YES;
        
    }
    else if (textField.tag==21)
    {
        NSUInteger newLength = [textField.text length] + [string length] - range.length;
        NSString *rangeOfString = @"0123456789";
        NSCharacterSet *rangeOfCharacters = [NSCharacterSet characterSetWithCharactersInString:rangeOfString];
        
        
        
        
        for (int i = 0; i<[string length]; i++)
        {
            UniChar c1 = [string characterAtIndex:i];
            if (![rangeOfCharacters characterIsMember:c1])
            {
                return NO;
            }
        }
        
        return (newLength > 5) ? NO : YES;
    }
    else if (textField.tag==12) {
        // All digits entered
        if (range.location == 11) {
            return NO;
        }
        
        // Reject appending non-digit characters
        if (range.length == 0 &&
            ![[NSCharacterSet decimalDigitCharacterSet] characterIsMember:[string characterAtIndex:0]]) {
            return NO;
        }
        
        // Auto-add hyphen before appending 4rd or 7th digit
        if (range.length == 0 &&
            (range.location == 3 || range.location ==6)) {
            textField.text = [NSString stringWithFormat:@"%@-%@", textField.text, string];
            return NO;
        }
        
        // Delete hyphen when deleting its trailing digit
        if (range.length == 1 &&
            (range.location == 4 || range.location == 7))  {
            range.location--;
            range.length = 2;
            textField.text = [textField.text stringByReplacingCharactersInRange:range withString:@""];
            return NO;
        }
        
        return YES;
        
    }
    else
        return YES;
}

- (IBAction)temp:(id)sender {
    [self performSegueWithIdentifier:@"Patientdetail1" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    if ([segue.identifier isEqualToString:@"Patientdetail1"])
    {
        
        
        Patient1ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        destViewController.staff=staff;
        //NSLog(@"record in PatientVC first %@",recorddict);
        //NSLog(@"resultset in PatientVC first %@",resultset);
        // destViewController.delegate=self;
        
    }
    
    
    
}

-(IBAction)clear:(id)sender
{
    for (UIView *subview in [self.view subviews])
        if([subview isKindOfClass:[UITextField class]])
            [(UITextField*)subview setText:@""];
    [areyou setSelectedSegmentIndex:0];
    [seggender setSelectedSegmentIndex:0];
    [segmarital setSelectedSegmentIndex:0];
    [switch1 setOn:YES animated:YES];
    [switch2 setOn:YES animated:YES];
    sd1.hidden=TRUE;
    sd2.hidden=TRUE;
    sd3.hidden=TRUE;
    sd4.hidden=TRUE;
    sd5.hidden=TRUE;
    sd6.hidden=TRUE;
    sd7.hidden=TRUE;
    empname.hidden=TRUE;
    empadd.hidden=TRUE;
    workcity.hidden=TRUE;
    workzip.hidden=TRUE;
    occ.hidden=TRUE;
    workstate.hidden=TRUE;
    workph.hidden=TRUE;
    student.hidden=FALSE;
    resLabel.hidden=FALSE;
    switch1.hidden=FALSE;
    resLabel.text=@"Full time";
    areyoulabel=@"Student";
    seg.text=@"Male";
    marital.text=@"Single";
    sl1.hidden=NO;
    sl2.hidden=NO;
    sl3.hidden=NO;
    spouseemp.hidden=NO;
    spousename.hidden=NO;
    spouseph.hidden=NO;
}

- (BOOL)presentFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated completionHandler:(UIPrintInteractionCompletionHandler)completion {
    return YES;
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
                ////NSLog(@"FAILED! due to error in domain %@ with error code %u", error.domain, error.code);
            }
        };
        [printController presentFromBarButtonItem:barButton animated:YES completionHandler:completionHandler];
    }
}


- (void)dealloc {
    
    
    
    [super dealloc];
}
@end
