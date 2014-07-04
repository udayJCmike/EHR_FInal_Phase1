//
//  physicalexamViewController.m
//  EHR
//
//  Created by DeemSysInc on 26/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "physicalexamViewController.h"
#import "CervicalSpineViewController.h"

#import "StringConstants.h"
#import "TWMessageBarManager.h"



@interface physicalexamViewController ()

@end

@implementation physicalexamViewController
@synthesize recorddict;
@synthesize  sexseg;
@synthesize agepicker;
@synthesize agelabel;
@synthesize heightbut;
@synthesize heightpicker;
@synthesize heightlab;

@synthesize heightpicker1;
@synthesize heightlab1;
@synthesize weightbut;
@synthesize weightpicker;
@synthesize weightlab;
@synthesize tempbut;
@synthesize temppicker;
@synthesize templab;
@synthesize pulsebut;
@synthesize pulsepicker;
@synthesize pulselabel;
@synthesize agebut;


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

NSString *val;
int suc;
NSMutableArray *pulse;
NSMutableArray *temp;
NSMutableArray *height1;
float count=0,count1=0;
float heightint=5.0;
float tempinit=95.0;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)ageaction:(id)sender {
    if (agepicker.hidden==YES) {
        agepicker.hidden=NO;
    }
    else
        agepicker.hidden=YES;
}
- (IBAction)height:(id)sender {
    if (heightpicker.hidden==YES)
    {
        heightpicker.hidden=NO;
        heightpicker1.hidden=NO;
        
    }
    else
    {
        heightpicker.hidden=YES;
        heightpicker1.hidden=YES;
    }
}
- (IBAction)weight:(id)sender {
    if ( weightpicker.hidden==YES) {
        weightpicker.hidden=NO;
    }
    else
        weightpicker.hidden=YES;
}
- (IBAction)temp:(id)sender {
    if (temppicker.hidden==YES) {
        temppicker.hidden=NO;
    }
    else
        temppicker.hidden=YES;
}
- (IBAction)pulse:(id)sender {
    if (pulsepicker.hidden==YES)
    {
        pulsepicker.hidden=NO;
    }
    else
        pulsepicker.hidden=YES;
}
-(BOOL)validateEmail:(NSString*)candidate{
    NSString *emailFormat1 = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    
    NSPredicate *emailTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailFormat1];
    return [emailTest1 evaluateWithObject:candidate];
    
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}
- (IBAction)reset:(id)sender {
    texty13=@"Excellent";
    texty14=@"UN";
    texty15=@"Antalgic";
    texty16=@"Normal";
    texty17=@"Normal";
    texty18=@"Good";
    texty19=@"Present";
    texty20=@"Normal";
    sex=@"Male";
    agelabel.text=@"1";
    heightlab.text=@"1";
    heightlab1.text=@"5.0";
    weightlab.text=@"1";
    templab.text=@"95.0";
    pulselabel.text=@"40";
    patid.text=@"";
    patname.text=@"";
    physiciansign.text=@"";
    date.text=@"";
    bp.text=@"";
    visceral.text=@"";
    abnormalfind.text=@"";
    heightpicker.hidden=YES;
    heightpicker1.hidden=YES;
    agepicker.hidden=YES;
    heightpicker.hidden=YES;
    weightpicker.hidden=YES;
    temppicker.hidden=YES;
    pulsepicker.hidden=YES;
    [sexseg setSelectedSegmentIndex:0];
    [appearance setSelectedSegmentIndex:0];
    [gait setSelectedSegmentIndex:0];
    [weightseg setSelectedSegmentIndex:0];
    [head setSelectedSegmentIndex:0];
    [posture setSelectedSegmentIndex:0];
    [romberg setSelectedSegmentIndex:0];
    [cnexam setSelectedSegmentIndex:0];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    patname.text=username;
    texty13=@"Excellent";
    texty14=@"UN";
    texty15=@"Antalgic";
    texty16=@"Normal";
    texty17=@"Normal";
    texty18=@"Good";
    texty19=@"Present";
    texty20=@"Normal";
    sex=@"Male";
    agelabel.text=@"1";
    heightlab.text=@"1";
    heightlab1.text=@"5.0";
    weightlab.text=@"1";
    templab.text=@"95.0";
    pulselabel.text=@"40";
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    recorddict=[[NSMutableDictionary alloc]init];
    pulse=[[NSMutableArray alloc]init];
    temp=[[NSMutableArray alloc]init];
    height1=[[NSMutableArray alloc]init];
    
    agepicker.hidden=YES;
    heightpicker.hidden=YES;
    heightpicker1.hidden=YES;
    weightpicker.hidden=YES;
    temppicker.hidden=YES;
    pulsepicker.hidden=YES;
    for ( int i=40; i<=250; i++)
    {
        [pulse addObject:[NSNumber numberWithUnsignedInteger:i]];
    }
    for ( int i=0; i<=65; i++)
    {
        
        
        [height1 addObject:[NSString stringWithFormat:@"%.1f",heightint]];
        heightint=heightint+0.1f;
    }
    // NSLog(@"height %@",height1);
    for ( int i=0; i<=89; i++)
    {
        
        [temp addObject:[NSString stringWithFormat:@"%.1f",tempinit]];
        tempinit=tempinit+0.1f;
    }
    
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
        return 100;
    else if(pickerView.tag==2)
        return 10;
    else if(pickerView.tag==3)
        return [height1 count];
    else if(pickerView.tag==4)
        return 500;
    else if(pickerView.tag==5)
        return [temp count];
    else if(pickerView.tag==6)
        return [pulse count];
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
        int a=row;
        val=[NSString stringWithFormat:@"%d",a+1];
        return val;
        
    }
    else if(pickerView.tag==2)
    {
        int a=row;
        val=[NSString stringWithFormat:@"%d",a+1];
        return val;
    }
    else if(pickerView.tag==3)
    {
        return  [NSString stringWithFormat:@"%@",[height1 objectAtIndex:row]];
    }
    else if(pickerView.tag==4)
    {
        int a=row;
        val=[NSString stringWithFormat:@"%d",a+1];
        return val;
    }
    else if(pickerView.tag==5)
    {
        return [NSString stringWithFormat:@"%@",[temp objectAtIndex:row]];
    }
    else if(pickerView.tag==6)
    {
        return [NSString stringWithFormat:@"%@",[pulse objectAtIndex:row]];
    }
    else
        return nil;
    
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    if(pickerView.tag==1)
    {
        int a=row;
        agelabel.text=[NSString stringWithFormat:@"%d",a+1];
        
    }
    else if(pickerView.tag==2)
    {
        int a=row;
        heightlab.text=[NSString stringWithFormat:@"%d",a+1];
    }
    else if(pickerView.tag==3)
    {
        
        heightlab1.text=[NSString stringWithFormat:@"%@",[height1 objectAtIndex:row]];
        
        
    }
    else if(pickerView.tag==4)
    {
        int a=row;
        weightlab.text=[NSString stringWithFormat:@"%d",a+1];
        
    }
    else if(pickerView.tag==5)
    {
        
        templab.text=[NSString stringWithFormat:@"%@",[temp objectAtIndex:row]];
        
        
    }
    else if(pickerView.tag==6)
    {
        
        pulselabel.text=[NSString stringWithFormat:@"%@",[pulse objectAtIndex:row]];
        
    }
    
    
    
    
    
    
    pickerView.hidden=YES;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sexaction:(id)sender
{
    if(sexseg.selectedSegmentIndex==0)
    {
        sex=@"Male";
    }
    else if(sexseg.selectedSegmentIndex==1)
    {
        sex=@"Female";
    }
}


-(void)dismissKeyboard {
    [physiciansign resignFirstResponder];
    
    [patid resignFirstResponder];
    [patname resignFirstResponder];
    
    [date resignFirstResponder];
    [visceral resignFirstResponder];
    
    [bp resignFirstResponder];
    
    [abnormalfind resignFirstResponder];
    [physiciansign resignFirstResponder];
    
    
}
- (IBAction)seg8:(id)sender {
    if(head.selectedSegmentIndex==0)
    {
        texty16=@"Normal";
    }
    else if(head.selectedSegmentIndex==1)
    {
        texty16=@"AbNormal";
    }
}

- (IBAction)seg7:(id)sender {
    if(cnexam.selectedSegmentIndex==0)
    {
        texty20=@"Normal";
    }
    else if(cnexam.selectedSegmentIndex==1)
    {
        texty20=@"DNP";
    }
}

- (IBAction)seg6:(id)sender {
    if(romberg.selectedSegmentIndex==0)
    {
        texty19=@"Present";
    }
    else if(romberg.selectedSegmentIndex==1)
    {
        texty19=@"Not Present";
    }
}

- (IBAction)seg1:(id)sender {
    if(appearance.selectedSegmentIndex==0)
    {
        texty13=@"Excellent";
    }
    else if(appearance.selectedSegmentIndex==1)
    {
        texty13=@"Good";
    }
    else if(appearance.selectedSegmentIndex==2)
    {
        texty13=@"Fair";
    }
    else if(appearance.selectedSegmentIndex==3)
    {
        texty13=@"Severe";
    }
}

- (IBAction)seg3:(id)sender {
    if(weightseg.selectedSegmentIndex==0)
    {
        texty14=@"UN";
    }
    else if(weightseg.selectedSegmentIndex==1)
    {
        texty14=@"N";
    }
    else if(weightseg.selectedSegmentIndex==2)
    {
        texty14=@"WN";
    }
}

- (IBAction)seg2:(id)sender {
    if(gait.selectedSegmentIndex==0)
    {
        texty15=@"Antalgic";
    }
    else if(gait.selectedSegmentIndex==1)
    {
        texty15=@"Limp";
    }
    else if(gait.selectedSegmentIndex==2)
    {
        texty15=@"Sway";
    }
    else if(gait.selectedSegmentIndex==3)
    {
        texty15=@"Stagger";
    }
    else if(gait.selectedSegmentIndex==4)
    {
        texty15=@"Normal";
    }
}



- (IBAction)seg5:(id)sender {
    if(posture.selectedSegmentIndex==0)
    {
        texty18=@"Good";
    }
    else if(posture.selectedSegmentIndex==1)
    {
        texty18=@"Poor";
    }
}

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z]+";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames2:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)validateNumber:(NSString *)user

{
    NSString *userFormat1 =@"[0-9]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    //[(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
-(BOOL)validateage:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[0-9]{1,3}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}

- (IBAction)submit:(id)sender {
    
    
    texty1=[physiciansign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[patid.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    texty10=[bp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    texty12=[abnormalfind.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty13=[visceral.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if([physiciansign.text length]!=0&&[patname.text length]!=0&&[patid.text length]!=0&&[bp.text length]!=0&&[date.text length]!=0&&[abnormalfind.text length]!=0&&[visceral.text length]!=0){
        if([self validateNames1:texty1]==1)
        {
            if([self validateNames:texty2]==1)
            {
                if([self validateEmail:texty3]==1)
                {
                    if([self validateDate:texty4]==1)
                    {
                        if([self validateNumber:texty10]==1)
                        {
                            
                            if([self validateNames2:texty13]==1)
                            {
                                if([self validateNames2:texty12]==1)
                                {
                                    
                                    [recorddict setValue:physiciansign.text forKey:@"physiciansign"];
                                    [recorddict setValue:patname.text forKey:@"patientname"];
                                    [recorddict setValue:patid.text forKey:@"email"];
                                    [recorddict setValue:date.text forKey:@"Date"];
                                    [recorddict setValue:agelabel.text forKey:@"age"];
                                    [recorddict setValue:sex forKey:@"sex"];
                                    [recorddict setValue:heightlab.text forKey:@"height"];
                                    [recorddict setValue:heightlab1.text forKey:@"height1"];
                                    [recorddict setValue:weightlab.text forKey:@"weight"];
                                    [recorddict setValue:templab.text forKey:@"temp"];
                                    [recorddict setValue:bp.text forKey:@"bp"];
                                    [recorddict setValue:pulselabel.text forKey:@"pulse"];
                                    [recorddict setValue:abnormalfind.text forKey:@"abnormalfindings"];
                                    
                                    
                                    [recorddict setValue:texty13 forKey:@"appearance"];
                                    [recorddict setValue:texty14 forKey:@"weight1"];
                                    [recorddict setValue:texty15 forKey:@"gait"];
                                    [recorddict setValue:texty16 forKey:@"head"];
                                    [recorddict setValue:texty17 forKey:@"visceralpatho"];
                                    [recorddict setValue:texty18 forKey:@"posture"];
                                    [recorddict setValue:texty19 forKey:@"romber"];
                                    [recorddict setValue:texty20 forKey:@"cnexam"];
                                    NSLog(@"Record dict Value in Physical Exam:%@",recorddict);
                                    suc=1;
                                    
                                }
                                else{
                                    suc=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Enter valid abnormal field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                }
                                
                                
                            }
                            else{
                                suc=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Enter valid visceral field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                            }
                            
                            
                            
                            
                            
                        }else{
                            suc=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Enter valid bp field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }else{
                        suc=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Enter valid date."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                    }
                    
                    
                }else{
                    suc=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Enter valid email id."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                }
                
                
            }else{
                suc=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Enter valid patient name."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
            }
            
        }else{
            suc=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Enter valid physician sign."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
        }
    }else{
        suc=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter all the required fields."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
    }
    if(suc==1){
        [self performSegueWithIdentifier:@"physic1" sender:self];
    }
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    // NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"physic1"])
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
    
    
    if ([segue.identifier isEqualToString:@"physic1"])
    {
        
        // NSLog(@"succc value in prepre segue %i ",suc);
        CervicalSpineViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        //  NSLog(@"recorddict in knee exam controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}
- (void)dealloc {
    [super dealloc];
}
@end
