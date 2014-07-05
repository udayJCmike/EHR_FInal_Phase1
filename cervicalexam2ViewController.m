//
//  cervicalexam2ViewController.m
//  cervicalexam
//
//  Created by DeemsysInc on 2/21/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "cervicalexam2ViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "databaseurl.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "hamilViewController.h"
@interface cervicalexam2ViewController ()
{
    databaseurl *du;
}
@end

@implementation cervicalexam2ViewController
@synthesize resultset;
@synthesize neuro;
@synthesize patientstatussseg;
@synthesize additional;
@synthesize update;
@synthesize submit;
@synthesize reset1;
@synthesize deletefunc;
@synthesize cancel1;
@synthesize cancel3;
@synthesize reset3;
@synthesize p1;
@synthesize p2;
@synthesize p3;
@synthesize p4;
@synthesize p5;
@synthesize p6;
@synthesize p7;
@synthesize p8;
@synthesize p9;
@synthesize p10;
@synthesize p11;
@synthesize p12;
@synthesize p13;
@synthesize p14;
@synthesize p15;
@synthesize fd1;
@synthesize fd2;
@synthesize fd3;
@synthesize fd4;
@synthesize fd5;
@synthesize recorddict;

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

- (void)viewDidLoad
{
    [super viewDidLoad];
    patientstatus=@"Excellent";
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    du=[[databaseurl alloc]init];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    update.hidden=YES;
    deletefunc.hidden=YES;
    submit.hidden=NO;
    cancel1.hidden=NO;
    cancel3.hidden =YES;
    reset1.hidden=NO;
    reset3.hidden=YES;
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    
    [self.view addGestureRecognizer:tap];
    [self displaydata];
    
    
}
-(BOOL)validateNumbers1:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9-_]{1,4}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(void)displaydata
{
    if ([resultset count]>0)
    {
        
        
        
        
        
        update.hidden=NO;
        deletefunc.hidden=NO;
        submit.hidden=YES;
        cancel1.hidden=YES;
        cancel3.hidden =NO;
        reset1.hidden=YES;
        reset3.hidden=NO;
        
        s1.text=[resultset objectForKey:@"c5l"];
        s2.text=[resultset objectForKey:@"c5r"];
        s3.text=[resultset objectForKey:@"c6l"];
        s4.text=[resultset objectForKey:@"c6r"];
        s5.text=[resultset objectForKey:@"c7l"];
        s6.text=[resultset objectForKey:@"c7r"];
        s7.text=[resultset objectForKey:@"c8l"];
        s8.text=[resultset objectForKey:@"c8r"];
        s9.text=[resultset objectForKey:@"t1l"];
        s10.text=[resultset objectForKey:@"t1r"];
        m1.text=[resultset objectForKey:@"c51l"];
        m2.text=[resultset objectForKey:@"c51r"];
        m3.text=[resultset objectForKey:@"c61l"];
        m4.text=[resultset objectForKey:@"c61r"];
        m5.text=[resultset objectForKey:@"c71l"];
        m6.text=[resultset objectForKey:@"c71r"];
        m7.text=[resultset objectForKey:@"c81l"];
        m8.text=[resultset objectForKey:@"c81r"];
        m9.text=[resultset objectForKey:@"t11l"];
        m10.text=[resultset objectForKey:@"t11r"];
        r1.text=[resultset objectForKey:@"c53l"];
        r2.text=[resultset objectForKey:@"c53r"];
        r3.text=[resultset objectForKey:@"c63l"];
        r4.text=[resultset objectForKey:@"c63r"];
        r5.text=[resultset objectForKey:@"c73l"];
        r6.text=[resultset objectForKey:@"c73r"];
        d1.text=[resultset objectForKey:@"diagnosis1"];
        d2.text=[resultset objectForKey:@"diagnosis2"];
        d3.text=[resultset objectForKey:@"diagnosis3"];
        d4.text=[resultset objectForKey:@"diagnosis4"];
        d5.text=[resultset objectForKey:@"diagnosis5"];
        d6.text=[resultset objectForKey:@"diagnosis6"];
        fdother.text=[resultset objectForKey:@"break_text3"];
        planother.text=[resultset objectForKey:@"break_text4"];
        sign.text=[resultset objectForKey:@"sign"];
        plan1.text=[resultset objectForKey:@"times"];
        plan2.text=[resultset objectForKey:@"week"];
        additional.text=[resultset objectForKey:@"assessment"];
        temp2=[resultset objectForKey:@"neurologicaltest"];
        
        temp1=[resultset objectForKey:@"patientstatus"];
        if ([temp1 isEqualToString:@"Excellent"] ) {
            [patientstatussseg setSelectedSegmentIndex:0];
            patientstatus=@"Excellent";
        }
        else if ([temp1 isEqualToString:@"Good"] ) {
            [patientstatussseg setSelectedSegmentIndex:1];
            patientstatus=@"Good";
        }
        else if ([temp1 isEqualToString:@"Fair"] ) {
            [patientstatussseg setSelectedSegmentIndex:2];
            patientstatus=@"Fair";
        }
        else if ([temp1 isEqualToString:@"Poor"] ) {
            [patientstatussseg setSelectedSegmentIndex:3];
            patientstatus=@"Poor";
        }
        
        if ([temp2 isEqualToString:@"Neurological Testing Unremarkable"]) {
            neuro.selected=YES;
            [neuro setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            
            [recorddict setValue:@"Neurological Testing Unremarkable" forKey:@"neuroval"];
        }
        else
        {
            neuro.selected=NO;
            [neuro setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"neuroval"];
            
        }
        if ([[resultset objectForKey:@"sitting"] isEqualToString:@"Sitting"]) {
            fd1.selected=YES;
            [fd1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            
            [recorddict setValue:@"Sitting" forKey:@"sit"];
        }
        else
        {
            fd1.selected=NO;
            [fd1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"sit"];
            
        }
        
        if ([[resultset objectForKey:@"standing"] isEqualToString:@"Standing"]) {
            fd2.selected=YES;
            [fd2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Standing" forKey:@"stand"];
            
        }
        else
        {
            fd2.selected=NO;
            [fd2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"stand"];
            
        }
        if ([[resultset objectForKey:@"driving"] isEqualToString:@"Driving"]) {
            fd3.selected=YES;
            [fd3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Driving" forKey:@"drive"];
            
        }
        else
        {
            fd3.selected=NO;
            [fd3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"drive"];
            
        }
        if ([[resultset objectForKey:@"computeruse"] isEqualToString:@"Computer Use"]) {
            fd4.selected=YES;
            [fd4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Computer Use" forKey:@"computer"];
            
        }
        else
        {
            fd4.selected=NO;
            [fd4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"computer"];
            
        }
        if ([[resultset objectForKey:@"otherfunctional"] isEqualToString:@"Other"]) {
            fd5.selected=YES;
            [fd5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            fdother.hidden=NO;
            [recorddict setValue:@"Other" forKey:@"fdother"];
        }
        else
        {
            fd5.selected=NO;
            [fd5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            fdother.hidden=YES;
            [recorddict setValue:@"null" forKey:@"fdother"];
        }
        if ([[resultset objectForKey:@"spinal"] isEqualToString:@"Spinal Decompression"]) {
            p1.selected=YES;
            [p1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Spinal Decompression" forKey:@"spinal"];
            
        }
        else
        {
            p1.selected=NO;
            [p1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"spinal"];
            
        }
        
        if ([[resultset objectForKey:@"chiropractic"] isEqualToString:@"Chiropractic"]) {
            p2.selected=YES;
            [p2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Chiropractic" forKey:@"chiro"];
            
        }
        else
        {
            p2.selected=NO;
            [p2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"chiro"];
            
        }
        if ([[resultset objectForKey:@"physical"] isEqualToString:@"Physical Theraphy"]) {
            p3.selected=YES;
            [p3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Physical Theraphy" forKey:@"phy"];
            
        }
        else
        {
            p3.selected=NO;
            [p3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"phy"];
            
        }
        if ([[resultset objectForKey:@"orthotics"] isEqualToString:@"Orthotics/Bracing"]) {
            p4.selected=YES;
            [p4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Orthotics/Bracing" forKey:@"ortho"];
            
        }
        else
        {
            p4.selected=NO;
            [p4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"ortho"];
            
        }
        if ([[resultset objectForKey:@"modalities"] isEqualToString:@"Modalities"]) {
            p13.selected=YES;
            [p13 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Modalities" forKey:@"modal"];
            
        }
        else
        {
            p13.selected=NO;
            [p13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"modal"];
            
        }
        
        if ([[resultset objectForKey:@"supplementation"] isEqualToString:@"Supplementation"]) {
            p5.selected=YES;
            [p5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Supplementation" forKey:@"supple"];
            
        }
        else
        {
            p5.selected=NO;
            [p5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"supple"];
            
        }
        if ([[resultset objectForKey:@"hep"] isEqualToString:@"HEP"]) {
            p6.selected=YES;
            [p6 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"HEP" forKey:@"hep"];
            
        }
        else
        {
            p6.selected=NO;
            [p6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"hep"];
            
        }
        if ([[resultset objectForKey:@"radiographic"] isEqualToString:@"Radiographic X-Ray"]) {
            p7.selected=YES;
            [p7 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Radiographic X-Ray" forKey:@"xray"];
            
        }
        else
        {
            p7.selected=NO;
            [p7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"xray"];
            
        }
        
        
        
        if ([[resultset objectForKey:@"mri"] isEqualToString:@"MRI"]) {
            p8.selected=YES;
            [p8 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"MRI" forKey:@"mri"];
            
        }
        else
        {
            p8.selected=NO;
            [p8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"mri"];
            
        }
        if ([[resultset objectForKey:@"ctscan"] isEqualToString:@"CT Scan"]) {
            p14.selected=YES;
            [p14 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"CT Scan" forKey:@"ct"];
        }
        else
        {
            p14.selected=NO;
            [p14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"ct"];
            
        }
        if ([[resultset objectForKey:@"nerve"] isEqualToString:@"Nerve Conduction"]) {
            p9.selected=YES;
            [p9 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Nerve Conduction" forKey:@"nev"];
            
        }
        else
        {
            p9.selected=NO;
            [p9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"nev"];
            
        }
        
        if ([[resultset objectForKey:@"emg"] isEqualToString:@"EMG"]) {
            p10.selected=YES;
            [p10 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"EMG" forKey:@"emg"];
            
        }
        else
        {
            p10.selected=NO;
            [p10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"emg"];
            
        }
        if ([[resultset objectForKey:@"outside"] isEqualToString:@"Outside Referral"]) {
            p11.selected=YES;
            [p11 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Outside Referral" forKey:@"outref"];
        }
        else
        {
            p11.selected=NO;
            [p11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"outref"];
            
        }
        if ([[resultset objectForKey:@"dc"] isEqualToString:@"D/C"]) {
            p12.selected=YES;
            [p12 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"D/C" forKey:@"dc"];
            
        }
        else
        {
            p12.selected=NO;
            [p12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"dc"];
            
        }
        
        if ([[resultset objectForKey:@"otheraddress"] isEqualToString:@"Other"]) {
            p15.selected=YES;
            [p15 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Other" forKey:@"planother"];
            planother.hidden=NO;
            
        }
        else
        {
            p15.selected=NO;
            [p15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"planother"];
            planother.hidden=YES;
            
        }
        
        
        
    }
}
-(void)dismissKeyboard
{
    [plan1 resignFirstResponder];
    [plan2 resignFirstResponder];
    [fdother resignFirstResponder];
    [planother resignFirstResponder];
    [additional resignFirstResponder];
    [d1 resignFirstResponder];
    [d2 resignFirstResponder];
    [d3 resignFirstResponder];
    [d4 resignFirstResponder];
    [d5 resignFirstResponder];
    [d6 resignFirstResponder];
    [sign resignFirstResponder];
    [s1 resignFirstResponder];
    [s2 resignFirstResponder];
    [s3 resignFirstResponder];
    [s4 resignFirstResponder];
    [s5 resignFirstResponder];
    [s6 resignFirstResponder];
    [s7 resignFirstResponder];
    [s8 resignFirstResponder];
    [s9 resignFirstResponder];
    [s10 resignFirstResponder];
    [m1 resignFirstResponder];
    [m2 resignFirstResponder];
    [m3 resignFirstResponder];
    [m4 resignFirstResponder];
    [m5 resignFirstResponder];
    [m6 resignFirstResponder];
    [m7 resignFirstResponder];
    [m8 resignFirstResponder];
    [m9 resignFirstResponder];
    [m10 resignFirstResponder];
    [r1 resignFirstResponder];
    [r2 resignFirstResponder];
    [r3 resignFirstResponder];
    [r4 resignFirstResponder];
    [r5 resignFirstResponder];
    [r6 resignFirstResponder];
}
- (IBAction)reset:(id)sender
{
    [patientstatussseg setSelectedSegmentIndex:0];
    plan1.text=@"";
    plan2.text=@"";
    neuro.selected=NO;
    
    fd1.selected=NO;
    fd2.selected=NO;
    fd3.selected=NO;
    fd4.selected=NO;
    fd5.selected=NO;
    fdother.text=@"";
    p1.selected=NO;
    p2.selected=NO;
    p3.selected=NO;
    p4.selected=NO;
    p5.selected=NO;
    p6.selected=NO;
    p7.selected=NO;
    p8.selected=NO;
    p9.selected=NO;
    p10.selected=NO;
    p11.selected=NO;
    p12.selected=NO;
    p13.selected=NO;
    p14.selected=NO;
    p15.selected=NO;
    planother.text=@"";
    planother.hidden=YES;
    fdother.hidden=YES;
    d1.text=@"";
    d2.text=@"";
    d3.text=@"";
    d4.text=@"";
    d5.text=@"";
    sign.text=@"";
    additional.text=@"";
    d1.text=@"";
    d2.text=@"";
    d3.text=@"";
    d4.text=@"";
    d5.text=@"";
    d6.text=@"";
    s1.text=@"";
    s2.text=@"";
    s3.text=@"";
    s4.text=@"";
    s5.text=@"";
    s6.text=@"";
    s7.text=@"";
    s8.text=@"";
    s9.text=@"";
    s10.text=@"";
    m1.text=@"";
    m2.text=@"";
    m3.text=@"";
    m4.text=@"";
    m5.text=@"";
    m6.text=@"";
    m7.text=@"";
    m8.text=@"";
    m9.text =@"";
    m10.text =@"";
    r1.text =@"";
    r2.text=@"";
    r3.text =@"";
    r4.text =@"";
    r5.text=@"";
    r6.text=@"";
    [fd1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [fd2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [fd3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [fd4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [fd5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [p15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    [neuro setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)cancel:(id)sender
{
    for (id controller in [self.navigationController viewControllers])
    {
        if ([controller isKindOfClass:[hamilViewController class]])
        {
            [self.navigationController popToViewController:controller animated:YES];
            break;
        }
    }
    // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9_-]+";
    
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumber:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
    //[(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validatesign:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z]+";
    
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}

-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[/]+[0-9]{1,2}+[/]+[0-9]{4}";
    
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
-(IBAction)patientstatusselected:(id)sender
{
    if(patientstatussseg.selectedSegmentIndex==0)
    {
        patientstatus=@"Excellent";
    }
    else if (patientstatussseg.selectedSegmentIndex==1)
    {
        patientstatus=@"Good";
    }
    else if (patientstatussseg.selectedSegmentIndex==2)
    {
        patientstatus=@"Fair";
    }
    else if (patientstatussseg.selectedSegmentIndex==3)
    {
        patientstatus=@"Poor";
    }
}
-(BOOL)validateaddress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z._/-]+";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(IBAction)saveandcontinue:(id)sender
{
    temp1 = sign.text;
    temp2 = plan1.text;
    temp3 = plan2.text;
    temp4 = planother.text;
    temp5 = [additional.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    temp6=d1.text;
    temp7=d2.text;
    temp8=d3.text;
    temp9=d4.text;
    temp10=d5.text;
    temp11=d6.text;
    temp12=s1.text;
    temp13=s2.text;
    temp14=s3.text;
    temp15=s4.text;
    temp16=s5.text;
    temp17=s6.text;
    temp18=s7.text;
    temp19=s8.text;
    temp20=s9.text;
    temp21=s10.text;
    temp22=m1.text;
    temp23=m2.text;
    temp24=m3.text;
    temp25=m4.text;
    temp26=m5.text;
    temp27=m6.text;
    temp28=m7.text;
    temp29=m8.text;
    temp30=m9.text;
    temp31=m10.text;
    temp32=r1.text;
    temp33=r2.text;
    temp34=r3.text;
    temp35=r4.text;
    temp36=r5.text;
    temp37=r6.text;
    temp38=fdother.text;
    
    a=1;
    if (fd1.selected) {
        [recorddict setValue:@"Sitting" forKey:@"sit"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"sit"];
    }
    if (fd2.selected) {
        [recorddict setValue:@"Standing" forKey:@"stand"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"stand"];
    }
    if (fd3.selected) {
        [recorddict setValue:@"Driving" forKey:@"drive"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"drive"];
    }
    if (fd4.selected) {
        [recorddict setValue:@"Computer Use" forKey:@"computer"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"computer"];
    }
    if (fd5.selected) {
        [recorddict setValue:@"Other" forKey:@"fdother"];
        [recorddict setValue:fdother.text forKey:@"fdothertext"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"fdother"];
        [recorddict setValue:@"" forKey:@"fdothertext"];
    }
    if (p1.selected) {
        [recorddict setValue:@"Spinal Decompression" forKey:@"spinal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"spinal"];
    }
    if (p2.selected) {
        [recorddict setValue:@"Chiropractic" forKey:@"chiro"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"chiro"];
    }
    if (p3.selected) {
        [recorddict setValue:@"Physical Theraphy" forKey:@"phy"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"phy"];
    }
    if (p4.selected) {
        [recorddict setValue:@"Orthotics/Bracing" forKey:@"ortho"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ortho"];
    }
    if (p5.selected) {
        [recorddict setValue:@"Modalities" forKey:@"modal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"modal"];
    }
    if (p6.selected) {
        [recorddict setValue:@"Supplementation" forKey:@"supple"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"supple"];
    }
    if (p7.selected) {
        [recorddict setValue:@"HEP" forKey:@"hep"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"hep"];
    }
    if (p8.selected) {
        [recorddict setValue:@"Radiographic X-Ray" forKey:@"xray"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"xray"];
    }
    if (p9.selected) {
        [recorddict setValue:@"MRI" forKey:@"mri"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"mri"];
    }
    if (p10.selected) {
        [recorddict setValue:@"CT Scan" forKey:@"ct"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ct"];
    }
    if (p11.selected) {
        [recorddict setValue:@"Nerve Conduction" forKey:@"nev"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"nev"];
    }
    if (p12.selected) {
        [recorddict setValue:@"EMG" forKey:@"emg"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"emg"];
    }
    if (p13.selected) {
        [recorddict setValue:@"Outside Referral" forKey:@"outref"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"outref"];
    }
    if (p14.selected) {
        [recorddict setValue:@"D/C" forKey:@"dc"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"dc"];
    }
    if (p15.selected) {
        [recorddict setValue:@"Other" forKey:@"planother"];
        [recorddict setValue:planother.text forKey:@"planothertext"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"planother"];
        [recorddict setValue:@"" forKey:@"planothertext"];
    }
    if(neuro.selected)
    {
        [recorddict setValue:@"Neurological Testing Unremarkable" forKey:@"neuroval"];
        //        [recorddict setValue:@"" forKey:@"planothertext"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"neuroval"];
        //        [recorddict setValue:@"" forKey:@"planothertext"];
    }
    [recorddict setValue:patientstatus forKey:@"patientstatus"];
    
    if([temp1 length]!=0)
    {
        
        if((([temp12 length]>0)&&([du date:temp12]==1))||([temp12 length]==0))
        {
            if((([temp13 length]>0)&&([du date:temp13 ]==1))||([temp13 length]==0))
            {
                if((([temp14 length]>0)&&([du date:temp14 ]==1))||([temp14 length]==0))
                {
                    if((([temp15 length]>0)&&([du date:temp15 ]==1))||([temp15 length]==0))
                    {
                        if((([temp16 length]>0)&&([du date:temp16 ]==1))||([temp16 length]==0))
                        {
                            if((([temp17 length]>0)&&([du date:temp17 ]==1))||([temp17 length]==0))
                            {
                                if((([temp18 length]>0)&&([du date:temp18]==1))||([temp18 length]==0))
                                {
                                    if((([temp19 length]>0)&&([du date:temp19]==1))||([temp19 length]==0))
                                    {
                                        if((([temp20 length]>0)&&([du date:temp20]==1))||([temp20 length]==0))
                                        {
                                            if((([temp21 length]>0)&&([du date:temp21]==1))||([temp21 length]==0))
                                            {
                                                if((([temp22 length]>0)&&([du byfive:temp22]==1))||([temp22 length]==0))
                                                {
                                                    if((([temp23 length]>0)&&([du byfive:temp23]==1))||([temp23 length]==0))
                                                    {
                                                        if((([temp24 length]>0)&&([du byfive:temp24]==1))||([temp24 length]==0))
                                                        {
                                                            if((([temp25 length]>0)&&([du byfive:temp25]==1))||([temp25 length]==0))
                                                            {
                                                                if((([temp26 length]>0)&&([du byfive:temp26]==1))||([temp26 length]==0))
                                                                {
                                                                    if((([temp27 length]>0)&&([du byfive:temp27]==1))||([temp27 length]==0))
                                                                    {
                                                                        if((([temp28 length]>0)&&([du byfive:temp28]==1))||([temp28 length]==0))
                                                                        {
                                                                            if((([temp29 length]>0)&&([du byfive:temp29 ]==1))||([temp29 length]==0))
                                                                            {
                                                                                if((([temp30 length]>0)&&([du byfive:temp30]==1))||([temp30 length]==0))
                                                                                {
                                                                                    if((([temp31 length]>0)&&([du byfive:temp31 ]==1))||([temp31 length]==0))
                                                                                    {
                                                                                        if((([temp32 length]>0)&&([du byfive:temp32]==1))||([temp32 length]==0))
                                                                                        {
                                                                                            if((([temp33 length]>0)&&([du byfive:temp33]==1))||([temp33 length]==0))
                                                                                            {
                                                                                                if((([temp34 length]>0)&&([du byfive:temp34]==1))||([temp34 length]==0))
                                                                                                {
                                                                                                    if((([temp35 length]>0)&&([du byfive:temp35]==1))||([temp35 length]==0))
                                                                                                    {
                                                                                                        if((([temp36 length]>0)&&([du byfive:temp36]==1))||([temp36 length]==0))
                                                                                                        {
                                                                                                            if((([temp37 length]>0)&&([du byfive:temp37]==1))||([temp37 length]==0))
                                                                                                            {
                                                                                                                if((([temp5 length]>0)&&([du comments:temp5]==1))||([temp5 length]==0))
                                                                                                                {
                                                                                                                    if((([temp6 length]>0)&&([du otherfields:temp6]==1))||([temp6 length]==0))
                                                                                                                    {
                                                                                                                        if((([temp7 length]>0)&&([du otherfields:temp7 ]==1))||([temp7 length]==0))
                                                                                                                        {
                                                                                                                            if((([temp8 length]>0)&&([du otherfields:temp8 ]==1))||([temp8 length]==0))
                                                                                                                                
                                                                                                                            {
                                                                                                                                if((([temp9 length]>0)&&([du otherfields:temp9]==1))||([temp9 length]==0))
                                                                                                                                {
                                                                                                                                    if((([temp10 length]>0)&&([du otherfields:temp10]==1))||([temp10 length]==0))
                                                                                                                                    {
                                                                                                                                        if((([temp11 length]>0)&&([du otherfields:temp11]==1))||([temp11 length]==0))
                                                                                                                                        {
                                                                                                                                            if((([temp2 length]>0)&&([du otherfields:temp2]==1))||([temp2 length]==0))
                                                                                                                                            {
                                                                                                                                                if((([temp3 length]>0)&&([du otherfields:temp3 ]==1))||([temp3 length]==0))
                                                                                                                                                {
                                                                                                                                                    if([du otherfields:temp1 ]==1)
                                                                                                                                                    {
                                                                                                                                                        
                                                                                                                                                        [recorddict setValue:s1.text forKey:@"s1"];
                                                                                                                                                        [recorddict setValue:s2.text forKey:@"s2"];
                                                                                                                                                        [recorddict setValue:s3.text forKey:@"s3"];
                                                                                                                                                        [recorddict setValue:s4.text forKey:@"s4"];
                                                                                                                                                        [recorddict setValue:s5.text forKey:@"s5"];
                                                                                                                                                        [recorddict setValue:s6.text forKey:@"s6"];
                                                                                                                                                        [recorddict setValue:s7.text forKey:@"s7"];
                                                                                                                                                        [recorddict setValue:s8.text forKey:@"s8"];
                                                                                                                                                        [recorddict setValue:s9.text forKey:@"s9"];
                                                                                                                                                        [recorddict setValue:s10.text forKey:@"s10"];
                                                                                                                                                        [recorddict setValue:m1.text forKey:@"m1"];
                                                                                                                                                        [recorddict setValue:m2.text forKey:@"m2"];
                                                                                                                                                        [recorddict setValue:m3.text forKey:@"m3"];
                                                                                                                                                        [recorddict setValue:m4.text forKey:@"m4"];
                                                                                                                                                        [recorddict setValue:m5.text forKey:@"m5"];
                                                                                                                                                        [recorddict setValue:m6.text forKey:@"m6"];
                                                                                                                                                        [recorddict setValue:m7.text forKey:@"m7"];
                                                                                                                                                        [recorddict setValue:m8.text forKey:@"m8"];
                                                                                                                                                        [recorddict setValue:m9.text forKey:@"m9"];
                                                                                                                                                        [recorddict setValue:m10.text forKey:@"m10"];
                                                                                                                                                        [recorddict setValue:r1.text forKey:@"r1"];
                                                                                                                                                        [recorddict setValue:r2.text forKey:@"r2"];
                                                                                                                                                        [recorddict setValue:r3.text forKey:@"r3"];
                                                                                                                                                        [recorddict setValue:r4.text forKey:@"r4"];
                                                                                                                                                        [recorddict setValue:r5.text forKey:@"r5"];
                                                                                                                                                        [recorddict setValue:r6.text forKey:@"r6"];
                                                                                                                                                        [recorddict setValue:additional.text forKey:@"additional"];
                                                                                                                                                        [recorddict setValue:d1.text forKey:@"d1"];
                                                                                                                                                        [recorddict setValue:d2.text forKey:@"d2"];
                                                                                                                                                        [recorddict setValue:d3.text forKey:@"d3"];
                                                                                                                                                        [recorddict setValue:d4.text forKey:@"d4"];
                                                                                                                                                        [recorddict setValue:d5.text forKey:@"d5"];
                                                                                                                                                        [recorddict setValue:d6.text forKey:@"d6"];
                                                                                                                                                        [recorddict setValue:sign.text forKey:@"sign"];
                                                                                                                                                        [recorddict setValue:plan1.text forKey:@"plan1"];
                                                                                                                                                        [recorddict setValue:plan2.text forKey:@"plan2"];
                                                                                                                                                        //                                                                                                                                                        [recorddict setValue:planother.text forKey:@"planother"];
                                                                                                                                                        //                                                                                                                                                        [recorddict setValue:fdother.text forKey:@"fdother"];
                                                                                                                                                        //[recorddict setValue: forKey:@""];
                                                                                                                                                        //[recorddict setValue: forKey:@""];
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        a=0;
                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                       description:@"Please enter valid patient signature."
                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                          callback:nil];
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    a=0;
                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                   description:@"Please enter valid week field."
                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                      callback:nil];
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                a=0;
                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                               description:@"Please enter valid time field."
                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                  callback:nil];
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            a=0;
                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                           description:@"Please enter valid diagnosis 6 field."
                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                              callback:nil];
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        a=0;
                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                       description:@"Please enter valid diagnosis 5 field."
                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                          callback:nil];
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    a=0;
                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                   description:@"Please enter valid diagnosis 4 field."
                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                      callback:nil];
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                a=0;
                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                               description:@"Please enter valid diagnosis 3 field."
                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                  callback:nil];
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                            
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                           description:@"Please enter valid diagnosis 2 field."
                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                              callback:nil];
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                       description:@"Please enter valid diagnosis 1 field."
                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                          callback:nil];
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please enter valid assessment / additional comments value."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please enter valid reflexes c7 right value."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please enter valid reflexes c7 left value."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please enter valid reflexes c6 right value."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid reflexes c6 left value."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid reflexes c5 right value."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid reflexes c5 left value."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid motor t1 right value."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid motor t1 left value."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid motor c8 right value."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid motor c8 left value."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid motor c7 right value."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid motor c7 left value."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                }
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid motor c6 right value."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid motor c6 left value."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid motor c5 right value."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid motor c5 left value."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                }
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid sensory t1 right value."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                                
                                            }
                                        }
                                        else
                                        {
                                            a=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid t1 left value."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                            
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid sensory c8 right value."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                        
                                        
                                    }
                                }
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid sensory c8 left value."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid sensory c7 right value."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                                
                            }
                        }
                        else
                        {
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid sensory c7 left value."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                        }
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid sensory c6 right value."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                        
                    }
                }
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid sensory c6 left value."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                }
            }
            else
            {
                a=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid sensory c5 right value."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
            }
        }
        else
        {
            a=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid sensory c5 left value."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
            
        }
    }
    
    else
    {
        a=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter all the required fields."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
        
    }
    if(a==1)
    {
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
        else  if(buton.tag==14)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Updating";
            [HUD show:YES];
            //                  [self insertdata];
            if ([[self submitvalues]isEqualToString:@"success"]) {
                [self updatedata];
            }
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"cervicalexam Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form updation successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
                
                
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
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form updation failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                for (id controller in [self.navigationController viewControllers])
                {
                    if ([controller isKindOfClass:[hamilViewController class]])
                    {
                        [self.navigationController popToViewController:controller animated:YES];
                        break;
                    }
                }
                // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
            }
        }
    }
    
    
    
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Cervicalexam.php?service=cervicalexamedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&muscle=%@&swelling=%@&headposture=%@&roundshoulder=%@&ao=%@&allsoft=%@&suboccipital=%@&scalenes=%@&levator=%@&teresminor=%@&teresmajor=%@&rhomboids=%@&trapezius=%@&pectoralis=%@&paraspinals=%@&othernotes=%@&functionalrangeofmotion=%@&subluxation=%@&orthopedic=%@&flexion=%@&c01=%@&c12=%@&c23=%@&hautantl=%@&hautantr=%@&extension=%@&c34=%@&c45=%@&c56=%@&foraminall=%@&foraminalr=%@&lflexion=%@&rflexion=%@&c67=%@&c7t1=%@&t12=%@&sotohalll=%@&sotohallr=%@&lrotation=%@&rrotation=%@&t23=%@&t34=%@&t45=%@&adsonsl=%@&adsonsr=%@&t56=%@&t67=%@&t78=%@&ulttl=%@&ulttr=%@&neurologicaltest=%@&c5l=%@&c5r=%@&c51l=%@&c51r=%@&c53l=%@&c53r=%@& c6l=%@&c6r=%@&c61l=%@&c61r=%@&c63l=%@&c63r=%@&c7l=%@&c7r=%@&c71l=%@&c71r=%@&c73l=%@&c73r=%@&c8l=%@&c8r=%@&c81l=%@&c81r=%@&t1l=%@&t1r=%@&t11l=%@&t11r=%@&sitting=%@&standing=%@&driving=%@&computeruse=%@&otherfunctional=%@&break_text3=%@&assessment=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&diagnosis6=%@&times=%@&week=%@&spinal=%@&chiropractic=%@&physical=%@&orthotics=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&ctscan=%@&nerve=%@&emg=%@&outside=%@&dc=%@&otheraddress=%@&break_text4=%@&sign=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"Patientname"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"musle"],[recorddict objectForKey:@"swell"],[recorddict objectForKey:@"forward"],[recorddict objectForKey:@"round"],[recorddict objectForKey:@"aoval"],[recorddict objectForKey:@"allsoft"],[recorddict objectForKey:@"p1"],[recorddict objectForKey:@"p2"],[recorddict objectForKey:@"p3"],[recorddict objectForKey:@"p4"],[recorddict objectForKey:@"p5"],[recorddict objectForKey:@"p6"],[recorddict objectForKey:@"p7"],[recorddict objectForKey:@"p8"],[recorddict objectForKey:@"p9"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"func"],[recorddict objectForKey:@"sublax"],[recorddict objectForKey:@"orthopedic"],[recorddict objectForKey:@"f1"],[recorddict objectForKey:@"s11"],[recorddict objectForKey:@"s12"],[recorddict objectForKey:@"s13"],[recorddict objectForKey:@"ot11"],[recorddict objectForKey:@"ot12"],[recorddict objectForKey:@"f2"],[recorddict objectForKey:@"s21"],[recorddict objectForKey:@"s22"],[recorddict objectForKey:@"s23"],[recorddict objectForKey:@"ot21"],[recorddict objectForKey:@"ot22"],[recorddict objectForKey:@"f3"],[recorddict objectForKey:@"f4"],[recorddict objectForKey:@"s31"],[recorddict objectForKey:@"s32"],[recorddict objectForKey:@"s33"],[recorddict objectForKey:@"ot31"],[recorddict objectForKey:@"ot32"],[recorddict objectForKey:@"f5"],[recorddict objectForKey:@"f6"],[recorddict objectForKey:@"s41"],[recorddict objectForKey:@"s42"],[recorddict objectForKey:@"s43"],[recorddict objectForKey:@"ot41"],[recorddict objectForKey:@"ot42"],[recorddict objectForKey:@"s51"],[recorddict objectForKey:@"s52" ],[recorddict objectForKey:@"s53"],[recorddict objectForKey:@"ot51"],[recorddict objectForKey:@"ot52"],[recorddict objectForKey:@"neuroval"],[recorddict objectForKey:@"s1"],[recorddict objectForKey:@"s2"],[recorddict objectForKey:@"m1"],[recorddict objectForKey:@"m2"],[recorddict objectForKey:@"r1"],[recorddict objectForKey:@"r2"],[recorddict objectForKey:@"s3"],[recorddict objectForKey:@"s4"],[recorddict objectForKey:@"m3"],[recorddict objectForKey:@"m4"],[recorddict objectForKey:@"r3"],[recorddict objectForKey:@"r4"],[recorddict objectForKey:@"s5"],[recorddict objectForKey:@"s6"],[recorddict objectForKey:@"m5"],[recorddict objectForKey:@"m6"],[recorddict objectForKey:@"r5"],[recorddict objectForKey:@"r6"],[recorddict objectForKey:@"s7"],[recorddict objectForKey:@"s8"],[recorddict objectForKey:@"m7"],[recorddict objectForKey:@"m8"],[recorddict objectForKey:@"s9"],[recorddict objectForKey:@"s10"],[recorddict objectForKey:@"m9"],[recorddict objectForKey:@"m10"],[recorddict objectForKey:@"sit"],[recorddict objectForKey:@"stand"],[recorddict objectForKey:@"drive"],[recorddict objectForKey:@"computer"],[recorddict objectForKey:@"fdother"],[recorddict objectForKey:@"fdothertext"],additional.text,[recorddict objectForKey:@"patientstatus"],[recorddict objectForKey:@"d1"],[recorddict objectForKey:@"d2"],[recorddict objectForKey:@"d3"],[recorddict objectForKey:@"d4"],[recorddict objectForKey:@"d5"],[recorddict objectForKey:@"d6"],[recorddict objectForKey:@"plan1"],[recorddict objectForKey:@"plan2"],[recorddict objectForKey:@"spinal"],[recorddict objectForKey:@"chiro"],[recorddict objectForKey:@"phy"],[recorddict objectForKey:@"ortho"],[recorddict objectForKey:@"modal"],[recorddict objectForKey:@"supple"],[recorddict objectForKey:@"hep"],[recorddict objectForKey:@"xray"],[recorddict objectForKey:@"mri"],[recorddict objectForKey:@"ct"],[recorddict objectForKey:@"nev"],[recorddict objectForKey:@"emg"] ,[recorddict objectForKey:@"outref"],[recorddict objectForKey:@"dc"],[recorddict objectForKey:@"planother"],[recorddict objectForKey:@"planothertext"],sign.text,secondEntity,value2];
    
    
    
    
    
    
    
    
    //       NSLog(@"POST:%@",post);
    
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"cervicalexam Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
                
                
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
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
                
                for (id controller in [self.navigationController viewControllers])
                {
                    if ([controller isKindOfClass:[hamilViewController class]])
                    {
                        [self.navigationController popToViewController:controller animated:YES];
                        break;
                    }
                }
                //   [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
        }
    }
    
}

-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Cervicalexam.php?service=cervicalexaminsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&muscle=%@&swelling=%@&headposture=%@&roundshoulder=%@&ao=%@&allsoft=%@&suboccipital=%@&scalenes=%@&levator=%@&teresminor=%@&teresmajor=%@&rhomboids=%@&trapezius=%@&pectoralis=%@&paraspinals=%@&othernotes=%@&functionalrangeofmotion=%@&subluxation=%@&orthopedic=%@&flexion=%@&c01=%@&c12=%@&c23=%@&hautantl=%@&hautantr=%@&extension=%@&c34=%@&c45=%@&c56=%@&foraminall=%@&foraminalr=%@&lflexion=%@&rflexion=%@&c67=%@&c7t1=%@&t12=%@&sotohalll=%@&sotohallr=%@&lrotation=%@&rrotation=%@&t23=%@&t34=%@&t45=%@&adsonsl=%@&adsonsr=%@&t56=%@&t67=%@&t78=%@&ulttl=%@&ulttr=%@&neurologicaltest=%@&c5l=%@&c5r=%@&c51l=%@&c51r=%@&c53l=%@&c53r=%@& c6l=%@&c6r=%@&c61l=%@&c61r=%@&c63l=%@&c63r=%@&c7l=%@&c7r=%@&c71l=%@&c71r=%@&c73l=%@&c73r=%@&c8l=%@&c8r=%@&c81l=%@&c81r=%@&t1l=%@&t1r=%@&t11l=%@&t11r=%@&sitting=%@&standing=%@&driving=%@&computeruse=%@&otherfunctional=%@&break_text3=%@&assessment=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&diagnosis6=%@&times=%@&week=%@&spinal=%@&chiropractic=%@&physical=%@&orthotics=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&ctscan=%@&nerve=%@&emg=%@&outside=%@&dc=%@&otheraddress=%@&break_text4=%@&sign=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"Patientname"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"musle"],[recorddict objectForKey:@"swell"],[recorddict objectForKey:@"forward"],[recorddict objectForKey:@"round"],[recorddict objectForKey:@"aoval"],[recorddict objectForKey:@"allsoft"],[recorddict objectForKey:@"p1"],[recorddict objectForKey:@"p2"],[recorddict objectForKey:@"p3"],[recorddict objectForKey:@"p4"],[recorddict objectForKey:@"p5"],[recorddict objectForKey:@"p6"],[recorddict objectForKey:@"p7"],[recorddict objectForKey:@"p8"],[recorddict objectForKey:@"p9"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"func"],[recorddict objectForKey:@"sublax"],[recorddict objectForKey:@"orthopedic"],[recorddict objectForKey:@"f1"],[recorddict objectForKey:@"s11"],[recorddict objectForKey:@"s12"],[recorddict objectForKey:@"s13"],[recorddict objectForKey:@"ot11"],[recorddict objectForKey:@"ot12"],[recorddict objectForKey:@"f2"],[recorddict objectForKey:@"s21"],[recorddict objectForKey:@"s22"],[recorddict objectForKey:@"s23"],[recorddict objectForKey:@"ot21"],[recorddict objectForKey:@"ot22"],[recorddict objectForKey:@"f3"],[recorddict objectForKey:@"f4"],[recorddict objectForKey:@"s31"],[recorddict objectForKey:@"s32"],[recorddict objectForKey:@"s33"],[recorddict objectForKey:@"ot31"],[recorddict objectForKey:@"ot32"],[recorddict objectForKey:@"f5"],[recorddict objectForKey:@"f6"],[recorddict objectForKey:@"s41"],[recorddict objectForKey:@"s42"],[recorddict objectForKey:@"s43"],[recorddict objectForKey:@"ot41"],[recorddict objectForKey:@"ot42"],[recorddict objectForKey:@"s51"],[recorddict objectForKey:@"s52" ],[recorddict objectForKey:@"s53"],[recorddict objectForKey:@"ot51"],[recorddict objectForKey:@"ot52"],[recorddict objectForKey:@"neuroval"],[recorddict objectForKey:@"s1"],[recorddict objectForKey:@"s2"],[recorddict objectForKey:@"m1"],[recorddict objectForKey:@"m2"],[recorddict objectForKey:@"r1"],[recorddict objectForKey:@"r2"],[recorddict objectForKey:@"s3"],[recorddict objectForKey:@"s4"],[recorddict objectForKey:@"m3"],[recorddict objectForKey:@"m4"],[recorddict objectForKey:@"r3"],[recorddict objectForKey:@"r4"],[recorddict objectForKey:@"s5"],[recorddict objectForKey:@"s6"],[recorddict objectForKey:@"m5"],[recorddict objectForKey:@"m6"],[recorddict objectForKey:@"r5"],[recorddict objectForKey:@"r6"],[recorddict objectForKey:@"s7"],[recorddict objectForKey:@"s8"],[recorddict objectForKey:@"m7"],[recorddict objectForKey:@"m8"],[recorddict objectForKey:@"s9"],[recorddict objectForKey:@"s10"],[recorddict objectForKey:@"m9"],[recorddict objectForKey:@"m10"],[recorddict objectForKey:@"sit"],[recorddict objectForKey:@"stand"],[recorddict objectForKey:@"drive"],[recorddict objectForKey:@"computer"],[recorddict objectForKey:@"fdother"],[recorddict objectForKey:@"fdothertext"],additional.text,[recorddict objectForKey:@"patientstatus"],[recorddict objectForKey:@"d1"],[recorddict objectForKey:@"d2"],[recorddict objectForKey:@"d3"],[recorddict objectForKey:@"d4"],[recorddict objectForKey:@"d5"],[recorddict objectForKey:@"d6"],[recorddict objectForKey:@"plan1"],[recorddict objectForKey:@"plan2"],[recorddict objectForKey:@"spinal"],[recorddict objectForKey:@"chiro"],[recorddict objectForKey:@"phy"],[recorddict objectForKey:@"ortho"],[recorddict objectForKey:@"modal"],[recorddict objectForKey:@"supple"],[recorddict objectForKey:@"hep"],[recorddict objectForKey:@"xray"],[recorddict objectForKey:@"mri"],[recorddict objectForKey:@"ct"],[recorddict objectForKey:@"nev"],[recorddict objectForKey:@"emg"] ,[recorddict objectForKey:@"outref"],[recorddict objectForKey:@"dc"],[recorddict objectForKey:@"planother"],[recorddict objectForKey:@"planothertext"],sign.text,secondEntity,value2];
    
    
    
    
    
    
    //  NSLog(@"POST:%@",post);
    
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
    
    //   NSLog(@"data %@",data);
    
    return data;
    
}

-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(fd5.selected)
    {
        fdother.hidden=NO;
    }
    else
        fdother.hidden=YES;
    if(p15.selected)
    {
        planother.hidden=NO;
    }
    else
        planother.hidden=YES;
    
}

/*
 - (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
 {
 
 //NSLog(@"identifier %@",identifier);
 if([identifier isEqual:@"Patientdetail2"])
 {
 if (c==1)
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
 
 if ([segue.identifier isEqualToString:@"Patientdetail2"])
 {
 
 Patient3ViewController *destViewController = [segue destinationViewController];
 destViewController.recorddict=recorddict;
 NSLog(@"recorddict in Patient2VC first %@",recorddict);
 }
 
 
 }
 */
- (IBAction)deleteform:(id)sender {
    
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"cervicalexam Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form Deletion Successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];
                    
                    
                    
                    
                    
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
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form deletion failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                    for (id controller in [self.navigationController viewControllers])
                    {
                        if ([controller isKindOfClass:[hamilViewController class]])
                        {
                            [self.navigationController popToViewController:controller animated:YES];
                            break;
                        }
                    }
                    // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
                }
            }
        }
        
    }
}


-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Cervicalexam.php?service=cervicalexamdelete";
    
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
