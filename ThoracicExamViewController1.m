//
//  ThoracicExamViewController1.m
//  EHR
//
//  Created by Admin on 22/02/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "ThoracicExamViewController1.h"
#import "ThoracicExamViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "hamilViewController.h"

@interface ThoracicExamViewController1 ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end
//othertext.hidden=YES;
//othertext0.hidden=YES;

@implementation ThoracicExamViewController1
@synthesize recorddict;
@synthesize resultset;
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
@synthesize cancel2;
@synthesize save;
@synthesize check1;
@synthesize check2;
@synthesize check3;
@synthesize check4;
@synthesize check5;
@synthesize picker1;
@synthesize picker2;
@synthesize reset;
@synthesize reset1;
@synthesize update;
@synthesize deleteform;


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


NSString *textview1,*textview2,*oth;

int suc;
NSString *checkstring1,*checkstring2,*checkstring3,*checkstring4,*checkstring5,*segva;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35;

NSString *chec1,*chec2,*chec3,*chec4,*chec5,*chec6,*chec7,*chec8,*chec9,*chec10,*chec11,*chec12,*chec13,*chec14,*chec15;
#pragma mark - UIPickerView DataSource
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
    
    
    //NSLog(@"thoracic %@",recorddict); du=[[databaseurl alloc]init];
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

    othertext.hidden=YES;
    othertext0.hidden=YES;
    checkstring1=@"null";
    checkstring2=@"null";
    checkstring3=@"null";
    checkstring4=@"null";
    checkstring5=@"null";
    picker1.hidden=YES;
    picker2.hidden=YES;
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
    pickonelab.text=@"T1";
    segva=@"Excellent";
    update.hidden=YES;
    reset1.hidden=YES;
    deleteform.hidden=YES;
    save.hidden=NO;
    cancel.hidden=NO;
    cancel2.hidden=YES;
    reset.hidden=NO;
    
    
    
    [picker1 setBackgroundColor:([UIColor whiteColor])];
    _patcarearray=[[NSMutableArray alloc] initWithObjects:@"T1", @"T2", @"T3", @"T4", @"T5",@"T6",@"T7",@"T8",@"T9",@"T10",@"T11",@"T12",nil];
    _poarray=[[NSMutableArray alloc] initWithObjects:@"Excellent", @"Good", @"Fair", @"Poor", nil];
    // UITapGestureRecognizer *tapGR1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerViewTapped1)];
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
        reset.hidden=YES;
        deleteform.hidden=NO;
        save.hidden=YES;
        cancel2.hidden=NO;
        cancel2.hidden=NO;
        reset1.hidden=NO;
        if ([[resultset objectForKey:@"neurologicaltest"] isEqualToString:@"Unremarkable"])
        {
            check1.selected = YES;
            [check1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            checkstring1 = @"All Soft Tissue Unremarkable";
        }
        else
        {
            check1.selected = NO;
            [check1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            checkstring1 = @"null";
        }
        textv1.text = [resultset objectForKey:@"notes"];
        pickonelab.text = [resultset objectForKey:@"intercostal"];
        if ([[resultset objectForKey:@"sitting"] isEqualToString:@"Sitting"])
        {
            check2.selected = YES;
            [check2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            checkstring2 = @"Sitting";
        }
        else
        {
            check2.selected = NO;
            [check2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            checkstring2 = @"null";
        }
        if ([[resultset objectForKey:@"standing"] isEqualToString:@"Standing"])
        {
            check3.selected = YES;
            [check3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            checkstring3 = @"Standing";
        }
        else
        {
            check3.selected = NO;
            [check3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            checkstring3 = @"null";
        }
        if ([[resultset objectForKey:@"driving"] isEqualToString:@"Driving"])
        {
            check4.selected = YES;
            [check4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            checkstring4 = @"Driving";
        }
        else
        {
            check4.selected = NO;
            [check4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            checkstring4 = @"null";
        }
        if ([[resultset objectForKey:@"otherfunctional"] isEqualToString:@"Other"])
        {
            check5.selected = YES;
            [check5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            checkstring5 = @"Other";
            othertext0.hidden = NO;
        }
        else
        {
            check5.selected = NO;
            [check5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            checkstring5 = @"null";
            othertext0.hidden = YES;
        }
        othertext0.text = [resultset objectForKey:@"break_text3"];
        textv2.text = [resultset objectForKey:@"assessment"];
        if ([[resultset objectForKey:@"patientstatus"] isEqualToString:@"Excellent"])
        {
            [segmentnew2 setSelectedSegmentIndex:0];
            segva = @"Excellent";
        }
        else if ([[resultset objectForKey:@"patientstatus"] isEqualToString:@"Good"])
        {
            [segmentnew2 setSelectedSegmentIndex:1];
            segva = @"Good";
        }
        else if ([[resultset objectForKey:@"patientstatus"] isEqualToString:@"Fair"])
        {
            [segmentnew2 setSelectedSegmentIndex:2];
            segva = @"Fair";
        }
        else if ([[resultset objectForKey:@"patientstatus"] isEqualToString:@"Poor"])
        {
            [segmentnew2 setSelectedSegmentIndex:3];
            segva = @"Poor";
        }
        else
        {
            [segmentnew2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
            segva = @"null";
        }
        first.text = [resultset objectForKey:@"diagnosis1"];
        second.text = [resultset objectForKey:@"diagnosis2"];
        three.text = [resultset objectForKey:@"diagnosis3"];
        four.text = [resultset objectForKey:@"diagnosis4"];
        five.text = [resultset objectForKey:@"diagnosis5"];
        six.text = [resultset objectForKey:@"diagnosis6"];
        seven.text = [resultset objectForKey:@"times"];
        eight.text = [resultset objectForKey:@"week"];
        if ([[resultset objectForKey:@"spinal"] isEqualToString:@"Spinal Decompression"])
        {
            checkbut1.selected = YES;
            [checkbut1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec1 = @"Spinal Decompression";
        }
        else
        {
            checkbut1.selected = NO;
            [checkbut1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec1 = @"null";
        }
        if ([[resultset objectForKey:@"chiropractic"] isEqualToString:@"Chiropractic"])
        {
            checkbut2.selected = YES;
            [checkbut2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec2 = @"Chiropractic";
        }
        else
        {
            checkbut2.selected = NO;
            [checkbut2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec2 = @"null";
        }
        if ([[resultset objectForKey:@"physical"] isEqualToString:@"Physical Therapy"])
        {
            checkbut3.selected = YES;
            [checkbut3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec3 = @"Physical Therapy";
        }
        else
        {
            checkbut3.selected = NO;
            [checkbut3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec3 = @"null";
        }
        if ([[resultset objectForKey:@"orthotics"] isEqualToString:@"Orthotics/Bracing"])
        {
            checkbut4.selected = YES;
            [checkbut4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec4 = @"Orthotics/Bracing";
        }
        else
        {
            checkbut4.selected = NO;
            [checkbut4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec4 = @"null";
        }
        if ([[resultset objectForKey:@"modalities"] isEqualToString:@"Modalities"])
        {
            checkbut5.selected = YES;
            [checkbut5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec5 = @"Modalities";
        }
        else
        {
            checkbut5.selected = NO;
            [checkbut5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec5 = @"null";
        }
        if ([[resultset objectForKey:@"supplementation"] isEqualToString:@"Supplementation"])
        {
            checkbut6.selected = YES;
            [checkbut6 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec6 = @"Supplementation";
        }
        else
        {
            checkbut6.selected = NO;
            [checkbut6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec6 = @"null";
        }
        if ([[resultset objectForKey:@"hep"] isEqualToString:@"HEP"])
        {
            checkbut7.selected = YES;
            [checkbut7 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec7 = @"HEP";
        }
        else
        {
            checkbut7.selected = NO;
            [checkbut7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec7 = @"null";
        }
        if ([[resultset objectForKey:@"radiographic"] isEqualToString:@"Radiographic X-Ray"])
        {
            checkbut8.selected = YES;
            [checkbut8 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec8 = @"Radiographic X-Ray";
        }
        else
        {
            checkbut8.selected = NO;
            [checkbut8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec8 = @"null";
        }
        if ([[resultset objectForKey:@"mri"] isEqualToString:@"MRI"])
        {
            checkbut9.selected = YES;
            [checkbut9 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec9 = @"MRI";
        }
        else
        {
            checkbut9.selected = NO;
            [checkbut9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec9 = @"null";
        }
        if ([[resultset objectForKey:@"ctscan"] isEqualToString:@"CT Scan"])
        {
            checkbut10.selected = YES;
            [checkbut10 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec10 = @"CT Scan";
        }
        else
        {
            checkbut10.selected = NO;
            [checkbut10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec10 = @"null";
        }
        if ([[resultset objectForKey:@"nerve"] isEqualToString:@"Nerve Conduction"])
        {
            checkbut11.selected = YES;
            [checkbut11 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec11 = @"Nerve Conduction";
        }
        else
        {
            checkbut11.selected = NO;
            [checkbut11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec11 = @"null";
        }
        if ([[resultset objectForKey:@"emg"] isEqualToString:@"EMG"])
        {
            checkbut12.selected = YES;
            [checkbut12 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec12 = @"EMG";
        }
        else
        {
            checkbut12.selected = NO;
            [checkbut12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec12 = @"null";
        }
        if ([[resultset objectForKey:@"outside"] isEqualToString:@"Outside Refferal"])
        {
            checkbut13.selected = YES;
            [checkbut13 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec13 = @"Outside Refferal";
        }
        else
        {
            checkbut13.selected = NO;
            [checkbut13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec13 = @"null";
        }
        if ([[resultset objectForKey:@"dc"] isEqualToString:@"D/C"])
        {
            checkbut14.selected = YES;
            [checkbut14 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec14 = @"D/C";
        }
        else
        {
            checkbut14.selected = NO;
            [checkbut14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec14 = @"null";
        }
        if ([[resultset objectForKey:@"otheraddress"] isEqualToString:@"Other"])
        {
            checkbut15.selected = YES;
            [checkbut15 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chec15 = @"Other";
            othertext.hidden = NO;
        }
        else
        {
            checkbut15.selected = NO;
            [checkbut15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chec15 = @"null";
            othertext.hidden = YES;
        }
        othertext.text = [resultset objectForKey:@"break_text4"];
        signature.text = [resultset objectForKey:@"sign"];
        deleteform.hidden = NO;
        update.hidden = NO;
        reset1.hidden = NO;
        cancel.hidden = YES;
        save.hidden = YES;
        reset.hidden = YES;
    }
    else
    {
        deleteform.hidden = YES;
        update.hidden = YES;
        reset1.hidden = YES;
        cancel.hidden = NO;
        save.hidden = NO;
        reset.hidden = NO;
    }
}
- (void)pickerViewTapped1
{
    picker1.hidden=YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)checked:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(check1.selected)
    {
        checkstring1=@"Unremarkable";
    }
    else
        checkstring1=@"null";
    if(check2.selected)
    {
        checkstring2=@"Sitting";
    }
    else
        checkstring2=@"null";
    if(check3.selected)
    {
        checkstring3=@"Standing";
    }
    else
        checkstring3=@"null";
    if(check4.selected)
    {
        checkstring4=@"Driving";
    }
    else
        checkstring4=@"null";
    if(check5.selected)
    {
        othertext0.hidden=NO;
        checkstring5=@"Other";
    }
    else{
        othertext0.hidden=YES;
        checkstring5=@"null";
    }
    
    if(checkbut1.selected){
        chec1=@"Spinal Decompression";
    }
    else{
        chec1=@"null";
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
        chec15=@"Other";
    }
    else{
        chec15=@"null";
        othertext.hidden=YES;
        //chec15=othertext.text;
    }
}
-(BOOL)validateNumberLessFive:(NSString *)user

{
    //  NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    NSString *userFormat1 =@"[0-5]{1}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	//NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	//NSLog(@"begin editing");
}
-(BOOL)validateString:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}


- (void)dealloc {
    
    
    
    [segmentnew2 release];
    [reset release];
    [deleteform release];
    [update release];
    [reset1 release];
    [cancel2 release];
    [super dealloc];
}

- (IBAction)pick1but:(id)sender {
    if (picker1.hidden==YES)
    {
        picker1.hidden=NO;
        
    }
}

- (IBAction)pick2but:(id)sender {
    if (picker2.hidden==YES)
    {
        picker2.hidden=NO;
        
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
    //  [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(picker1.hidden==NO)
    {
        picker1.hidden=YES;
    }
    if(picker2.hidden==NO)
    {
        picker2.hidden=YES;
    }
}
#pragma mark - UIPickerView DataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(pickerView.tag==1)
        
        return [_patcarearray count];
    
    
    else if(pickerView.tag==2)
        
        return [_poarray count];
    
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
        
        return [_patcarearray objectAtIndex:row];
    
    
    
    else if(pickerView.tag==2)
        
        return [_poarray objectAtIndex:row];
    
    
    else
        return
        [_patcarearray objectAtIndex:row];
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if(pickerView.tag==1)
        
        pickonelab.text=[_patcarearray objectAtIndex:row];
    
    
    
    
    
    pickerView.hidden=YES;
    
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
    [textv1 resignFirstResponder];
    [textv2 resignFirstResponder];
    [othertext0 resignFirstResponder];
    [othertext resignFirstResponder];
    [signature resignFirstResponder];
}
-(BOOL)validatesign:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z]+";
    
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}

- (IBAction)save:(id)sender {
    textview1=[textv1.text stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    textview2=[textv2.text stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    oth=othertext0.text;
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
        
        if(([textv1.text length]==0)||[du comments:textview1]==1){
            if(([textv2.text length]==0)||[du comments:textview2]==1){
                
                
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
                                                
                                                if([du otherfields:texty10]==1)
                                                {
                                                    suc=1;
                                                    /* if([textv1.text isEqualToString:@""]){
                                                     textv1.text=@"null";
                                                     }
                                                     if([textv2.text isEqualToString:@""]){
                                                     textv2.text=@"null";
                                                     }
                                                     if([othertext0.text isEqualToString:@""]){
                                                     othertext0.text=@"null";
                                                     }
                                                     if([first.text isEqualToString:@""]){
                                                     first.text=@"null";
                                                     }
                                                     if([second.text isEqualToString:@""]){
                                                     second.text=@"null";
                                                     }
                                                     if([three.text isEqualToString:@""]){
                                                     three.text=@"null";
                                                     }
                                                     if([four.text isEqualToString:@""]){
                                                     four.text=@"null";
                                                     }
                                                     if([five.text isEqualToString:@""]){
                                                     five.text=@"null";
                                                     }
                                                     if([six.text isEqualToString:@""]){
                                                     six.text=@"null";
                                                     }
                                                     if([seven.text isEqualToString:@""]){
                                                     seven.text=@"null";
                                                     }
                                                     if([eight.text isEqualToString:@""]){
                                                     eight.text=@"null";
                                                     }
                                                     if([othertext.text isEqualToString:@""]){
                                                     othertext.text=@"null";
                                                     }if([signature.text isEqualToString:@""]){
                                                     signature.text=@"null";
                                                     }*/
                                                    
                                                    
                                                    //recorddict=[[NSMutableDictionary alloc]init];
                                                    //[recorddict addEntriesFromDictionary:temp];
                                                    [recorddict setObject:checkstring1 forKey:@"checkstringone"];
                                                    [recorddict setObject:checkstring2 forKey:@"checkstringtwo"];
                                                    [recorddict setObject:checkstring3 forKey:@"checkstringthree"];
                                                    [recorddict setObject:checkstring4 forKey:@"checkstringfour"];
                                                    [recorddict setObject:checkstring5 forKey:@"checkstringfive"];
                                                    [recorddict setObject:textv1.text forKey:@"textstringone"];
                                                    [recorddict setObject:textv2.text forKey:@"textstringtwo"];
                                                    [recorddict setObject:othertext0.text forKey:@"otherstringggooo"];
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
                                                    [recorddict setObject:pickonelab.text forKey:@"picker one"];
                                                    [recorddict setObject:segva forKey:@"seg for pat ccare"];
                                                    //NSLog(@"Record dict Value in final thoracic exam::%@",recorddict);
                                                    
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
                                                                                               description:@"Please enter valid week field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                            }
                                            
                                            
                                        }
                                        else{
                                            suc=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid times field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                        }
                                        
                                        
                                    }
                                    else{
                                        suc=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid diagnosis6 field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                    }
                                    
                                    
                                }
                                else{
                                    suc=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid diagnosis5 field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                }
                                
                                
                            }
                            else{
                                suc=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid diagnosis4 field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                            }
                            
                            
                        }
                        else{
                            suc=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid diagnosis3 field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                        
                        
                    }
                    else{
                        suc=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid diagnosis2 field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                    }
                    
                    
                }
                else{
                    suc=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid diagnosis1 field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                }
                
            }
            
            else{
                suc=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid assessment/additional comments field."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
            }
            
        }
        else{
            suc=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid notes field."
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
    if(suc==1){
        //        //NSLog(@"record dict in 2nd page:%@",recorddict);
        //NSLog(@"count in record dict:%lu",(unsigned long)[recorddict count]);
        UIButton *button = (UIButton*) sender;
        if(button.tag == 11)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            //            [self updatedata];
            if ([[self submitvalues]isEqualToString:@"success"])
            {
                [self insertdata];
            }
        }
        else if (button.tag == 12)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Updating";
            [HUD show:YES];
            //            [self insertdata];
            if ([[self submitvalues]isEqualToString:@"success"])
            {
                [self updatedata];
            }
        }
        else
        {
            NULL;
        }
        //NSLog(@"record dict in 2nd page:%@",recorddict);
        //NSLog(@"count in record dict:%d",[recorddict count]);
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
			////NSLog(@"Access Not Available");
			break;
		}
            
		case ReachableViaWWAN:
		{
			isConnect=YES;
			////NSLog(@"Reachable WWAN");
			break;
		}
		case ReachableViaWiFi:
		{
			isConnect=YES;
			////NSLog(@"Reachable WiFi");
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
        //NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"thoracicexam Data"])
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
                //  [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
        }
    }
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"ThoracicExam.php?service=thoracicexaminsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    //NSLog(@"values in record dictionaries::");
    // //NSLog(@"recorddict values::%@",recorddict);
    ////NSLog(@"value of reflesxes si:%@",[recorddict objectForKey:@"reflexes SI left"]);
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&muscle=%@&swelling=%@&acromion=%@&inferior=%@&iliac=%@&ribhumping=%@&allsoft=%@&rectus=%@&obliques=%@&levator=%@&serratus=%@&pectoralis=%@&trapezius=%@&rhomboids=%@&pectoralisminor=%@&paraspinals=%@&othernotes=%@&functionalrangeofmotion=%@&subluxation=%@&orthopedic=%@&flexion=%@&t12=%@&t23=%@&adamsignl=%@&adamsignr=%@&extension=%@&t34=%@&t45=%@&schepelmanl=%@&schepelmanr=%@&lflexion=%@&rflexion=%@&t56=%@&t67=%@&valsalval=%@&valsalvar=%@&lrotation=%@&rrotation=%@&t78=%@&t89=%@&dejerinel=%@&dejeriner=%@&t910=%@&t1011=%@&sotohalll=%@&sotohallr=%@&t1112=%@&t12l1=%@&sternall=%@&sternalr=%@&beevorl=%@&beevorr=%@&neurologicaltest=%@&notes=%@&intercostal=%@&sitting=%@&standing=%@&driving=%@&otherfunctional=%@&break_text3=%@&assessment=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&diagnosis6=%@&times=%@&week=%@&spinal=%@&chiropractic=%@&physical=%@&orthotics=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&ctscan=%@&nerve=%@&emg=%@&outside=%@&dc=%@&otheraddress=%@&break_text4=%@&sign=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patname"],[recorddict objectForKey:@"datey"],[recorddict objectForKey:@"text2"],[recorddict objectForKey:@"text3"],[recorddict objectForKey:@"firstseg"],[recorddict objectForKey:@"secondseg"],[recorddict objectForKey:@"thirdseg"],[recorddict objectForKey:@"fourthseg"],[recorddict objectForKey:@"firstcheck"],[recorddict objectForKey:@"fifthseg"],[recorddict objectForKey:@"sixthseg"],[recorddict objectForKey:@"seventhseg"],[recorddict objectForKey:@"eigthseg"],[recorddict objectForKey:@"ninthseg"],[recorddict objectForKey:@"tenthseg"],[recorddict objectForKey:@"eleventhseg"],[recorddict objectForKey:@"twelthseg"],[recorddict objectForKey:@"thirteenthseg"],[recorddict objectForKey:@"othernotes"],[recorddict objectForKey:@"secondcheck"],[recorddict objectForKey:@"thirdcheck"],[recorddict objectForKey:@"fourthcheck"],[recorddict objectForKey:@"flex"],[recorddict objectForKey:@"t1"],[recorddict objectForKey:@"t2"],[recorddict objectForKey:@"adl"],[recorddict objectForKey:@"adr"],[recorddict objectForKey:@"extens"],[recorddict objectForKey:@"t3"],[recorddict objectForKey:@"t4"],[recorddict objectForKey:@"sl"],[recorddict objectForKey:@"sr"],[recorddict objectForKey:@"latflex"],[recorddict objectForKey:@"latflexr"],[recorddict objectForKey:@"t5"],[recorddict objectForKey:@"t6"],[recorddict objectForKey:@"vl"],[recorddict objectForKey:@"vr"],[recorddict objectForKey:@"rotl"],[recorddict objectForKey:@"rotr"],[recorddict objectForKey:@"t7"],[recorddict objectForKey:@"t8"],[recorddict objectForKey:@"dl"],[recorddict objectForKey:@"dr"],[recorddict objectForKey:@"t9"],[recorddict objectForKey:@"t10"],[recorddict objectForKey:@"sol"],[recorddict objectForKey:@"sor"],[recorddict objectForKey:@"t11"],[recorddict objectForKey:@"t12"],[recorddict objectForKey:@"stl"],[recorddict objectForKey:@"str"],[recorddict objectForKey:@"bl"],[recorddict objectForKey:@"br"],[recorddict objectForKey:@"checkstringone"],[recorddict objectForKey:@"textstringone"],[recorddict objectForKey:@"picker one"],[recorddict objectForKey:@"checkstringtwo"],[recorddict objectForKey:@"checkstringthree"],[recorddict objectForKey:@"checkstringfour"],[recorddict objectForKey:@"checkstringfive"],[recorddict objectForKey:@"otherstringggooo"],[recorddict objectForKey:@"textstringtwo"],[recorddict objectForKey:@"seg for pat ccare"],[recorddict objectForKey:@"firstdiagnosis"],[recorddict objectForKey:@"seconddiagnosis"],[recorddict objectForKey:@"thirddiagnosis"],[recorddict objectForKey:@"fourthdiagnosis"],[recorddict objectForKey:@"fifthdiagnosis"],[recorddict objectForKey:@"sixthdiagnosis"],[recorddict objectForKey:@"day"],[recorddict objectForKey:@"week"],[recorddict objectForKey:@"checkselected1"],[recorddict objectForKey:@"checkselected2"],[recorddict objectForKey:@"checkselected3"],[recorddict objectForKey:@"checkselected4"],[recorddict objectForKey:@"checkselected5"],[recorddict objectForKey:@"checkselected6"],[recorddict objectForKey:@"checkselected7"],[recorddict objectForKey:@"checkselected8"],[recorddict objectForKey:@"checkselected9"],[recorddict objectForKey:@"checkselected10"],[recorddict objectForKey:@"checkselected11"],[recorddict objectForKey:@"checkselected12"],[recorddict objectForKey:@"checkselected13"],[recorddict objectForKey:@"checkselected14"],[recorddict objectForKey:@"checkselected15"],[recorddict objectForKey:@"othercheck"],[recorddict objectForKey:@"signature"],secondEntity,value2];
    //NSLog(@"POST:%@",post);
    //[recorddict objectForKey:@"ml4left"],[recorddict objectForKey:@"Physician signature"]
    NSURL *url = [NSURL URLWithString:url2];
    
    ////NSLog(post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
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
    
    //NSLog(@"data %@",data);
    
    return data;
    
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
        //NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"thoracicexam Data"])
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
                //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
        }
    }
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"ThoracicExam.php?service=thoracicexamedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    //NSLog(@"values in record dictionaries::");
    // //NSLog(@"recorddict values::%@",recorddict);
    ////NSLog(@"value of reflesxes si:%@",[recorddict objectForKey:@"reflexes SI left"]);
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&muscle=%@&swelling=%@&acromion=%@&inferior=%@&iliac=%@&ribhumping=%@&allsoft=%@&rectus=%@&obliques=%@&levator=%@&serratus=%@&pectoralis=%@&trapezius=%@&rhomboids=%@&pectoralisminor=%@&paraspinals=%@&othernotes=%@&functionalrangeofmotion=%@&subluxation=%@&orthopedic=%@&flexion=%@&t12=%@&t23=%@&adamsignl=%@&adamsignr=%@&extension=%@&t34=%@&t45=%@&schepelmanl=%@&schepelmanr=%@&lflexion=%@&rflexion=%@&t56=%@&t67=%@&valsalval=%@&valsalvar=%@&lrotation=%@&rrotation=%@&t78=%@&t89=%@&dejerinel=%@&dejeriner=%@&t910=%@&t1011=%@&sotohalll=%@&sotohallr=%@&t1112=%@&t12l1=%@&sternall=%@&sternalr=%@&beevorl=%@&beevorr=%@&neurologicaltest=%@&notes=%@&intercostal=%@&sitting=%@&standing=%@&driving=%@&otherfunctional=%@&break_text3=%@&assessment=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&diagnosis6=%@&times=%@&week=%@&spinal=%@&chiropractic=%@&physical=%@&orthotics=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&ctscan=%@&nerve=%@&emg=%@&outside=%@&dc=%@&otheraddress=%@&break_text4=%@&sign=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patname"],[recorddict objectForKey:@"datey"],[recorddict objectForKey:@"text2"],[recorddict objectForKey:@"text3"],[recorddict objectForKey:@"firstseg"],[recorddict objectForKey:@"secondseg"],[recorddict objectForKey:@"thirdseg"],[recorddict objectForKey:@"fourthseg"],[recorddict objectForKey:@"firstcheck"],[recorddict objectForKey:@"fifthseg"],[recorddict objectForKey:@"sixthseg"],[recorddict objectForKey:@"seventhseg"],[recorddict objectForKey:@"eigthseg"],[recorddict objectForKey:@"ninthseg"],[recorddict objectForKey:@"tenthseg"],[recorddict objectForKey:@"eleventhseg"],[recorddict objectForKey:@"twelthseg"],[recorddict objectForKey:@"thirteenthseg"],[recorddict objectForKey:@"othernotes"],[recorddict objectForKey:@"secondcheck"],[recorddict objectForKey:@"thirdcheck"],[recorddict objectForKey:@"fourthcheck"],[recorddict objectForKey:@"flex"],[recorddict objectForKey:@"t1"],[recorddict objectForKey:@"t2"],[recorddict objectForKey:@"adl"],[recorddict objectForKey:@"adr"],[recorddict objectForKey:@"extens"],[recorddict objectForKey:@"t3"],[recorddict objectForKey:@"t4"],[recorddict objectForKey:@"sl"],[recorddict objectForKey:@"sr"],[recorddict objectForKey:@"latflex"],[recorddict objectForKey:@"latflexr"],[recorddict objectForKey:@"t5"],[recorddict objectForKey:@"t6"],[recorddict objectForKey:@"vl"],[recorddict objectForKey:@"vr"],[recorddict objectForKey:@"rotl"],[recorddict objectForKey:@"rotr"],[recorddict objectForKey:@"t7"],[recorddict objectForKey:@"t8"],[recorddict objectForKey:@"dl"],[recorddict objectForKey:@"dr"],[recorddict objectForKey:@"t9"],[recorddict objectForKey:@"t10"],[recorddict objectForKey:@"sol"],[recorddict objectForKey:@"sor"],[recorddict objectForKey:@"t11"],[recorddict objectForKey:@"t12"],[recorddict objectForKey:@"stl"],[recorddict objectForKey:@"str"],[recorddict objectForKey:@"bl"],[recorddict objectForKey:@"br"],[recorddict objectForKey:@"checkstringone"],[recorddict objectForKey:@"textstringone"],[recorddict objectForKey:@"picker one"],[recorddict objectForKey:@"checkstringtwo"],[recorddict objectForKey:@"checkstringthree"],[recorddict objectForKey:@"checkstringfour"],[recorddict objectForKey:@"checkstringfive"],[recorddict objectForKey:@"otherstringggooo"],[recorddict objectForKey:@"textstringtwo"],[recorddict objectForKey:@"seg for pat ccare"],[recorddict objectForKey:@"firstdiagnosis"],[recorddict objectForKey:@"seconddiagnosis"],[recorddict objectForKey:@"thirddiagnosis"],[recorddict objectForKey:@"fourthdiagnosis"],[recorddict objectForKey:@"fifthdiagnosis"],[recorddict objectForKey:@"sixthdiagnosis"],[recorddict objectForKey:@"day"],[recorddict objectForKey:@"week"],[recorddict objectForKey:@"checkselected1"],[recorddict objectForKey:@"checkselected2"],[recorddict objectForKey:@"checkselected3"],[recorddict objectForKey:@"checkselected4"],[recorddict objectForKey:@"checkselected5"],[recorddict objectForKey:@"checkselected6"],[recorddict objectForKey:@"checkselected7"],[recorddict objectForKey:@"checkselected8"],[recorddict objectForKey:@"checkselected9"],[recorddict objectForKey:@"checkselected10"],[recorddict objectForKey:@"checkselected11"],[recorddict objectForKey:@"checkselected12"],[recorddict objectForKey:@"checkselected13"],[recorddict objectForKey:@"checkselected14"],[recorddict objectForKey:@"checkselected15"],[recorddict objectForKey:@"othercheck"],[recorddict objectForKey:@"signature"],secondEntity,value2];
    //NSLog(@"POST:%@",post);
    //[recorddict objectForKey:@"ml4left"],[recorddict objectForKey:@"Physician signature"]
    NSURL *url = [NSURL URLWithString:url2];
    
    ////NSLog(post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
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
    
    //NSLog(@"data %@",data);
    
    return data;
}

- (IBAction)pickselect:(id)sender {
    if(segmentnew2.selectedSegmentIndex==0){
        segva=@"Excellent";
    }
    else  if(segmentnew2.selectedSegmentIndex==1){
        segva=@"Good";
        
    }
    
    else  if(segmentnew2.selectedSegmentIndex==2){
        segva=@"Fair";
    }
    else  if(segmentnew2.selectedSegmentIndex==3){
        segva=@"Poor";
    }
}
- (IBAction)reset:(id)sender {
    pickonelab.text=@"T1";
    picker1.hidden=YES;
    first.text=@"";
    second.text=@"";
    three.text=@"";
    four.text=@"";
    five.text=@"";
    six.text=@"";
    seven.text=@"";
    eight.text=@"";
    textv1.text=@"";
    textv2.text=@"";
    othertext0.text=@"";
    othertext.text=@"";
    othertext.hidden=YES;
    othertext0.hidden=YES;
    signature.text=@"";
    [segmentnew2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    checkstring1=@"null";
    checkstring2=@"null";
    checkstring3=@"null";
    checkstring4=@"null";
    checkstring5=@"null";
    picker1.hidden=YES;
    picker2.hidden=YES;
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
    segva=@"Excellent";
    check1.selected = NO;
    check2.selected = NO;
    check3.selected = NO;
    check4.selected = NO;
    check5.selected = NO;
    checkbut1.selected = NO;
    checkbut2.selected = NO;
    checkbut3.selected = NO;
    checkbut4.selected = NO;
    checkbut5.selected = NO;
    checkbut6.selected = NO;
    checkbut7.selected = NO;
    checkbut8.selected = NO;
    checkbut9.selected = NO;
    checkbut10.selected = NO;
    checkbut11.selected = NO;
    checkbut12.selected = NO;
    checkbut13.selected = NO;
    checkbut14.selected = NO;
    checkbut15.selected = NO;
    
    [check1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
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
- (IBAction)deleteform:(id)sender
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
        //NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"thoracicexam Data"])
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
                // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
        }
    }
}

-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"ThoracicExam.php?service=thoracicexamdelete";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    //NSLog(@"values in record dictionaries::");
    // //NSLog(@"recorddict values::%@",recorddict);
    ////NSLog(@"value of reflesxes si:%@",[recorddict objectForKey:@"reflexes SI left"]);
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    //NSLog(@"POST:%@",post);
    //[recorddict objectForKey:@"ml4left"],[recorddict objectForKey:@"Physician signature"]
    NSURL *url = [NSURL URLWithString:url2];
    
    ////NSLog(post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu", (unsigned long)[postData length]];
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
    
    //NSLog(@"data %@",data);
    
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
                ////NSLog(@"FAILED! due to error in domain %@ with error code %u", error.domain, error.code);
            }
        };
        [printController presentFromBarButtonItem:barButton animated:YES completionHandler:completionHandler];
    }
}


@end

