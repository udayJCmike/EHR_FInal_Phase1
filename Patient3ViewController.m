//
//  Patient3ViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/8/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "Patient3ViewController.h"
#import "WorkaccidentViewController.h"
#import "AutoAccidentViewController1.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "staffautocheckViewController.h"
#import "SampleViewController.h"

@interface Patient3ViewController ()


@end

@implementation Patient3ViewController
@synthesize recorddict;
@synthesize reslabel1;
@synthesize reslabel2;
@synthesize switch1;
@synthesize switch2;
@synthesize otherdis;
@synthesize staff;
@synthesize cancel1;
@synthesize cancel2;
@synthesize reset1;
@synthesize reset2;
@synthesize submit;
@synthesize deleteform;
@synthesize update;
@synthesize resultset;
int tagnumber;

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

-(IBAction)clear:(id)sender
{
    for (UIView *subview in [self.view subviews])
    {
        if([subview isKindOfClass:[UITextField class]])
        {
            [(UITextField*)subview setText:@""];
        }
        if([subview isKindOfClass:[UIButton class]])
        {
            UIButton *btn =(UIButton*)subview;
            if ((btn.tag == 12) || (btn.tag == 14) || (btn.tag == 66))
            {
                
            }
            else
            {
                [(UIButton*)subview setSelected:NO];
                [(UIButton*)subview setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
        }
    }
    
    buttonx3.selected =YES;
    [buttonx3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    [recorddict setObject:@"Exercise Regularly" forKey:@"b38"];
    otherdis.hidden=YES;
    hazlist.text=@"";
    [switch1 setOn:YES animated:YES];
    [switch2 setOn:YES animated:YES];
    medhad.text=@"";
    hazlist.hidden=NO;
    plslisthide.hidden=NO;
    
    
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
    NSString *countryFormat1 =@"[A-Z0-9a-z._/-]+";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateSign:(NSString *)country1
{
    NSString *countryFormat1 =@"[A-Z0-9a-z._/-]+";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
- (void)viewDidLoad
{
    otherdis.hidden=YES;
    tagnumber = 0;
    buttonx3.selected =YES;
    [buttonx3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    [recorddict setObject:@"Exercise Regularly" forKey:@"b38"];
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    temp=[[NSMutableDictionary alloc]init];
    temp=recorddict;
    reslabel1.text=@"Yes";
    reslabel2.text=@"Yes";
    
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
    
    
    [self Getdata];
	// Do any additional setup after loading the view.
}

-(void)Getdata
{
    
    if ([resultset count]>0)
    {
        
        update.hidden=NO;
        reset2.hidden=NO;
        cancel2.hidden=NO;
        deleteform.hidden=NO;
        submit.hidden=YES;
        reset1.hidden=YES;
        cancel1.hidden=YES;
        
        
        
        @try {
            if ([staff count]>0)
            {
                
                
                if ([[staff valueForKey:@"buttondisplay"]isEqualToString:@"0"]) {
                    update.hidden=YES;
                    reset2.hidden=NO;
                    cancel2.hidden=NO;
                    deleteform.hidden=YES;
                    submit.hidden=YES;
                    reset1.hidden=YES;
                    cancel1.hidden=YES;
                }
                else  if ([[resultset valueForKey:@"buttondisplay"]isEqualToString:@"1"]) {
                    update.hidden=NO;
                    reset2.hidden=NO;
                    cancel2.hidden=NO;
                    deleteform.hidden=NO;
                    submit.hidden=YES;
                    reset1.hidden=YES;
                    cancel1.hidden=YES;
                }
            }
            
        }
        
        @catch (NSException *exception) {
            
        }
        
        

        
        otherdis.text=[resultset objectForKey:@"Ifother"];
        surg.text=[resultset objectForKey:@"Illness"];
        date.text=[resultset objectForKey:@"Dates"];
        medhad.text=[resultset objectForKey:@"Medications"];
        hazlist.text=[resultset objectForKey:@"Hazardousyes"];
        patsign.text=[resultset objectForKey:@"Patient"];
        dr.text=[resultset objectForKey:@"Dr"];
        if ([[resultset objectForKey:@"Hazardous"] isEqualToString:@"Yes"]) {
            reslabel1.text = @"Yes";
            [switch1 setOn:YES animated:YES];
            hazlist.hidden=NO;
            plslisthide.hidden=NO;
            
        }
        else if ([[resultset objectForKey:@"Hazardous"] isEqualToString:@"No"])
        {
            reslabel1.text = @"No";
            [switch1 setOn:NO animated:YES];
            hazlist.hidden=YES;
            plslisthide.hidden=YES;
            
        }
        if ([[resultset objectForKey:@"Female"] isEqualToString:@"Yes"]) {
            reslabel2.text = @"Yes";
            [switch2 setOn:YES animated:YES];
            
        }
        else if ([[resultset objectForKey:@"Female"] isEqualToString:@"No"])
        {
            reslabel2.text = @"No";
            [switch2 setOn:NO animated:YES];
        }
        if([[resultset objectForKey:@"Anemia"] isEqualToString:@"Anemia"])
        {
            button1.selected =YES;
            [button1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Anemia" forKey:@"b1"];
            
        }
        else
        {
            button1.selected =NO;
            [button1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b1"];
        }
        if([[resultset objectForKey:@"Muscular"] isEqualToString:@"Muscular Dystrophy"])
        {
            button2.selected =YES;
            [button2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Muscular Dystrophy" forKey:@"b2"];
            
            
        }
        else
        {
            button2.selected =NO;
            [button2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b2"];
        }
        if([[resultset objectForKey:@"Rheumatic"] isEqualToString:@"Rheumatic Fever"])
        {
            button3.selected =YES;
            [button3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Rheumatic Fever" forKey:@"b3"];
            
        }
        else
        {
            button3.selected =NO;
            [button3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b3"];
        }
        if([[resultset objectForKey:@"Allergies"] isEqualToString:@"Allergies"])
        {
            button4.selected =YES;
            [button4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Allergies" forKey:@"b4"];
            
        }
        else
        {
            button4.selected =NO;
            [button4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b4"];
        }
        if([[resultset objectForKey:@"Polio1"] isEqualToString:@"Polio"])
        {
            button5.selected =YES;
            [button5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Polio" forKey:@"b5"];
            
        }
        else
        {
            button5.selected =NO;
            [button5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b5"];
        }
        if([[resultset objectForKey:@"Multiple"] isEqualToString:@"Multiple Sclerosis"])
        {
            button6.selected =YES;
            [button6 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Multiple Sclerosis" forKey:@"b6"];
        }
        else
        {
            button6.selected =NO;
            [button6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b6"];
        }
        if([[resultset objectForKey:@"Scarlet"] isEqualToString:@"Scarlet Fever"])
        {
            button7.selected =YES;
            [button7 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Scarlet Fever" forKey:@"b7"];
            
        }
        else
        {
            button7.selected =NO;
            [button7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b7"];
        }
        if([[resultset objectForKey:@"HIV"] isEqualToString:@"HIV"])
        {
            button8.selected =YES;
            [button8 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"HIV" forKey:@"b8"];
        }
        else
        {
            button8.selected =NO;
            [button8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b8"];
        }
        if([[resultset objectForKey:@"Asthma"] isEqualToString:@"Asthma"])
        {
            button9.selected =YES;
            [button9 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Asthma" forKey:@"b9"];
        }
        else
        {
            button9.selected =NO;
            [button9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b9"];
        }
        if([[resultset objectForKey:@"German"] isEqualToString:@"German Measles"])
        {
            button10.selected =YES;
            [button10 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"German Measles" forKey:@"b10"];
        }
        else
        {
            button10.selected =NO;
            [button10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b10"];
        }
        if([[resultset objectForKey:@"Nervousness"] isEqualToString:@"Nervousness"])
        {
            button11.selected =YES;
            [button11 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Nervousness" forKey:@"b11"];
            
        }
        else
        {
            button11.selected =NO;
            [button11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b11"];
        }
        if([[resultset objectForKey:@"Numbness"] isEqualToString:@"Numbness"])
        {
            button12.selected =YES;
            [button12 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Numbness" forKey:@"b12"];
        }
        else
        {
            button12.selected =NO;
            [button12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b12"];
        }
        if([[resultset objectForKey:@"Epilepsy"] isEqualToString:@"Epilepsy"])
        {
            button13.selected =YES;
            [button13 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Epilepsy" forKey:@"b13"];
        }
        else
        {
            button13.selected =NO;
            [button13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b13"];
        }
        if([[resultset objectForKey:@"Concussion"] isEqualToString:@"Concussion"])
        {
            button14.selected =YES;
            [button14 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Concussion" forKey:@"b14"];
        }
        else
        {
            button14.selected =NO;
            [button14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b14"];
        }
        if([[resultset objectForKey:@"Dizziness"] isEqualToString:@"Dizziness"])
        {
            button15.selected =YES;
            [button15 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Dizziness" forKey:@"b15"];
            
        }
        else
        {
            button15.selected =NO;
            [button15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b15"];
        }
        if([[resultset objectForKey:@"Neuritis"] isEqualToString:@"Neuritis"])
        {
            button16.selected =YES;
            [button16 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Neuritis" forKey:@"b16"];
            
        }
        else
        {
            button16.selected =NO;
            [button16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b16"];
        }
        if([[resultset objectForKey:@"Diabetes"] isEqualToString:@"Diabetes"])
        {
            button17.selected =YES;
            [button17 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Diabetes" forKey:@"b17"];
            
        }
        else
        {
            button17.selected =NO;
            [button17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b17"];
        }
        if([[resultset objectForKey:@"Arthritis"] isEqualToString:@"Arthritis"])
        {
            button18.selected =YES;
            [button18 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Arthritis" forKey:@"b18"];
        }
        else
        {
            button18.selected =NO;
            [button18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b18"];
        }
        if([[resultset objectForKey:@"Venereal"] isEqualToString:@"Venereal Disease"])
        {
            button19.selected =YES;
            [button19 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Venereal Disease" forKey:@"b19"];
            
        }
        else
        {
            button19.selected =NO;
            [button19 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b19"];
        }
        if([[resultset objectForKey:@"Backaches"] isEqualToString:@"Backaches"])
        {
            button20.selected =YES;
            [button20 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Backaches" forKey:@"b20"];
            
        }
        else
        {
            button20.selected =NO;
            [button20 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b20"];
        }
        if([[resultset objectForKey:@"Liver"] isEqualToString:@"Liver Disease"])
        {
            button21.selected =YES;
            [button21 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Liver Disease" forKey:@"b21"];
            
        }
        else
        {
            button21.selected =NO;
            [button21 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b21"];
        }
        if([[resultset objectForKey:@"Kidney"] isEqualToString:@"Kidney Disease"])
        {
            button22.selected =YES;
            [button22 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Kidney Disease" forKey:@"b22"];
            
        }
        else
        {
            button22.selected =NO;
            [button22 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b22"];
        }
        if([[resultset objectForKey:@"Thyroid"] isEqualToString:@"Thyroid Disease"])
        {
            button23.selected =YES;
            [button23 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Thyroid Disease" forKey:@"b23"];
            
        }
        else
        {
            button23.selected =NO;
            [button23 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b23"];
        }
        if([[resultset objectForKey:@"Alcoholism"] isEqualToString:@"Alcoholism"])
        {
            button24.selected =YES;
            [button24 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Alcoholism" forKey:@"b24"];
            
        }
        else
        {
            button24.selected =NO;
            [button24 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b24"];
        }
        if([[resultset objectForKey:@"Mental"] isEqualToString:@"Mental Illness"])
        {
            button25.selected =YES;
            [button25 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Mental Illness" forKey:@"b25"];
            
        }
        else
        {
            button25.selected =NO;
            [button25 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b25"];
        }
        if([[resultset objectForKey:@"High"] isEqualToString:@"High Blood Pressure"])
        {
            button26.selected =YES;
            [button26 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"High Blood Pressure" forKey:@"b26"];
        }
        else
        {
            button26.selected =NO;
            [button26 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b26"];
        }
        if([[resultset objectForKey:@"Digestive"] isEqualToString:@"Digestive Disorders"])
        {
            button27.selected =YES;
            [button27 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Digestive Disorders" forKey:@"b27"];
            
        }
        else
        {
            button27.selected =NO;
            [button27 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b27"];
        }
        
        if([[resultset objectForKey:@"Heart"] isEqualToString:@"Heart trouble"])
        {
            button28.selected =YES;
            [button28 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Heart trouble" forKey:@"b28"];
        }
        else
        {
            button28.selected =NO;
            [button28 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b28"];
        }
        if([[resultset objectForKey:@"Cancer"] isEqualToString:@"Cancer"])
        {
            button29.selected =YES;
            [button29 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Cancer" forKey:@"b29"];
        }
        else
        {
            button29.selected =NO;
            [button29 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b29"];
        }
        
        
        
        if([[resultset objectForKey:@"Sinus"] isEqualToString:@"Sinus Trouble"])
        {
            button30.selected =YES;
            [button30 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Sinus Trouble" forKey:@"b30"];
            
        }
        else
        {
            button30.selected=NO;
            [recorddict setObject:@"null" forKey:@"b30"];
        }
        if([[resultset objectForKey:@"Convulsions"] isEqualToString:@"Convulsions"])
        {
            button31.selected =YES;
            [button31 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Convulsions" forKey:@"b31"];
            
        }
        else
        {
            button31.selected =NO;
            [button31 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b31"];
        }
        if([[resultset objectForKey:@"Rheumatism"] isEqualToString:@"Rheumatism"])
        {
            button32.selected =YES;
            [button32 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Rheumatism" forKey:@"b32"];
            
        }
        else
        {
            button32.selected =NO;
            [button32 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b32"];
        }
        if([[resultset objectForKey:@"Tuberculosis"] isEqualToString:@"Tuberculosis"])
        {
            button33.selected =YES;
            [button33 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Tuberculosis" forKey:@"b33"];
        }
        else
        {
            button33.selected =NO;
            [button33 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b33"];
        }
        if([[resultset objectForKey:@"Hepatitis"] isEqualToString:@"Hepatitis"])
        {
            button34.selected =YES;
            [button34 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Hepatitis" forKey:@"b34"];
            
        }
        else
        {
            button34.selected =NO;
            [button34 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b34"];
        }
        if([[resultset objectForKey:@"Other"] isEqualToString:@"Other"])
        {
            button35.selected =YES;
            [button35 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            otherdis.hidden =NO;
            [recorddict setObject:@"Other" forKey:@"b35"];
            [recorddict setObject:otherdis.text forKey:@"bother"];
            
            
        }
        else
        {
            button35.selected =NO;
            [button35 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            otherdis.hidden =YES;
            
            [recorddict setObject:@"null" forKey:@"b35"];
            [recorddict setObject:@"" forKey:@"bother"];
        }
        if([[resultset objectForKey:@"Drink"] isEqualToString:@"Drink Regularly"])
        {
            buttonx1.selected =YES;
            [buttonx1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Drink Regularly" forKey:@"b36"];
            
        }
        else
        {
            buttonx1.selected =NO;
            [buttonx1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b36"];
        }
        if([[resultset objectForKey:@"Diet"] isEqualToString:@"Eat a Poor Diet"])
        {
            buttonx2.selected =YES;
            [buttonx2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Eat a Poor Diet" forKey:@"b37"];
            
        }
        else
        {
            buttonx2.selected =NO;
            [buttonx2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b37"];
        }
        if([[resultset objectForKey:@"Exercise"] isEqualToString:@"Exercise Regularly"])
        {
            buttonx3.selected =YES;
            [buttonx3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Exercise Regularly" forKey:@"b38"];
            
        }
        else
        {
            buttonx3.selected =NO;
            [buttonx3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b38"];
        }
        if([[resultset objectForKey:@"Smoke"] isEqualToString:@"Smoke"])
        {
            buttonx4.selected =YES;
            [buttonx4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Smoke" forKey:@"b39"];
            
        }
        else
        {
            buttonx4.selected =NO;
            [buttonx4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b39"];
        }
        if([[resultset objectForKey:@"Drugs"] isEqualToString:@"Take Recreational Drugs"])
        {
            buttonx5.selected =YES;
            [buttonx5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"Take Recreational Drugs" forKey:@"b40"];
            
        }
        else
        {
            buttonx5.selected =NO;
            [buttonx5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setObject:@"null" forKey:@"b40"];
        }
        
        
        
    }
    else
    {
        update.hidden=YES;
        reset2.hidden=YES;
        cancel2.hidden=YES;
        deleteform.hidden=YES;
        submit.hidden=NO;
        reset1.hidden=NO;
        cancel1.hidden=NO;
    }
    
    
}

-(void)dismissKeyboard
{
    [date resignFirstResponder];
    [otherdis resignFirstResponder];
    
    [surg resignFirstResponder];
    [medhad resignFirstResponder];
    [hazlist resignFirstResponder];
    [patsign resignFirstResponder];
    [dr resignFirstResponder];
}

- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (switch1.on){
        reslabel1.text = @"Yes";
        hazlist.hidden=NO;
        plslisthide.hidden=NO;
        
        
        
        
    }
	else{
        
        reslabel1.text = @"No";
        hazlist.hidden=YES;
        plslisthide.hidden=YES;
        
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

- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (switch2.on) reslabel2.text = @"Yes";
	else
    {
        reslabel2.text = @"No";
        
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(button35.selected)
    {
        otherdis.hidden=NO;
    }
    else{
        otherdis.hidden=YES;
        otherdis.text=@" ";
    }
    
}
-(IBAction)submit:(id)sender{
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:temp];
    
    c=0;
    
    
    
    if(button1.selected)
    {
        
        [recorddict setObject:@"Anemia" forKey:@"b1"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b1"];
    if(button2.selected)
    {
        [recorddict setObject:@"Muscular Dystrophy" forKey:@"b2"];
        
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b2"];
    if(button3.selected)
    {
        
        [recorddict setObject:@"Rheumatic Fever" forKey:@"b3"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b3"];
    if(button4.selected)
    {
        
        [recorddict setObject:@"Allergies" forKey:@"b4"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b4"];
    if(button5.selected)
    {
        
        [recorddict setObject:@"Polio" forKey:@"b5"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b5"];
    if(button6.selected)
    {
        [recorddict setObject:@"Multiple Sclerosis" forKey:@"b6"];
    }
    else
        [recorddict setObject:@"null" forKey:@"b6"];
    if(button7.selected)
    {
        [recorddict setObject:@"Scarlet Fever" forKey:@"b7"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b7"];
    if(button8.selected)
    {
        [recorddict setObject:@"HIV" forKey:@"b8"];
    }
    else
        [recorddict setObject:@"null" forKey:@"b8"];
    if(button9.selected)
    {
        [recorddict setObject:@"Asthma" forKey:@"b9"];
    }
    else
        [recorddict setObject:@"null" forKey:@"b9"];
    if(button10.selected)
    {
        [recorddict setObject:@"German Measles" forKey:@"b10"];
    }
    else
        [recorddict setObject:@"null" forKey:@"b10"];
    if(button11.selected)
    {
        [recorddict setObject:@"Nervousness" forKey:@"b11"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b11"];
    if(button12.selected)
    {
        [recorddict setObject:@"Numbness" forKey:@"b12"];
    }
    else
        [recorddict setObject:@"null" forKey:@"b12"];
    if(button13.selected)
    {
        [recorddict setObject:@"Epilepsy" forKey:@"b13"];
    }
    else
        [recorddict setObject:@"null" forKey:@"b13"];
    if(button14.selected)
    {
        [recorddict setObject:@"Concussion" forKey:@"b14"];
    }
    else
        [recorddict setObject:@"null" forKey:@"b14"];
    if(button15.selected)
    {
        [recorddict setObject:@"Dizziness" forKey:@"b15"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b15"];
    if(button16.selected)
    {
        [recorddict setObject:@"Neuritis" forKey:@"b16"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b16"];
    if(button17.selected)
    {
        [recorddict setObject:@"Diabetes" forKey:@"b17"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b17"];
    if(button18.selected)
    {
        [recorddict setObject:@"Arthritis" forKey:@"b18"];
    }
    else
        [recorddict setObject:@"null" forKey:@"b18"];
    if(button19.selected)
    {
        [recorddict setObject:@"Venereal Disease" forKey:@"b19"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b19"];
    if(button20.selected)
    {
        [recorddict setObject:@"Backaches" forKey:@"b20"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b20"];
    if(button21.selected)
    {
        [recorddict setObject:@"Liver Disease" forKey:@"b21"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b21"];
    if(button22.selected)
    {
        [recorddict setObject:@"Kidney Disease" forKey:@"b22"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b22"];
    if(button23.selected)
    {
        [recorddict setObject:@"Thyroid Disease" forKey:@"b23"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b23"];
    if(button24.selected)
    {
        [recorddict setObject:@"Alcoholism" forKey:@"b24"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b24"];
    if(button25.selected)
    {
        [recorddict setObject:@"Mental Illness" forKey:@"b25"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b25"];
    if(button26.selected)
    {
        [recorddict setObject:@"High Blood Pressure" forKey:@"b26"];
    }
    else
        [recorddict setObject:@"null" forKey:@"b26"];
    if(button27.selected)
    {
        [recorddict setObject:@"Digestive Disorders" forKey:@"b27"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b27"];
    
    if(button28.selected)
    {
        [recorddict setObject:@"Heart trouble" forKey:@"b28"];
    }
    else
        [recorddict setObject:@"null" forKey:@"b28"];
    if(button29.selected)
    {
        [recorddict setObject:@"Cancer" forKey:@"b29"];
    }
    else
        [recorddict setObject:@"null" forKey:@"b29"];
    if(button30.selected)
    {
        [recorddict setObject:@"Sinus Trouble" forKey:@"b30"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b30"];
    if(button31.selected)
    {
        [recorddict setObject:@"Convulsions" forKey:@"b31"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b31"];
    if(button32.selected)
    {
        [recorddict setObject:@"Rheumatism" forKey:@"b32"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b32"];
    if(button33.selected)
    {
        [recorddict setObject:@"Tuberculosis" forKey:@"b33"];
    }
    else
        [recorddict setObject:@"null" forKey:@"b33"];
    if(button34.selected)
    {
        [recorddict setObject:@"Hepatitis" forKey:@"b34"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b34"];
    if(button35.selected)
    {
        
        [recorddict setObject:@"Other" forKey:@"b35"];
        [recorddict setObject:otherdis.text forKey:@"bother"];
        
        
    }
    else
    {
        otherdis.text=@"";
        [recorddict setObject:@"null" forKey:@"b35"];
        [recorddict setObject:@"" forKey:@"bother"];
    }
    if(buttonx1.selected)
    {
        
        [recorddict setObject:@"Drink Regularly" forKey:@"b36"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b36"];
    if(buttonx2.selected)
    {
        
        [recorddict setObject:@"Eat a Poor Diet" forKey:@"b37"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b37"];
    if(buttonx3.selected)
    {
        
        [recorddict setObject:@"Exercise Regularly" forKey:@"b38"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b38"];
    if(buttonx4.selected)
    {
        
        [recorddict setObject:@"Smoke" forKey:@"b39"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b39"];
    if(buttonx5.selected)
    {
        
        [recorddict setObject:@"Take Recreational Drugs" forKey:@"b40"];
        
    }
    else
        [recorddict setObject:@"null" forKey:@"b40"];
    
    
    
    
    if([reslabel1.text isEqual:@"Yes"] )
    {
        
    }
    else
    {
        hazlist.text=@"";
    }
    
    temp1 =[surg.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[medhad.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[temp2 stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    temp2 =[temp2 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    temp2 =[temp2 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    temp3 =[patsign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[dr.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    if(([surg.text length]!=0)&&([medhad.text length]!=0)&&([date.text length]!=0)&&([patsign.text length]!=0)&&([dr.text length]!=0))
    {
        c=1;
        if((([otherdis.text length]>0)&&([self validateNames:otherdis.text]==1))||([otherdis.text length]==0))
        {
            if([self validateNames:temp1]==1)
            {
                if([self validateDate:[date text]]==1)
                {
                    if([self validateNames:temp2]==1)
                    {
                        if((([hazlist.text length]>0)&&([self validateNames:hazlist.text]==1))||([hazlist.text length]==0))
                        {
                            if([self validateNames:temp3]==1)
                            {
                                if([self validateNames:temp4]==1)
                                {
                                    [recorddict setValue:patsign.text forKey:@"patsign"];
                                    
                                    [recorddict setValue:dr.text forKey:@"doctorname"];
                                    [recorddict setValue:surg.text forKey:@"majorillness"];
                                    [recorddict setValue:date.text forKey:@"majorillnessdate"];
                                    [recorddict setValue:medhad.text forKey:@"medicines"];
                                    [recorddict setValue:reslabel1.text forKey:@"hazardoussubstances"];
                                    [recorddict setValue:reslabel2.text forKey:@"femalepregnant"];
                                    [recorddict setValue:hazlist.text forKey:@"hazardouslist"];
                                    [recorddict setValue:otherdis.text forKey:@"Otherdisease"];
                                    
                                }
                                else
                                {
                                    c=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid doctor name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                }
                                
                            }
                            else
                            {
                                c=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid patient signature." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                            }
                        }
                        else
                        {
                            c=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid hazardous substances." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                        }
                    }
                    
                    else{
                        c=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid medicines." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    }
                }
                else
                {
                    c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid date." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
            }
            else{
                c=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid surgeries or major illnesses." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
        }
        else{
            c=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please  enter valid other disease name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
        
    }
    else{
        c=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Required fields should not be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    if(c==1)
    {
        
        NSLog(@"submit full recorddict values %@",recorddict);
        
        UIButton *buton=(UIButton*)sender;
        if(buton.tag==12)
        {
            tagnumber=12;
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
        else  if(buton.tag==14)
        {
            tagnumber=14;
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            //                  [self insertdata];
            if ([[self submitvalues]isEqualToString:@"success"]) {
                [self updatedata];
                
            }
            
            
        }
        
        
    }
    
}

-(void)decisionfornavigate
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
        if (tagnumber==12) {
            
            
            if ([[recorddict objectForKey:@"Typeofaccident"]isEqualToString:@"Auto"])
            {
                [self performSegueWithIdentifier:@"to_autoacc" sender:self];
            }
            else if ([[recorddict objectForKey:@"Typeofaccident"]isEqualToString:@"Work"])
            {
                [self performSegueWithIdentifier:@"to_workacc" sender:self];
            }
            else
            {
                [self performSegueWithIdentifier:@"to_welcome" sender:self];
            }
        }
        else
        {
            NSLog(@"Welcome Page");
            [self performSegueWithIdentifier:@"to_welcome" sender:self];
        }
    }
    
}
-(void)updatedata
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1update:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"patient_details Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form updation successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                [self decisionfornavigate];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form updation failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                [self decisionfornavigate];
            }
        }
    }
}

- (IBAction)deleteaction:(id)sender
{
    HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
    HUD.mode=MBProgressHUDModeIndeterminate;
    HUD.delegate = self;
    HUD.labelText = @"Deleting";
    [HUD show:YES];
    //        [self updatedata];
    if ([[self submitvalues]isEqualToString:@"success"])
    {
        NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
        NSString *response=[self HttpPostEntityFirst1delete:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"patient_details Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form deletion successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                    [self decisionfornavigate];
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form deletion failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    [self decisionfornavigate];
                }
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"patient_details Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form submission successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                [self decisionfornavigate];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form submission failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                [self decisionfornavigate];
            }
        }
    }
    
}


-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    NSArray *symptoms=[recorddict objectForKey:@"symptomdatas"];
    int no=[symptoms count];
    NSString *res=[NSString stringWithFormat:@"no=%d",no];
    
    for (int i=0;i<no;i++)
    {
        NSString *tempstr=[NSString stringWithFormat:@"symptom%d",i];
        NSString *p1=[symptoms objectAtIndex:i];
        NSString *result=[NSString stringWithFormat:@"%@=%@",tempstr,p1];
        res=[NSString stringWithFormat:@"%@&%@",res,result];
    }
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"PatientInfo.php?service=patient_detailsinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&Name=%@&Date=%@&StreetAddress=%@&City=%@&State=%@&ZipCode=%@&Homephone=%@&Emailid=%@&MobileNumber=%@&DateOfBirth=%@&SocialSecurityNumber=%@&Gender=%@&MaritalStatus=%@&Areyou=%@&Student=%@&EmployerName=%@&Occupation=%@&EmployerAddress=%@&Workphone=%@&zip=%@&EmployerCity=%@&Estate=%@&Ezip=%@&SpousesName=%@&SpousesEmp=%@&Spousesph=%@&Name_friend=%@&Phone_friend=%@&Chiropratic_care=%@&Symptom_Accident=%@&Type_Of_Accident=%@&accident=%@&Date_Of_Accident=%@&Accident_Reported=%@&when1=%@&where1=%@&Attorney_accident=%@&retain=%@&record=%@&phyname=%@&phyphone=%@&car11=%@&xray=%@&treat=%@&NameOfAttorney=%@&Phone_Number=%@&Fault_accident=%@&claim_open=%@&Insurance=%@&Insurance_phone=%@&Name_auto=%@&Phone_auto=%@&Policy=%@&Name_health=%@&Health_phone=%@&Prev_accident=%@&Prev_When=%@&Anemia=%@&Muscular=%@&Rheumatic=%@&Allergies=%@&Cancer=%@&Polio1=%@&Multiple=%@&Scarlet=%@&HIV=%@&Sinus=%@&Asthma=%@&German=%@&Nervousness=%@&Numbness=%@&Convulsions=%@&Epilepsy=%@&Concussion=%@&Dizziness=%@&Neuritis=%@&Rheumatism=%@&Diabetes=%@&Arthritis=%@&Venereal=%@&Backaches=%@&Tuberculosis=%@&Liver=%@&Kidney=%@&Thyroid=%@&Alcoholism=%@&Hepatitis=%@&Mental=%@&High=%@&Digestive=%@&Heart=%@&Other=%@&Ifother=%@&Illness=%@&Dates=%@&Medications=%@&Drink=%@&Smoke=%@&Drugs=%@&Diet=%@&Exercise=%@&Hazardous=%@&Hazardousyes=%@&Female=%@&Dr=%@&Patient=%@",firstEntity,value1,[recorddict objectForKey:@"name"],[recorddict objectForKey:@"todaydate"],[recorddict objectForKey:@"streetaddress"],[recorddict objectForKey:@"city"],[recorddict objectForKey:@"state"],[recorddict objectForKey:@"zipcode"],[recorddict objectForKey:@"homephone"],[recorddict objectForKey:@"pager"],[recorddict objectForKey:@"cellphone"],[recorddict objectForKey:@"DateOfBirth"],[recorddict objectForKey:@"ssn"],[recorddict objectForKey:@"sex"],[recorddict objectForKey:@"Maritalstatus"],[recorddict objectForKey:@"areyoulabel"],[recorddict objectForKey:@"Student"],[recorddict objectForKey:@"empname"],[recorddict objectForKey:@"occupation"],[recorddict objectForKey:@"empaddress"],[recorddict objectForKey:@"workphone"],[recorddict objectForKey:@"workzipcode"],[recorddict objectForKey:@"empcity"],[recorddict objectForKey:@"workstate"],[recorddict objectForKey:@"workzipcode"],[recorddict objectForKey:@"spousename"],[recorddict objectForKey:@"spouseemp"],[recorddict objectForKey:@"spousephone"],[recorddict objectForKey:@"relativename"],[recorddict objectForKey:@"relativephone"],[recorddict objectForKey:@"hadchiropractic"],[recorddict objectForKey:@"symduetoacc"],[recorddict objectForKey:@"Typeofaccident"],[recorddict objectForKey:@"otheracc"],[recorddict objectForKey:@"Medicaltime"],[recorddict objectForKey:@"accreported"],[recorddict objectForKey:@"medwhen"],[recorddict objectForKey:@"MedicalLocation"],[recorddict objectForKey:@"retainedattorney"],[recorddict objectForKey:@"res6"],[recorddict objectForKey:@"res7"],[recorddict objectForKey:@"text1"],[recorddict objectForKey:@"text2"],[recorddict objectForKey:@"text3"],[recorddict objectForKey:@"text4"],[recorddict objectForKey:@"text5"],[recorddict objectForKey:@"nameofattorney"],[recorddict objectForKey:@"attorneyphone"],[recorddict objectForKey:@"NOP"],[recorddict objectForKey:@"res5"],[recorddict objectForKey:@"insurancecom"],[recorddict objectForKey:@"insurancepho"],[recorddict objectForKey:@"autoname"],[recorddict objectForKey:@"autoph"],[recorddict objectForKey:@"autopolicy"],[recorddict objectForKey:@"healthname"],[recorddict objectForKey:@"healthphone"],[recorddict objectForKey:@"prevautoorwork"],[recorddict objectForKey:@"prevauto"],[recorddict objectForKey:@"b1"],[recorddict objectForKey:@"b2"],[recorddict objectForKey:@"b3"],[recorddict objectForKey:@"b4"],[recorddict objectForKey:@"b29"],[recorddict objectForKey:@"b5"],[recorddict objectForKey:@"b6"],[recorddict objectForKey:@"b7"],[recorddict objectForKey:@"b8"],[recorddict objectForKey:@"b30"],[recorddict objectForKey:@"b9"],[recorddict objectForKey:@"b10"],[recorddict objectForKey:@"b11"],[recorddict objectForKey:@"b12"],[recorddict objectForKey:@"b31"],[recorddict objectForKey:@"b13"],[recorddict objectForKey:@"b14"],[recorddict objectForKey:@"b15"],[recorddict objectForKey:@"b16"],[recorddict objectForKey:@"b32"],[recorddict objectForKey:@"b17"],[recorddict objectForKey:@"b18"],[recorddict objectForKey:@"b19"],[recorddict objectForKey:@"b20"],[recorddict objectForKey:@"b33"],[recorddict objectForKey:@"b21"],[recorddict objectForKey:@"b22"],[recorddict objectForKey:@"b23"],[recorddict objectForKey:@"b24"],[recorddict objectForKey:@"b34"],[recorddict objectForKey:@"b25"],[recorddict objectForKey:@"b26"],[recorddict objectForKey:@"b27"],[recorddict objectForKey:@"b28"],[recorddict objectForKey:@"b35"],[recorddict objectForKey:@"bother"],[recorddict objectForKey:@"majorillness"],[recorddict objectForKey:@"majorillnessdate"],[recorddict objectForKey:@"medicines"],[recorddict objectForKey:@"b36"],[recorddict objectForKey:@"b39"],[recorddict objectForKey:@"b40"],[recorddict objectForKey:@"b37"],[recorddict objectForKey:@"b38"],[recorddict objectForKey:@"hazardoussubstances"],[recorddict objectForKey:@"hazardouslist"],[recorddict objectForKey:@"femalepregnant"],[recorddict objectForKey:@"doctorname"],[recorddict objectForKey:@"patsign"]];
    post=[NSString stringWithFormat:@"%@&%@&%@=%@",post,res,secondEntity,value2];
    
    NSLog(@"POST:%@",post);
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
    NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSArray *symptoms=[recorddict objectForKey:@"symptomdatas"];
    int no=[symptoms count];
    NSString *res=[NSString stringWithFormat:@"patient_id=%@&no=%d",username,no];
    for (int i=0;i<no;i++)
    {
        NSString *tempstr=[NSString stringWithFormat:@"symptom%d",i];
        NSString *p1=[symptoms objectAtIndex:i];
        NSString *result=[NSString stringWithFormat:@"%@=%@",tempstr,p1];
        res=[NSString stringWithFormat:@"%@&%@",res,result];
    }
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"PatientInfo.php?service=patient_detailsedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&Name=%@&Date=%@&StreetAddress=%@&City=%@&State=%@&ZipCode=%@&Homephone=%@&Emailid=%@&MobileNumber=%@&DateOfBirth=%@&SocialSecurityNumber=%@&Gender=%@&MaritalStatus=%@&Areyou=%@&Student=%@&EmployerName=%@&Occupation=%@&EmployerAddress=%@&Workphone=%@&zip=%@&EmployerCity=%@&Estate=%@&Ezip=%@&SpousesName=%@&SpousesEmp=%@&Spousesph=%@&Name_friend=%@&Phone_friend=%@&Chiropratic_care=%@&Symptom_Accident=%@&Type_Of_Accident=%@&accident=%@&Date_Of_Accident=%@&Accident_Reported=%@&when1=%@&where1=%@&Attorney_accident=%@&retain=%@&record=%@&phyname=%@&phyphone=%@&car11=%@&xray=%@&treat=%@&NameOfAttorney=%@&Phone_Number=%@&Fault_accident=%@&claim_open=%@&Insurance=%@&Insurance_phone=%@&Name_auto=%@&Phone_auto=%@&Policy=%@&Name_health=%@&Health_phone=%@&Prev_accident=%@&Prev_When=%@&Anemia=%@&Muscular=%@&Rheumatic=%@&Allergies=%@&Cancer=%@&Polio1=%@&Multiple=%@&Scarlet=%@&HIV=%@&Sinus=%@&Asthma=%@&German=%@&Nervousness=%@&Numbness=%@&Convulsions=%@&Epilepsy=%@&Concussion=%@&Dizziness=%@&Neuritis=%@&Rheumatism=%@&Diabetes=%@&Arthritis=%@&Venereal=%@&Backaches=%@&Tuberculosis=%@&Liver=%@&Kidney=%@&Thyroid=%@&Alcoholism=%@&Hepatitis=%@&Mental=%@&High=%@&Digestive=%@&Heart=%@&Other=%@&Ifother=%@&Illness=%@&Dates=%@&Medications=%@&Drink=%@&Smoke=%@&Drugs=%@&Diet=%@&Exercise=%@&Hazardous=%@&Hazardousyes=%@&Female=%@&Dr=%@&Patient=%@",firstEntity,value1,[recorddict objectForKey:@"name"],[recorddict objectForKey:@"todaydate"],[recorddict objectForKey:@"streetaddress"],[recorddict objectForKey:@"city"],[recorddict objectForKey:@"state"],[recorddict objectForKey:@"zipcode"],[recorddict objectForKey:@"homephone"],[recorddict objectForKey:@"pager"],[recorddict objectForKey:@"cellphone"],[recorddict objectForKey:@"DateOfBirth"],[recorddict objectForKey:@"ssn"],[recorddict objectForKey:@"sex"],[recorddict objectForKey:@"Maritalstatus"],[recorddict objectForKey:@"areyoulabel"],[recorddict objectForKey:@"Student"],[recorddict objectForKey:@"empname"],[recorddict objectForKey:@"occupation"],[recorddict objectForKey:@"empaddress"],[recorddict objectForKey:@"workphone"],[recorddict objectForKey:@"workzipcode"],[recorddict objectForKey:@"empcity"],[recorddict objectForKey:@"workstate"],[recorddict objectForKey:@"workzipcode"],[recorddict objectForKey:@"spousename"],[recorddict objectForKey:@"spouseemp"],[recorddict objectForKey:@"spousephone"],[recorddict objectForKey:@"relativename"],[recorddict objectForKey:@"relativephone"],[recorddict objectForKey:@"hadchiropractic"],[recorddict objectForKey:@"symduetoacc"],[recorddict objectForKey:@"Typeofaccident"],[recorddict objectForKey:@"otheracc"],[recorddict objectForKey:@"Medicaltime"],[recorddict objectForKey:@"accreported"],[recorddict objectForKey:@"medwhen"],[recorddict objectForKey:@"MedicalLocation"],[recorddict objectForKey:@"retainedattorney"],[recorddict objectForKey:@"res6"],[recorddict objectForKey:@"res7"],[recorddict objectForKey:@"text1"],[recorddict objectForKey:@"text2"],[recorddict objectForKey:@"text3"],[recorddict objectForKey:@"text4"],[recorddict objectForKey:@"text5"],[recorddict objectForKey:@"nameofattorney"],[recorddict objectForKey:@"attorneyphone"],[recorddict objectForKey:@"NOP"],[recorddict objectForKey:@"res5"],[recorddict objectForKey:@"insurancecom"],[recorddict objectForKey:@"insurancepho"],[recorddict objectForKey:@"autoname"],[recorddict objectForKey:@"autoph"],[recorddict objectForKey:@"autopolicy"],[recorddict objectForKey:@"healthname"],[recorddict objectForKey:@"healthphone"],[recorddict objectForKey:@"prevautoorwork"],[recorddict objectForKey:@"prevauto"],[recorddict objectForKey:@"b1"],[recorddict objectForKey:@"b2"],[recorddict objectForKey:@"b3"],[recorddict objectForKey:@"b4"],[recorddict objectForKey:@"b29"],[recorddict objectForKey:@"b5"],[recorddict objectForKey:@"b6"],[recorddict objectForKey:@"b7"],[recorddict objectForKey:@"b8"],[recorddict objectForKey:@"b30"],[recorddict objectForKey:@"b9"],[recorddict objectForKey:@"b10"],[recorddict objectForKey:@"b11"],[recorddict objectForKey:@"b12"],[recorddict objectForKey:@"b31"],[recorddict objectForKey:@"b13"],[recorddict objectForKey:@"b14"],[recorddict objectForKey:@"b15"],[recorddict objectForKey:@"b16"],[recorddict objectForKey:@"b32"],[recorddict objectForKey:@"b17"],[recorddict objectForKey:@"b18"],[recorddict objectForKey:@"b19"],[recorddict objectForKey:@"b20"],[recorddict objectForKey:@"b33"],[recorddict objectForKey:@"b21"],[recorddict objectForKey:@"b22"],[recorddict objectForKey:@"b23"],[recorddict objectForKey:@"b24"],[recorddict objectForKey:@"b34"],[recorddict objectForKey:@"b25"],[recorddict objectForKey:@"b26"],[recorddict objectForKey:@"b27"],[recorddict objectForKey:@"b28"],[recorddict objectForKey:@"b35"],[recorddict objectForKey:@"bother"],[recorddict objectForKey:@"majorillness"],[recorddict objectForKey:@"majorillnessdate"],[recorddict objectForKey:@"medicines"],[recorddict objectForKey:@"b36"],[recorddict objectForKey:@"b39"],[recorddict objectForKey:@"b40"],[recorddict objectForKey:@"b37"],[recorddict objectForKey:@"b38"],[recorddict objectForKey:@"hazardoussubstances"],[recorddict objectForKey:@"hazardouslist"],[recorddict objectForKey:@"femalepregnant"],[recorddict objectForKey:@"doctorname"],[recorddict objectForKey:@"patsign"]];
    
    post=[NSString stringWithFormat:@"%@&%@&%@=%@",post,res,secondEntity,value2];
    
    NSLog(@"POST:%@",post);
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
    NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"PatientInfo.php?service=patient_detailsdelete";
    
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



- (void)dealloc {
    
    
    [super dealloc];
}
@end
