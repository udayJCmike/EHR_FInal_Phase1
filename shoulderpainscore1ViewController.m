//
//  shoulderpainscore1ViewController.m
//  shoulderpainscore
//
//  Created by DeemsysInc on 3/4/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "shoulderpainscore1ViewController.h"
#import "shoulderpainscore2ViewController.h"
#import "QuadrupleVisualAnalogueScale.h"
@interface shoulderpainscore1ViewController ()

@end

@implementation shoulderpainscore1ViewController
@synthesize painseg;
@synthesize headacheseg;
@synthesize firstbut;
@synthesize secondbut;
@synthesize thirdbut;
@synthesize secondf;
@synthesize seconds;
@synthesize secondt;
@synthesize firstbut3;
@synthesize secondbut3;
@synthesize thirdbut3;
@synthesize firstbut4;
@synthesize secondbut4;
@synthesize thirdbut4;
@synthesize firstbut5;
@synthesize secondbut5;
@synthesize thirdbut5;
@synthesize firstbut6;
@synthesize secondbut6;
@synthesize thirdbut6;
@synthesize firstbut7;
@synthesize secondbut7;
@synthesize thirdbut7;
@synthesize firstbut8;
@synthesize secondbut8;
@synthesize thirdbut8;
@synthesize firstbut9;
@synthesize firstbut10;
@synthesize secondbut10;
@synthesize secondbut9;
@synthesize thirdbut10;
@synthesize thirdbut9;
@synthesize recorddict;
@synthesize name;
@synthesize f48;
@synthesize age;
@synthesize date;
@synthesize scoretotal;
@synthesize resultset;
@synthesize cancel;

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
- (IBAction)first:(id)sender {
    
    firstrow=@"Yes";
    [firstbut setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second:(id)sender {
    firstrow=@"Sometimes";
    
    [secondbut setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third:(id)sender {
    firstrow=@"No";
    [thirdbut setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first2:(id)sender {
    
    secondrow=@"Yes";
    [secondf setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [seconds setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondt setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second2:(id)sender {
    secondrow=@"Sometimes";
    
    [seconds setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondt setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondf setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third2:(id)sender {
    secondrow=@"No";
    [secondt setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [seconds setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondf setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first3:(id)sender {
    
    thirdrow=@"Yes";
    [firstbut3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second3:(id)sender {
    thirdrow=@"Sometimes";
    
    [secondbut3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third3:(id)sender {
    thirdrow=@"No";
    [thirdbut3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first4:(id)sender {
    
    fourthrow=@"Yes";
    [firstbut4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second4:(id)sender {
    fourthrow=@"Sometimes";
    
    [secondbut4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third4:(id)sender {
    fourthrow=@"No";
    [thirdbut4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first5:(id)sender {
    
    fifthrow=@"Yes";
    [firstbut5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second5:(id)sender {
    fifthrow=@"Sometimes";
    
    [secondbut5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third5:(id)sender {
    fifthrow=@"No";
    [thirdbut5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first6:(id)sender {
    
    sixthrow=@"Yes";
    [firstbut6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second6:(id)sender {
    sixthrow=@"Sometimes";
    
    [secondbut6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third6:(id)sender {
    sixthrow=@"No";
    [thirdbut6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}

- (IBAction)first7:(id)sender {
    
    seventhrow=@"Yes";
    [firstbut7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second7:(id)sender {
    seventhrow=@"Sometimes";
    
    [secondbut7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third7:(id)sender {
    seventhrow=@"No";
    [thirdbut7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first8:(id)sender {
    
    eighthrow=@"Yes";
    [firstbut8 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second8:(id)sender {
    eighthrow=@"Sometimes";
    
    [secondbut8 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third8:(id)sender {
    eighthrow=@"No";
    [thirdbut8 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first9:(id)sender {
    
    ninethrow=@"Yes";
    [firstbut9 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second9:(id)sender {
    ninethrow=@"Sometimes";
    
    [secondbut9 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third9:(id)sender {
    ninethrow=@"No";
    [thirdbut9 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first10:(id)sender {
    
    tenthrow=@"Yes";
    [firstbut10 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second10:(id)sender {
    tenthrow=@"Sometimes";
    
    [secondbut10 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third10:(id)sender {
    tenthrow=@"No";
    [thirdbut10 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)headact:(id)sender
{
    if (headacheseg.selectedSegmentIndex==0) {
        headresult=@"per month";
    }
    if (headacheseg.selectedSegmentIndex==1) {
        headresult=@"more than but less than 4 per month";
    }
    if (headacheseg.selectedSegmentIndex==2) {
        headresult=@"more than one per week";
    }
}
- (IBAction)painact:(id)sender
{
    if (painseg.selectedSegmentIndex==0) {
        painresult=@"Mild";
    }
    else if (painseg.selectedSegmentIndex==1) {
        painresult=@"Moderate";
    }
    else if (painseg.selectedSegmentIndex==2) {
        painresult=@"Severe";
    }
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
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

-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
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

- (IBAction)next:(id)sender
{
    a=1;
    temp1 = [date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 = [scoretotal.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 = [f48.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 = [name.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 = [age.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    [recorddict setValue:firstrow forKey:@"one"];
    [recorddict setValue:secondrow forKey:@"two"];
    [recorddict setValue:thirdrow forKey:@"three"];
    [recorddict setValue:fourthrow forKey:@"four"];
    [recorddict setValue:fifthrow forKey:@"five"];
    [recorddict setValue:sixthrow forKey:@"six"];
    [recorddict setValue:seventhrow forKey:@"seven"];
    [recorddict setValue:eighthrow forKey:@"eight"];
    [recorddict setValue:ninethrow forKey:@"nine"];
    [recorddict setValue:tenthrow forKey:@"ten"];
    [recorddict setValue:painresult forKey:@"painresult"];
    [recorddict setValue:headresult forKey:@"headresult"];
    if( ([temp1 length]!=0)&&
       ([temp2 length]!=0)&&
       ([temp3 length]!=0)&&
       ([temp4 length]!=0)&&
       ([temp5 length]!=0))
    {
        if ([self validateDate:temp1]==1) {
            if ([self validateNames:temp2]==1)
            {
                if ([self validateNames:temp3]==1)
                {
                    if ([self validatePNames:temp4]==1)
                    {
                        if ([self validateNames:temp5]==1)
                        {
                            [recorddict setValue:date.text forKey:@"date"];
                            [recorddict setValue:scoretotal.text forKey:@"scoretotal"];
                            [recorddict setValue:f48.text forKey:@"48F"];
                            [recorddict setValue:name.text forKey:@"name"];
                            [recorddict setValue:age.text forKey:@"age"];
                        }
                        else
                        {
                            a=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid age." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                        }
                        
                    }
                    else
                    {
                        a=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    }
                    
                }
                else
                {
                    a=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid [48]F." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
                
            }
            else
            {
                a=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid scores." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
        }
        else
        {
            a=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid date." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
    }
    else{
        a=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter all the required fields." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    if (a==1)
    {
        [self performSegueWithIdentifier:@"shoulderpain2" sender:self];
    }
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"shoulderpain2"])
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
    
    if ([segue.identifier isEqualToString:@"shoulderpain2"])
    {
        
        shoulderpainscore2ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        NSLog(@"recorddict in shoulder seconds %@",recorddict);
    }
    
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    name.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    firstrow=@"null";
    secondrow=@"null";
    thirdrow=@"null";
    fourthrow=@"null";
    fifthrow=@"null";
    sixthrow=@"null";
    seventhrow=@"null";
    eighthrow=@"null";
    ninethrow=@"null";
    tenthrow=@"null";
    painresult=@"null";
    headresult=@"null";
    
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]])
        {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    [self displaydata];
	// Do any additional setup after loading the view.
}
-(void)dismissKeyboard
{
    [date resignFirstResponder];
    [scoretotal resignFirstResponder];
    [f48 resignFirstResponder];
    [name resignFirstResponder];
    [age resignFirstResponder];
    
}
-(void)displaydata
{
    if ([resultset count]>0)
    {
        date.text=[resultset objectForKey:@"date1"];
        name.text=[resultset objectForKey:@"name123"];
        f48.text=[resultset objectForKey:@"f"];
        scoretotal.text=[resultset objectForKey:@"total"];
        age.text=[resultset objectForKey:@"age"];
        if([[resultset objectForKey:@"headache"]isEqualToString: @"per month"])
        {
            headresult=@"per month";
            
            [headacheseg setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"headache"]isEqualToString:@"more than but less than 4 per month"])
        {
            headresult=@"more than but less than 4 per month";
            
            [headacheseg setSelectedSegmentIndex:1];
        }
        
        else if([[resultset objectForKey:@"headache"]isEqualToString:@"more than one per week"])
        {
            headresult=@"more than one per week";
            [headacheseg setSelectedSegmentIndex:2];
        }
        
        if([[resultset objectForKey:@"myheadache"]isEqualToString: @"Mild"])
        {
            painresult=@"Mild";
            
            
            [painseg setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"myheadache"]isEqualToString:@"Moderate"])
        {
            painresult=@"Moderate";
            
            
            [painseg setSelectedSegmentIndex:1];
        }
        
        else if([[resultset objectForKey:@"myheadache"]isEqualToString:@"Severe"])
        {
            painresult=@"Severe";
            [painseg setSelectedSegmentIndex:2];
        }
        if([[resultset objectForKey:@"handihapped"]isEqualToString: @"Yes"])
        {
            [self first:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"handihapped"]isEqualToString:   @"Sometimes"])
        {
            
            [self second :nil];
        }
        else if([[resultset objectForKey:@"handihapped"]isEqualToString:@"No"])
        {
            [self third:nil];
        }
        if([[resultset objectForKey:@"restricted"]isEqualToString: @"Yes"])
        {
            [self first2:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"restricted"]isEqualToString:   @"Sometimes"])
        {
            
            [self second2 :nil];
        }
        else if([[resultset objectForKey:@"restricted"]isEqualToString:@"No"])
        {
            [self third2:nil];
        }
        if([[resultset objectForKey:@"understand"]isEqualToString: @"Yes"])
        {
            [self first3:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"understand"]isEqualToString:   @"Sometimes"])
        {
            
            [self second3 :nil];
        }
        else if([[resultset objectForKey:@"understand"]isEqualToString:@"No"])
        {
            [self third3:nil];
        }
        if([[resultset objectForKey:@"recreational"]isEqualToString: @"Yes"])
        {
            [self first4:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"recreational"]isEqualToString:   @"Sometimes"])
        {
            
            [self second4 :nil];
        }
        else if([[resultset objectForKey:@"recreational"]isEqualToString:@"No"])
        {
            [self third4:nil];
        }
        if([[resultset objectForKey:@"angry"]isEqualToString: @"Yes"])
        {
            [self first5:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"angry"]isEqualToString:   @"Sometimes"])
        {
            
            [self second5 :nil];
        }
        else if([[resultset objectForKey:@"angry"]isEqualToString:@"No"])
        {
            [self third5:nil];
        }
        if([[resultset objectForKey:@"control"]isEqualToString: @"Yes"])
        {
            [self first6:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"control"]isEqualToString:   @"Sometimes"])
        {
            
            [self second6 :nil];
        }
        else if([[resultset objectForKey:@"control"]isEqualToString:@"No"])
        {
            [self third6:nil];
        }
        if([[resultset objectForKey:@"socialize"]isEqualToString: @"Yes"])
        {
            [self first7:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"socialize"]isEqualToString:   @"Sometimes"])
        {
            
            [self second7 :nil];
        }
        else if([[resultset objectForKey:@"socialize"]isEqualToString:@"No"])
        {
            [self third7:nil];
        }
        if([[resultset objectForKey:@"family"]isEqualToString: @"Yes"])
        {
            [self first8:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"family"]isEqualToString:   @"Sometimes"])
        {
            
            [self second8 :nil];
        }
        else if([[resultset objectForKey:@"family"]isEqualToString:@"No"])
        {
            [self third8:nil];
        }
        if([[resultset objectForKey:@"insane"]isEqualToString: @"Yes"])
        {
            [self first9:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"insane"]isEqualToString:   @"Sometimes"])
        {
            
            [self second9 :nil];
        }
        else if([[resultset objectForKey:@"insane"]isEqualToString:@"No"])
        {
            [self third9:nil];
        }
        if([[resultset objectForKey:@"outlook"]isEqualToString: @"Yes"])
        {
            [self first10:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"outlook"]isEqualToString:   @"Sometimes"])
        {
            
            [self second10 :nil];
        }
        else if([[resultset objectForKey:@"outlook"]isEqualToString:@"No"])
        {
            [self third10:nil];
        }
        
        
        
        
    }
    else
    {
        //no dats for user
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)reset:(id)sender
{
    date.text=@"";
    scoretotal.text=@"";
    f48.text=@"";
    name.text=@"";
    age.text=@"";
    firstrow=@"null";
    secondrow=@"null";
    thirdrow=@"null";
    fourthrow=@"null";
    fifthrow=@"null";
    sixthrow=@"null";
    seventhrow=@"null";
    eighthrow=@"null";
    ninethrow=@"null";
    tenthrow=@"null";
    painresult=@"null";
    headresult=@"null";
    [headacheseg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [painseg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [firstbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondf setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [seconds setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondt setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [firstbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [firstbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [firstbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [firstbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [firstbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [firstbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [firstbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [firstbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}

-(IBAction)cancel:(id)sender
{
    // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
    for (id controller in [self.navigationController viewControllers])
    {
        if ([controller isKindOfClass:[QuadrupleVisualAnalogueScale class]])
        {
            [self.navigationController popToViewController:controller animated:YES];
            break;
        }
    }
    
}
- (void)dealloc {
    
    [super dealloc];
}
@end

