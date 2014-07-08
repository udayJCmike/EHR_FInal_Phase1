//
//  CervicalSpineViewController.m
//  physicalexam
//
//  Created by deemsys on 2/27/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "CervicalSpineViewController.h"
#import "CervicalSpineViewController1.h"
#import "databaseurl.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

@interface CervicalSpineViewController ()
{
    
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
    
}
@end

@implementation CervicalSpineViewController
@synthesize recorddict;
@synthesize check1;
@synthesize check2;
@synthesize check3;
@synthesize check4;
@synthesize check5;
@synthesize check6;
@synthesize check7;
@synthesize check8;
@synthesize check9;
@synthesize check10;
@synthesize check11;
@synthesize check12;
@synthesize check13;
@synthesize check14;
@synthesize check15;
@synthesize check16;
@synthesize check17;
@synthesize check18;
@synthesize check19;
@synthesize check25;
@synthesize check26;
@synthesize edema;
@synthesize trigger;
@synthesize seg1;
@synthesize seg2;
@synthesize seg3;
@synthesize seg4;


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

NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty42,*texty43,*texty44,*texty45,*texty46,*texty47,*texty48,*texty49,*texty50,*texty51,*texty52;
NSString *t1,*t2,*t3,*t4;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL)validateString:(NSString *)user

{
    NSString *userFormat1 =@"[0-9]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateString1:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z]+";
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
    NSString *countryFormat1 = @"[0-9]{1,2}+[/]+[0-9]{1,2}+[/]+[0-9]{4}";
    
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
-(void)dismissKeyboard {
      printView.hidden = YES;
    [_2 resignFirstResponder];
    [_3 resignFirstResponder];
    [_4 resignFirstResponder];
    [edema resignFirstResponder];
    [_6 resignFirstResponder];
    [_7 resignFirstResponder];
    [_8 resignFirstResponder];
    [trigger resignFirstResponder];
    [_10 resignFirstResponder];
    [_11 resignFirstResponder];
    [_12 resignFirstResponder];
    [_14 resignFirstResponder];
    [_15 resignFirstResponder];
    [_16 resignFirstResponder];
    [_18 resignFirstResponder];
    [_19 resignFirstResponder];
    [_20 resignFirstResponder];
    [_22 resignFirstResponder];
    [_23 resignFirstResponder];
    [_24 resignFirstResponder];
    
    
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

    du=[[databaseurl alloc]init];
    
    
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
    texty39=@"null";
    texty40=@"null";
    texty41=@"null";
    texty42=@"null";
    texty43=@"null";
    texty44=@"null";
    texty45=@"null";
    texty46=@"null";
    texty47=@"null";
    texty48=@"null";
    texty49=@"null";
    texty50=@"null";
    t1=@"Tonicity";
    t2=@"Tonicity";
    t3=@"Tonicity";
    t4=@"Tonicity";
    
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
- (IBAction)reset:(id)sender {
    edema.text=@"";
    trigger.text=@"";
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
    texty39=@"null";
    texty40=@"null";
    texty41=@"null";
    texty42=@"null";
    texty43=@"null";
    texty44=@"null";
    texty45=@"null";
    texty46=@"null";
    texty47=@"null";
    texty48=@"null";
    texty49=@"null";
    texty50=@"null";
    t1=@"Tonicity";
    t2=@"Tonicity";
    t3=@"Tonicity";
    t4=@"Tonicity";
    _2.text=@"";
    _3.text=@"";
    _4.text=@"";
    _6.text=@"";
    _7.text=@"";
    _8.text=@"";
    _10.text=@"";
    _11.text=@"";
    _12.text=@"";
    
    _14.text=@"";
    _15.text=@"";
    _16.text=@"";
    
    _18.text=@"";
    _19.text=@"";
    _20.text=@"";
    
    _22.text=@"";
    _23.text=@"";
    _24.text=@"";
    
    
    
    [seg1 setSelectedSegmentIndex:0];
    [seg2 setSelectedSegmentIndex:0];
    [seg3 setSelectedSegmentIndex:0];
    [seg4 setSelectedSegmentIndex:0];
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
    [check15 setSelected:NO];
    [check16 setSelected:NO];
    [check17 setSelected:NO];
    [check18 setSelected:NO];
    [check19 setSelected:NO];
    [check25 setSelected:NO];
    [check26 setSelected:NO];
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
    [check15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check19 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check25 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check26 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    
    
    
    
    
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)seg1act:(id)sender {
    if(seg1.selectedSegmentIndex==0)
    {
        t1=@"Tonicity";
    }
    else if(seg1.selectedSegmentIndex==1)
    {
        t1=@"Normal";
    }
}
- (IBAction)seg2act:(id)sender {
    if(seg2.selectedSegmentIndex==0)
    {
        t2=@"Tonicity";
    }
    else if(seg1.selectedSegmentIndex==1)
    {
        t2=@"Normal";
    }
}
- (IBAction)seg3act:(id)sender {
    if(seg3.selectedSegmentIndex==0)
    {
        t3=@"Tonicity";
    }
    else if(seg1.selectedSegmentIndex==1)
    {
        t3=@"Normal";
    }
}
- (IBAction)seg4act:(id)sender {
    if(seg4.selectedSegmentIndex==0)
    {
        t4=@"Tonicity";
    }
    else if(seg1.selectedSegmentIndex==1)
    {
        t4=@"Normal";
    }
}
- (IBAction)next:(id)sender {
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
        texty29=@"Normal";
    }
    else{
        texty29=@"null";
    }
    if(check4.selected){
        texty30=@"Right";
    }
    else{
        texty30=@"null";
    }
    if(check5.selected){
        texty31=@"Left";
    }
    else{
        texty31=@"null";
    }
    if(check6.selected){
        texty32=@"Normal";
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
        texty35=@"Normal";
    }
    else{
        texty35=@"null";
    }
    if(check10.selected){
        texty36=@"Right";
    }
    else{
        texty36=@"null";
    }
    if(check11.selected){
        texty37=@"Left";
    }
    else{
        texty37=@"null";
    }
    if(check12.selected){
        texty38=@"Normal";
    }
    else{
        texty38=@"null";
    }
    if(check13.selected){
        texty39=@"Hyper";
    }
    else{
        texty39=@"null";
    }
    if(check14.selected){
        texty40=@"Hypo";
    }
    else{
        texty40=@"null";
    }
    if(check15.selected){
        texty41=@"Normal";
    }
    else{
        texty41=@"null";
    }
    
    if(check16.selected){
        texty42=@"Lymphedema";
    }
    else{
        texty42=@"null";
    }
    if(check17.selected){
        texty43=@"Normal";
    }
    else{
        texty43=@"null";
    }
    if(check18.selected){
        texty44=@"Pain";
    }
    else{
        texty44=@"null";
    }
    if(check19.selected){
        texty45=@"Spasm";
    }
    else{
        texty45=@"null";
    }
    if(check25.selected){
        texty51=@"Fixations";
    }
    else{
        texty51=@"null";
    }
    if(check26.selected){
        texty52=@"No Fixations";
    }
    else{
        texty52=@"null";
    }
    texty1=[edema.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[_2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[_3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[_4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[trigger.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[_6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[_7.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[_8.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty10=_10.text;
    texty11=_11.text;
    texty12=_12.text;
    
    texty14=_14.text;
    texty15=_15.text;
    texty16=_16.text;
    
    texty18=_18.text;
    texty19=_19.text;
    texty20=_20.text;
    
    texty22=_22.text;
    texty23=_23.text;
    texty24=_24.text;
    if([edema.text length]==0||([du otherfields:edema.text]==1))
    {
        if([trigger.text length]==0||([du otherfields:trigger.text]==1))
        {
            if([_2.text length]==0||([du date:_2.text]==1))
            {
                if([_3.text length]==0||([du date:_3.text]==1))
                {
                    if([_4.text length]==0||([du date:_4.text]==1))
                        
                    {
                        if([_6.text length]==0||([du date:texty6]==1))
                        {
                            if([_7.text length]==0||([du date:_7.text]==1))
                            {
                                if([_8.text length]==0||([du date:_8.text]==1))
                                {
                                    
                                    if([_10.text length]==0||([du date:texty10]==1))
                                    {
                                        if([_11.text length]==0||([du date:texty11]==1))
                                        {
                                            if([_12.text length]==0||([du date:texty12]==1))
                                            {
                                                
                                                if([_14.text length]==0||([du date:texty14]==1))
                                                {
                                                    if([_15.text length]==0||([du date:texty15]==1))
                                                    {
                                                        if([_16.text length]==0||([du date:texty16]==1))
                                                        {
                                                            
                                                            if([_18.text length]==0||([du date:texty18]==1))
                                                            {
                                                                if([_19.text length]==0||([du date:texty19]==1))
                                                                {
                                                                    if([_20.text length]==0||([du date:texty20]==1))
                                                                    {
                                                                        
                                                                        if([_22.text length]==0||([du date:texty22]==1))
                                                                        {
                                                                            if([_23.text length]==0||([du date:texty23]==1))
                                                                            {
                                                                                if([_24.text length]==0||([du date:texty24]==1))
                                                                                {
                                                                                    
                                                                                    suc=1;
                                                                                    
                                                                                    
                                                                                    [recorddict setObject:edema.text forKey:@"edema"];
                                                                                    [recorddict setObject:_2.text forKey:@"2nd"];
                                                                                    [recorddict setObject:_3.text forKey:@"3rd"];
                                                                                    [recorddict setObject:_4.text forKey:@"4th"];
                                                                                    [recorddict setObject:trigger.text forKey:@"trigger"];
                                                                                    [recorddict setObject:_6.text forKey:@"6th"];
                                                                                    [recorddict setObject:_7.text forKey:@"7th"];
                                                                                    [recorddict setObject:_8.text forKey:@"8th"];
                                                                                    [recorddict setObject:t1 forKey:@"t1"];
                                                                                    [recorddict setObject:t2 forKey:@"t2"];
                                                                                    [recorddict setObject:t3 forKey:@"t3"];
                                                                                    [recorddict setObject:t4 forKey:@"t4"];
                                                                                    [recorddict setObject:_10.text forKey:@"10th"];
                                                                                    [recorddict setObject:_11.text forKey:@"11th"];
                                                                                    [recorddict setObject:_12.text forKey:@"12th"];
                                                                                    // [recorddict setObject:_13.text forKey:@"13th"];
                                                                                    [recorddict setObject:_14.text forKey:@"14th"];
                                                                                    [recorddict setObject:_15.text forKey:@"15th"];
                                                                                    [recorddict setObject:_16.text forKey:@"16th"];
                                                                                    // [recorddict setObject:_17.text forKey:@"17th"];
                                                                                    [recorddict setObject:_18.text forKey:@"18th"];
                                                                                    [recorddict setObject:_19.text forKey:@"19th"];
                                                                                    [recorddict setObject:_20.text forKey:@"20th"];
                                                                                    //  [recorddict setObject:_21.text forKey:@"21st"];
                                                                                    [recorddict setObject:_22.text forKey:@"22nd"];
                                                                                    [recorddict setObject:_23.text forKey:@"23rd"];
                                                                                    [recorddict setObject:_24.text forKey:@"24th"];
                                                                                    [recorddict setObject:texty27 forKey:@"inspection1"];
                                                                                    [recorddict setObject:texty28 forKey:@"inspection2"];
                                                                                    [recorddict setObject:texty29 forKey:@"inspection3"];
                                                                                    [recorddict setObject:texty30 forKey:@"inspection4"];
                                                                                    [recorddict setObject:texty31 forKey:@"inspection5"];
                                                                                    [recorddict setObject:texty32 forKey:@"inspection6"];
                                                                                    [recorddict setObject:texty33 forKey:@"inspection7"];
                                                                                    [recorddict setObject:texty34 forKey:@"inspection8"];
                                                                                    [recorddict setObject:texty35 forKey:@"inspection9"];
                                                                                    [recorddict setObject:texty36 forKey:@"inspection10"];
                                                                                    [recorddict setObject:texty37 forKey:@"inspection11"];
                                                                                    [recorddict setObject:texty38 forKey:@"inspection12"];
                                                                                    [recorddict setObject:texty39 forKey:@"inspection13"];
                                                                                    [recorddict setObject:texty40 forKey:@"inspection14"];
                                                                                    [recorddict setObject:texty41 forKey:@"inspection15"];
                                                                                    [recorddict setObject:texty42 forKey:@"palpation1"];
                                                                                    [recorddict setObject:texty43 forKey:@"palpation2"];
                                                                                    [recorddict setObject:texty44 forKey:@"palpation3"];
                                                                                    [recorddict setObject:texty45 forKey:@"palpation4"];
                                                                                    [recorddict setObject:texty51 forKey:@"palpation5"];
                                                                                    [recorddict setObject:texty52 forKey:@"palpation6"];
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    //  NSLog(@"Record dict in cervical form one::%@",recorddict);
                                                                                    
                                                                                }
                                                                                
                                                                                else
                                                                                {
                                                                                    suc=0;
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid stiff lr-80 field Value."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                suc=0;
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid spasm lr-80 field Value."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            suc=0;
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid pain lr-80 field Value."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        suc=0;
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid stiff rr 80 field Value."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    suc=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid spasm rr 80 field Value."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                    
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                suc=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid pain rr 80  field Value."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                            
                                                            
                                                            
                                                        }
                                                        else
                                                        {
                                                            suc=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid stiff llf 45 field Value."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        suc=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid spasm llf 45 field Value."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    suc=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid pain llf 45 field Value."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                }
                                                
                                                
                                                
                                            }
                                            else
                                            {
                                                suc=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid stiff rlf 45 field Value."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            suc=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid spasm rlf 45 field Value."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        suc=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid pain rlf 45 field Value."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                    }
                                    
                                    
                                    
                                }
                                else
                                {
                                    suc=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid stiff ext 75 field Value."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                }
                                
                            }
                            else
                            {
                                suc=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid spasm ext 75 field Value."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                            }
                            
                        }
                        else
                        {
                            suc=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid pain ext 75 field Value."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        suc=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid stiff flex 60 field Value."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                    }
                    
                }
                else
                {
                    suc=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid flex 60 spasm field Value."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                }
                
            }
            else
            {
                suc=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid flex 60 pain field Value."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
            }
            
        }
        else
        {
            suc=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid trigger point field Value."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
        }
    }  else
    {
        suc=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter valid edema field Value."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
    }
    
    
    if(suc==1){
        [self performSegueWithIdentifier:@"physic2" sender:self];
    }
    
}






- (void)dealloc {
    
    
    
    [super dealloc];
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    // NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"physic2"])
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
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    if ([segue.identifier isEqualToString:@"physic2"])
    {
        
        //  NSLog(@"succc value in prepre segue %i ",suc);
        CervicalSpineViewController1 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        //NSLog(@"recorddict in knee exam controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
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
