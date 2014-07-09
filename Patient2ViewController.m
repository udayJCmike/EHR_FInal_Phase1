//
//  Patient2ViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/7/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "Patient2ViewController.h"
#import "Patient3ViewController.h"
#import "AKNumericFormatter.h"
#import "UITextField+AKNumericFormatter.h"
#import "staffautocheckViewController.h"
#import "SampleViewController.h"
@interface Patient2ViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation Patient2ViewController
@synthesize edit;
@synthesize other;
@synthesize recorddict;
@synthesize switch1;
@synthesize switch2;
@synthesize switch3;
@synthesize switch4;
@synthesize resLabel1;
@synthesize resLabel2;
@synthesize resLabel3;
@synthesize resLabel4;
@synthesize text1;
@synthesize text2;
@synthesize text3;
@synthesize text4;
@synthesize text5;
@synthesize reslabel5;
@synthesize reslabel6;
@synthesize reslabel7;
@synthesize seg;
@synthesize segtype;
@synthesize switch5;
@synthesize switch6;
@synthesize switch7;
@synthesize cancel;
@synthesize resultset;
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


- (IBAction) toggleEnabledTextForSwitch5onSomeLabel: (id) sender
{
	if (switch5.on) reslabel5.text = @"Yes";
	else reslabel5.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch6onSomeLabel: (id) sender
{
	if (switch6.on) reslabel6.text = @"R";
	else reslabel6.text = @"L";
}
- (IBAction) toggleEnabledTextForSwitch7onSomeLabel: (id) sender
{
	if (switch7.on) reslabel7.text = @"Yes";
	else reslabel7.text = @"No";
}

- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (switch1.on) resLabel1.text = @"Yes";
	else resLabel1.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (switch2.on) resLabel2.text = @"Yes";
	else resLabel2.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch3onSomeLabel: (id) sender
{
	if (switch3.on) resLabel3.text = @"Yes";
	else resLabel3.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch4onSomeLabel: (id) sender
{
	if (switch4.on)
    {
        resLabel4.text = @"Yes";
        optwhen.hidden=NO;
        
    }
	else
    {resLabel4.text = @"No";
        optwhen.hidden=YES;
        
    }
}

-(IBAction)segselected:(id)sender{
    if(seg.selectedSegmentIndex==0)
    {
        segtype.text=@"Auto";
        other.hidden=YES;
        [self performSegueWithIdentifier:@"duties" sender:self];
    }
    else if (seg.selectedSegmentIndex==1)
    {
        segtype.text=@"Work";
        other.hidden=YES;
    }
    else if (seg.selectedSegmentIndex==2)
    {
        segtype.text=@"Mobile";
        other.hidden=YES;
    }
    else if (seg.selectedSegmentIndex==3)
    {
        segtype.text=@"Other";
        other.hidden=NO;
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
    datePicker.hidden=YES;
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

  
    other.hidden=YES;
    
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
    
    //    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerViewTapped)];
    //    [datePicker addGestureRecognizer:tapGR];
    
    
    resLabel1.text=@"Yes";
    resLabel2.text=@"Yes";
    resLabel3.text=@"Yes";
    resLabel4.text=@"Yes";
    segtype.text=@"null";
    reslabel5.text = @"Yes";
    reslabel6.text = @"R";
    reslabel7.text = @"Yes";
    temp=[[NSMutableDictionary alloc]init];
    temp=recorddict;
    AKNumericFormatterMode mode = AKNumericFormatterMixed;
    attorneyph.numericFormatter = [AKNumericFormatter formatterWithMask:@"(***)***-****" placeholderCharacter:'*'mode:mode];
    comph.numericFormatter = [AKNumericFormatter formatterWithMask:@"(***)***-****" placeholderCharacter:'*'mode:mode];
    autoph.numericFormatter = [AKNumericFormatter formatterWithMask:@"(***)***-****" placeholderCharacter:'*'mode:mode];
    helph.numericFormatter = [AKNumericFormatter formatterWithMask:@"(***)***-****" placeholderCharacter:'*'mode:mode];
    text2.numericFormatter = [AKNumericFormatter formatterWithMask:@"(***)***-****" placeholderCharacter:'*'mode:mode];
    
    edit.hidden=YES;
    [self displaydata];
}
- (IBAction)edit:(id)sender {
    [self performSegueWithIdentifier:@"duties" sender:self];
}
-(void)displaydata
{
    if ([resultset count]>0)
    {
        other.text=[resultset objectForKey:@"accident"];
        medwhere.text=[resultset objectForKey:@"where1"];
        setdate.text=[resultset objectForKey:@"when1"];
        dateOfAccident.text=[resultset objectForKey:@"Date_Of_Accident"];
        nameofattorney.text=[resultset objectForKey:@"NameOfAttorney"];
        attorneyph.text=[resultset objectForKey:@"Phone_Number"];
        nop.text=[resultset objectForKey:@"Fault_accident"];
        text1.text=[resultset objectForKey:@"phyname"];
        text2.text=[resultset objectForKey:@"phyphone"];
        text3.text=[resultset objectForKey:@"car11"];
        text4.text=[resultset objectForKey:@"xray"];
        text5.text=[resultset objectForKey:@"treat"];
        comname.text=[resultset objectForKey:@"Insurance"];
        comph.text=[resultset objectForKey:@"Insurance_phone"];
        autoname.text=[resultset objectForKey:@"Name_auto"];
        autoph.text=[resultset objectForKey:@"Phone_auto"];
        autopolicy.text=[resultset objectForKey:@"Policy"];
        helname.text=[resultset objectForKey:@"Name_health"];
        helph.text=[resultset objectForKey:@"Health_phone"];
        optwhen.text=[resultset objectForKey:@"Prev_When"];
        NSLog(@"type of acc %@",[resultset objectForKey:@"Type_Of_Accident"]);
        if([[resultset objectForKey:@"Type_Of_Accident"]isEqualToString:@"Auto"])
        {
            [seg setSelectedSegmentIndex:0];
            segtype.text=@"Auto";
            other.hidden=YES;
            edit.hidden=NO;
            
        }
        else if([[resultset objectForKey:@"Type_Of_Accident"]isEqualToString:@"Work"])
        {
            [seg setSelectedSegmentIndex:1];
            segtype.text=@"Work";
            other.hidden=YES;
            edit.hidden=YES;
        }
        else if ([[resultset objectForKey:@"Type_Of_Accident"]isEqualToString:@"Mobile"])
        {
            [seg setSelectedSegmentIndex:2];
            segtype.text=@"Mobile";
            other.hidden=YES;
            edit.hidden=YES;
        }
        else if ([[resultset objectForKey:@"Type_Of_Accident"]isEqualToString:@"Other"])
        {
            [seg setSelectedSegmentIndex:3];
            segtype.text=@"Other";
            other.hidden=NO;
            edit.hidden=YES;
        }
        if ([[resultset objectForKey:@"Symptom_Accident"] isEqualToString:@"Yes"]) {
            resLabel1.text = @"Yes";
            [switch1 setOn:YES animated:YES];
            
        }
        else if ([[resultset objectForKey:@"Symptom_Accident"] isEqualToString:@"No"])
        {
            resLabel1.text = @"No";
            [switch1 setOn:NO animated:YES];
        }
        if ([[resultset objectForKey:@"Accident_Reported"] isEqualToString:@"Yes"]) {
            resLabel2.text = @"Yes";
            [switch2 setOn:YES animated:YES];
            
        }
        else if ([[resultset objectForKey:@"Accident_Reported"] isEqualToString:@"No"])
        {
            resLabel2.text = @"No";
            [switch2 setOn:NO animated:YES];
        }
        if ([[resultset objectForKey:@"Attorney_accident"] isEqualToString:@"Yes"]) {
            resLabel3.text = @"Yes";
            [switch3 setOn:YES animated:YES];
            
        }
        else if ([[resultset objectForKey:@"Attorney_accident"] isEqualToString:@"No"])
        {
            resLabel3.text = @"No";
            [switch3 setOn:NO animated:YES];
        }
        if ([[resultset objectForKey:@"Prev_accident"] isEqualToString:@"Yes"]) {
            resLabel4.text = @"Yes";
            [switch4 setOn:YES animated:YES];
            optwhen.hidden=NO;
            
        }
        else if ([[resultset objectForKey:@"Prev_accident"] isEqualToString:@"No"])
        {
            resLabel4.text = @"No";
            [switch4 setOn:NO animated:YES];
            optwhen.hidden=YES;
        }
        if ([[resultset objectForKey:@"claim_open"] isEqualToString:@"Yes"]) {
            reslabel5.text = @"Yes";
            [switch5 setOn:YES animated:YES];
            
            
        }
        else if ([[resultset objectForKey:@"claim_open"] isEqualToString:@"No"])
        {
            reslabel5.text = @"No";
            [switch5 setOn:NO animated:YES];
            
        }
        if ([[resultset objectForKey:@"retain"] isEqualToString:@"Yes"]) {
            reslabel6.text = @"Yes";
            [switch6 setOn:YES animated:YES];
            
            
        }
        else if ([[resultset objectForKey:@"retain"] isEqualToString:@"No"])
        {
            reslabel6.text = @"No";
            [switch6 setOn:NO animated:YES];
            
        }
        if ([[resultset objectForKey:@"record"] isEqualToString:@"Yes"]) {
            reslabel7.text = @"Yes";
            [switch7 setOn:YES animated:YES];
            
            
        }
        else if ([[resultset objectForKey:@"record"] isEqualToString:@"No"])
        {
            reslabel7.text = @"No";
            [switch7 setOn:NO animated:YES];
            
        }
        
        
    }
}
-(void)dismissKeyboard {
    [other resignFirstResponder];
     printView.hidden = YES;
    [dateOfAccident resignFirstResponder];
    [medwhere resignFirstResponder];
    [nameofattorney resignFirstResponder];
    [attorneyph resignFirstResponder];
    [autoname resignFirstResponder];
    [autoph resignFirstResponder];
    [autopolicy resignFirstResponder];
    [helph resignFirstResponder];
    [helname resignFirstResponder];
    [optwhen resignFirstResponder];
    [nop resignFirstResponder];
    [comname resignFirstResponder];
    [comph resignFirstResponder];
    [text1 resignFirstResponder];
    [text2 resignFirstResponder];
    [text3 resignFirstResponder];
    [text4 resignFirstResponder];
    [text5 resignFirstResponder];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(datePicker.hidden==NO)
    {
        datePicker.hidden=YES;
        
        
    }
    
    
}

-(IBAction)clear:(id)sender
{
    [switch1 setOn:YES animated:YES];
    [switch2 setOn:YES animated:YES];
    [switch3 setOn:YES animated:YES];
    [seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [switch1 setOn:YES animated:YES];
    [switch2 setOn:YES animated:YES];
    [switch3 setOn:YES animated:YES];
    [switch4 setOn:YES animated:YES];
    [switch5 setOn:YES animated:YES];
    [switch6 setOn:YES animated:YES];
    [switch7 setOn:YES animated:YES];
    other.hidden=YES;
    optwhen.hidden=YES;
    
    for (UIView *subview in [self.view subviews])
        if([subview isKindOfClass:[UITextField class]])
            [(UITextField*)subview setText:@""];
}


-(IBAction)savecontinuebtn:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:temp];
    du=[[databaseurl alloc]init];
    temp1 =[dateOfAccident.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[medwhere.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[nameofattorney.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[attorneyph.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[nop.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6 =[comname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7 =[comph.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8 =[autoname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[autoph.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[autopolicy.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[helname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[helph.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[other.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[text1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[text2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[text3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[text4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[text5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[setdate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20 = [optwhen.text  stringByReplacingOccurrencesOfString:@" " withString:@""];
    if(//(([sym1.text length]!=0)&&([syml1.text length]!=0))&&
       // (![fromd.text isEqual:@"Select Date"])&&
       ([dateOfAccident.text length]!=0)&&
       ([medwhere.text length]!=0)&&
       ([nameofattorney.text length]!=0)&&
       ([attorneyph.text length]!=0)&&
       ([nop.text length]!=0)&&
       ([comname.text length]!=0)&&
       ([comph.text length]!=0)&&
       ([autoname.text length]!=0)&&
       ([autoph.text length]!=0)&&
       ([autopolicy.text length]!=0)&&
       ([helname.text length]!=0)&&
       //([text1.text length]!=0)&&
       //([text2.text length]!=0)&&
       ([text3.text length]!=0)&&
       //([text4.text length]!=0)&&
       // ([text5.text length]!=0)&&
       ([helph.text length]!=0) &&
       ([setdate.text length]!=0)
       )
    {c=1;
        if ([resLabel4.text isEqualToString:@"Yes"]) {
            
        }
        else
        {
            optwhen.text=@"";
        }
        if ([segtype.text isEqualToString:@"Other"]) {
            
        }
        else
        {
            other.text=@"";
        }
        if((([other.text length]>0)&&([du otherfields:other.text]==1))||([other.text length]==0))
        {
        
        if([du dateexpress:dateOfAccident.text]==1)
        {
            if([du otherfields:medwhere.text]==1)
            {
                if([du dateexpress:setdate.text]==1)
                {
                if([du patname:nameofattorney.text]==1)
                {
                    if([du mobilenumber:attorneyph.text]==1)
                    {
                        if([du patname:nop.text]==1)
                        {
                            if((([text1.text length]>0)&&([du patname:text1.text]==1))||([text1.text length]==0))
                            {
                                 if((([text2.text length]>0)&&([du mobilenumber:text2.text]==1))||([text2.text length]==0))
                                {
                                     if((([text3.text length]>0)&&([du otherfields:text3.text]==1))||([text3.text length]==0))
                                    {
                 
                                        
                                        if((([text4.text length]>0)&&([du otherfields:text4.text]==1))||([text4.text length]==0))
                                        {
                                            if((([text5.text length]>0)&&([du otherfields:text5.text]==1))||([text5.text length]==0))
                                            {
                                                
                                                

                            if([du patname:comname.text]==1)
                            {
                                if([du mobilenumber:comph.text])
                                {
                                    if([du patname:autoname.text]==1)
                                    {
                                        if([du mobilenumber:autoph.text]==1)
                                        {
                                            if([du otherfields:autopolicy.text]==1)
                                            {
                                                if([du patname:helname.text]==1)
                                                {
                                                    if([du mobilenumber:helph.text]==1)
                                                    {
                                                        
                                                        if((([optwhen.text length]>0)&&([du dateexpress:optwhen.text]==1))||([optwhen.text length]==0))
                                                            
                                                        {
                                                            c=1;
                                                                            [recorddict setValue:other.text forKey:@"otheracc"];
                                                                            [recorddict setValue:text1.text forKey:@"text1"];
                                                                            [recorddict setValue:text2.text forKey:@"text2"];
                                                                            [recorddict setValue:text3.text forKey:@"text3"];
                                                                            [recorddict setValue:text4.text forKey:@"text4"];
                                                                            
                                                                            [recorddict setValue:text5.text forKey:@"text5"];
                                                                            [recorddict setValue:reslabel5.text forKey:@"res5"];
                                                                            [recorddict setValue:reslabel6.text forKey:@"res6"];
                                                                            [recorddict setValue:reslabel7.text forKey:@"res7"];
                                                                            [recorddict setValue:setdate.text forKey:@"medwhen"];
                                                                            if ([resLabel4.text isEqualToString:@"Yes"]) {
                                                                                [recorddict setValue:optwhen.text forKey:@"prevauto"];
                                                                            }
                                                                            else
                                                                            {
                                                                                [recorddict setValue:@"" forKey:@"prevauto"];
                                                                            }
                                                                            
                                                                            [recorddict setValue:resLabel1.text forKey:@"symduetoacc"];
                                                                            [recorddict setValue:resLabel2.text forKey:@"accreported"];
                                                                            [recorddict setValue:resLabel3.text forKey:@"retainedattorney"];
                                                                            [recorddict setValue:resLabel4.text forKey:@"prevautoorwork"];
                                                                            [recorddict setValue:segtype.text forKey:@"Typeofaccident"];
                                                                            [recorddict setValue:medwhere.text forKey:@"MedicalLocation"];
                                                                            [recorddict setValue:dateOfAccident.text forKey:@"Medicaltime"];
                                                                            [recorddict setValue:nameofattorney.text forKey:@"nameofattorney"];
                                                                            [recorddict setValue:attorneyph.text forKey:@"attorneyphone"];
                                                                            [recorddict setValue:nop.text forKey:@"NOP"];
                                                                            [recorddict setValue:comname.text forKey:@"insurancecom"];
                                                                            [recorddict setValue:comph.text forKey:@"insurancepho"];
                                                                            [recorddict setValue:autoname.text forKey:@"autoname"];
                                                                            [recorddict setValue:autoph.text forKey:@"autoph"];
                                                                            [recorddict setValue:autopolicy.text forKey:@"autopolicy"];
                                                                            [recorddict setValue:helname.text forKey:@"healthname"];
                                                                            [recorddict setValue:helph.text forKey:@"healthphone"];
                                                                            [recorddict setValue:optwhen.text forKey:@"prevauto"];
                                                                            if([[recorddict objectForKey:@"Typeofaccident"] isEqual:@"Auto"])
                                                                            {
                                                                                [[NSUserDefaults standardUserDefaults]setInteger:1 forKey:@"typeofacc"];
                                                                            }
                                                                            else if([[recorddict objectForKey:@"Typeofaccident"] isEqual:@"Work"])
                                                                            {
                                                                                
                                                                                [[NSUserDefaults standardUserDefaults]setInteger:2 forKey:@"typeofacc"];
                                                                            }
                                                                            else if([[recorddict objectForKey:@"Typeofaccident"] isEqual:@"Mobile"])
                                                                            {
                                                                                [[NSUserDefaults standardUserDefaults]setInteger:3 forKey:@"typeofacc"];
                                                                            }
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid auto or work accident date." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                    }
                                                    
                                                    }
                                                    else{
                                                        c=0;
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid healthInsurance phonenumber." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                    }
                                                }
                                                else{
                                                    c=0;
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid healthinsurance name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                }
                                            }
                                            else
                                            {
                                                c=0;
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid auto insurance policy name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                            }
                                        }
                                        else{
                                            c=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid auto insurance phone number." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                        }
                                    }
                                    else{
                                        c=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid auto insurance name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                    }
                                }
                                else{
                                    c=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid company phone number." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                }
                            }
                            else{
                                c=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid insurance company name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                            }
                        }
                        else{
                            c=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid treatment given field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                        }
                    }
                                        else{
                                            c=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid body parts x-rayed field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                        }
                                    }
                                    else{
                                       
                                        c=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid damages field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                    }
                                }
                                else{
                                    c=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid physician phone." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                }
                                
                            }
                            else{
                                c=0;
                               
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid physician name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                            }
                        }
                        else{
                            c=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid person name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                            
                        }
                    }
                    else
                    {
                        c=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid attorney phone." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    }
                }
                else
                {
                    c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid name of attorney." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
                }
                else
                {
                    c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid medical treatment date." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
            }
            else
            {
                c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid medical treatment location." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
               
            }
        }
        else{
            c=0;
             [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid date of accident." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        
        }
        }
        else{
            c=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid type of accident." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }

        
    }
    else{
        c=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Required fields should not be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    if (c==1) {
        [self performSegueWithIdentifier:@"Patientdetail2" sender:self];
    }
    
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
    NSString *countryFormat1 = @"[A-Z0-9a-z._/-]+";
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"Patientdetail2"])
    {
        
        Patient3ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        destViewController.staff=staff;
       // NSLog(@"record %@",recorddict);
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

- (void)dealloc {
    
    
    [super dealloc];
}
@end
