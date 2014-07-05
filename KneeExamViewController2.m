//
//  KneeExamViewController2.m
//  EHR
//
//  Created by deemsys on 2/21/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "KneeExamViewController2.h"

#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "hamilViewController.h"
@interface KneeExamViewController2 ()
{
    databaseurl *du;
}

@end

@implementation KneeExamViewController2
@synthesize reset;
@synthesize save;
@synthesize resultset;
@synthesize cancel1;
@synthesize update;
@synthesize deleteform;
@synthesize reset1;
@synthesize temp;
@synthesize recorddict;
@synthesize checkbut1;
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
@synthesize  cancel;

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

- (void)viewDidLoad
{
    [super viewDidLoad];
    othertext.hidden=YES;
    chec1=@"null";
    chec2=@"null";
    chec3=@"null";
    chec4=@"null";
    chec5=@"null";
    chec6=@"null";
    chec7=@"null";
    chec8=@"null";
    chec9=@"null";
    chec10=@"null";
    chec11=@"null";
    chec12=@"null";
    chec13=@"null";
    chec14=@"null";
    chec15=@"null";
    othertext.text=@"";
    update.hidden=YES;
    reset1.hidden=YES;
    deleteform.hidden=YES;
    cancel1.hidden=YES;
    cancel.hidden=NO;
    save.hidden=NO;
    reset.hidden=NO;
    du=[[databaseurl alloc]init];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    
    //temp=[[NSMutableDictionary alloc]init];
    //temp=recorddict;
    // NSLog(@"in temp dict:%@",temp);
    // UITapGestureRecognizer *tapGR1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerViewTapped1)];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self getdata];
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    
	// Do any additional setup after loading the view.
}
-(void)getdata
{
    if ([resultset count]>0) {
        
        save.hidden=YES;
        reset.hidden=YES;
        cancel.hidden=YES;
        update.hidden=NO;
        deleteform.hidden=NO;
        reset1.hidden=NO;
        cancel1.hidden=NO;
        
        if([[resultset objectForKey:@"diagnosis1"] isEqualToString:@"null"]
           ){
            first.text=@"";
        }else{
            first.text=[resultset objectForKey:@"diagnosis1"];
        }
        if([[resultset objectForKey:@"diagnosis2"] isEqualToString:@"null"]){
            second.text=@"";
        }
        else{
            second.text=[resultset objectForKey:@"diagnosis2"];
        }
        if([[resultset objectForKey:@"diagnosis3"] isEqualToString:@"null"]){
            three.text=@"";
        }else{
            three.text=[resultset objectForKey:@"diagnosis3"];
        }
        if([[resultset objectForKey:@"diagnosis4"] isEqualToString:@"null"]){
            four.text=@"";
        }else{
            four.text=[resultset objectForKey:@"diagnosis4"];
        }
        if([[resultset objectForKey:@"diagnosis5"] isEqualToString:@"null"]){
            five.text=@"";
        }else{
            five.text=[resultset objectForKey:@"diagnosis5"];
        }
        if([[resultset objectForKey:@"diagnosis6"] isEqualToString:@"null"]){
            six.text=@"";
        }else{
            six.text=[resultset objectForKey:@"diagnosis6"];
        }
        if([[resultset objectForKey:@"week"] isEqualToString:@"null"]){
            eight.text=@"";
        }else{
            eight.text=[resultset objectForKey:@"week"];
        }
        if([[resultset objectForKey:@"times"] isEqualToString:@"null"]){
            seven.text=@"";
        }else{
            seven.text=[resultset objectForKey:@"times"];
        }
        
        
        
        if ([[resultset objectForKey:@"spinal"] isEqualToString:@"Spinal Decompression"]) {
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
        if ([[resultset objectForKey:@"physical"] isEqualToString:@"Physical Therapy"]) {
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
        
        if ([[resultset objectForKey:@"orthotics"] isEqualToString:@"Orthotics/Bracing"]) {
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
        if ([[resultset objectForKey:@"ctscan"] isEqualToString:@"CT Scan"]) {
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
        
        if ([[resultset objectForKey:@"nerve"] isEqualToString:@"Nerve Conduction"]) {
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
        if ([[resultset objectForKey:@"outside"] isEqualToString:@"Outside Refferal"]) {
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
        if ([[resultset objectForKey:@"otheraddress"] isEqualToString:@"Others"]) {
            checkbut15.selected=YES;
            othertext.hidden=NO;
            [checkbut15 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec15=@"Others";
        }
        else
        {
            checkbut15.selected=NO;
            othertext.hidden=YES;
            [checkbut15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec15=@"null";
            
            
        }
        othertext.text=[resultset objectForKey:@"break_text4"];
        signature.text=[resultset objectForKey:@"sign"];
        
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    /*  [first release];
     [second release];
     [three release];
     [four release];
     [four release];
     [six release];
     [seven release];
     [eight release];
     
     [othertext release];
     [signature release];
     */
    
    
    
    [cancel1 release];
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
    if(checkbut15.selected){
        othertext.hidden=NO;
        chec15=@"Others";
    }
    else{chec15=@"null";
        othertext.hidden=YES;
        chec15=othertext.text;
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
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(BOOL)validateString:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateString1:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(void)dismissKeyboard {
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
    if(!checkbut15.selected){
        othertext.text=@"";
    }
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
                                if([seven.text length]==0||([du otherfields:texty7]==1))
                                {
                                    if([eight.text length]==0||([du otherfields:texty8]==1))
                                    {
                                        if([othertext.text length]==0||([du otherfields:texty9]==1)){
                                            if([du otherfields:texty10]==1)
                                            {
                                                suc=1;
                                                
                                                
                                                [recorddict setObject:first.text forKey:@"firstdiagnosis"];
                                                [recorddict setObject:second.text forKey:@"seconddiagnosis"];
                                                [recorddict setObject:three.text forKey:@"thirddiagnosis"];
                                                [recorddict setObject:four.text forKey:@"fourthdiagnosis"];
                                                [recorddict setObject:five.text forKey:@"fifthdiagnosis"];
                                                [recorddict setObject:six.text forKey:@"sixthdiagnosis"];
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
                                                [recorddict setObject:chec15 forKey:@"checkselected15"];
                                                //  NSLog(@"Record dict Value in final knee exam::%@",recorddict);
                                                
                                            }
                                            else{
                                                suc=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid signature field."
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
                                                       description:@"Please enter all the required fields."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
    }
    if(suc==1){
        UIButton *buton=(UIButton*)sender;
        if(buton.tag==11)
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
            NSLog(@"record dict in 2nd page:%@",recorddict);
            NSLog(@"count in record dict:%d",[recorddict count]);
            
        }
        else  if(buton.tag==12)
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
        
        // [self performSegueWithIdentifier:@"kneefinish" sender:self];
        /* BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Succes!!"];
         
         
         [alert setDestructiveButtonWithTitle:@"x" block:nil];
         [alert show];*/
        
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"kneeexam Data"])
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
                //  [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
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
    
    
}-(void)insertdata
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"kneeexam Data"])
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
        }
    }
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"KneeExam.php?service=kneeexaminsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    NSLog(@"values in record dictionaries::");
    // NSLog(@"recorddict values::%@",recorddict);
    //NSLog(@"value of reflesxes si:%@",[recorddict objectForKey:@"reflexes SI left"]);
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&gait=%@&pelvicunleveling=%@&ao=%@&allsoft=%@&leglengthl=%@&leglengthtextl=%@&leglengthr=%@&leglengthtextr=%@&vmo=%@&quads=%@&semimemb=%@&semitend=%@&gastroc=%@&soleus=%@&iliotibband=%@&bicepsfem=%@&functionalrangeofmotion=%@&orthopedic=%@&flexion=%@&acll=%@&aclr=%@&extension=%@&pcll=%@&pclr=%@&internalrotationl=%@&internalrotationr=%@&lcll=%@&lclr=%@&externalrotationl=%@&externalrotationr=%@&mcll=%@&mclr=%@&circumferential=%@&meniscusl=%@&meniscusr=%@&apleysl=%@&apleysr=%@&cmabovel=%@&suprapatellarl=%@&infrapatellarl=%@&belowl=%@&distractionl=%@&distractionr=%@&cmabover=%@&suprapatellarr=%@&infrapatellarr=%@&belowr=%@&cmpl=%@&cmpr=%@&patdll=%@&patdlr=%@&neurologicaltest=%@&l1l=%@&l1r=%@&l15l=%@&l15r=%@&l2l=%@&l2r=%@&l25l=%@&l25r=%@&l3l=%@&l3r=%@&l35l=%@&l35r=%@&l4l=%@&l4r=%@&l45l=%@&l45r=%@&l4l3=%@&l4r3=%@&l5l=%@&l5r=%@&l55l=%@&l55r=%@&l5l3=%@&l5r3=%@&sl=%@&sr=%@&s5l=%@&s5r=%@&sil=%@&sir=%@&walking=%@&standing=%@&stairs=%@&otherfunctional=%@&break_text3=%@&assessment=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&diagnosis6=%@&times=%@&week=%@&spinal=%@&chiropractic=%@&physical=%@&orthotics=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&ctscan=%@&nerve=%@&emg=%@&outside=%@&dc=%@&otheraddress=%@&break_text4=%@&sign=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patname"],[recorddict objectForKey:@"datey"],[recorddict objectForKey:@"gait"],[recorddict objectForKey:@"pelvic seg one"],[recorddict objectForKey:@"anq seg two"],[recorddict objectForKey:@"firstcheck"],[recorddict objectForKey:@"secondcheck"],[recorddict objectForKey:@"leftcheck"],[recorddict objectForKey:@"thirdcheck"],[recorddict objectForKey:@"rightcheck"],[recorddict objectForKey:@"firstseg"],[recorddict objectForKey:@"secondseg"],[recorddict objectForKey:@"thirdseg"],[recorddict objectForKey:@"fourthseg"],[recorddict objectForKey:@"fifthseg"],[recorddict objectForKey:@"sixthseg"],[recorddict objectForKey:@"seventhseg"],[recorddict objectForKey:@"eigthseg"],[recorddict objectForKey:@"fourthcheck"],[recorddict objectForKey:@"fifthcheck"],[recorddict objectForKey:@"flexion"],[recorddict objectForKey:@"antleft"],[recorddict objectForKey:@"antright"],[recorddict objectForKey:@"extension"],[recorddict objectForKey:@"postleft"],[recorddict objectForKey:@"postright"],[recorddict objectForKey:@"internalleft"],[recorddict objectForKey:@"internalright"],[recorddict objectForKey:@"lclleft"],[recorddict objectForKey:@"lclright"],[recorddict objectForKey:@"externalleft"],[recorddict objectForKey:@"externalright"],[recorddict objectForKey:@"mclleft"],[recorddict objectForKey:@"mclright"],[recorddict objectForKey:@"sixthcheck"],[recorddict objectForKey:@"medleft"],[recorddict objectForKey:@"medright"],[recorddict objectForKey:@"menisleft"],[recorddict objectForKey:@"menisright"],[recorddict objectForKey:@"left1"],[recorddict objectForKey:@"left2"],[recorddict objectForKey:@"left3"],[recorddict objectForKey:@"left4"],[recorddict objectForKey:@"corleft"],[recorddict objectForKey:@"corright"],[recorddict objectForKey:@"right1"],[recorddict objectForKey:@"right2"],[recorddict objectForKey:@"right3"],[recorddict objectForKey:@"right4"],[recorddict objectForKey:@"cmpleft"],[recorddict objectForKey:@"cmpright"],[recorddict objectForKey:@"patleft"],[recorddict objectForKey:@"patright"],[recorddict objectForKey:@"checkstring1"],[recorddict objectForKey:@"sensel1left"],[recorddict objectForKey:@"sensel1right"],[recorddict objectForKey:@"motorl1left"],[recorddict objectForKey:@"motorl1right"],[recorddict objectForKey:@"sensel2left"],[recorddict objectForKey:@"sensel2right"],[recorddict objectForKey:@"motorl2left"],[recorddict objectForKey:@"motorl2right"],[recorddict objectForKey:@"sensel3left"],[recorddict objectForKey:@"sensel3right"],[recorddict objectForKey:@"motorl3left"],[recorddict objectForKey:@"motorl3right"],[recorddict objectForKey:@"sensel4left"],[recorddict objectForKey:@"sensel4right"],[recorddict objectForKey:@"motorl4left"],[recorddict objectForKey:@"motorl4right"],[recorddict objectForKey:@"refl3left"],[recorddict objectForKey:@"refl3right"],[recorddict objectForKey:@"sensel5left"],[recorddict objectForKey:@"sensel5right"],[recorddict objectForKey:@"motorl5left"],[recorddict objectForKey:@"motorl5right"],[recorddict objectForKey:@"refl5left"],[recorddict objectForKey:@"refl5right"],[recorddict objectForKey:@"sensesileft"],[recorddict objectForKey:@"sensesiright"],[recorddict objectForKey:@"motrorsileft"],[recorddict objectForKey:@"motrorsiright"],[recorddict objectForKey:@"refsileft"],[recorddict objectForKey:@"refsiright"],[recorddict objectForKey:@"checkstring2"],[recorddict objectForKey:@"checkstring3"],[recorddict objectForKey:@"checkstring4"],[recorddict objectForKey:@"checkstring5"],[recorddict objectForKey:@"otherone"],[recorddict objectForKey:@"addcomments"],[recorddict objectForKey:@"pickervalue"],[recorddict objectForKey:@"firstdiagnosis"],[recorddict objectForKey:@"seconddiagnosis"],[recorddict objectForKey:@"thirddiagnosis"],[recorddict objectForKey:@"fourthdiagnosis"],[recorddict objectForKey:@"fifthdiagnosis"],[recorddict objectForKey:@"sixthdiagnosis"],[recorddict objectForKey:@"day"],[recorddict objectForKey:@"week"],[recorddict objectForKey:@"checkselected1"],[recorddict objectForKey:@"checkselected2"],[recorddict objectForKey:@"checkselected3"],[recorddict objectForKey:@"checkselected4"],[recorddict objectForKey:@"checkselected5"],[recorddict objectForKey:@"checkselected6"],[recorddict objectForKey:@"checkselected7" ],[recorddict objectForKey:@"checkselected8"],[recorddict objectForKey:@"checkselected9"],[recorddict objectForKey:@"checkselected10"],[recorddict objectForKey:@"checkselected11"],[recorddict objectForKey:@"checkselected12"],[recorddict objectForKey:@"checkselected13"],[recorddict objectForKey:@"checkselected14"],[recorddict objectForKey:@"checkselected15"],[recorddict objectForKey:@"othercheck"],[recorddict objectForKey:@"signature"],secondEntity,value2];
    NSLog(@"POST:%@",post);
    //[recorddict objectForKey:@"ml4left"],[recorddict objectForKey:@"Physician signature"]
    NSURL *url = [NSURL URLWithString:url2];
    
    //NSLog(post);
    
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"kneeexam Data"])
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
                    //  [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
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
                    //  [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
                }
            }
        }
        
    }
    
}
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"KneeExam.php?service=kneeexamdelete";
    
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
    NSString *url1=@"KneeExam.php?service=kneeexamedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&gait=%@&pelvicunleveling=%@&ao=%@&allsoft=%@&leglengthl=%@&leglengthtextl=%@&leglengthr=%@&leglengthtextr=%@&vmo=%@&quads=%@&semimemb=%@&semitend=%@&gastroc=%@&soleus=%@&iliotibband=%@&bicepsfem=%@&functionalrangeofmotion=%@&orthopedic=%@&flexion=%@&acll=%@&aclr=%@&extension=%@&pcll=%@&pclr=%@&internalrotationl=%@&internalrotationr=%@&lcll=%@&lclr=%@&externalrotationl=%@&externalrotationr=%@&mcll=%@&mclr=%@&circumferential=%@&meniscusl=%@&meniscusr=%@&apleysl=%@&apleysr=%@&cmabovel=%@&suprapatellarl=%@&infrapatellarl=%@&belowl=%@&distractionl=%@&distractionr=%@&cmabover=%@&suprapatellarr=%@&infrapatellarr=%@&belowr=%@&cmpl=%@&cmpr=%@&patdll=%@&patdlr=%@&neurologicaltest=%@&l1l=%@&l1r=%@&l15l=%@&l15r=%@&l2l=%@&l2r=%@&l25l=%@&l25r=%@&l3l=%@&l3r=%@&l35l=%@&l35r=%@&l4l=%@&l4r=%@&l45l=%@&l45r=%@&l4l3=%@&l4r3=%@&l5l=%@&l5r=%@&l55l=%@&l55r=%@&l5l3=%@&l5r3=%@&sl=%@&sr=%@&s5l=%@&s5r=%@&sil=%@&sir=%@&walking=%@&standing=%@&stairs=%@&otherfunctional=%@&break_text3=%@&assessment=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&diagnosis6=%@&times=%@&week=%@&spinal=%@&chiropractic=%@&physical=%@&orthotics=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&ctscan=%@&nerve=%@&emg=%@&outside=%@&dc=%@&otheraddress=%@&break_text4=%@&sign=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patname"],[recorddict objectForKey:@"datey"],[recorddict objectForKey:@"gait"],[recorddict objectForKey:@"pelvic seg one"],[recorddict objectForKey:@"anq seg two"],[recorddict objectForKey:@"firstcheck"],[recorddict objectForKey:@"secondcheck"],[recorddict objectForKey:@"leftcheck"],[recorddict objectForKey:@"thirdcheck"],[recorddict objectForKey:@"rightcheck"],[recorddict objectForKey:@"firstseg"],[recorddict objectForKey:@"secondseg"],[recorddict objectForKey:@"thirdseg"],[recorddict objectForKey:@"fourthseg"],[recorddict objectForKey:@"fifthseg"],[recorddict objectForKey:@"sixthseg"],[recorddict objectForKey:@"seventhseg"],[recorddict objectForKey:@"eigthseg"],[recorddict objectForKey:@"fourthcheck"],[recorddict objectForKey:@"fifthcheck"],[recorddict objectForKey:@"flexion"],[recorddict objectForKey:@"antleft"],[recorddict objectForKey:@"antright"],[recorddict objectForKey:@"extension"],[recorddict objectForKey:@"postleft"],[recorddict objectForKey:@"postright"],[recorddict objectForKey:@"internalleft"],[recorddict objectForKey:@"internalright"],[recorddict objectForKey:@"lclleft"],[recorddict objectForKey:@"lclright"],[recorddict objectForKey:@"externalleft"],[recorddict objectForKey:@"externalright"],[recorddict objectForKey:@"mclleft"],[recorddict objectForKey:@"mclright"],[recorddict objectForKey:@"sixthcheck"],[recorddict objectForKey:@"medleft"],[recorddict objectForKey:@"medright"],[recorddict objectForKey:@"menisleft"],[recorddict objectForKey:@"menisright"],[recorddict objectForKey:@"left1"],[recorddict objectForKey:@"left2"],[recorddict objectForKey:@"left3"],[recorddict objectForKey:@"left4"],[recorddict objectForKey:@"corleft"],[recorddict objectForKey:@"corright"],[recorddict objectForKey:@"right1"],[recorddict objectForKey:@"right2"],[recorddict objectForKey:@"right3"],[recorddict objectForKey:@"right4"],[recorddict objectForKey:@"cmpleft"],[recorddict objectForKey:@"cmpright"],[recorddict objectForKey:@"patleft"],[recorddict objectForKey:@"patright"],[recorddict objectForKey:@"checkstring1"],[recorddict objectForKey:@"sensel1left"],[recorddict objectForKey:@"sensel1right"],[recorddict objectForKey:@"motorl1left"],[recorddict objectForKey:@"motorl1right"],[recorddict objectForKey:@"sensel2left"],[recorddict objectForKey:@"sensel2right"],[recorddict objectForKey:@"motorl2left"],[recorddict objectForKey:@"motorl2right"],[recorddict objectForKey:@"sensel3left"],[recorddict objectForKey:@"sensel3right"],[recorddict objectForKey:@"motorl3left"],[recorddict objectForKey:@"motorl3right"],[recorddict objectForKey:@"sensel4left"],[recorddict objectForKey:@"sensel4right"],[recorddict objectForKey:@"motorl4left"],[recorddict objectForKey:@"motorl4right"],[recorddict objectForKey:@"refl3left"],[recorddict objectForKey:@"refl3right"],[recorddict objectForKey:@"sensel5left"],[recorddict objectForKey:@"sensel5right"],[recorddict objectForKey:@"motorl5left"],[recorddict objectForKey:@"motorl5right"],[recorddict objectForKey:@"refl5left"],[recorddict objectForKey:@"refl5right"],[recorddict objectForKey:@"sensesileft"],[recorddict objectForKey:@"sensesiright"],[recorddict objectForKey:@"motrorsileft"],[recorddict objectForKey:@"motrorsiright"],[recorddict objectForKey:@"refsileft"],[recorddict objectForKey:@"refsiright"],[recorddict objectForKey:@"checkstring2"],[recorddict objectForKey:@"checkstring3"],[recorddict objectForKey:@"checkstring4"],[recorddict objectForKey:@"checkstring5"],[recorddict objectForKey:@"otherone"],[recorddict objectForKey:@"addcomments"],[recorddict objectForKey:@"pickervalue"],[recorddict objectForKey:@"firstdiagnosis"],[recorddict objectForKey:@"seconddiagnosis"],[recorddict objectForKey:@"thirddiagnosis"],[recorddict objectForKey:@"fourthdiagnosis"],[recorddict objectForKey:@"fifthdiagnosis"],[recorddict objectForKey:@"sixthdiagnosis"],[recorddict objectForKey:@"day"],[recorddict objectForKey:@"week"],[recorddict objectForKey:@"checkselected1"],[recorddict objectForKey:@"checkselected2"],[recorddict objectForKey:@"checkselected3"],[recorddict objectForKey:@"checkselected4"],[recorddict objectForKey:@"checkselected5"],[recorddict objectForKey:@"checkselected6"],[recorddict objectForKey:@"checkselected7" ],[recorddict objectForKey:@"checkselected8"],[recorddict objectForKey:@"checkselected9"],[recorddict objectForKey:@"checkselected10"],[recorddict objectForKey:@"checkselected11"],[recorddict objectForKey:@"checkselected12"],[recorddict objectForKey:@"checkselected13"],[recorddict objectForKey:@"checkselected14"],[recorddict objectForKey:@"checkselected15"],[recorddict objectForKey:@"othercheck"],[recorddict objectForKey:@"signature"],secondEntity,value2];
    
    
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

- (IBAction)reset:(id)sender {
    first.text=@"";
    second.text=@"";
    checkbut1.selected=NO;
    checkbut2.selected=NO;
    checkbut3.selected=NO;
    checkbut4.selected=NO;
    checkbut5.selected=NO;
    checkbut6.selected=NO;
    checkbut7.selected=NO;
    checkbut8.selected=NO;
    checkbut9.selected=NO;
    checkbut10.selected=NO;
    checkbut12.selected=NO;
    checkbut13.selected=NO;
    checkbut14.selected=NO;
    checkbut15.selected=NO;
    checkbut11.selected=NO;
    
    [checkbut1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    three.text=@"";
    four.text=@"";
    five.text=@"";
    signature.text=@"";
    six.text=@"";
    seven.text=@"";
    eight.text=@"";
    othertext.text=@"";
    othertext.hidden=YES;
    chec1=@"null";
    chec2=@"null";
    chec3=@"null";
    chec4=@"null";
    chec5=@"null";
    chec6=@"null";
    chec7=@"null";
    chec8=@"null";
    chec9=@"null";
    chec10=@"null";
    chec11=@"null";
    chec12=@"null";
    chec13=@"null";
    chec14=@"null";
    chec15=@"null";
    [checkbut1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [checkbut14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    [checkbut15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    
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
@end
