//
//  elbowViewController.m
//  elbow
//
//  Created by Admin on 21/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "elbowViewController.h"
#import "elbow1ViewController.h"
#import "databaseurl.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "hamilViewController.h"
@interface elbowViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end
@implementation elbowViewController
@synthesize resultset;
@synthesize patientname;
@synthesize muscle;
@synthesize swelling;
@synthesize othernotes;
@synthesize flexL;
@synthesize flexR;
@synthesize extensionL;
@synthesize extensionR;
@synthesize pronationL;
@synthesize pronationR;
@synthesize supiL;
@synthesize supiR;
@synthesize golfL;
@synthesize golfR;
@synthesize tennisL;
@synthesize tennisR;
@synthesize varusL;
@synthesize varusR;
@synthesize valgusL;
@synthesize valgusR;
@synthesize tinL;
@synthesize tinR;
@synthesize ULTTL;
@synthesize ULTTR;
@synthesize SC5L;
@synthesize SC5R;
@synthesize SC6L;
@synthesize SC6R;
@synthesize SC7L;
@synthesize SC7R;
@synthesize SC8L;
@synthesize SC8R;
@synthesize ST1L;
@synthesize ST1R;
@synthesize RC5L;
@synthesize RC5R;
@synthesize RC6L;
@synthesize RC6R;
@synthesize RC7L;
@synthesize RC7R;
@synthesize domi;
@synthesize biceps;
@synthesize pronator;
@synthesize triceps;
@synthesize anconeus;
@synthesize common;
@synthesize commonexten;

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

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]+";
    
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
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNameformat:(NSString *)country1
{
    
    NSString *countryFormat1 = @"[A-Za-z]+";
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNameformat1:(NSString *)country1
{
    
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNameformat2:(NSString *)country1
{
    
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumberlimit:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumberlimit1:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(IBAction)checkboxSelected:(UIButton*)sender
{
    sender.selected = !sender.selected;
    if(sender.selected)
    {
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
}
- (IBAction)domi:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        dominant_hand=@"Left";
    }
    else if(selectedSegment==1)
    {
        dominant_hand=@"Right";
    }
}
- (IBAction)biceps:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        biceps_brachii=@"Left";
    }
    else if(selectedSegment==1)
    {
        biceps_brachii=@"Right";
    }
}
- (IBAction)pronator:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        pronator_teres=@"Left";
    }
    else if(selectedSegment==1)
    {
        pronator_teres=@"Right";
    }
}
- (IBAction)triceps:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        triceps_brachii=@"Left";
    }
    else if(selectedSegment==1)
    {
        triceps_brachii=@"Right";
    }
}
- (IBAction)anconeus:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        Anconeus=@"Left";
    }
    else if(selectedSegment==1)
    {
        Anconeus=@"Right";
    }
}
- (IBAction)common:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        common_flexors=@"Left";
    }
    else if(selectedSegment==1)
    {
        common_flexors=@"Right";
    }
}
- (IBAction)commonexten:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        common_extensors=@"Left";
    }
    else if(selectedSegment==1)
    {
        common_extensors=@"Right";
    }
}
-(void)dismissKeyboard{
    printView.hidden = YES;
    [patientname resignFirstResponder];
    [muscle resignFirstResponder];
    [swelling resignFirstResponder];
    [othernotes resignFirstResponder];
    [flexL resignFirstResponder];
    [flexR resignFirstResponder];
    [extensionL resignFirstResponder];
    [extensionR resignFirstResponder];
    [pronationL resignFirstResponder];
    [pronationR resignFirstResponder];
    [supiL resignFirstResponder];
    [supiR resignFirstResponder];
    [golfL resignFirstResponder];
    [golfR resignFirstResponder];
    [tennisL resignFirstResponder];
    [tennisR resignFirstResponder];
    [varusL resignFirstResponder];
    [varusR resignFirstResponder];
    [valgusL resignFirstResponder];
    [valgusR resignFirstResponder];
    [tinL resignFirstResponder];
    [tinR resignFirstResponder];
    [ULTTL resignFirstResponder];
    [ULTTR resignFirstResponder];
    [SC5L resignFirstResponder];
    [SC5R resignFirstResponder];
    [SC6L resignFirstResponder];
    [SC6R resignFirstResponder];
    [SC7L resignFirstResponder];
    [SC7R resignFirstResponder];
    [SC8L resignFirstResponder];
    [SC8R resignFirstResponder];
    [ST1L resignFirstResponder];
    [ST1R resignFirstResponder];
    [RC5L resignFirstResponder];
    [RC5R resignFirstResponder];
    [RC6L resignFirstResponder];
    [RC6R resignFirstResponder];
    [RC7L resignFirstResponder];
    [RC7R resignFirstResponder];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    dominant_hand=@"null";
    biceps_brachii=@"null";
    pronator_teres=@"null";
    triceps_brachii=@"null";
    Anconeus=@"null";
    common_flexors=@"null";
    common_extensors=@"null";
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
    patientname.text=username;
	resultset=[[NSMutableDictionary alloc]init];
    [self Getdata];
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
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
    NSArray *items1App=[itemsApp objectForKey:@"elbowexam List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    // NSLog(@"items1app %@",items1App);
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            temp1 =[arrayList1 objectForKey:@"pname"];
            temp2 =[arrayList1 objectForKey:@"date"];
            
            temp4 =[arrayList1 objectForKey:@"muscle"];
            temp5 =[arrayList1 objectForKey:@"swelling"];
            temp6 =[arrayList1 objectForKey:@"dominanthand"];
            temp7=[arrayList1 objectForKey:@"allsoft"];
            temp8 =[arrayList1 objectForKey:@"biceps"];
            temp9=[arrayList1 objectForKey:@"triceps"];
            //temp10 =[arrayList1 objectForKey:@"leglengthr"];
            temp11 =[arrayList1 objectForKey:@"common"];
            temp12=[arrayList1 objectForKey:@"pronator"];
            temp13 =[arrayList1 objectForKey:@"anconeus"];
            temp14 =[arrayList1 objectForKey:@"commonextensors"];
            temp15=[arrayList1 objectForKey:@"othernotes"];
            
            temp20=[arrayList1 objectForKey:@"functionalrangeofmotion"];
            temp21 =[arrayList1 objectForKey:@"orthopedic"];
            temp22 =[arrayList1 objectForKey:@"flexionl"];
            temp23 =[arrayList1 objectForKey:@"flexionr"];
            temp24 =[arrayList1 objectForKey:@"mcll"];
            temp19=[arrayList1 objectForKey:@"mclr"];
            temp25 =[arrayList1 objectForKey:@"extensionl"];
            temp3 =[arrayList1 objectForKey:@"extensionr"];
            temp26=[arrayList1 objectForKey:@"lcll"];
            temp27 =[arrayList1 objectForKey:@"lclr"];
            temp28 =[arrayList1 objectForKey:@"pronationl"];
            temp29 =[arrayList1 objectForKey:@"pronationr"];
            temp30 =[arrayList1 objectForKey:@"varusl"];
            temp31 =[arrayList1 objectForKey:@"varusr"];
            temp32 =[arrayList1 objectForKey:@"circumferential"];
            temp33 =[arrayList1 objectForKey:@"suppinationl"];
            temp34 =[arrayList1 objectForKey:@"suppinationr"];
            temp35 =[arrayList1 objectForKey:@"mcl1l"];
            temp36 =[arrayList1 objectForKey:@"mcl1r"];
            temp37 =[arrayList1 objectForKey:@"tinnelsl"];
            temp38 =[arrayList1 objectForKey:@"tinnelsr"];
            temp39 =[arrayList1 objectForKey:@"ulttl"];
            temp40 =[arrayList1 objectForKey:@"ulttr"];
            temp41 =[arrayList1 objectForKey:@"neurologicaltest"];
            temp42 =[arrayList1 objectForKey:@"c5l"];
            temp43 =[arrayList1 objectForKey:@"c5r"];
            temp44 =[arrayList1 objectForKey:@"c51l"];
            temp45 =[arrayList1 objectForKey:@"c51r"];
            temp46 =[arrayList1 objectForKey:@"c53l"];
            temp47 =[arrayList1 objectForKey:@"c53r"];
            temp48 =[arrayList1 objectForKey:@"c6l"];
            temp49 =[arrayList1 objectForKey:@"c6r"];
            temp50 =[arrayList1 objectForKey:@"c61l"];
            temp51 =[arrayList1 objectForKey:@"c61r"];
            temp52 =[arrayList1 objectForKey:@"c63l"];
            temp53 =[arrayList1 objectForKey:@"c63r"];
            temp16=[arrayList1 objectForKey:@"c7l"];
            temp17=[arrayList1 objectForKey:@"c7r"];
            temp18=[arrayList1 objectForKey:@"c71l"];
            
            [resultset setValue:[arrayList1 objectForKey:@"c51l"] forKey:@"c51l"];
            [resultset setValue:[arrayList1 objectForKey:@"c51r"] forKey:@"c51r"];
            [resultset setValue:[arrayList1 objectForKey:@"c61l"] forKey:@"c61l"];
            [resultset setValue:[arrayList1 objectForKey:@"c61r"] forKey:@"c61r"];
            [resultset setValue:[arrayList1 objectForKey:@"c71l"] forKey:@"c71l"];
            [resultset setValue:[arrayList1 objectForKey:@"c71r"] forKey:@"c71r"];
            [resultset setValue:[arrayList1 objectForKey:@"c53l"] forKey:@"c53l"];
            [resultset setValue:[arrayList1 objectForKey:@"c53r"] forKey:@"c53r"];
            [resultset setValue:[arrayList1 objectForKey:@"c63l"] forKey:@"c63l"];
            [resultset setValue:[arrayList1 objectForKey:@"c63r"] forKey:@"c63r"];
            [resultset setValue:[arrayList1 objectForKey:@"c71r"] forKey:@"c71r"];
            [resultset setValue:[arrayList1 objectForKey:@"c73l"] forKey:@"c73l"];
            [resultset setValue:[arrayList1 objectForKey:@"c73r"] forKey:@"c73r"];
            [resultset setValue:[arrayList1 objectForKey:@"c8l"] forKey:@"c8l"];
            [resultset setValue:[arrayList1 objectForKey:@"c8r"] forKey:@"c8r"];
            [resultset setValue:[arrayList1 objectForKey:@"c81l"] forKey:@"c81l"];
            [resultset setValue:[arrayList1 objectForKey:@"c81r"] forKey:@"c81r"];
            [resultset setValue:[arrayList1 objectForKey:@"t1l"] forKey:@"t1l"];
            [resultset setValue:[arrayList1 objectForKey:@"t1r"] forKey:@"t1r"];
            [resultset setValue:[arrayList1 objectForKey:@"t11l"] forKey:@"t11l"];
            [resultset setValue:[arrayList1 objectForKey:@"t11r"] forKey:@"t11r"];
            [resultset setValue:[arrayList1 objectForKey:@"overheadactivities"] forKey:@"overheadactivities"];
            [resultset setValue:[arrayList1 objectForKey:@"lifting"] forKey:@"lifting"];
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
            patientname.text=temp1;
            date.text=temp2;
            muscle.text=temp4;
            swelling.text=temp5;
            othernotes .text=temp15;
            flexL.text=temp22;
            flexR.text=temp23;
            extensionL.text=temp25;
            extensionR.text=temp3;
            pronationL.text=temp28;
            pronationR.text=temp29;
            supiL.text=temp33;
            supiR.text=temp34;
            golfL.text=temp24;
            golfR.text=temp19;
            tennisL.text=temp26;
            tennisR.text=temp27;
            varusL.text=temp30;
            varusR.text=temp31;
            valgusL.text=temp35;
            valgusR.text=temp36;
            tinL.text=temp37;
            tinR.text=temp38;
            ULTTL.text=temp39;
            ULTTR.text=temp40;
            SC5L.text=temp42;
            SC5R.text=temp43;
            SC6L.text= temp48;
            SC6R.text=temp49;
            SC7L .text= temp16;
            SC7R.text=temp17;
            SC8L.text =[resultset objectForKey:@"c8l"];
            SC8R.text =[resultset objectForKey:@"c8r"];
            ST1L.text=[resultset objectForKey:@"t1l"];
            ST1R.text =[resultset objectForKey:@"t1r"];
            RC5L.text =temp46;
            RC5R.text =temp47;
            RC6L.text =temp52;
            RC6R.text =temp53;
            RC7L.text =[resultset objectForKey:@"c73l"];
            RC7R.text =[resultset objectForKey:@"c73r"];
            
            if ([temp7 isEqualToString:@"All Soft Tissue Unremarkable"]) {
                palpation.selected=YES;
                [palpation setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"All Soft Tissue Unremarkable" forKey:@"palpation un"];
                
            }
            else
            {
                palpation.selected=NO;
                [palpation setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"null" forKey:@"palpation un"];
                
            }
            if ([temp20 isEqualToString:@"Unremarkable"]) {
                functional.selected=YES;
                [functional setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"Unremarkable" forKey:@"functional un"];
                
            }
            else
            {
                functional.selected=NO;
                [functional setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"null" forKey:@"functional un"];
            }
            if ([temp21 isEqualToString:@"Unremarkable"]) {
                ortho.selected=YES;
                [ortho setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"Unremarkable" forKey:@"orthopedic un"];
                
            }
            else
            {
                ortho.selected=NO;
                [ortho setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"null" forKey:@"orthopedic un"];
            }
            if ([temp41 isEqualToString:@"Neurological Testing Unremarkable"]) {
                neuro.selected=YES;
                [neuro setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"Neurological Testing Unremarkable" forKey:@"neuro un"];
            }
            else
            {
                neuro.selected=NO;
                [neuro setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"null" forKey:@"neuro un"];
            }
            if ([temp6 isEqualToString:@"Left"] ) {
                [domi setSelectedSegmentIndex:0];
                dominant_hand=@"Left";
            }
            else if ([temp6 isEqualToString:@"Right"] ) {
                [domi setSelectedSegmentIndex:1];
                dominant_hand=@"Right";
            }
            else
            {
                [domi setSelectedSegmentIndex:UISegmentedControlNoSegment];
                dominant_hand=@"null";
            }
            if ([temp8 isEqualToString:@"Left"] ) {
                [biceps setSelectedSegmentIndex:0];
                biceps_brachii=@"Left";
            }
            else if ([temp8 isEqualToString:@"Right"] ) {
                [biceps setSelectedSegmentIndex:1];
                biceps_brachii=@"Right";
            }
            else
            {
                [biceps setSelectedSegmentIndex:UISegmentedControlNoSegment];
                biceps_brachii=@"null";
            }
            
            if ([temp9 isEqualToString:@"Left"] ) {
                [triceps setSelectedSegmentIndex:0];
                triceps_brachii=@"Left";
            }
            else if ([temp9 isEqualToString:@"Right"] ) {
                [triceps setSelectedSegmentIndex:1];
                triceps_brachii=@"Right";
            }
            else
            {
                [triceps setSelectedSegmentIndex:UISegmentedControlNoSegment];
                triceps_brachii=@"null";
            }
            if ([temp11 isEqualToString:@"Left"] ) {
                [common setSelectedSegmentIndex:0];
                common_flexors=@"Left";
            }
            else if ([temp11 isEqualToString:@"Right"] ) {
                [common setSelectedSegmentIndex:1];
                common_flexors=@"Right";
            }
            else
            {
                [common setSelectedSegmentIndex:UISegmentedControlNoSegment];
                common_flexors=@"null";
            }
            
            if ([temp14 isEqualToString:@"Left"] ) {
                [commonexten setSelectedSegmentIndex:0];
                common_extensors=@"Left";
            }
            else if ([temp14 isEqualToString:@"Right"] ) {
                [commonexten setSelectedSegmentIndex:1];
                common_extensors=@"Right";
            }
            else
            {
                [commonexten setSelectedSegmentIndex:UISegmentedControlNoSegment];
                common_extensors=@"null";
            }
            if ([temp12 isEqualToString:@"Left"] ) {
                [pronator setSelectedSegmentIndex:0];
                pronator_teres=@"Left";
            }
            else if ([temp12 isEqualToString:@"Right"] ) {
                [pronator setSelectedSegmentIndex:1];
                pronator_teres=@"Right";
            }
            else
            {
                [pronator setSelectedSegmentIndex:UISegmentedControlNoSegment];
                pronator_teres=@"null";
            }
            if ([temp13 isEqualToString:@"Left"] ) {
                [anconeus setSelectedSegmentIndex:0];
                Anconeus=@"Left";
            }
            else if ([temp13 isEqualToString:@"Right"] ) {
                [anconeus setSelectedSegmentIndex:1];
                Anconeus=@"Right";
            }
            else
            {
                [anconeus setSelectedSegmentIndex:UISegmentedControlNoSegment];
                Anconeus=@"null";
            }
            
        }
    }
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"ElbowExam.php?service=elbowexamselect";
    
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


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)NEXT:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:recorddict];
    Palpation=[[NSMutableArray alloc]init];
    Functional=[[NSMutableArray alloc]init];
    Orthopedic=[[NSMutableArray alloc]init];
    Neurological=[[NSMutableArray alloc]init];
    if(palpation.selected)
    {
        
        [recorddict setValue:@"All Soft Tissue Unremarkable" forKey:@"palpation un"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"palpation un"];
    }
    if(functional.selected)
    {
        [recorddict setValue:@"Unremarkable" forKey:@"functional un"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"functional un"];
    }
    if(ortho.selected)
    {
        [recorddict setValue:@"Unremarkable" forKey:@"orthopedic un"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"orthopedic un"];
    }
    if(neuro.selected)
    {
        [recorddict setValue:@"Neurological Testing Unremarkable" forKey:@"neuro un"];
        
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"neuro un"];
    }
    
    
    
    a=1;
    temp1 =patientname.text;
    temp2 =muscle.text;
    temp3 =swelling.text;
    temp4 =othernotes.text;
    temp5 =flexL.text;
    temp6=flexR.text;
    temp7=extensionL.text;
    temp8=extensionR.text;
    temp9=pronationL.text;
    temp10=pronationR.text;
    temp11=supiL.text;
    temp12=supiR.text;
    temp13=golfL.text;
    temp14=golfR.text;
    temp15=tennisL.text;
    temp16=tennisR.text;
    temp17=varusL.text;
    temp18=varusR.text;
    temp19=valgusL.text;
    temp20=valgusR.text;
    temp21=tinL.text;
    temp22=tinR.text;
    temp23=ULTTL.text;
    temp24=ULTTR.text;
    temp25=SC5L.text;
    temp26=SC5R.text;
    temp27=SC6L.text;
    temp28=SC6R.text;
    temp29=SC7L.text;
    temp30=SC7R.text;
    temp31=SC8L.text;
    temp32=SC8R.text;
    temp33=ST1L.text;
    temp34=ST1R.text;
    temp35=RC5L.text;
    temp36=RC5R.text;
    temp37=RC6L.text;
    temp38=RC6R.text;
    temp39=RC7L.text;
    temp40=RC7R.text;
    if(([temp1 length]!=0)&&
       ([date.text length]!=0))
    {
        if([du patname:temp1]==1)
        {
            if([self validateDate:[date text]]==1)
            {
                if((([temp2 length]>0)&&([du otherfields:temp2]==1))||([temp2 length]==0))
                {
                    if((([temp3 length]>0)&&([du otherfields:temp3 ]==1))||([temp3 length]==0))
                    {
                        if((([temp4 length]>0)&&([du otherfields:temp4 ]==1))||([temp4 length]==0))
                        {
                            if((([temp5 length]>0)&&([du date:temp5]==1))||([temp5 length]==0))
                            {
                                if((([temp6 length]>0)&&([du date:temp6]==1))||([temp6 length]==0))
                                {
                                    if((([temp7 length]>0)&&([du date:temp7]==1))||([temp7 length]==0))
                                    {
                                        if((([temp8 length]>0)&&([du date:temp8]==1))||([temp8 length]==0))
                                        {
                                            if((([temp9 length]>0)&&([du date:temp9]==1))||([temp9 length]==0))
                                            {
                                                if((([temp10 length]>0)&&([du date:temp10 ]==1))||([temp10 length]==0))
                                                {
                                                    if((([temp11 length]>0)&&([du date:temp11]==1))||([temp11 length]==0))
                                                    {
                                                        if((([temp12 length]>0)&&([du date:temp12]==1))||([temp12 length]==0))
                                                        {
                                                            if((([temp13 length]>0)&&([du date:temp13]==1))||([temp13 length]==0))
                                                            {
                                                                if((([temp14 length]>0)&&([du date:temp14]==1))||([temp14 length]==0))
                                                                {
                                                                    if((([temp15 length]>0)&&([du date:temp15]==1))||([temp15 length]==0))
                                                                    {
                                                                        if((([temp16 length]>0)&&([du date:temp16]==1))||([temp16 length]==0))
                                                                        {
                                                                            if((([temp17 length]>0)&&([du date:temp17]==1))||([temp17 length]==0))
                                                                            {
                                                                                if((([temp18 length]>0)&&([du date:temp18]==1))||([temp18 length]==0))
                                                                                {
                                                                                    if((([temp19 length]>0)&&([du date:temp19]==1))||([temp19 length]==0))
                                                                                    {
                                                                                        if((([temp20 length]>0)&&([du date:temp20]==1))||([temp20 length]==0))
                                                                                        {
                                                                                            if((([temp21 length]>0)&&([du date:temp21]==1))||([temp21 length]==0))
                                                                                            {
                                                                                                if((([temp22 length]>0)&&([du date:temp22]==1))||([temp22 length]==0))
                                                                                                {
                                                                                                    if((([temp23 length]>0)&&([du date:temp23 ]==1))||([temp23 length]==0))
                                                                                                    {
                                                                                                        if((([temp24 length]>0)&&([du date:temp24]==1))||([temp24 length]==0))
                                                                                                        {
                                                                                                            if((([temp25 length]>0)&&([du date:temp25 ]==1))||([temp25 length]==0))
                                                                                                            {
                                                                                                                if((([temp26 length]>0)&&([du date:temp26 ]==1))||([temp26 length]==0))
                                                                                                                {
                                                                                                                    if((([temp27 length]>0)&&([du date:temp27]==1))||([temp27 length]==0))
                                                                                                                    {
                                                                                                                        if((([temp28 length]>0)&&([du date:temp28 ]==1))||([temp28 length]==0))
                                                                                                                        {
                                                                                                                            if((([temp29 length]>0)&&([du date:temp29]==1))||([temp29 length]==0))
                                                                                                                            {
                                                                                                                                if((([temp30 length]>0)&&([du date:temp30]==1))||([temp30 length]==0))
                                                                                                                                {
                                                                                                                                    if((([temp31 length]>0)&&([du date:temp31]==1))||([temp31 length]==0))
                                                                                                                                    {
                                                                                                                                        if((([temp32 length]>0)&&([du date:temp32 ]==1))||([temp32 length]==0))
                                                                                                                                        {
                                                                                                                                            if((([temp33 length]>0)&&([du date:temp33]==1))||([temp33 length]==0))
                                                                                                                                            {
                                                                                                                                                if((([temp34 length]>0)&&([du date:temp34 ]==1))||([temp34 length]==0))
                                                                                                                                                {
                                                                                                                                                    if((([temp35 length]>0)&&([du byfive:temp35]==1))||([temp35 length]==0))
                                                                                                                                                    {
                                                                                                                                                        if((([temp36 length]>0)&&([du byfive:temp36 ]==1))||([temp36 length]==0))
                                                                                                                                                        {
                                                                                                                                                            if((([temp37 length]>0)&&([du byfive:temp37]==1))||([temp37 length]==0))
                                                                                                                                                            {
                                                                                                                                                                if((([temp38 length]>0)&&([du byfive:temp38 ]==1))||([temp38 length]==0))
                                                                                                                                                                {
                                                                                                                                                                    if((([temp39 length]>0)&&([du byfive:temp39]==1))||([temp39 length]==0))
                                                                                                                                                                    {
                                                                                                                                                                        if((([temp40 length]>0)&&([du byfive:temp40 ]==1))||([temp40 length]==0))
                                                                                                                                                                        {
                                                                                                                                                                            /*     if([muscle.text isEqualToString:@""]){
                                                                                                                                                                             muscle.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([swelling.text isEqualToString:@""]){
                                                                                                                                                                             swelling.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([othernotes.text isEqualToString:@""]){
                                                                                                                                                                             othernotes.text=@"null";
                                                                                                                                                                             }if([flexL.text isEqualToString:@""]){
                                                                                                                                                                             flexL.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([flexR.text isEqualToString:@""]){
                                                                                                                                                                             flexR.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([extensionL.text isEqualToString:@""]){
                                                                                                                                                                             extensionL.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([extensionR.text isEqualToString:@""]){
                                                                                                                                                                             extensionR.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([pronationL.text isEqualToString:@""]){
                                                                                                                                                                             pronationL.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([pronationR.text isEqualToString:@""]){
                                                                                                                                                                             pronationR.text=@"null";
                                                                                                                                                                             }if([supiL.text isEqualToString:@""]){
                                                                                                                                                                             supiL.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([supiR.text isEqualToString:@""]){
                                                                                                                                                                             supiR.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([golfL.text isEqualToString:@""]){
                                                                                                                                                                             golfL.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([golfR.text isEqualToString:@""]){
                                                                                                                                                                             golfR.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([tennisL.text isEqualToString:@""]){
                                                                                                                                                                             tennisL.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([tennisR.text isEqualToString:@""]){
                                                                                                                                                                             tennisR.text=@"null";
                                                                                                                                                                             }if([varusL.text isEqualToString:@""]){
                                                                                                                                                                             varusL.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([varusR.text isEqualToString:@""]){
                                                                                                                                                                             varusR.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([valgusL.text isEqualToString:@""]){
                                                                                                                                                                             valgusL.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([valgusR.text isEqualToString:@""]){
                                                                                                                                                                             valgusR.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([tinL.text isEqualToString:@""]){
                                                                                                                                                                             tinL.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([tinR.text isEqualToString:@""]){
                                                                                                                                                                             tinR.text=@"null";
                                                                                                                                                                             }if([ULTTL.text isEqualToString:@""]){
                                                                                                                                                                             ULTTL.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([ULTTR.text isEqualToString:@""]){
                                                                                                                                                                             ULTTR.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([SC5L.text isEqualToString:@""]){
                                                                                                                                                                             SC5L.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([SC5R.text isEqualToString:@""]){
                                                                                                                                                                             SC5R.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([SC6L.text isEqualToString:@""]){
                                                                                                                                                                             SC6L.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([SC6R.text isEqualToString:@""]){
                                                                                                                                                                             SC6R.text=@"null";
                                                                                                                                                                             }if([SC7L.text isEqualToString:@""]){
                                                                                                                                                                             SC7L.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([SC7R.text isEqualToString:@""]){
                                                                                                                                                                             SC7R.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([SC8L.text isEqualToString:@""]){
                                                                                                                                                                             SC8L.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([SC8R.text isEqualToString:@""]){
                                                                                                                                                                             SC8R.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([ST1L.text isEqualToString:@""]){
                                                                                                                                                                             ST1L.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([ST1R.text isEqualToString:@""]){
                                                                                                                                                                             ST1R.text=@"null";
                                                                                                                                                                             }if([RC5L.text isEqualToString:@""]){
                                                                                                                                                                             RC5L.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([RC5R.text isEqualToString:@""]){
                                                                                                                                                                             RC5R.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([RC6L.text isEqualToString:@""]){
                                                                                                                                                                             RC6L.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([RC6R.text isEqualToString:@""]){
                                                                                                                                                                             RC6R.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([RC7L.text isEqualToString:@""]){
                                                                                                                                                                             RC7L.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             if([RC7R.text isEqualToString:@""]){
                                                                                                                                                                             RC7R.text=@"null";
                                                                                                                                                                             }
                                                                                                                                                                             */
                                                                                                                                                                            [recorddict setValue:patientname.text forKey:@"Patientname"];
                                                                                                                                                                            [recorddict setValue:date.text forKey:@"Date"];
                                                                                                                                                                            [recorddict setValue:muscle.text forKey:@"Muscle Symmetry"];
                                                                                                                                                                            [recorddict setValue:swelling.text forKey:@"Swelling/Discoloration"];
                                                                                                                                                                            [recorddict setValue:othernotes.text forKey:@"Other/Notes"];
                                                                                                                                                                            [recorddict setValue:flexL.text forKey:@"Flexion Left"];
                                                                                                                                                                            [recorddict setValue:flexR.text forKey:@"Flexion Right"];
                                                                                                                                                                            [recorddict setValue:extensionL.text forKey:@"extension left"];
                                                                                                                                                                            [recorddict setValue:extensionR.text forKey:@"extension right"];
                                                                                                                                                                            [recorddict setValue:pronationL.text forKey:@"Pronation Left"];
                                                                                                                                                                            [recorddict setValue:pronationR.text forKey:@"Pronation Right"];
                                                                                                                                                                            [recorddict setValue:supiL.text forKey:@"Supination Left"];
                                                                                                                                                                            [recorddict setValue:supiR.text forKey:@"Supination Right"];
                                                                                                                                                                            [recorddict setValue:golfL.text forKey:@"Golfer's Elbow Left"];
                                                                                                                                                                            [recorddict setValue:golfR.text forKey:@"GOlfer's Elbow Right"];
                                                                                                                                                                            [recorddict setValue:tennisL.text forKey:@"Tennis Elbow Left"];
                                                                                                                                                                            [recorddict setValue:tennisR.text forKey:@"Tennis Elbow Right"];
                                                                                                                                                                            [recorddict setValue:varusL.text forKey:@"Varus Stress Left"];
                                                                                                                                                                            [recorddict setValue:varusR.text forKey:@"Varus Stress Right"];
                                                                                                                                                                            [recorddict setValue:valgusL.text forKey:@"Valgus Stress Left"];
                                                                                                                                                                            [recorddict setValue:valgusR.text forKey:@"Valgus Stress Right"];
                                                                                                                                                                            [recorddict setValue:tinL.text forKey:@"Tinnels Left"];
                                                                                                                                                                            [recorddict setValue:tinR.text forKey:@"Tinnels Right"];
                                                                                                                                                                            [recorddict setValue:ULTTL.text forKey:@"ULTT Left"];
                                                                                                                                                                            [recorddict setValue:ULTTR.text forKey:@"ULTT Right"];
                                                                                                                                                                            [recorddict setValue:SC5L.text forKey:@"Sensory c5 Left"];
                                                                                                                                                                            [recorddict setValue:SC5R.text forKey:@"Sensory c5 Right"];
                                                                                                                                                                            [recorddict setValue:SC6L.text forKey:@"Sensory c6 Left"];
                                                                                                                                                                            [recorddict setValue:SC6R.text forKey:@"Sensory c6 Right"];
                                                                                                                                                                            [recorddict setValue:SC7L.text forKey:@"Sensory c7 Left"];
                                                                                                                                                                            [recorddict setValue:SC7R.text forKey:@"Sensory c7 Right"];
                                                                                                                                                                            [recorddict setValue:SC8L.text forKey:@"Sensory c8 Left"];
                                                                                                                                                                            [recorddict setValue:SC8R.text forKey:@"Sensory c8 Right"];
                                                                                                                                                                            [recorddict setValue:ST1L.text forKey:@"Sensory t1 Left"];
                                                                                                                                                                            [recorddict setValue:ST1R.text forKey:@"Sensory t1 Right"];
                                                                                                                                                                            [recorddict setValue:RC5L.text forKey:@"Reflexess c5 Left"];
                                                                                                                                                                            [recorddict setValue:RC5R.text forKey:@"Reflexess c5 Right"];
                                                                                                                                                                            [recorddict setValue:RC6L.text forKey:@"Reflexess c6 Left"];
                                                                                                                                                                            [recorddict setValue:RC6R.text forKey:@"Reflexess c6 Right"];
                                                                                                                                                                            [recorddict setValue:RC7L.text forKey:@"Reflexess c7 Left"];
                                                                                                                                                                            [recorddict setValue:RC7R.text forKey:@"Reflexess c7 Right"];
                                                                                                                                                                            [recorddict setValue:dominant_hand forKey:@"Dominant hand"];
                                                                                                                                                                            [recorddict setValue:biceps_brachii forKey:@"Biceps brachii"];
                                                                                                                                                                            [recorddict setValue:pronator_teres  forKey:@"Pronator_teres"];
                                                                                                                                                                            [recorddict setValue:triceps_brachii forKey:@"Triceps brachii"];
                                                                                                                                                                            [recorddict setValue:Anconeus forKey:@"Anconeus"];
                                                                                                                                                                            [recorddict setValue:common_flexors forKey:@"Common flexors"];
                                                                                                                                                                            [recorddict setValue:common_extensors forKey:@"Common extensors"];
                                                                                                                                                                            //  NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                                                                                            if(a==1)
                                                                                                                                                                            {
                                                                                                                                                                                [self performSegueWithIdentifier:@"elbow" sender:self];
                                                                                                                                                                            }
                                                                                                                                                                            
                                                                                                                                                                        }
                                                                                                                                                                        
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                            a=0;
                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                           description:@"Please enter valid reflexes c7 right."
                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                        a=0;
                                                                                                                                                                        
                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                       description:@"Please enter valid reflexes c7 left."
                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                    a=0;
                                                                                                                                                                    
                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                   description:@"Please enter valid reflexes c6 right."
                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                                a=0;
                                                                                                                                                                
                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                               description:@"Please enter valid reflexes c6 left."
                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                            a=0;
                                                                                                                                                            
                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                           description:@"Please enter valid reflexes c5 right."
                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                              callback:nil];
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        a=0;
                                                                                                                                                        
                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                       description:@"Please enter valid reflexes c5 left."
                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                          callback:nil];
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    a=0;
                                                                                                                                                    
                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                   description:@"Please enter valid sensoty t1 right."
                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                      callback:nil];
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                a=0;
                                                                                                                                                
                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                               description:@"Please enter valid sensory t1 left."
                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                  callback:nil];
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            a=0;
                                                                                                                                            
                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                           description:@"Please enter valid sensory c8 right."
                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                              callback:nil];
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        a=0;
                                                                                                                                        
                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                       description:@"Please enter valid Sensory c8 left."
                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                          callback:nil];
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    a=0;
                                                                                                                                    
                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                   description:@"Please enter valid Sensory c7 right."
                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                      callback:nil];
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                a=0;
                                                                                                                                
                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                               description:@"Please enter valid sensory c7 left."
                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                  callback:nil];
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            
                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                           description:@"Please enter valid sensory c6 right."
                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                              callback:nil];
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        
                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                       description:@"Please enter valid sensory c6 left."
                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                          callback:nil];
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please enter valid sensory c5 right."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please enter valid sensory c5 left."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please enter valid ultt right."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please enter valid ultt left."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid tinnels right."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid tinnels left."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid valgus stress right."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid valgus stress left."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid varus stress right."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid varus left."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid tennis elbow right."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid tennis elbow left."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid golfer's elbow right."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                }
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid golfer's elbow left."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid supination right."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid supination left."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid pronation right."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                }
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid pronation left."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                            }
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid extension right."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid extension left."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                    }
                                }
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid flexion right."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid flexion left."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                            }
                        }
                        else
                        {
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid other/notes."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid swelling/discoloration."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                    }
                }
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid muscle symmetry."
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
                                                           description:@"Please enter valid patient name."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
        }
    }
    else
    {
        a=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Required field should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
    }
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

- (IBAction)reset:(id)sender {
    patientname.text=@"";
    muscle.text=@"";
    swelling.text=@"";
    othernotes.text=@"";
    flexL.text=@"";
    date.text=@"";
    flexR.text=@"";
    extensionL.text=@"";
    extensionR.text=@"";
    pronationL.text=@"";
    pronationR.text=@"";
    supiL.text=@"";
    supiR.text=@"";
    golfL.text=@"";
    golfR.text=@"";
    tennisL.text=@"";
    tennisR.text=@"";
    varusL.text=@"";
    varusR.text=@"";
    valgusL.text=@"";
    valgusR.text=@"";
    tinL.text=@"";
    tinR.text=@"";
    ULTTL.text=@"";
    ULTTR.text=@"";
    SC5L.text=@"";
    SC5R.text=@"";
    SC6L.text=@"";
    SC6R.text=@"";
    SC7L.text=@"";
    SC7R.text=@"";
    SC8L.text=@"";
    SC8R.text=@"";
    ST1L.text=@"";
    ST1R.text=@"";
    RC5L.text=@"";
    RC5R.text=@"";
    RC6L.text=@"";
    RC6R.text=@"";
    RC7L.text=@"";
    RC7R.text=@"";
    
    dominant_hand=@"null";
    biceps_brachii=@"null";
    pronator_teres=@"null";
    triceps_brachii=@"null";
    Anconeus=@"null";
    common_flexors=@"null";
    common_extensors=@"null";
    [common setSelectedSegmentIndex:0];
    [commonexten setSelectedSegmentIndex:0];
    [anconeus setSelectedSegmentIndex:0];
    [triceps setSelectedSegmentIndex:0];
    [biceps setSelectedSegmentIndex:0];
    [pronator setSelectedSegmentIndex:0];
    [domi setSelectedSegmentIndex:0];
    
    [domi setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [biceps setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [pronator setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [triceps setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [anconeus setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [commonexten setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [common setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    
    palpation.selected=NO;
    functional.selected=NO;
    ortho.selected=NO;
    neuro.selected=NO;
    
    [palpation setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [functional setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [ortho setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [neuro setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"elbow"])
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
    
    if ([segue.identifier isEqualToString:@"elbow"])
    {
        
        elbow1ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
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

- (void)dealloc
{
    
    [super dealloc];
}

@end

