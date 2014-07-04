//
//  LumbarSpineViewController.m
//  physicalexam
//
//  Created by deemsys on 2/28/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "LumbarSpineViewController.h"
#import "LumbarSpineViewController1.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"

#import "StringConstants.h"
#import "TWMessageBarManager.h"
@interface LumbarSpineViewController ()

@end

@implementation LumbarSpineViewController
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
@synthesize check23;
@synthesize check24;
@synthesize check25;
@synthesize check26;
@synthesize check27;
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
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty42,*texty49,*texty50,*texty51,*texty52,*texty53;
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
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9_-]{1,5}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(void)dismissKeyboard {
    // [_1 resignFirstResponder];
    [_2 resignFirstResponder];
    [_3 resignFirstResponder];
    [_4 resignFirstResponder];
    // [_5 resignFirstResponder];
    [_6 resignFirstResponder];
    [_7 resignFirstResponder];
    [_8 resignFirstResponder];
    // [_9 resignFirstResponder];
    [_10 resignFirstResponder];
    [_11 resignFirstResponder];
    [_12 resignFirstResponder];
    //[_13 resignFirstResponder];
    [_14 resignFirstResponder];
    [_15 resignFirstResponder];
    [_16 resignFirstResponder];
    // [_17 resignFirstResponder];
    [_18 resignFirstResponder];
    [_19 resignFirstResponder];
    [_20 resignFirstResponder];
    // [_21 resignFirstResponder];
    [_22 resignFirstResponder];
    [_23 resignFirstResponder];
    [_24 resignFirstResponder];
    
    
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}
- (IBAction)reset:(id)sender {
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
    
    texty49=@"null";
    texty50=@"null";
    texty51=@"null";
    texty52=@"null";
    texty53=@"null";
    t1=@"Tonicity";
    t2=@"Tonicity";
    t3=@"Tonicity";
    t4=@"Tonicity";
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
    [check23 setSelected:NO];
    [check24 setSelected:NO];
    [check25 setSelected:NO];
    [check26 setSelected:NO];
    [check27 setSelected:NO];
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
    [check23 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check24 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check25 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check26 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check27 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
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
    
    texty49=@"null";
    texty50=@"null";
    texty51=@"null";
    texty52=@"null";
    texty53=@"null";
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
        texty36=@"Hyper";
    }
    else{
        texty36=@"null";
    }
    if(check11.selected){
        texty37=@"Hypo";
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
        texty39=@"Pain";
    }
    else{
        texty39=@"null";
    }
    if(check14.selected){
        texty40=@"Spasm";
    }
    else{
        texty40=@"null";
    }
    if(check15.selected){
        texty41=@"Edema";
    }
    else{
        texty41=@"null";
    }
    
    if(check16.selected){
        texty42=@"TriggerPoint";
    }
    else{
        texty42=@"null";
    }
    if(check23.selected){
        texty49=@"Fixations";
    }
    else{
        texty49=@"null";
    }
    if(check24.selected){
        texty50=@"No Fixations";
    }
    else{
        texty50=@"null";
    }
    if(check25.selected){
        texty51=@"Tender";
    }
    else{
        texty51=@"null";
    }
    if(check26.selected){
        texty52=@"Pulsations";
    }
    else{
        texty52=@"null";
    }
    if(check27.selected){
        texty53=@"Ascites";
    }
    else{
        texty53=@"null";
    }
    // texty1=[_1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[_2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[_3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[_4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    // texty5=[_5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[_6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[_7.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[_8.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    // texty9=[_9.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty10=[_10.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty11=[_11.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty12=[_12.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //texty13=[_13.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty14=[_14.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty15=[_15.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty16=[_16.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //texty17=[_17.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty18=[_18.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty19=[_19.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty20=[_20.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //texty21=[_21.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty22=[_22.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty23=[_23.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty24=[_24.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if([_2.text length]==0||([self validateString:texty2]==1))
    {
        if([_3.text length]==0||([self validateString:texty3]==1))
        {
            if([_4.text length]==0||([self validateString:texty4]==1))
            {
                
                if([_6.text length]==0||([self validateString:texty6]==1))
                {
                    if([_7.text length]==0||([self validateString:texty7]==1))
                    {
                        if([_8.text length]==0||([self validateString:texty8]==1))
                        {
                            
                            if([_10.text length]==0||([self validateString:texty10]==1))
                            {
                                if([_11.text length]==0||([self validateString:texty11]==1))
                                {
                                    if([_12.text length]==0||([self validateString:texty12]==1))
                                    {
                                        if([_14.text length]==0||([self validateString:texty14]==1))
                                        {
                                            if([_15.text length]==0||([self validateString:texty15]==1))
                                            {
                                                if([_16.text length]==0||([self validateString:texty16]==1))
                                                {
                                                    
                                                    if([_18.text length]==0||([self validateString:texty18]==1))
                                                    {
                                                        if([_19.text length]==0||([self validateString:texty19]==1))
                                                        {
                                                            if([_20.text length]==0||([self validateString:texty20]==1))
                                                            {
                                                                
                                                                if([_22.text length]==0||([self validateString:texty22]==1))
                                                                {
                                                                    if([_23.text length]==0||([self validateString:texty23]==1))
                                                                    {
                                                                        if([_24.text length]==0||([self validateString:texty24]==1))
                                                                        {
                                                                            
                                                                            suc=1;
                                                                            
                                                                            
                                                                            //    [recorddict setObject:_1.text forKey:@"lumbar1st"];
                                                                            [recorddict setObject:_2.text forKey:@"lumbar2nd"];
                                                                            [recorddict setObject:_3.text forKey:@"lumbar3rd"];
                                                                            [recorddict setObject:_4.text forKey:@"lumbar4th"];
                                                                            //[recorddict setObject:_5.text forKey:@"lumbar5th"];
                                                                            [recorddict setObject:_6.text forKey:@"lumbar6th"];
                                                                            [recorddict setObject:_7.text forKey:@"lumbar7th"];
                                                                            [recorddict setObject:_8.text forKey:@"lumbar8th"];
                                                                            // [recorddict setObject:_9.text forKey:@"lumbar9th"];
                                                                            [recorddict setObject:_10.text forKey:@"lumbar10th"];
                                                                            [recorddict setObject:_11.text forKey:@"lumbar11th"];
                                                                            [recorddict setObject:_12.text forKey:@"lumbar12th"];
                                                                            [recorddict setObject:t1 forKey:@"seg1"];
                                                                            [recorddict setObject:t2 forKey:@"seg2"];
                                                                            [recorddict setObject:t3 forKey:@"seg3"];
                                                                            [recorddict setObject:t4 forKey:@"seg4"];
                                                                            [recorddict setObject:_14.text forKey:@"lumbar14th"];
                                                                            [recorddict setObject:_15.text forKey:@"lumbar15th"];
                                                                            [recorddict setObject:_16.text forKey:@"lumbar16th"];
                                                                            // [recorddict setObject:_17.text forKey:@"lumbar17th"];
                                                                            [recorddict setObject:_18.text forKey:@"lumbar18th"];
                                                                            [recorddict setObject:_19.text forKey:@"lumbar19th"];
                                                                            [recorddict setObject:_20.text forKey:@"lumbar20th"];
                                                                            //[recorddict setObject:_21.text forKey:@"lumbar21st"];
                                                                            [recorddict setObject:_22.text forKey:@"lumbar22nd"];
                                                                            [recorddict setObject:_23.text forKey:@"lumbar23rd"];
                                                                            [recorddict setObject:_24.text forKey:@"lumbar24th"];
                                                                            [recorddict setObject:texty27 forKey:@"lumbarspineinsection1"];
                                                                            [recorddict setObject:texty28 forKey:@"lumbarspineinsection2"];
                                                                            [recorddict setObject:texty29 forKey:@"lumbarspineinsection3"];
                                                                            [recorddict setObject:texty30 forKey:@"lumbarspineinsection4"];
                                                                            [recorddict setObject:texty31 forKey:@"lumbarspineinsection5"];
                                                                            [recorddict setObject:texty32 forKey:@"lumbarspineinsection6"];
                                                                            [recorddict setObject:texty33 forKey:@"lumbarspineinsection7"];
                                                                            [recorddict setObject:texty34 forKey:@"lumbarspineinsection8"];
                                                                            [recorddict setObject:texty35 forKey:@"lumbarspineinsection9"];
                                                                            [recorddict setObject:texty36 forKey:@"lumbarspineinsection10"];
                                                                            [recorddict setObject:texty37 forKey:@"lumbarspineinsection11"];
                                                                            [recorddict setObject:texty38 forKey:@"lumbarspineinsection12"];
                                                                            [recorddict setObject:texty39 forKey:@"lumbarspinepalpation1"];
                                                                            [recorddict setObject:texty40 forKey:@"lumbarspinepalpation2"];
                                                                            [recorddict setObject:texty41 forKey:@"lumbarspinepalpation3"];
                                                                            [recorddict setObject:texty42 forKey:@"lumbarspinepalpation4"];
                                                                            
                                                                            [recorddict setObject:texty49 forKey:@"lumbarspinepalpation11"];
                                                                            [recorddict setObject:texty50 forKey:@"lumbarspinepalpation12"];
                                                                            [recorddict setObject:texty51 forKey:@"lumbarspinepalpation13"];
                                                                            [recorddict setObject:texty52 forKey:@"lumbarspinepalpation14"];
                                                                            [recorddict setObject:texty53 forKey:@"lumbarspinepalpation15"];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            //     NSLog(@"Record dict in lumbar spine form one::%@",recorddict);
                                                                            
                                                                        }
                                                                        
                                                                        else
                                                                        {
                                                                            suc=0;
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Enter valid stiff lr-30 field Value."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        suc=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Enter valid spasm lr-30 field Value."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    suc=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Enter valid pain lr-30 field Value."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                    
                                                                }
                                                                
                                                                
                                                                
                                                            }
                                                            else
                                                            {
                                                                suc=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Enter valid stiff rr 30 field Value."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            suc=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Enter valid spasm rr 30  field Value."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        suc=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Enter valid pain rr 30  field Value."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                    
                                                    
                                                    
                                                }
                                                else
                                                {
                                                    suc=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Enter valid stiff llf 25 field Value."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                suc=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Enter valid spasm llf 25 field Value."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            suc=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Enter valid pain llf 25 field Value."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                        }
                                        
                                        
                                        
                                    }
                                    else
                                    {
                                        suc=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Enter valid stiff rlf 25 field Value."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                    }
                                    
                                }
                                else
                                {
                                    suc=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Enter valid spasm rlf 25 field Value."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                }
                                
                            }
                            else
                            {
                                suc=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Enter valid pain rlf 25 field Value."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                            }
                            
                            
                            
                        }
                        else
                        {
                            suc=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Enter valid stiff ext 30 field Value."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                        }
                        
                    }
                    else
                    {
                        suc=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Enter valid spasm ext 30 field Value."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                    }
                    
                }
                else
                {
                    suc=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Enter valid pain ext 30 field Value."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                }
                
                
                
            }
            else
            {
                suc=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Enter valid stiff flex 80 field Value."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
            }
            
        }
        else
        {
            suc=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Enter valid flex 80 spasm field Value."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
        }
        
    }
    else
    {
        suc=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter valid flex 80 pain field Value."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
    }
    
    
    
    if(suc==1){
        [self performSegueWithIdentifier:@"physic5" sender:self];
    }
    
}






- (void)dealloc {
    
    [super dealloc];
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    // NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"physic5"])
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
    
    
    if ([segue.identifier isEqualToString:@"physic5"])
    {
        
        // NSLog(@"succc value in prepre segue %i ",suc);
        LumbarSpineViewController1 *destViewController = [segue destinationViewController];
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
@end
