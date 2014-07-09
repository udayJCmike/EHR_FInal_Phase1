//
//  soapnotes2ViewController.m
//  soapnotes
//
//  Created by Admin on 10/05/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "soapnotes2ViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
@interface soapnotes2ViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation soapnotes2ViewController
@synthesize cancel1;
@synthesize cancel2;
@synthesize reset1;
@synthesize reset2;
@synthesize resultset;
@synthesize submit;
@synthesize deletefuct;
@synthesize update;
@synthesize signature;
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
@synthesize t13;
@synthesize t14;
@synthesize t15;
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
@synthesize l11;
@synthesize l12;
@synthesize l13;
@synthesize l14;
@synthesize l15;
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
@synthesize b11;
@synthesize b12;
@synthesize b13;
@synthesize b14;
@synthesize b15;
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
@synthesize pick11;
@synthesize pick12 ;
@synthesize pick13 ;
@synthesize pick14 ;
@synthesize pick15 ;
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
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

-(BOOL)dateexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
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
- (IBAction)b11action:(id)sender {
    if (pick11.hidden==YES) {
        pick11.hidden=NO;
    }
    else
        pick11.hidden=YES;
}
- (IBAction)b12action:(id)sender {
    if (pick12.hidden==YES) {
        pick12.hidden=NO;
    }
    else
        pick12.hidden=YES;
}
- (IBAction)b13action:(id)sender {
    if (pick13.hidden==YES) {
        pick13.hidden=NO;
    }
    else
        pick13.hidden=YES;
}
- (IBAction)b14action:(id)sender {
    if (pick14.hidden==YES) {
        pick14.hidden=NO;
    }
    else
        pick14.hidden=YES;
}
- (IBAction)b15action:(id)sender {
    if (pick15.hidden==YES) {
        pick15.hidden=NO;
    }
    else
        pick15.hidden=YES;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
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
    pick11.hidden=YES;
    pick12.hidden=YES;
    pick13.hidden=YES;
    pick14.hidden=YES;
    pick15.hidden=YES;
    l1.text=@"Fixations";
    l2.text=@"Not Improved";
    l3.text=@"SCSM";
    l4.text=@"Fixations";
    l5.text=@"Not Improved";
    l6.text=@"SCSM";
    l7.text=@"Fixations";
    l8.text=@"Not Improved";
    l9.text=@"SCSM";
    l10.text=@"Fixations";
    l11.text=@"Not Improved";
    l12.text=@"SCSM";
    l13.text=@"Fixations";
    l14.text=@"Not Improved";
    l15.text=@"SCSM";
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
    
    for (UIScrollView *v in [self.scrollview subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    a2=[[NSArray alloc]initWithObjects:@"Fixations",@"Tenderness to palpation",@"Spasm",@"Trigger pts.",@" Hypertonicity",@"Edema",@"Decreased ROM",@"Short leg Right Temp.Change",@"Short leg Left Temp.Change",@" Atrophy",@" Decr Strength", nil];
    a3=[[NSArray alloc]initWithObjects: @"Not Improved",@"Progressing Slow",@"Exacerbation of C.C.",@"Flare-ups",@"Mildly imp.",@"Moderatly imp.",@"Plateu",@"Pre Injury Status", nil];
    a4=[[NSArray alloc]initWithObjects:@"SCSM",@"EMS",@"MASS",@"Ice",@"Heat",@"NMR",@"TP",@"US",@"Iontophoresis",@"Traction",@"Nutrition",@"Off Work",@"Light Duty",@"ROM",@"Back To Work",@"Strength excer",@" ROF",@"Re Exam",@"Refer to",@"Release from care", nil];
	// Do any additional setup after loading the view.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self displayData];
    
}
-(void)displayData
{
    if ([resultset count]>0) {
        submit.hidden=YES;
        update.hidden=NO;
        deletefuct.hidden=NO;
        reset1.hidden=YES;
        cancel1.hidden=YES;
        reset2.hidden=NO;
        cancel2.hidden=NO;
        t1.text=[resultset objectForKey:@"date5"];
        t2.text=[resultset objectForKey:@"improved4"];
        t3.text=[resultset objectForKey:@"worsened4"];
        t4.text=[resultset objectForKey:@"date6"];
        t5.text=[resultset objectForKey:@"improved5"];
        t6.text=[resultset objectForKey:@"worsened5"];
        t7.text=[resultset objectForKey:@"date7"];
        t8.text=[resultset objectForKey:@"improved6"];
        t9.text=[resultset objectForKey:@"worsened6"];
        t10.text=[resultset objectForKey:@"date8"];
        t11.text=[resultset objectForKey:@"improved7"];
        t12.text=[resultset objectForKey:@"worsened7"];
        t13.text=[resultset objectForKey:@"date9"];
        t14.text=[resultset objectForKey:@"improved8"];
        t15.text=[resultset objectForKey:@"worsened8"];
        
        l1.text=[resultset objectForKey:@"fixation4"];
        l2.text=[resultset objectForKey:@"notimproved4"];
        l3.text=[resultset objectForKey:@"scsm4"];
        l4.text=[resultset objectForKey:@"fixation5"];
        l5.text=[resultset objectForKey:@"notimproved5"];
        l6.text=[resultset objectForKey:@"scsm5"];
        l7.text=[resultset objectForKey:@"fixation6"];
        l8.text=[resultset objectForKey:@"notimproved6"];
        l9.text=[resultset objectForKey:@"scsm6"];
        l10.text=[resultset objectForKey:@"fixation7"];
        l11.text=[resultset objectForKey:@"notimproved7"];
        l12.text=[resultset objectForKey:@"scsm7"];
        l13.text=[resultset objectForKey:@"fixation8"];
        l14.text=[resultset objectForKey:@"notimproved8"];
        l15.text=[resultset objectForKey:@"scsm8"];
        signature.text=[resultset objectForKey:@"sign"];
        
    }
    else
    {
        submit.hidden=NO;
        update.hidden=YES;
        deletefuct.hidden=YES;
        reset2.hidden=YES;
        cancel2.hidden=YES;
        reset1.hidden=NO;
        cancel1.hidden=NO;
    }
}
- (void)dismissKeyboard
{
    printView.hidden = YES;
    [t2 resignFirstResponder];
    [t3 resignFirstResponder];
    [t5 resignFirstResponder];
    [t6 resignFirstResponder];
    [t8 resignFirstResponder];
    [t9 resignFirstResponder];
    [t11 resignFirstResponder];
    [t12 resignFirstResponder];
    [t14 resignFirstResponder];
    [t15 resignFirstResponder];
    [signature resignFirstResponder];
    
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
        return [a2 count];
    else if(pickerView.tag==2)
        return [a3 count];
    else if(pickerView.tag==3)
        return [a4 count];
    else if(pickerView.tag==4)
        return [a2 count];
    else if(pickerView.tag==5)
        return [a3 count];
    else if(pickerView.tag==6)
        return [a4 count];
    else if(pickerView.tag==7)
        return [a2 count];
    else if(pickerView.tag==8)
        return [a3 count];
    else if(pickerView.tag==9)
        return [a4 count];
    else if(pickerView.tag==10)
        return [a2 count];
    else if(pickerView.tag==11)
        return [a3 count];
    else if(pickerView.tag==12)
        return [a4 count];
    else if(pickerView.tag==13)
        return [a2 count];
    else if(pickerView.tag==14)
        return [a3 count];
    else if(pickerView.tag==15)
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
        
        return [a2 objectAtIndex:row];
        
    }
    else if(pickerView.tag==2)
    {
        return [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==3)
    {
        return [a4 objectAtIndex:row];
    }
    else if(pickerView.tag==4)
    {
        return [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==5)
    {
        return [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==6)
    {
        return [a4 objectAtIndex:row];
    }
    else if(pickerView.tag==7)
    {
        return [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==8)
    {
        return [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==9)
    {
        return [a4 objectAtIndex:row];
    }
    else if(pickerView.tag==10)
    {
        return [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==11)
    {
        return [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==12)
    {
        return [a4 objectAtIndex:row];
    }
    else if(pickerView.tag==13)
    {
        return [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==14)
    {
        return [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==15)
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
        
        l1.text= [a2 objectAtIndex:row];
        
    }
    else if(pickerView.tag==2)
    {
        l2.text= [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==3)
    {
        l3.text= [a4 objectAtIndex:row];
    }
    else if(pickerView.tag==4)
    {
        l4.text= [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==5)
    {
        l5.text= [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==6)
    {
        l6.text= [a4 objectAtIndex:row];
    }
    else if(pickerView.tag==7)
    {
        l7.text= [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==8)
    {
        l8.text= [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==9)
    {
        l9.text= [a4 objectAtIndex:row];
    }
    else if(pickerView.tag==10)
    {
        l10.text= [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==11)
    {
        l11.text= [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==12)
    {
        l12.text= [a4 objectAtIndex:row];
    }
    else if(pickerView.tag==13)
    {
        l13.text= [a2 objectAtIndex:row];
    }
    else if(pickerView.tag==14)
    {
        l14.text= [a3 objectAtIndex:row];
    }
    else if(pickerView.tag==15)
    {
        l15.text= [a4 objectAtIndex:row];
    }
    
    
    
    
    
    
    pickerView.hidden=YES;
    
    
}
-(BOOL)validatevalues:(NSString *)user

{
    NSString *userFormat1 =@"[0-9]+";
    
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validatevalues1:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}

-(BOOL)validatesign:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z. ]+";
    
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
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
    pick11.hidden=YES;
    pick12.hidden=YES;
    pick13.hidden=YES;
    pick14.hidden=YES;
    pick15.hidden=YES;
    l1.text=@"Fixations";
    l2.text=@"Not Improved";
    l3.text=@"SCSM";
    l4.text=@"Fixations";
    l5.text=@"Not Improved";
    l6.text=@"SCSM";
    l7.text=@"Fixations";
    l8.text=@"Not Improved";
    l9.text=@"SCSM";
    l10.text=@"Fixations";
    l11.text=@"Not Improved";
    l12.text=@"SCSM";
    l13.text=@"Fixations";
    l14.text=@"Not Improved";
    l15.text=@"SCSM";
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
    t13.text=@"";
    t14.text=@"";
    t15.text=@"";
    signature.text=@"";
    
}
- (IBAction)next:(id)sender {
    a=1;
    tempd1 =t1.text;
    tempd2 =t4.text;
    tempd3 =t7.text;
    tempd4 =t10.text;
    tempd5 =t13.text;
    
    temp1 =t2.text;
    temp2 =t3.text;
    temp3 =t5.text;
    temp4 =t6.text;
    temp5 =t8.text;
    temp6=t9.text;
    temp7=t11.text;
    temp8=t12.text;
    temp9=t14.text;
    temp10=t15.text;
    temp11=signature.text;
    if ([temp11 length]>0) {
        
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
                                        if((([temp6 length]>0)&&([du percentage:temp6]==1))||([temp6 length]==0))
                                        {
                                            if((([tempd4 length]>0)&&([self dateexpress:tempd4]==1))||([tempd4 length]==0))
                                            {
                                                if((([temp7 length]>0)&&([du percentage:temp7]==1))||([temp7 length]==0))
                                                {
                                                    if((([temp8 length]>0)&&([du percentage:temp8]==1))||([temp8 length]==0))
                                                    {
                                                        if((([tempd5 length]>0)&&([self dateexpress:tempd5]==1))||([tempd5 length]==0))
                                                        {
                                                            if((([temp9 length]>0)&&([du percentage:temp9]==1))||([temp9 length]==0))
                                                            {
                                                                if((([temp10 length]>0)&&([du percentage:temp10]==1))||([temp10 length]==0))
                                                                {
                                                                    if((([temp11 length]>0)&&([self validatesign:temp11]==1))||([temp11 length]==0))
                                                                    {
                                                                        
                                                                        [recorddict setValue:t1.text forKey:@"1t1"];
                                                                        [recorddict setValue:t2.text forKey:@"1t2"];
                                                                        [recorddict setValue:t3.text forKey:@"1t3"];
                                                                        [recorddict setValue:t4.text forKey:@"1t4"];
                                                                        [recorddict setValue:t5.text forKey:@"1t5"];
                                                                        [recorddict setValue:t6.text forKey:@"1t6"];
                                                                        [recorddict setValue:t7.text forKey:@"1t7"];
                                                                        [recorddict setValue:t8.text forKey:@"1t8"];
                                                                        [recorddict setValue:t9.text forKey:@"1t9"];
                                                                        [recorddict setValue:t10.text forKey:@"1t10"];
                                                                        [recorddict setValue:t11.text forKey:@"1t11"];
                                                                        [recorddict setValue:t12.text forKey:@"1t12"];
                                                                        [recorddict setValue:t13.text forKey:@"1t13"];
                                                                        [recorddict setValue:t14.text forKey:@"1t14"];
                                                                        [recorddict setValue:t15.text forKey:@"1t15"];
                                                                        [recorddict setValue:signature.text forKey:@"sign"];
                                                                        
                                                                        [recorddict setValue:l1.text forKey:@"1pick1"];
                                                                        [recorddict setValue:l2.text forKey:@"1pick2"];
                                                                        [recorddict setValue:l3.text forKey:@"1pick3"];
                                                                        [recorddict setValue:l4.text forKey:@"1pick4"];
                                                                        [recorddict setValue:l5.text forKey:@"1pick5"];
                                                                        [recorddict setValue:l6.text forKey:@"1pick6"];
                                                                        [recorddict setValue:l7.text forKey:@"1pick7"];
                                                                        [recorddict setValue:l8.text forKey:@"1pick8"];
                                                                        [recorddict setValue:l9.text forKey:@"1pick9"];
                                                                        [recorddict setValue:l10.text forKey:@"1pick10"];
                                                                        [recorddict setValue:l11.text forKey:@"1pick11"];
                                                                        [recorddict setValue:l12.text forKey:@"1pick12"];
                                                                        [recorddict setValue:l13.text forKey:@"1pick13"];
                                                                        [recorddict setValue:l14.text forKey:@"1pick14"];
                                                                        [recorddict setValue:l15.text forKey:@"1pick15"];
                                                                        // NSLog(@"result %@",recorddict);
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid signature field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid worsenend field."
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
                                                       description:@"Required field should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
        
    }
    
    if (a==1) {
        
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
        else
        {
            NULL;
        }
        
        
    }
    
    
}
-(void)updatedata
{
    int result=[self insertdiag];
    
    if (result==1)
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"soapnotes Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form updation successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];
                    
                    
                    
                    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form updation failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                }
            }
        }
    }
    else
    {
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Form updation failed."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Form updation failed."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
    }
    
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"SoapNotes.php?service=soapnotesedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&headache=%@&neckpain=%@&rightshoulderpain=%@&leftshoulderpain=%@&chestpain=%@&rightarmpain=%@&rightproxi=%@&leftarmpain=%@&leftproxi=%@&rightelbowpain=%@&leftelbowpain=%@&rightwristpain=%@&leftwristpain=%@&righthandpain=%@&lefthandpain=%@&mbp=%@&rightribpain=%@&painscale1=%@&leftribpain=%@&painscale2=%@&lbp=%@&rightsipain=%@&leftsipain=%@&righthippain=%@&lefthippain=%@&rightgluteulpain=%@&leftgluteulpain=%@&rightlegpain=%@&leftlegpain=%@&rightkneepain=%@&leftkneepain=%@&rightanklepain=%@&leftanklepain=%@&rightfootpain=%@&leftfootpain=%@&painscale=%@&date1=%@&improved=%@&worsened=%@&e1e2=%@&xray=%@&offwork1=%@&reeval1=%@&date2=%@&improved1=%@&worsened1=%@&fixation1=%@&notimproved1=%@&scsm1=%@&date3=%@&improved2=%@&worsened2=%@&fixation2=%@&notimproved2=%@&scsm2=%@&date4=%@&improved3=%@&worsened3=%@&fixation3=%@&notimproved3=%@&scsm3=%@&date5=%@&improved4=%@&worsened4=%@&fixation4=%@&notimproved4=%@&scsm4=%@&date6=%@&improved5=%@&worsened5=%@&fixation5=%@&notimproved5=%@&scsm5=%@&date7=%@&improved6=%@&worsened6=%@&fixation6=%@&notimproved6=%@&scsm6=%@&date8=%@&improved7=%@&worsened7=%@&fixation7=%@&notimproved7=%@&scsm7=%@&date9=%@&improved8=%@&worsened8=%@&fixation8=%@&notimproved8=%@&scsm8=%@&sign=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"pname"],[recorddict objectForKey:@"b1"],[recorddict objectForKey:@"b2"],[recorddict objectForKey:@"b3"],[recorddict objectForKey:@"b4"],[recorddict objectForKey:@"b5"],[recorddict objectForKey:@"b6"],[recorddict objectForKey:@"segval1"],[recorddict objectForKey:@"b7"],[recorddict objectForKey:@"segval2"],[recorddict objectForKey:@"b8"],[recorddict objectForKey:@"b9"],[recorddict objectForKey:@"b10"],[recorddict objectForKey:@"b11"],[recorddict objectForKey:@"b12"],[recorddict objectForKey:@"b13"],[recorddict objectForKey:@"b14"],[recorddict objectForKey:@"b15"],[recorddict objectForKey:@"val1"],[recorddict objectForKey:@"b16"],[recorddict objectForKey:@"val2"],[recorddict objectForKey:@"b17"],[recorddict objectForKey:@"b18"],[recorddict objectForKey:@"b19"],[recorddict objectForKey:@"b20"],[recorddict objectForKey:@"b21"],[recorddict objectForKey:@"b22"],[recorddict objectForKey:@"b23"],[recorddict objectForKey:@"b24"],[recorddict objectForKey:@"b25"],[recorddict objectForKey:@"b26"],[recorddict objectForKey:@"b27"],[recorddict objectForKey:@"b28"],[recorddict objectForKey:@"b29"],[recorddict objectForKey:@"b30"],[recorddict objectForKey:@"b31"],[recorddict objectForKey:@"painval"],[recorddict objectForKey:@"t1"],[recorddict objectForKey:@"t2"],[recorddict objectForKey:@"t3"],[recorddict objectForKey:@"pick1"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"t4"],[recorddict objectForKey:@"t5"],[recorddict objectForKey:@"t6"],[recorddict objectForKey:@"pick2"],[recorddict objectForKey:@"pick3"],[recorddict objectForKey:@"pick4"],[recorddict objectForKey:@"t7"],[recorddict objectForKey:@"t8"],[recorddict objectForKey:@"t9"],[recorddict objectForKey:@"pick5"],[recorddict objectForKey:@"pick6"],[recorddict objectForKey:@"pick7"],[recorddict objectForKey:@"t10"],[recorddict objectForKey:@"t11"],[recorddict objectForKey:@"t12"],[recorddict objectForKey:@"pick8"],[recorddict objectForKey:@"pick9"],[recorddict objectForKey:@"pick10"],[recorddict objectForKey:@"1t1"],[recorddict objectForKey:@"1t2"],[recorddict objectForKey:@"1t3"],[recorddict objectForKey:@"1pick1"],[recorddict objectForKey:@"1pick2"],[recorddict objectForKey:@"1pick3"],[recorddict objectForKey:@"1t4"],[recorddict objectForKey:@"1t5"],[recorddict objectForKey:@"1t6"],[recorddict objectForKey:@"1pick4"],[recorddict objectForKey:@"1pick5"],[recorddict objectForKey:@"1pick6"],[recorddict objectForKey:@"1t7"],[recorddict objectForKey:@"1t8"],[recorddict objectForKey:@"1t9"],[recorddict objectForKey:@"1pick7"],[recorddict objectForKey:@"1pick8"],[recorddict objectForKey:@"1pick9"],[recorddict objectForKey:@"1t10"],[recorddict objectForKey:@"1t11"],[recorddict objectForKey:@"1t12"],[recorddict objectForKey:@"1pick10"],[recorddict objectForKey:@"1pick11"],[recorddict objectForKey:@"1pick12"],[recorddict objectForKey:@"1t13"],[recorddict objectForKey:@"1t14"],[recorddict objectForKey:@"1t15"],[recorddict objectForKey:@"1pick13"],[recorddict objectForKey:@"1pick14"],[recorddict objectForKey:@"1pick15"],[recorddict objectForKey:@"sign"],secondEntity,value2];
    
    
    
    NSURL *url = [NSURL URLWithString:url2];
    //
    //  NSLog(@"post %@",post);
    
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
-(int)insertdiag
{
    
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1diagnosis:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    //NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        return 1;
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"soapnotesdiagnosis Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                return 1;
                
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                return 1;
                
                
                
            }
        }
    }
    
    return 1;
    
}
-(void)insertdata
{
    int result=[self insertdiag];
    
    if (result==1)
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"soapnotes Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form submission successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];
                    
                    
                    
                    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
                    
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form submission failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
                    
                }
            }
        }
    }
    else
        
    {
        
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Form submission failed."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
        
        
        
    }
    
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"SoapNotes.php?service=soapnotesinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
  //  NSLog(@"values in record dictionaries::%@",url2);
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&headache=%@&neckpain=%@&rightshoulderpain=%@&leftshoulderpain=%@&chestpain=%@&rightarmpain=%@&rightproxi=%@&leftarmpain=%@&leftproxi=%@&rightelbowpain=%@&leftelbowpain=%@&rightwristpain=%@&leftwristpain=%@&righthandpain=%@&lefthandpain=%@&mbp=%@&rightribpain=%@&painscale1=%@&leftribpain=%@&painscale2=%@&lbp=%@&rightsipain=%@&leftsipain=%@&righthippain=%@&lefthippain=%@&rightgluteulpain=%@&leftgluteulpain=%@&rightlegpain=%@&leftlegpain=%@&rightkneepain=%@&leftkneepain=%@&rightanklepain=%@&leftanklepain=%@&rightfootpain=%@&leftfootpain=%@&painscale=%@&date1=%@&improved=%@&worsened=%@&e1e2=%@&xray=%@&offwork1=%@&reeval1=%@&date2=%@&improved1=%@&worsened1=%@&fixation1=%@&notimproved1=%@&scsm1=%@&date3=%@&improved2=%@&worsened2=%@&fixation2=%@&notimproved2=%@&scsm2=%@&date4=%@&improved3=%@&worsened3=%@&fixation3=%@&notimproved3=%@&scsm3=%@&date5=%@&improved4=%@&worsened4=%@&fixation4=%@&notimproved4=%@&scsm4=%@&date6=%@&improved5=%@&worsened5=%@&fixation5=%@&notimproved5=%@&scsm5=%@&date7=%@&improved6=%@&worsened6=%@&fixation6=%@&notimproved6=%@&scsm6=%@&date8=%@&improved7=%@&worsened7=%@&fixation7=%@&notimproved7=%@&scsm7=%@&date9=%@&improved8=%@&worsened8=%@&fixation8=%@&notimproved8=%@&scsm8=%@&sign=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"pname"],[recorddict objectForKey:@"b1"],[recorddict objectForKey:@"b2"],[recorddict objectForKey:@"b3"],[recorddict objectForKey:@"b4"],[recorddict objectForKey:@"b5"],[recorddict objectForKey:@"b6"],[recorddict objectForKey:@"segval1"],[recorddict objectForKey:@"b7"],[recorddict objectForKey:@"segval2"],[recorddict objectForKey:@"b8"],[recorddict objectForKey:@"b9"],[recorddict objectForKey:@"b10"],[recorddict objectForKey:@"b11"],[recorddict objectForKey:@"b12"],[recorddict objectForKey:@"b13"],[recorddict objectForKey:@"b14"],[recorddict objectForKey:@"b15"],[recorddict objectForKey:@"val1"],[recorddict objectForKey:@"b16"],[recorddict objectForKey:@"val2"],[recorddict objectForKey:@"b17"],[recorddict objectForKey:@"b18"],[recorddict objectForKey:@"b19"],[recorddict objectForKey:@"b20"],[recorddict objectForKey:@"b21"],[recorddict objectForKey:@"b22"],[recorddict objectForKey:@"b23"],[recorddict objectForKey:@"b24"],[recorddict objectForKey:@"b25"],[recorddict objectForKey:@"b26"],[recorddict objectForKey:@"b27"],[recorddict objectForKey:@"b28"],[recorddict objectForKey:@"b29"],[recorddict objectForKey:@"b30"],[recorddict objectForKey:@"b31"],[recorddict objectForKey:@"painval"],[recorddict objectForKey:@"t1"],[recorddict objectForKey:@"t2"],[recorddict objectForKey:@"t3"],[recorddict objectForKey:@"pick1"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"t4"],[recorddict objectForKey:@"t5"],[recorddict objectForKey:@"t6"],[recorddict objectForKey:@"pick2"],[recorddict objectForKey:@"pick3"],[recorddict objectForKey:@"pick4"],[recorddict objectForKey:@"t7"],[recorddict objectForKey:@"t8"],[recorddict objectForKey:@"t9"],[recorddict objectForKey:@"pick5"],[recorddict objectForKey:@"pick6"],[recorddict objectForKey:@"pick7"],[recorddict objectForKey:@"t10"],[recorddict objectForKey:@"t11"],[recorddict objectForKey:@"t12"],[recorddict objectForKey:@"pick8"],[recorddict objectForKey:@"pick9"],[recorddict objectForKey:@"pick10"],[recorddict objectForKey:@"1t1"],[recorddict objectForKey:@"1t2"],[recorddict objectForKey:@"1t3"],[recorddict objectForKey:@"1pick1"],[recorddict objectForKey:@"1pick2"],[recorddict objectForKey:@"1pick3"],[recorddict objectForKey:@"1t4"],[recorddict objectForKey:@"1t5"],[recorddict objectForKey:@"1t6"],[recorddict objectForKey:@"1pick4"],[recorddict objectForKey:@"1pick5"],[recorddict objectForKey:@"1pick6"],[recorddict objectForKey:@"1t7"],[recorddict objectForKey:@"1t8"],[recorddict objectForKey:@"1t9"],[recorddict objectForKey:@"1pick7"],[recorddict objectForKey:@"1pick8"],[recorddict objectForKey:@"1pick9"],[recorddict objectForKey:@"1t10"],[recorddict objectForKey:@"1t11"],[recorddict objectForKey:@"1t12"],[recorddict objectForKey:@"1pick10"],[recorddict objectForKey:@"1pick11"],[recorddict objectForKey:@"1pick12"],[recorddict objectForKey:@"1t13"],[recorddict objectForKey:@"1t14"],[recorddict objectForKey:@"1t15"],[recorddict objectForKey:@"1pick13"],[recorddict objectForKey:@"1pick14"],[recorddict objectForKey:@"1pick15"],[recorddict objectForKey:@"sign"],secondEntity,value2];
    
    
    
    
    NSURL *url = [NSURL URLWithString:url2];
    
    // NSLog(@"postvalue%@",post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
    // NSLog(@"postrequest %@",url);
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"soapnotes Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form deletion successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault
                                                                      callback:nil];
                    
                    
                    
                    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form deletion failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
                }
            }
        }
        
    }
}


-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"SoapNotes.php?service=soapnotesdelete";
    
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
-(NSString *)HttpPostEntityFirst1diagnosis:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    int i;
    int j=[[recorddict objectForKey:@"numofcontent"] integerValue];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&no=%d",firstEntity,value1,j];
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"SoapNotesDiagnosis.php?service=soapnotesdiagnosisinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    for (i=1; i<=j; i++)
    {
        
        NSString *temp=[NSString stringWithFormat:@"diagnosis%d",i];
        NSString *p1=[recorddict objectForKey:temp];
        NSString *result=[NSString stringWithFormat:@"%@=%@",temp,p1];
        post=[NSString stringWithFormat:@"%@&%@",post,result];
    }
    post=[NSString stringWithFormat:@"%@&%@=%@",post,secondEntity,value2];
    
   // NSLog(@"POST:%@",post);
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
