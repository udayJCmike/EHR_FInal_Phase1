//
//  soapnotes1ViewController.m
//  soapnotes
//
//  Created by Admin on 10/05/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "soapnotes1ViewController.h"
#import "soapnotes2ViewController.h"
#import "databaseurl.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import <QuartzCore/QuartzCore.h>

@interface soapnotes1ViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation soapnotes1ViewController
@synthesize resultset;
@synthesize activeTextField;
@synthesize cancel;
@synthesize reset;
@synthesize next;
@synthesize adddiag;
@synthesize line1;
@synthesize line2;
@synthesize line3;
@synthesize t1;
@synthesize t2;
@synthesize t3;
@synthesize t4;
@synthesize t5;
@synthesize t6;
@synthesize t7;
@synthesize t8;
@synthesize t9;
@synthesize t10;
@synthesize t11;
@synthesize t12;
@synthesize d1;
@synthesize painscale;
@synthesize l1;
@synthesize l2;
@synthesize l3;
@synthesize l4;
@synthesize l5;
@synthesize l6;
@synthesize l7;
@synthesize l8;
@synthesize l9;
@synthesize l10;
@synthesize b1;
@synthesize b2;
@synthesize b3;
@synthesize b4;
@synthesize b5;
@synthesize b6;
@synthesize b7;
@synthesize b8;
@synthesize b9;
@synthesize b10;
@synthesize pick1 ;
@synthesize pick2 ;
@synthesize pick3 ;
@synthesize pick4 ;
@synthesize pick5 ;
@synthesize pick6 ;
@synthesize pick7 ;
@synthesize pick8 ;
@synthesize pick9 ;
@synthesize pick10 ;
@synthesize painval;
@synthesize recorddict;
@synthesize scrollview;
@synthesize other;
@synthesize imageview;



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


int changesize;

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



- (void)viewDidLoad
{
    [super viewDidLoad];
    scrollview.canCancelContentTouches = NO;
    scrollview.delaysContentTouches = NO;
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
    pick1.hidden=YES;
    pick2.hidden=YES;
    pick3.hidden=YES;
    pick4.hidden=YES;
    pick5.hidden=YES;
    pick6.hidden=YES;
    pick7.hidden=YES;
    pick8.hidden=YES;
    pick9.hidden=YES;
    pick10.hidden=YES;
    l1.text=@"2";
    l2.text=@"Fixations";
    l3.text=@"Not Improved";
    l4.text=@"SCSM";
    l5.text=@"Fixations";
    l6.text=@"Not Improved";
    l7.text=@"SCSM";
    l8.text=@"Fixations";
    l9.text=@"Not Improved";
    l10.text=@"SCSM";
    painval.text=@"No Pain";
    other.hidden=YES;
    inc=1;
    for (UIScrollView *v in [self.scrollview subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    diagnosisresult=[[NSMutableArray alloc]init];
    a1=[[NSArray alloc]initWithObjects:@"2",@"3",@"4", @"5", @"6", @"7", @"8",@"9",@"10", @"11",@"Re-exam",@"one spot x-ray",@"2 to 7 C/S X-Rays",@"2 to 6 T/S X-Rays",@"2-6 L/S X-Rays",@"2 Chest X-Rays",@"ExtremitiesX-Rays",@"SCSM 1-2 region",@"SCSM 3-4 regions",@"5 regions",@"extraspinal 1 or more regions",@"MR",@"Home Exercises",@"SCSM",@" EMS",@"MASS",@" Ice",@"Heat",@"NMR",@"TP",@" US",@" Iontophoresis",@"Traction",@" MRI",@"LAB",@"2nd Opinion",@"Rehab",@"Stretch exer",@"Off Work",@"Back To Work",@"Strength excer",@"Lifestyle modifications",@"Re Eval.in ", nil];
    a2=[[NSArray alloc]initWithObjects:@"Fixations",@"Tenderness to palpation",@"Spasm",@"Trigger pts.",@" Hypertonicity",@"Edema",@"Decreased ROM",@"Short leg Right Temp.Change",@"Short leg Left Temp.Change",@" Atrophy",@" Decr Strength", nil];
    a3=[[NSArray alloc]initWithObjects: @"Not Improved",@"Progressing Slow",@"Exacerbation of C.C.",@"Flare-ups",@"Mildly imp.",@"Moderatly imp.",@"Plateu",@"Pre Injury Status", nil];
    a4=[[NSArray alloc]initWithObjects:@"SCSM",@"EMS",@"MASS",@"Ice",@"Heat",@"NMR",@"TP",@"US",@"Iontophoresis",@"Traction",@"Nutrition",@"Off Work",@"Light Duty",@"ROM",@"Back To Work",@"Strength excer",@" ROF",@"Re Exam",@"Refer to",@"Release from care", nil];
    x=492;y=175;
    [scrollview setScrollEnabled:YES];
    changesize=1200;
    [imageview setImage:[UIImage imageNamed:@"BG.png"]];
    [scrollview setContentSize:CGSizeMake(768, changesize)];
    CGSize x1 = imageview.image.size;
    x1.height= changesize;
    x1.width=x1.width;
    imageview.frame=CGRectMake(0.0 ,0.0, x1.width, changesize);
    
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self displayData];
    
    
    //   [scrollview insertSubview:[UIImage imageNamed:@"BG.png"] atIndex:0];
    //scrollview.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"BG.png"]];
    //  scrollview.backgroundColor=[UIColor clearColor];
}
-(void)displayData
{
    if ([resultset count]>0)
    {
        NSString *temp21=[resultset objectForKey:@"painscale"];
        if ([temp21 isEqualToString:@"Severe Pain"])
        {
            [painscale setValue:10 animated:YES];
        }
        else if ([temp21 isEqualToString:@"No Pain"])
        {
            [painscale setValue:0 animated:YES];
        }
        else
        {
            [painscale setValue:[temp21 floatValue] animated:YES];
        }
        
        painval.text=[NSString stringWithFormat:@"%@",[resultset objectForKey:@"painscale"]];
        
        t1.text=[resultset objectForKey:@"date1"];
        t2.text=[resultset objectForKey:@"improved"];
        t3.text=[resultset objectForKey:@"worsened"];
        t4.text=[resultset objectForKey:@"date2"];
        t5.text=[resultset objectForKey:@"improved1"];
        t6.text=[resultset objectForKey:@"worsened1"];
        t7.text=[resultset objectForKey:@"date3"];
        t8.text=[resultset objectForKey:@"improved2"];
        t9.text=[resultset objectForKey:@"worsened2"];
        t10.text=[resultset objectForKey:@"date4"];
        t11.text=[resultset objectForKey:@"improved3"];
        t12.text=[resultset objectForKey:@"worsened3"];
        l1.text=[resultset objectForKey:@"e1e2"];
        l2.text=[resultset objectForKey:@"fixation1"];
        l3.text=[resultset objectForKey:@"notimproved1"];
        l4.text=[resultset objectForKey:@"scsm1"];
        l5.text=[resultset objectForKey:@"fixation2"];
        l6.text=[resultset objectForKey:@"notimproved2"];
        l7.text=[resultset objectForKey:@"scsm2"];
        l8.text=[resultset objectForKey:@"fixation3"];
        l9.text=[resultset objectForKey:@"notimproved3"];
        l10.text=[resultset objectForKey:@"scsm3"];
        other.text=[resultset objectForKey:@"xray"];
        if ([l1.text isEqualToString:@"ExtremitiesX-Rays"])
        {
            other.hidden=NO;
        }
        else
        {
            other.hidden=YES;
        }
        diagnosisresult=[resultset objectForKey:@"diagnosis"];
        d1.text=[diagnosisresult objectAtIndex:0];
        for (int i=1; i<[diagnosisresult count]; i++) {
            [self adddiag:self];
        }
        
    }
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    self.activeTextField = textField;
}
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    self.activeTextField = nil;
}
- (void)dismissKeyboard
{
    printView.hidden = YES;
    [activeTextField resignFirstResponder];
    [t2 resignFirstResponder];
    [t3 resignFirstResponder];
    [t5 resignFirstResponder];
    [t6 resignFirstResponder];
    [t8 resignFirstResponder];
    [t9 resignFirstResponder];
    [t11 resignFirstResponder];
    [t12 resignFirstResponder];
    [other resignFirstResponder];
    
    
}
-(BOOL)validatevalues:(NSString *)user

{
    NSString *userFormat1 =@"[0-9]+";
    
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validatevalues1:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z.]+";
    
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
- (IBAction)adddiag:(id)sender
{
    
    UITextField *mytv  = [[UITextField alloc] initWithFrame:CGRectMake(492, y, 116, 30)];
    
    
    [mytv.layer setBorderColor:[[[UIColor grayColor] colorWithAlphaComponent:0.5] CGColor]];
    [mytv.layer setBorderWidth:2.0];
    [mytv setFont:[UIFont fontWithName:@"Helvetica Neue" size:14.0]];
    mytv.delegate=self;
    mytv.layer.cornerRadius = 5;
    mytv.clipsToBounds = YES;
    
    
    mytv.tag = 11+inc;
    @try {
        if ([diagnosisresult count]>1) {
            mytv.text=[diagnosisresult objectAtIndex:inc];
            
        }
        else
        {
            
        }
    }
    @catch (NSException *e) {
       // NSLog(@"index not found");
    }
    @finally {
        
    }
    
    
    texttag=mytv.tag;
    [self createbutton];
    [self moveobjects];
    
    
    y=y+75;
    inc++;
    
    [self.scrollview addSubview:mytv];
    [scrollview setScrollEnabled:YES];
    
    [scrollview setContentSize:CGSizeMake(768, changesize)];
    
    imageview.frame=CGRectMake(0.0 ,0.0, imageview.image.size.width, changesize);
    changesize=changesize+85;
    
    
}
-(void)moveobjects
{
    
    
    
    CGRect btFrame3 = line1.frame;
    btFrame3.origin.x = btFrame3.origin.x;
    btFrame3.origin.y = btFrame3.origin.y+75;
    line1.frame = btFrame3;
    
    CGRect btFrame4 = line2.frame;
    btFrame4.origin.x = btFrame4.origin.x;
    btFrame4.origin.y = btFrame4.origin.y+75;
    line2.frame = btFrame4;
    
    CGRect btFrame5 = line3.frame;
    btFrame5.origin.x = btFrame5.origin.x;
    btFrame5.origin.y = btFrame5.origin.y+75;
    line3.frame = btFrame5;
    
    CGRect btFrame6 = adddiag.frame;
    btFrame6.origin.x = btFrame6.origin.x;
    btFrame6.origin.y = btFrame6.origin.y+75;
    adddiag.frame = btFrame6;
    
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UIPickerView class]])
        {
            if (view.tag != 1)
            {
                
                CGRect pickerval = view.frame;
                pickerval.origin.x = pickerval.origin.x;
                pickerval.origin.y = pickerval.origin.y+75;
                view.frame = pickerval;
                
            }
        }
        
    }
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UILabel class]])
        {
            //if ((view.tag != 1)&&(view.tag != 2)&&(view.tag != 3)&&(view.tag != 4))
            if (view.tag ==0)
            {
                
                CGRect labelval = view.frame;
                labelval.origin.x = labelval.origin.x;
                labelval.origin.y = labelval.origin.y+75;
                view.frame = labelval;
                
            }
        }
        
    }
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UIButton class]])
        {
            if (view.tag == 0)
            {
                
                CGRect labelval = view.frame;
                labelval.origin.x = labelval.origin.x;
                labelval.origin.y = labelval.origin.y+75;
                view.frame = labelval;
                
            }
        }
        
    }
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UITextField class]])
        {
            if (view.tag == 0)
            {
                
                CGRect labelval = view.frame;
                labelval.origin.x = labelval.origin.x;
                labelval.origin.y = labelval.origin.y+75;
                view.frame = labelval;
                
            }
        }
        
    }
    CGRect btFrame = reset.frame;
    btFrame.origin.x = btFrame.origin.x;
    btFrame.origin.y = btFrame.origin.y+75;
    reset.frame = btFrame;
    
    CGRect btFrame1 = next.frame;
    btFrame1.origin.x = btFrame1.origin.x;
    btFrame1.origin.y = btFrame1.origin.y+75;
    next.frame = btFrame1;
    
    CGRect btFrame2 = cancel.frame;
    btFrame2.origin.x = btFrame2.origin.x;
    btFrame2.origin.y = btFrame2.origin.y+75;
    cancel.frame = btFrame2;
    
    
}
-(void)createbutton
{
    UIButton *mybut = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    mybut.frame = CGRectMake(497, y+35, 104, 35);
    [mybut setTitle:@"Cancel" forState:UIControlStateNormal];
    [mybut setBackgroundImage:[UIImage imageNamed:@"bgbutton.png"] forState:UIControlStateNormal];
    [mybut setTintColor:[UIColor whiteColor]];
    mybut.titleLabel.font=[UIFont fontWithName:@"Helvetica Neua" size:17.0];
    mybut.tag = 51+inc;
    buttontag=mybut.tag;
    [mybut addTarget:self  action:@selector(clearmethod:) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollview addSubview:mybut];
    
    
    
}
-(void)clearmethod:(id)sender
{
    int buttontagnumber=[sender tag];
    int textfieldtagnumber=buttontagnumber-40;
    
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UITextField class]])
        {
            if (view.tag == textfieldtagnumber)
            {
                [view removeFromSuperview];
                //[view release];
                
                
            }
            else if (view.tag > textfieldtagnumber)
            {
                
                CGRect btFrame3 = view.frame;
                btFrame3.origin.x = btFrame3.origin.x;
                btFrame3.origin.y = btFrame3.origin.y-75;
                view.frame = btFrame3;
                
            }
        }
        
    }
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UIButton class]])
        {
            if (view.tag == buttontagnumber)
            {
                [view removeFromSuperview];
                //[view release];
                
            }
            else if ((view.tag > buttontagnumber)&&(view.tag<100))
            {
                
                CGRect btFrame3 = view.frame;
                btFrame3.origin.x = btFrame3.origin.x;
                btFrame3.origin.y = btFrame3.origin.y-75;
                view.frame = btFrame3;
                
            }
            
        }
        
    }
    
    
    
    CGRect btFrame3 = line1.frame;
    btFrame3.origin.x = btFrame3.origin.x;
    btFrame3.origin.y = btFrame3.origin.y-75;
    line1.frame = btFrame3;
    
    CGRect btFrame4 = line2.frame;
    btFrame4.origin.x = btFrame4.origin.x;
    btFrame4.origin.y = btFrame4.origin.y-75;
    line2.frame = btFrame4;
    
    CGRect btFrame5 = line3.frame;
    btFrame5.origin.x = btFrame5.origin.x;
    btFrame5.origin.y = btFrame5.origin.y-75;
    line3.frame = btFrame5;
    
    CGRect btFrame6 = adddiag.frame;
    btFrame6.origin.x = btFrame6.origin.x;
    btFrame6.origin.y = btFrame6.origin.y-75;
    adddiag.frame = btFrame6;
    
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UIPickerView class]])
        {
            if (view.tag != 1)
            {
                
                CGRect pickerval = view.frame;
                pickerval.origin.x = pickerval.origin.x;
                pickerval.origin.y = pickerval.origin.y-75;
                view.frame = pickerval;
                
            }
        }
        
    }
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UILabel class]])
        {
            //if ((view.tag != 1)&&(view.tag != 2)&&(view.tag != 3)&&(view.tag != 4))
            if (view.tag ==0)
            {
                
                CGRect labelval = view.frame;
                labelval.origin.x = labelval.origin.x;
                labelval.origin.y = labelval.origin.y-75;
                view.frame = labelval;
                
            }
        }
        
    }
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UIButton class]])
        {
            if (view.tag == 0)
            {
                
                CGRect labelval = view.frame;
                labelval.origin.x = labelval.origin.x;
                labelval.origin.y = labelval.origin.y-75;
                view.frame = labelval;
                
            }
        }
        
    }
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UITextField class]])
        {
            if (view.tag == 0)
            {
                
                CGRect labelval = view.frame;
                labelval.origin.x = labelval.origin.x;
                labelval.origin.y = labelval.origin.y-75;
                view.frame = labelval;
                
            }
        }
        
    }
    CGRect btFrame = reset.frame;
    btFrame.origin.x = btFrame.origin.x;
    btFrame.origin.y = btFrame.origin.y-75;
    reset.frame = btFrame;
    
    CGRect btFrame1 = next.frame;
    btFrame1.origin.x = btFrame1.origin.x;
    btFrame1.origin.y = btFrame1.origin.y-75;
    next.frame = btFrame1;
    
    CGRect btFrame2 = cancel.frame;
    btFrame2.origin.x = btFrame2.origin.x;
    btFrame2.origin.y = btFrame2.origin.y-75;
    cancel.frame = btFrame2;
    y=y-75;
    
    [scrollview setScrollEnabled:YES];
    
    [scrollview setContentSize:CGSizeMake(768, changesize)];
    
    imageview.frame=CGRectMake(0.0 ,0.0, imageview.image.size.width, changesize);
    changesize=changesize-85;
    
    
}

- (IBAction)pain:(id)sender {
    int val=(int)painscale.value ;
    
    if (val==10) {
        painval.text=@"Severe Pain";
    }
    else if(val==0)
    {
        painval.text=@"No Pain";
    }
    else
    {
        painval.text=[NSString stringWithFormat:@"%d",val];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UIPickerView DataSource
// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(pickerView.tag==1)
        return [a1 count];
    else if(pickerView.tag==2)
        return [a2 count];
    else if(pickerView.tag==3)
        return [a3 count];
    else if(pickerView.tag==4)
        return [a4 count];
    else if(pickerView.tag==5)
        return [a2 count];
    else if(pickerView.tag==6)
        return [a3 count];
    else if(pickerView.tag==7)
        return [a4 count];
    else if(pickerView.tag==8)
        return [a2 count];
    else if(pickerView.tag==9)
        return [a3 count];
    else if(pickerView.tag==10)
        return [a4 count];
    else
        return 1;
    
}


#pragma mark - UIPickerView Delegate
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 30.0;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    if(pickerView.tag==1)
    {
        
        return [a1 objectAtIndex:row];
        
    }
    else if(pickerView.tag==2)
    {
        return [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==3)
    {
        return [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==4)
    {
        return [a4 objectAtIndex:row];
    }
    else if(pickerView.tag==5)
    {
        return [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==6)
    {
        return [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==7)
    {
        return [a4 objectAtIndex:row];
    }
    else if(pickerView.tag==8)
    {
        return [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==9)
    {
        return [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==10)
    {
        return [a4 objectAtIndex:row];
    }
    
    else
        return nil;
    
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    
    if(pickerView.tag==1)
    {
        
        l1.text= [a1 objectAtIndex:row];
        if ([l1.text isEqualToString:@"ExtremitiesX-Rays"]) {
            other.hidden=NO;
        }
        else
            other.hidden=YES;
        
    }
    else if(pickerView.tag==2)
    {
        l2.text= [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==3)
    {
        l3.text= [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==4)
    {
        l4.text= [a4 objectAtIndex:row];
    }
    else if(pickerView.tag==5)
    {
        l5.text= [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==6)
    {
        l6.text= [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==7)
    {
        l7.text= [a4 objectAtIndex:row];
    }
    else if(pickerView.tag==8)
    {
        l8.text= [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==9)
    {
        l9.text= [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==10)
    {
        l10.text= [a4 objectAtIndex:row];
    }
    
    
    
    
    
    
    pickerView.hidden=YES;
    
    
}



- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}
- (IBAction)reset:(id)sender {
    pick1.hidden=YES;
    pick2.hidden=YES;
    pick3.hidden=YES;
    pick4.hidden=YES;
    pick5.hidden=YES;
    pick6.hidden=YES;
    pick7.hidden=YES;
    pick8.hidden=YES;
    pick9.hidden=YES;
    pick10.hidden=YES;
    l1.text=@"2";
    l2.text=@"Fixations";
    l3.text=@"Not Improved";
    l4.text=@"SCSM";
    l5.text=@"Fixations";
    l6.text=@"Not Improved";
    l7.text=@"SCSM";
    l8.text=@"Fixations";
    l9.text=@"Not Improved";
    l10.text=@"SCSM";
    painval.text=@"1";
    other.hidden=YES;
    t1.text=@"";
    t2.text=@"";
    t3.text=@"";
    t4.text=@"";
    t5.text=@"";
    t6.text=@"";
    t7.text=@"";
    t8.text=@"";
    t9.text=@"";
    t10.text=@"";
    t11.text=@"";
    t12.text=@"";
    d1.text=@"";
    [painscale setValue:0 animated:YES];
    [painval setText:@"No Pain"];
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UITextField class]])
        {
            
            UITextField *textField = (UITextField *)view;
            textField.text = @"";
        }
        
    }
}
-(BOOL)dateexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)next:(id)sender {
    a=1;
    tempd1 =t1.text;
    tempd2 =t4.text;
    tempd3 =t7.text;
    tempd4 =t10.text;
    
    
    
    temp1 =t2.text;
    temp2 =t3.text;
    temp3 =t5.text;
    temp4 =t6.text;
    temp5 =t8.text;
    temp6=t9.text;
    temp7=t11.text;
    temp8=t12.text;
    temp9=d1.text;
    
    
    if((([tempd1 length]>0)&&([self dateexpress:tempd1]==1))||([tempd1 length]==0))
    {
        if((([temp1 length]>0)&&([du percentage:temp1]==1))||([temp1 length]==0))
        {
            
            if((([temp2 length]>0)&&([du percentage:temp2]==1))||([temp2 length]==0))
            {
                if((([tempd2 length]>0)&&([self dateexpress:tempd2]==1))||([tempd2 length]==0))
                {
                    
                    if((([temp3 length]>0)&&([du percentage:temp3]==1))||([temp3 length]==0))
                    {
                        
                        if((([temp4 length]>0)&&([du percentage:temp4]==1))||([temp4 length]==0))
                        {
                            
                            if((([tempd3 length]>0)&&([self dateexpress:tempd3]==1))||([tempd3 length]==0))
                            {
                                
                                if((([temp5 length]>0)&&([du percentage:temp5]==1))||([temp5 length]==0))
                                {
                                    if((([temp6 length]>0)&&([self validatevalues:temp6]==1))||([temp6 length]==0))
                                    {
                                        
                                        if((([tempd4 length]>0)&&([self dateexpress:tempd4]==1))||([tempd4 length]==0))
                                        {
                                            
                                            if((([temp7 length]>0)&&([du percentage:temp7]==1))||([temp7 length]==0))
                                            {
                                                if((([temp8 length]>0)&&([du percentage:temp8]==1))||([temp8 length]==0))
                                                {
                                                    if((([temp9 length]>0)&&([self validatevalues1:temp9]==1))||([temp9 length]==0))
                                                    {
                                                        int i=0;
                                                        int max=11+inc;
                                                        [recorddict setValue:t1.text forKey:@"t1"];
                                                        [recorddict setValue:t2.text forKey:@"t2"];
                                                        [recorddict setValue:t3.text forKey:@"t3"];
                                                        [recorddict setValue:t4.text forKey:@"t4"];
                                                        [recorddict setValue:t5.text forKey:@"t5"];
                                                        [recorddict setValue:t6.text forKey:@"t6"];
                                                        [recorddict setValue:t7.text forKey:@"t7"];
                                                        [recorddict setValue:t8.text forKey:@"t8"];
                                                        [recorddict setValue:t9.text forKey:@"t9"];
                                                        [recorddict setValue:t10.text forKey:@"t10"];
                                                        [recorddict setValue:t11.text forKey:@"t11"];
                                                        [recorddict setValue:t12.text forKey:@"t12"];
                                                        [recorddict setValue:other.text forKey:@"other"];
                                                        [recorddict setValue:d1.text forKey:@"d1"];
                                                        [recorddict setValue:painval.text forKey:@"painval"];
                                                        [recorddict setValue:l1.text forKey:@"pick1"];
                                                        [recorddict setValue:l2.text forKey:@"pick2"];
                                                        [recorddict setValue:l3.text forKey:@"pick3"];
                                                        [recorddict setValue:l4.text forKey:@"pick4"];
                                                        [recorddict setValue:l5.text forKey:@"pick5"];
                                                        [recorddict setValue:l6.text forKey:@"pick6"];
                                                        [recorddict setValue:l7.text forKey:@"pick7"];
                                                        [recorddict setValue:l8.text forKey:@"pick8"];
                                                        [recorddict setValue:l9.text forKey:@"pick9"];
                                                        [recorddict setValue:l10.text forKey:@"pick10"];
                                                        
                                                        // NSLog(@"recordvalues %@",recorddict);
                                                        for (UIScrollView *view in [self.scrollview subviews])
                                                        {
                                                            if ([view isKindOfClass:[UITextField class]])
                                                            {
                                                                
                                                                UITextField *textField = (UITextField *)view;
                                                                if ((textField.tag>=11)&&(textField.tag!=0))
                                                                {
                                                                    
                                                                    
                                                                    temp1 =[textField.text stringByReplacingOccurrencesOfString:@" " withString:@""];
                                                                    if((([temp1 length]>0)&&([self validatevalues1:temp1]==1))||([temp1 length]==0))
                                                                    {
                                                                        i++;
                                                                        [recorddict setValue:textField.text forKey:[NSString stringWithFormat:@"diagnosis%d",i]];
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid diagnosis field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                
                                                            }
                                                            
                                                        }
                                                        [recorddict setValue:[NSNumber numberWithInt:i] forKey:@"numofcontent"];
                                                        
                                                       // NSLog(@"recordvalues %@",recorddict);
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid diagnosis field.."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid worsened  field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                    
                                                }
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid improved  field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                            }
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid date field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                            
                                        }
                                    }
                                    
                                    else
                                    {
                                        a=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid worsened field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                        
                                    }
                                }
                                else
                                {
                                    a=0;
                                    
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid improved field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                }
                            }                 else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid date field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                                
                            }
                        }
                        else
                        {
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid worsened field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid improved field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                    }
                }
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid date field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                    
                }
            }
            else
            {
                a=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid worsened field."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
            }
        }
        
        
        else
        {
            a=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid improved field."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
        }
    }  else
    {
        a=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter valid date field."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
    }
    if (a==1) {
        [self performSegueWithIdentifier:@"soap2" sender:self];
    }
    
    
}
- (IBAction)b1action:(id)sender {
    if (pick1.hidden==YES) {
        pick1.hidden=NO;
    }
    else
        pick1.hidden=YES;
}
- (IBAction)b2action:(id)sender {
    if (pick2.hidden==YES) {
        pick2.hidden=NO;
    }
    else
        pick2.hidden=YES;
}
- (IBAction)b3action:(id)sender {
    if (pick3.hidden==YES) {
        pick3.hidden=NO;
    }
    else
        pick3.hidden=YES;
}
- (IBAction)b4action:(id)sender {
    if (pick4.hidden==YES) {
        pick4.hidden=NO;
    }
    else
        pick4.hidden=YES;
}
- (IBAction)b5action:(id)sender {
    if (pick5.hidden==YES) {
        pick5.hidden=NO;
    }
    else
        pick5.hidden=YES;
}
- (IBAction)b6action:(id)sender {
    if (pick6.hidden==YES) {
        pick6.hidden=NO;
    }
    else
        pick6.hidden=YES;
}
- (IBAction)b7action:(id)sender {
    if (pick7.hidden==YES) {
        pick7.hidden=NO;
    }
    else
        pick7.hidden=YES;
}
- (IBAction)b8action:(id)sender {
    if (pick8.hidden==YES) {
        pick8.hidden=NO;
    }
    else
        pick8.hidden=YES;
}
- (IBAction)b9action:(id)sender {
    if (pick9.hidden==YES) {
        pick9.hidden=NO;
    }
    else
        pick9.hidden=YES;
}
- (IBAction)b10action:(id)sender {
    if (pick10.hidden==YES) {
        pick10.hidden=NO;
    }
    else
        pick10.hidden=YES;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"soap2"])
    {
        
        soapnotes2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        //NSLog(@"recorddict in soapnotes second %@",recorddict);
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
