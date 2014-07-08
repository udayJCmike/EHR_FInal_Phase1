//
//  KneeExamViewController2.m
//  EHR
//
//  Created by deemsys on 2/21/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "WristExamViewController2.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "hamilViewController.h"
@interface WristExamViewController2 ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation WristExamViewController2
@synthesize checkbut1;
@synthesize resultset;
@synthesize checkbut2;
@synthesize  checkbut3;
@synthesize  checkbut4;
@synthesize  checkbut5;
@synthesize  checkbut6;
@synthesize  checkbut7;
@synthesize  checkbut8;
@synthesize  checkbut9;
@synthesize  checkbut10;
@synthesize  checkbut11;
@synthesize  checkbut12;
@synthesize  checkbut13;
@synthesize  checkbut14;
@synthesize  checkbut15;
@synthesize  cancel1;
@synthesize recorddict;
@synthesize reset1;
@synthesize reset2;
@synthesize cancel2;
@synthesize deletefunc;
@synthesize submit;
@synthesize update;
@synthesize temp;

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
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12;
NSString *chec1,*chec2,*chec3,*chec4,*chec5,*chec6,*chec7,*chec8,*chec9,*chec10,*chec11,*chec12,*chec13,*chec14,*chec15;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
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
    othertext.hidden=YES;
    chec1=@"";
    chec2=@"";
    chec3=@"";
    chec4=@"";
    chec5=@"";
    chec6=@"";
    chec7=@"";
    chec8=@"";
    chec9=@"";
    chec10=@"";
    chec11=@"";
    chec12=@"";
    chec13=@"";
    chec14=@"";
    othertext.text=@"";
    first.text=@"";
    second.text=@"";
    three.text=@"";
    four.text=@"";
    five.text=@"";
    six.text=@"";
    seven.text=@"";
    eight.text=@"";
    signature.text=@"";
    [checkbut1 setSelected:NO];
    [checkbut1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut2 setSelected:NO];
    [checkbut2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut3 setSelected:NO];
    [checkbut3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut4 setSelected:NO];
    [checkbut4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut5 setSelected:NO];
    [checkbut5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut6 setSelected:NO];
    [checkbut6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut7 setSelected:NO];
    [checkbut7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut8 setSelected:NO];
    [checkbut8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut9 setSelected:NO];
    [checkbut9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut10 setSelected:NO];
    [checkbut10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut11 setSelected:NO];
    [checkbut11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut12 setSelected:NO];
    [checkbut12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut13 setSelected:NO];
    [checkbut13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut14 setSelected:NO];
    [checkbut14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut15 setSelected:NO];
    [checkbut15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    othertext.hidden=YES;
    chec1=@"";
    chec2=@"";
    chec3=@"";
    chec4=@"";
    chec5=@"";
    chec6=@"";
    chec7=@"";
    chec8=@"";
    chec9=@"";
    chec10=@"";
    chec11=@"";
    chec12=@"";
    chec13=@"";
    chec14=@"";
    othertext.text=@"";
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

    UITapGestureRecognizer *tapGR1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerViewTapped1)];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    [self displaydata];
    
	// Do any additional setup after loading the view.
}
-(void)displaydata
{
    if ([resultset count]>0)
    {
        submit.hidden=YES;
        update.hidden=NO;
        deletefunc.hidden=NO;
        reset1.hidden=YES;
        cancel1.hidden=YES;
        
        reset2.hidden=NO;
        cancel2.hidden=NO;
        
        first.text=[resultset objectForKey:@"diagnosis1"];
        second.text=[resultset objectForKey:@"diagnosis2"];
        three.text=[resultset objectForKey:@"diagnosis3"];
        four.text=[resultset objectForKey:@"diagnosis4"];
        five.text=[resultset objectForKey:@"diagnosis5"];
        six.text=[resultset objectForKey:@"diagnosis6"];
        seven.text=[resultset objectForKey:@"times"];
        eight.text=[resultset objectForKey:@"weeks"];
        othertext.text=[resultset objectForKey:@"othervalue"];
        signature.text=[resultset objectForKey:@"signature"];
        if ([[resultset objectForKey:@"spinaldecompression"] isEqualToString:@"Spinal Decompression"]) {
            checkbut1.selected=YES;
            [checkbut1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec1=@"Spinal Decompression";
            
        }
        else
        {
            checkbut1.selected=NO;
            [checkbut1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec1=@"null";
            
        }
        
        if ([[resultset objectForKey:@"chiropractic"] isEqualToString:@"Chiropractic"]) {
            checkbut2.selected=YES;
            [checkbut2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec2=@"Chiropractic";
            
        }
        else
        {
            checkbut2.selected=NO;
            [checkbut2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec2=@"null";
            
        }
        if ([[resultset objectForKey:@"physicaltherapy"] isEqualToString:@"Physical Therapy"]) {
            checkbut3.selected=YES;
            [checkbut3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec3=@"Physical Therapy";
            
        }
        else
        {
            checkbut3.selected=NO;
            [checkbut3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec3=@"null";
            
        }
        if ([[resultset objectForKey:@"bracing"] isEqualToString:@"Orthotics/Bracing"]) {
            checkbut4.selected=YES;
            [checkbut4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec4=@"Orthotics/Bracing";
            
        }
        else
        {
            checkbut4.selected=NO;
            [checkbut4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec4=@"null";
            
        }
        if ([[resultset objectForKey:@"modalities"] isEqualToString:@"Modalities"]) {
            checkbut5.selected=YES;
            [checkbut5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec5=@"Modalities";
            
        }
        else
        {
            checkbut5.selected=NO;
            [checkbut5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec5=@"null";
            
        }
        
        if ([[resultset objectForKey:@"supplementation"] isEqualToString:@"Supplementation"]) {
            checkbut6.selected=YES;
            [checkbut6 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec6=@"Supplementation";
            
        }
        else
        {
            checkbut6.selected=NO;
            [checkbut6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec6=@"null";
            
        }
        if ([[resultset objectForKey:@"hep"] isEqualToString:@"HEP"]) {
            checkbut7.selected=YES;
            [checkbut7 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec7=@"HEP";
            
        }
        else
        {
            checkbut7.selected=NO;
            [checkbut7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec7=@"null";
            
        }
        if ([[resultset objectForKey:@"radiographic"] isEqualToString:@"Radiographic X-Ray"]) {
            checkbut8.selected=YES;
            [checkbut8 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec8=@"Radiographic X-Ray";
            
        }
        else
        {
            checkbut8.selected=NO;
            [checkbut8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec8=@"null";
            
        }
        
        
        
        if ([[resultset objectForKey:@"mri"] isEqualToString:@"MRI"]) {
            checkbut9.selected=YES;
            [checkbut9 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec9=@"MRI";
            
        }
        else
        {
            checkbut9.selected=NO;
            [checkbut9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec9=@"null";
            
        }
        if ([[resultset objectForKey:@"scan"] isEqualToString:@"CT Scan"]) {
            checkbut10.selected=YES;
            [checkbut10 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec10=@"CT Scan";
            
        }
        else
        {
            checkbut10.selected=NO;
            [checkbut10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec10=@"null";
            
        }
        if ([[resultset objectForKey:@"conduction"] isEqualToString:@"Nerve Conduction"]) {
            checkbut11.selected=YES;
            [checkbut11 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec11=@"Nerve Conduction";
            
        }
        else
        {
            checkbut11.selected=NO;
            [checkbut11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec11=@"null";
            
        }
        
        if ([[resultset objectForKey:@"emg"] isEqualToString:@"EMG"]) {
            checkbut12.selected=YES;
            [checkbut12 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec12=@"EMG";
            
        }
        else
        {
            checkbut12.selected=NO;
            [checkbut12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec12=@"null";
            
        }
        if ([[resultset objectForKey:@"outsiderefferal"] isEqualToString:@"Outside Refferal"]) {
            checkbut13.selected=YES;
            [checkbut13 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec13=@"Outside Refferal";
            
        }
        else
        {
            checkbut13.selected=NO;
            [checkbut13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec13=@"null";
            
        }
        if ([[resultset objectForKey:@"dc"] isEqualToString:@"D/C"]) {
            checkbut14.selected=YES;
            [checkbut14 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec14=@"D/C";
            
        }
        else
        {
            checkbut14.selected=NO;
            [checkbut14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec14=@"null";
            
        }
        
        if ([[resultset objectForKey:@"others"] isEqualToString:@"Other"]) {
            checkbut15.selected=YES;
            [checkbut15 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            othertext.hidden=NO;
            
        }
        else
        {
            checkbut15.selected=NO;
            [checkbut15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            othertext.hidden=YES;
            
        }
        
        
    }
    else
    {
        submit.hidden=NO;
        update.hidden=YES;
        deletefunc.hidden=YES;
        reset1.hidden=NO;
        cancel1.hidden=NO;
        reset2.hidden=YES;
        cancel2.hidden=YES;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    
    
    [deletefunc release];
    [super dealloc];
}
- (IBAction)checked:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
    if(checkbut15.selected){
        othertext.hidden=NO;
        
    }
    else{
        othertext.hidden=YES;
        
    }
}
-(BOOL)validateNumberLessFive:(NSString *)user

{
    //  NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validatesign:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z]+";
    
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
-(void)dismissKeyboard {
      printView.hidden = YES;
    [first resignFirstResponder];
    [second resignFirstResponder];
    [three resignFirstResponder];
    [four resignFirstResponder];
    [five resignFirstResponder];
    [six resignFirstResponder];
    [seven resignFirstResponder];
    [eight resignFirstResponder];
    [othertext resignFirstResponder];
    [signature resignFirstResponder];
}
- (IBAction)save:(id)sender {
    texty1=first.text;
    texty2=second.text;
    texty3=three.text;
    texty4=four.text;
    texty5=five.text;
    texty6=six.text;
    texty7=seven.text;
    texty8=eight.text;
    texty9=othertext.text;
    texty10=signature.text;
    if([signature.text length]!=0)
    {
        if([first.text length]==0||([du otherfields:texty1]==1))
        {
            if([second.text length]==0||([du otherfields:texty2]==1))
            {
                if([three.text length]==0||([du otherfields:texty3]==1))
                {
                    if([four.text length]==0||([du otherfields:texty4]==1))
                    {
                        if([five.text length]==0||([du otherfields:texty5]==1))
                        {
                            if([six.text length]==0||([du otherfields:texty6]==1))
                            {
                                if([seven.text length]==0||([self validateNumberLessFive:texty7]==1))
                                {
                                    if([eight.text length]==0||([self validateNumberLessFive:texty8]==1))
                                    {
                                        if([othertext.text length]==0||([du otherfields:texty9]==1)){
                                            if([du otherfields:texty10]==1)
                                            {
                                                suc=1;
                                                if(checkbut1.selected){
                                                    chec1=@"Spinal Decompression";
                                                }
                                                else{chec1=@"null";
                                                }
                                                
                                                if(checkbut2.selected){
                                                    chec2=@"Chiropractic";
                                                }
                                                else{chec2=@"null";
                                                }
                                                if(checkbut3.selected){
                                                    
                                                    chec3=@"Physical Therapy";
                                                }
                                                else{chec3=@"null";
                                                }
                                                if(checkbut4.selected){
                                                    chec4=@"Orthotics/Bracing";
                                                }
                                                else{chec4=@"null";
                                                }
                                                if(checkbut5.selected){
                                                    chec5=@"Modalities";
                                                }
                                                else{chec5=@"null";
                                                }
                                                if(checkbut6.selected){
                                                    chec6=@"Supplementation";
                                                }
                                                else{chec6=@"null";
                                                }
                                                if(checkbut7.selected){
                                                    chec7=@"HEP";
                                                }
                                                else{chec7=@"null";
                                                }
                                                if(checkbut8.selected){
                                                    chec8=@"Radiographic X-Ray";
                                                }
                                                else{chec8=@"null";
                                                }
                                                if(checkbut9.selected){
                                                    chec9=@"MRI";
                                                }
                                                else{chec9=@"null";
                                                }
                                                if(checkbut10.selected){
                                                    chec10=@"CT Scan";
                                                }
                                                else{chec10=@"null";
                                                }
                                                if(checkbut11.selected){
                                                    chec11=@"Nerve Conduction";
                                                }
                                                else{chec11=@"null";
                                                }
                                                if(checkbut12.selected){
                                                    chec12=@"EMG";
                                                }
                                                else{chec12=@"null";
                                                }
                                                if(checkbut13.selected){
                                                    chec13=@"Outside Refferal";
                                                }
                                                else{chec13=@"null";
                                                }
                                                if(checkbut14.selected){
                                                    chec14=@"D/C";
                                                }
                                                else{chec14=@"null";
                                                }
                                                if(checkbut15.selected)
                                                {
                                                    chec15=@"Other";
                                                }
                                                else
                                                    chec15=@"null";
                                                [recorddict addEntriesFromDictionary:temp];
                                                [recorddict setObject:first.text forKey:@"diagnosis1"];
                                                [recorddict setObject:second.text forKey:@"diagnosis2"];
                                                [recorddict setObject:three.text forKey:@"diagnosis3"];
                                                [recorddict setObject:four.text forKey:@"diagnosis4"];
                                                [recorddict setObject:five.text forKey:@"diagnosis5"];
                                                [recorddict setObject:six.text forKey:@"diagnosis6"];
                                                [recorddict setObject:seven.text forKey:@"day"];
                                                [recorddict setObject:eight.text forKey:@"week"];
                                                [recorddict setObject:othertext.text forKey:@"othercheck"];
                                                [recorddict setObject:signature.text forKey:@"signature"];
                                                [recorddict setObject:chec1 forKey:@"checkselected1"];
                                                [recorddict setObject:chec2 forKey:@"checkselected2"];
                                                [recorddict setObject:chec3 forKey:@"checkselected3"];
                                                [recorddict setObject:chec4 forKey:@"checkselected4"];
                                                [recorddict setObject:chec5 forKey:@"checkselected5"];
                                                [recorddict setObject:chec6 forKey:@"checkselected6"];
                                                [recorddict setObject:chec7 forKey:@"checkselected7"];
                                                [recorddict setObject:chec8 forKey:@"checkselected8"];
                                                [recorddict setObject:chec9 forKey:@"checkselected9"];
                                                [recorddict setObject:chec10 forKey:@"checkselected10"];
                                                [recorddict setObject:chec11 forKey:@"checkselected11"];
                                                [recorddict setObject:chec12 forKey:@"checkselected12"];
                                                [recorddict setObject:chec13 forKey:@"checkselected13"];
                                                [recorddict setObject:chec14 forKey:@"checkselected14"];
                                                // NSLog(@"Record dict Value in final knee exam::%@",recorddict);
                                                
                                            }
                                            else{
                                                suc=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid signature."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                                
                                            }
                                            
                                            
                                        }
                                        else{
                                            suc=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid other text field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                            
                                        }
                                        
                                        
                                    }
                                    
                                    else{
                                        suc=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid week field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                    }
                                    
                                    
                                }
                                else{
                                    suc=0;
                                    
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid day field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                    
                                }
                                
                                
                            }
                            else{
                                suc=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid diagnosis 6 field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                                
                            }
                            
                            
                        }
                        else{
                            suc=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid diagnosis 5 field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                            
                        }
                        
                        
                    }
                    else{
                        suc=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid diagnosis 4 field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                        
                    }
                    
                    
                }
                else{
                    suc=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid diagnosis 3 field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                }
                
                
            }
            else{
                suc=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid diagnosis 2 field."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
            }
            
            
        }
        else{
            suc=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid diagnosis 1 field."
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
    
    //        [self performSegueWithIdentifier:@"wristfinish" sender:self];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"wristexam Data"])
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
                //   [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
            }
        }
    }
    
    
    
}
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"wristexam Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form deletion successful."
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
                    // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
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
                    //   [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
                }
            }
        }
        
    }
}

-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Wristexam.php?service=wristexamdelete";
    
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

-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Wristexam.php?service=wristexamedit";
    NSLog(@"vlaue for date field::%@",[recorddict objectForKey:@"datefield"]);
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&muscle=%@&swelling=%@&dominanthand=%@&ao=%@&dysfunction=%@&thenareminence=%@&flexorcarpiradialis=%@&commonflexors=%@&hypothenareminence=%@&extensorcarpiradialis=%@&commonextensor=%@&abductorpolliuslongus=%@&abductorpollicisbrevis=%@&extensorpollicisbrevis=%@&note=%@&functional=%@&orthotpedic=%@&flexionleft=%@&flexionright=%@&extensionleft=%@&extensionright=%@&ulnarleft=%@&ulnarright=%@&radialleft=%@&radialright=%@&pronationleft=%@&pronationright=%@&allenleft=%@&allenright=%@&phalenleft=%@&phalenright=%@&reverseleft=%@&reverseright=%@&tenosynovitisleft=%@&tenosynovitisright=%@&tinnelsleft=%@&tinnelsright=%@&ulttleft=%@&ulttright=%@&neurological=%@&latdeltoidleft=%@&latdeltoidright=%@&latarmleft=%@&latarmright=%@&thirdleft=%@&thirdright=%@&medforearmleft=%@&medforearmright=%@&medelbowleft=%@&medelbowright=%@&shdleft=%@&shdright=%@&elbflexleft=%@&elbflexright=%@&elbextleft=%@&elbextright=%@&digitflexionleft=%@& digitflexionright=%@&digitabdleft=%@&digitabdright=%@&bicepsleft=%@&bicepsright=%@&brachioradleft=%@&brachioradright=%@&tricepsleft=%@&tricepsright=%@&typing=%@&driving=%@&other=%@&otherdefict=%@&comments=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&diagnosis6=%@&times=%@&weeks=%@&spinaldecompression=%@&chiropractic=%@&physicaltherapy=%@&bracing=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&scan=%@&conduction=%@&emg=%@&outsiderefferal=%@&dc=%@&others=%@&othervalue=%@&signature=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patname"],[recorddict objectForKey:@"datefield"],[recorddict objectForKey:@"muscle"],[recorddict objectForKey:@"swell"],[recorddict objectForKey:@"seg1"],[recorddict objectForKey:@"seg2"],[recorddict objectForKey:@"checkstringone"],[recorddict objectForKey:@"seg3"],[recorddict objectForKey:@"seg4"],[recorddict objectForKey:@"seg5"],[recorddict objectForKey:@"seg6"],[recorddict objectForKey:@"seg7"],[recorddict objectForKey:@"seg8"],[recorddict objectForKey:@"seg9"],[recorddict objectForKey:@"seg10"],[recorddict objectForKey:@"seg11"],[recorddict objectForKey:@"textviewone"],[recorddict objectForKey:@"checkstringtwo"],[recorddict objectForKey:@"checkstringthree"],[recorddict objectForKey:@"one"],[recorddict objectForKey:@"two"],[recorddict objectForKey:@"five"],[recorddict objectForKey:@"six"],[recorddict objectForKey:@"nine"],[recorddict objectForKey:@"ten"],[recorddict objectForKey:@"thirteen"],[recorddict objectForKey:@"fourteen"],[recorddict objectForKey:@"seventeen"],[recorddict objectForKey:@"eighteen"],[recorddict objectForKey:@"three"],[recorddict objectForKey:@"four"],[recorddict objectForKey:@"seven"],[recorddict objectForKey:@"eight"],[recorddict objectForKey:@"eleven"],[recorddict objectForKey:@"twelve"],[recorddict objectForKey:@"fifteen"],[recorddict objectForKey:@"sixteen"],[recorddict objectForKey:@"nineteen"],[recorddict objectForKey:@"twenty"],[recorddict objectForKey:@"twentyone"],[recorddict objectForKey:@"twentytwo"],[recorddict objectForKey:@"neuro"],[recorddict objectForKey:@"first"],[recorddict objectForKey:@"2nd"],[recorddict objectForKey:@"7th"],[recorddict objectForKey:@"8th"],[recorddict objectForKey:@"13th"],[recorddict objectForKey:@"14th"],[recorddict objectForKey:@"19th"],[recorddict objectForKey:@"20th" ],[recorddict objectForKey:@"23rd"],[recorddict objectForKey:@"24th"],[recorddict objectForKey:@"3rd"],[recorddict objectForKey:@"4th"],[recorddict objectForKey:@"9th"],[recorddict objectForKey:@"10th"],[recorddict objectForKey:@"15th"],[recorddict objectForKey:@"16th"],[recorddict objectForKey:@"21st"],[recorddict objectForKey:@"22nd"],[recorddict objectForKey:@"25th"],[recorddict objectForKey:@"26th"],[recorddict objectForKey:@"5th"],[recorddict objectForKey:@"6th"],[recorddict objectForKey:@"11th"],[recorddict objectForKey:@"12th"],[recorddict objectForKey:@"17th"],[recorddict objectForKey:@"18th"],[recorddict objectForKey:@"typing"],[recorddict objectForKey:@"driving"],[recorddict objectForKey:@"ot"],[recorddict objectForKey:@"othertext"],[recorddict objectForKey:@"addcmt"],[recorddict objectForKey:@"patientstatus"],[recorddict objectForKey:@"diagnosis1"],[recorddict objectForKey:@"diagnosis2"],[recorddict objectForKey:@"diagnosis3"],[recorddict objectForKey:@"diagnosis4"],[recorddict objectForKey:@"diagnosis5"],[recorddict objectForKey:@"diagnosis6"],[recorddict objectForKey:@"day"],[recorddict objectForKey:@"week"],chec1,chec2,chec3,chec4,chec5,chec6,chec7,chec8,chec9,chec10,chec11,chec12,chec13,chec14,chec15,othertext.text,signature.text,secondEntity,value2];
    
    
    
    
    
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"wristexam Data"])
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
                //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
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
    NSString *url1=@"Wristexam.php?service=wristexaminsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&muscle=%@&swelling=%@&dominanthand=%@&ao=%@&dysfunction=%@&thenareminence=%@&flexorcarpiradialis=%@&commonflexors=%@&hypothenareminence=%@&extensorcarpiradialis=%@&commonextensor=%@&abductorpolliuslongus=%@&abductorpollicisbrevis=%@&extensorpollicisbrevis=%@&note=%@&functional=%@&orthotpedic=%@&flexionleft=%@&flexionright=%@&extensionleft=%@&extensionright=%@&ulnarleft=%@&ulnarright=%@&radialleft=%@&radialright=%@&pronationleft=%@&pronationright=%@&allenleft=%@&allenright=%@&phalenleft=%@&phalenright=%@&reverseleft=%@&reverseright=%@&tenosynovitisleft=%@&tenosynovitisright=%@&tinnelsleft=%@&tinnelsright=%@&ulttleft=%@&ulttright=%@&neurological=%@&latdeltoidleft=%@&latdeltoidright=%@&latarmleft=%@&latarmright=%@&thirdleft=%@&thirdright=%@&medforearmleft=%@&medforearmright=%@&medelbowleft=%@&medelbowright=%@&shdleft=%@&shdright=%@&elbflexleft=%@&elbflexright=%@&elbextleft=%@&elbextright=%@&digitflexionleft=%@& digitflexionright=%@&digitabdleft=%@&digitabdright=%@&bicepsleft=%@&bicepsright=%@&brachioradleft=%@&brachioradright=%@&tricepsleft=%@&tricepsright=%@&typing=%@&driving=%@&other=%@&otherdefict=%@&comments=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&diagnosis6=%@&times=%@&weeks=%@&spinaldecompression=%@&chiropractic=%@&physicaltherapy=%@&bracing=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&scan=%@&conduction=%@&emg=%@&outsiderefferal=%@&dc=%@&others=%@&othervalue=%@&signature=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patname"],[recorddict objectForKey:@"datefield"],[recorddict objectForKey:@"muscle"],[recorddict objectForKey:@"swell"],[recorddict objectForKey:@"seg1"],[recorddict objectForKey:@"seg2"],[recorddict objectForKey:@"checkstringone"],[recorddict objectForKey:@"seg3"],[recorddict objectForKey:@"seg4"],[recorddict objectForKey:@"seg5"],[recorddict objectForKey:@"seg6"],[recorddict objectForKey:@"seg7"],[recorddict objectForKey:@"seg8"],[recorddict objectForKey:@"seg9"],[recorddict objectForKey:@"seg10"],[recorddict objectForKey:@"seg11"],[recorddict objectForKey:@"textviewone"],[recorddict objectForKey:@"checkstringtwo"],[recorddict objectForKey:@"checkstringthree"],[recorddict objectForKey:@"one"],[recorddict objectForKey:@"two"],[recorddict objectForKey:@"five"],[recorddict objectForKey:@"six"],[recorddict objectForKey:@"nine"],[recorddict objectForKey:@"ten"],[recorddict objectForKey:@"thirteen"],[recorddict objectForKey:@"fourteen"],[recorddict objectForKey:@"seventeen"],[recorddict objectForKey:@"eighteen"],[recorddict objectForKey:@"three"],[recorddict objectForKey:@"four"],[recorddict objectForKey:@"seven"],[recorddict objectForKey:@"eight"],[recorddict objectForKey:@"eleven"],[recorddict objectForKey:@"twelve"],[recorddict objectForKey:@"fifteen"],[recorddict objectForKey:@"sixteen"],[recorddict objectForKey:@"nineteen"],[recorddict objectForKey:@"twenty"],[recorddict objectForKey:@"twentyone"],[recorddict objectForKey:@"twentytwo"],[recorddict objectForKey:@"neuro"],[recorddict objectForKey:@"first"],[recorddict objectForKey:@"2nd"],[recorddict objectForKey:@"7th"],[recorddict objectForKey:@"8th"],[recorddict objectForKey:@"13th"],[recorddict objectForKey:@"14th"],[recorddict objectForKey:@"19th"],[recorddict objectForKey:@"20th" ],[recorddict objectForKey:@"23rd"],[recorddict objectForKey:@"24th"],[recorddict objectForKey:@"3rd"],[recorddict objectForKey:@"4th"],[recorddict objectForKey:@"9th"],[recorddict objectForKey:@"10th"],[recorddict objectForKey:@"15th"],[recorddict objectForKey:@"16th"],[recorddict objectForKey:@"21st"],[recorddict objectForKey:@"22nd"],[recorddict objectForKey:@"25th"],[recorddict objectForKey:@"26th"],[recorddict objectForKey:@"5th"],[recorddict objectForKey:@"6th"],[recorddict objectForKey:@"11th"],[recorddict objectForKey:@"12th"],[recorddict objectForKey:@"17th"],[recorddict objectForKey:@"18th"],[recorddict objectForKey:@"typing"],[recorddict objectForKey:@"driving"],[recorddict objectForKey:@"ot"],[recorddict objectForKey:@"othertext"],[recorddict objectForKey:@"addcmt"],[recorddict objectForKey:@"patientstatus"],[recorddict objectForKey:@"diagnosis1"],[recorddict objectForKey:@"diagnosis2"],[recorddict objectForKey:@"diagnosis3"],[recorddict objectForKey:@"diagnosis4"],[recorddict objectForKey:@"diagnosis5"],[recorddict objectForKey:@"diagnosis6"],[recorddict objectForKey:@"day"],[recorddict objectForKey:@"week"],chec1,chec2,chec3,chec4,chec5,chec6,chec7,chec8,chec9,chec10,chec11,chec12,chec13,chec14,chec15,othertext.text,signature.text,secondEntity,value2];
    
    
    
    
    
    NSLog(@"POST:%@",post);
    
    NSURL *url = [NSURL URLWithString:url2];
    
    //         NSLog(@"POST:%@",post);
    
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



@end
