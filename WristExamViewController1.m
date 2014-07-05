//
//  WristExamViewController1.m
//  EHR
//
//  Created by deemsys on 2/25/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "WristExamViewController1.h"
#import "WristExamViewController2.h"
#import "hamilViewController.h"

#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "databaseurl.h"



@interface WristExamViewController1 ()
{
    databaseurl *du;
}

@end

@implementation WristExamViewController1
int suc;
@synthesize recorddict;
@synthesize temp;
@synthesize resultset;

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


NSString *checkstring1,*checkstring2,*checktring3,*checkstring4,*segva,*checkstring5;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty42,*texty43,*texty44,*texty45;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
    checkstring1=@"";
    checkstring2=@"";
    checktring3=@"";
    checkstring4=@"";
    segva=@"Excellent";
    other.hidden=YES;
    other.text=@"";
    addcomments.text=@"";
    [check1 setSelected:NO];
    [check1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check2 setSelected:NO];
    [check2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check3 setSelected:NO];
    [check3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check4 setSelected:NO];
    [check4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [seg1 setSelectedSegmentIndex:0];
    first.text=@"";
    sec.text=@"";
    thr.text=@"";
    four.text=@"";
    fiv.text=@"";
    six.text=@"";
    sev.text=@"";
    eight.text=@"";
    nine.text=@"";
    ten.text=@"";
    eleven.text=@"";
    twe.text=@"";
    thrt.text=@"";
    fourt.text=@"";
    fift.text=@"";
    sixteen.text=@"";
    seventeen.text=@"";
    eighteen.text=@"";
    ninteen.text=@"";
    twenty.text=@"";
    twentyone.text=@"";
    twentytwo.text =@"";
    twentythree.text=@"";
    twentyfour.text=@"";
    twentyfive.text=@"";
    twentysix.text=@"";
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    checkstring1=@"";
    checkstring2=@"";
    checktring3=@"";
    checkstring4=@"";
    segva=@"Excellent";
    other.hidden=YES;
    du=[[databaseurl alloc]init];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
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
        first.text=[resultset objectForKey:@"latdeltoidleft"];
        sec.text=[resultset objectForKey:@"latdeltoidright"];
        sev.text=[resultset objectForKey:@"latarmleft"];
        eight.text=[resultset objectForKey:@"latarmright"];
        thrt.text=[resultset objectForKey:@"thirdleft"];
        fourt.text=[resultset objectForKey:@"thirdright"];
        ninteen.text=[resultset objectForKey:@"medforearmleft"];
        twenty.text=[resultset objectForKey:@"medforearmright"];
        twentythree.text=[resultset objectForKey:@"medelbowleft"];
        twentyfour.text=[resultset objectForKey:@"medelbowright"];
        thr.text=[resultset objectForKey:@"shdleft"];
        four.text=[resultset objectForKey:@"shdright"];
        nine.text=[resultset objectForKey:@"elbflexleft"];
        ten.text=[resultset objectForKey:@"elbflexright"];
        fift.text=[resultset objectForKey:@"elbextleft"];
        sixteen.text=[resultset objectForKey:@"elbextright"];
        twentyone.text=[resultset objectForKey:@"digitflexionleft"];
        twentytwo.text=[resultset objectForKey:@"digitflexionright"];
        twentyfive.text=[resultset objectForKey:@"digitabdleft"];
        twentysix.text=[resultset objectForKey:@"digitabdright"];
        fiv.text=[resultset objectForKey:@"bicepsleft"];
        six.text=[resultset objectForKey:@"bicepsright"];
        eleven.text=[resultset objectForKey:@"brachioradleft"];
        twe.text=[resultset objectForKey:@"brachioradright"];
        seventeen.text=[resultset objectForKey:@"tricepsleft"];
        eighteen.text=[resultset objectForKey:@"tricepsright"];
        temp1=[resultset objectForKey:@"typing"];
        temp2=[resultset objectForKey:@"driving"];
        temp3=[resultset objectForKey:@"other"];
        other.text=[resultset objectForKey:@"otherdefict"];
        addcomments.text=[resultset objectForKey:@"comments"];
        temp6=[resultset objectForKey:@"patientstatus"];
        temp4=[resultset objectForKey:@"neurological"];
        if ([temp4 isEqualToString:@"Neurological Testing Unremarkable"]) {
            check1.selected=YES;
            [check1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            checkstring1=@"Neurological Testing Unremarkable";
            
        }
        else
        {
            check1.selected=NO;
            [check1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            checkstring1=@"null";
            
            
        }
        if ([temp1 isEqualToString:@"Typing / Writing"]) {
            check2.selected=YES;
            [check2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            checkstring2=@"Typing / Writing";
            
        }
        else
        {
            check2.selected=NO;
            [check2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            checkstring2=@"null";
            
            
        }
        if ([temp2 isEqualToString:@"Driving"]) {
            check3.selected=YES;
            [check3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            checktring3=@"Driving";
            
        }
        else
        {
            check3.selected=NO;
            [check3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            checktring3=@"null";
            
            
        }
        if ([temp3 isEqualToString:@"Other"]) {
            check4.selected=YES;
            [check4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            checkstring4=@"Other";
            other.hidden=NO;
            
        }
        else
        {
            check4.selected=NO;
            [check4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            checkstring4=@"null";
            other.hidden=YES;
            
            
        }
        
        if ([temp6 isEqualToString:@"Excellent"] ) {
            [seg1 setSelectedSegmentIndex:0];
            segva=@"Excellent";
        }
        else if ([temp6 isEqualToString:@"Good"] ) {
            [seg1 setSelectedSegmentIndex:1];
            segva=@"Good";
        }
        else if ([temp6 isEqualToString:@"Fair"] ) {
            [seg1 setSelectedSegmentIndex:2];
            segva=@"Fair";
        }
        else if ([temp6 isEqualToString:@"Poor"] ) {
            [seg1 setSelectedSegmentIndex:3];
            segva=@"Poor";
        }
        
        
        
    }
}
-(BOOL)validateString:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
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
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateaddress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z._/-]+";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[A-Za-z0-9_-]+";
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)byfive:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    
    [super dealloc];
}
- (IBAction)checkchange:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(check4.selected)
    {
        other.hidden=NO;
        
        // NSLog(@"checkstring five other field::%@",checkstring5);
    }
    else
        other.hidden=YES;
    
    
    
}
-(void)dismissKeyboard {
    
    [other resignFirstResponder];
    [first resignFirstResponder];
    
    [fiv resignFirstResponder];
    [sec resignFirstResponder];
    [thr resignFirstResponder];
    [four resignFirstResponder];
    [fiv resignFirstResponder];
    [six resignFirstResponder];
    [sev resignFirstResponder];
    [eight resignFirstResponder];
    [nine resignFirstResponder];
    [ten resignFirstResponder];
    [eleven resignFirstResponder];
    [twe resignFirstResponder];
    [thrt resignFirstResponder];
    [fourt resignFirstResponder];
    [fift resignFirstResponder];
    [sixteen resignFirstResponder];
    [seventeen resignFirstResponder];
    [eighteen resignFirstResponder];
    [ninteen resignFirstResponder];
    [twenty resignFirstResponder];
    [twentyone resignFirstResponder];
    [twentytwo resignFirstResponder];
    [twentythree resignFirstResponder];
    [twentyfour resignFirstResponder];
    [twentyfive resignFirstResponder];
    [twentysix resignFirstResponder];
    [addcomments resignFirstResponder];
    [other resignFirstResponder];
    
    
    
    
    
    
}

-(BOOL)date:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9-_]{1,4}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}

- (IBAction)next:(id)sender {
    
    if(!check4.selected)
    {
        other.text=@"";
        
    }
    texty1=first.text;
    texty2=sec.text;
    texty3=thr.text;
    texty4=four.text;
    texty5=fiv.text;
    texty6=six.text;
    texty7=sev.text;
    texty8=eight.text;
    texty9=nine.text;
    texty10=ten.text;
    texty11=eleven.text;
    texty12=twe.text;
    texty13=thrt.text;
    texty14=fourt.text;
    texty15=fift.text;
    texty16=sixteen.text;
    texty17=seventeen.text;
    texty18=eighteen.text;
    texty19=ninteen.text;
    texty20=twenty.text;
    texty21=twentyone.text;
    texty22=twentytwo.text;
    texty23=twentythree.text;
    texty24=twentyfour.text;
    texty25=twentyfive.text;
    texty26=twentysix.text;
    texty28=[addcomments.text stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    texty28=[texty28 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    texty28=[texty28 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    texty27=other.text;
    // texty29=[refsileft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //texty30=[refsiright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if([first.text length]==0||([du date:texty1]==1))
    {
        if([sec.text length]==0||([du date:texty2]==1))
        {
            if([thr.text length]==0||([du byfive:texty3]==1))
            {
                if([four.text length]==0||([du byfive:texty4]==1))
                {
                    if([fiv.text length]==0||([du byfive:texty5]==1))
                    {
                        if([six.text length]==0||([du byfive:texty6]==1))
                        {
                            if([sev.text length]==0||([du date:texty7]==1))
                            {
                                if([eight.text length]==0||([du date:texty8]==1))
                                {
                                    if([nine.text length]==0||([du byfive:texty9]==1))
                                    {
                                        if([ten.text length]==0||([du byfive:texty10]==1))
                                        {
                                            if([eleven.text length]==0||([du byfive:texty11]==1))
                                            {
                                                if([twe.text length]==0||([du byfive:texty12]==1))
                                                {
                                                    if([thrt.text length]==0||([du date:texty13]==1))
                                                    {
                                                        if([fourt.text length]==0||([du date:texty14]==1))
                                                        {
                                                            if([fift.text length]==0||([du byfive:texty15]==1))
                                                            {
                                                                if([sixteen.text length]==0||([du byfive:texty16]==1))
                                                                {
                                                                    if([seventeen.text length]==0||([du byfive:texty17]==1))
                                                                    {
                                                                        if([eighteen.text length]==0||([du byfive:texty18]==1))
                                                                        {
                                                                            if([ninteen.text length]==0||([du date:texty19]==1))
                                                                            {
                                                                                if([twenty.text length]==0||([du date:texty20]==1))
                                                                                {
                                                                                    if([twentyone.text length]==0||([du byfive:texty21]==1))
                                                                                    {
                                                                                        if([twentytwo.text length]==0||([du byfive:texty22]==1))
                                                                                        {
                                                                                            if([twentythree.text length]==0||([du date:texty23]==1))
                                                                                            {
                                                                                                if([twentyfour.text length]==0||([du date:texty24]==1))
                                                                                                {
                                                                                                    if([twentyfive.text length]==0||([du byfive:texty25]==1))
                                                                                                    {
                                                                                                        if([twentysix.text length]==0||([du byfive:texty26]==1))
                                                                                                        {
                                                                                                            if([other.text length]==0||([du otherfields:texty27]==1))
                                                                                                            {
                                                                                                                if([addcomments.text length]==0||([du comments:texty28]==1))
                                                                                                                {
                                                                                                                    suc=1;
                                                                                                                    
                                                                                                                    if(check1.selected)
                                                                                                                    {
                                                                                                                        checkstring1=@"Neurological Testing Unremarkable";
                                                                                                                    }
                                                                                                                    else
                                                                                                                        checkstring1=@"null";
                                                                                                                    if(check2.selected)
                                                                                                                    {
                                                                                                                        checkstring2=@"Typing / Writing";
                                                                                                                    }
                                                                                                                    else
                                                                                                                        checkstring2=@"null";
                                                                                                                    if(check3.selected)
                                                                                                                    {
                                                                                                                        //NSLog(@"check 3 selected");
                                                                                                                        checktring3=@"Driving";
                                                                                                                    }
                                                                                                                    else{
                                                                                                                        // NSLog(@"check3 not selected");
                                                                                                                        checktring3=@"null";
                                                                                                                    }
                                                                                                                    if(check4.selected)
                                                                                                                    {
                                                                                                                        checkstring4=@"Other";
                                                                                                                        
                                                                                                                        
                                                                                                                        // NSLog(@"checkstring five other field::%@",checkstring5);
                                                                                                                    }
                                                                                                                    else
                                                                                                                        checkstring4=@"null";
                                                                                                                    [recorddict setObject:segva forKey:@"patientstatus"];
                                                                                                                    [recorddict setObject:first.text forKey:@"first"];
                                                                                                                    [recorddict setObject:sec.text forKey:@"2nd"];
                                                                                                                    [recorddict setObject:thr.text forKey:@"3rd"];
                                                                                                                    [recorddict setObject:four.text forKey:@"4th"];
                                                                                                                    [recorddict setObject:fiv.text forKey:@"5th"];
                                                                                                                    [recorddict setObject:six.text forKey:@"6th"];
                                                                                                                    [recorddict setObject:sev.text forKey:@"7th"];
                                                                                                                    [recorddict setObject:eight.text forKey:@"8th"];
                                                                                                                    [recorddict setObject:nine.text forKey:@"9th"];
                                                                                                                    [recorddict setObject:ten.text forKey:@"10th"];
                                                                                                                    [recorddict setObject:eleven.text forKey:@"11th"];
                                                                                                                    [recorddict setObject:twe.text forKey:@"12th"];
                                                                                                                    [recorddict setObject:thrt.text forKey:@"13th"];
                                                                                                                    [recorddict setObject:fourt.text forKey:@"14th"];
                                                                                                                    [recorddict setObject:fift.text forKey:@"15th"];
                                                                                                                    [recorddict setObject:sixteen.text forKey:@"16th"];
                                                                                                                    [recorddict setObject:seventeen.text forKey:@"17th"];
                                                                                                                    [recorddict setObject:eighteen.text forKey:@"18th"];
                                                                                                                    [recorddict setObject:ninteen.text forKey:@"19th"];
                                                                                                                    [recorddict setObject:twenty.text forKey:@"20th"];
                                                                                                                    [recorddict setObject:twentyone.text forKey:@"21st"];
                                                                                                                    [recorddict setObject:twentytwo.text forKey:@"22nd"];
                                                                                                                    [recorddict setObject:twentythree.text forKey:@"23rd"];
                                                                                                                    [recorddict setObject:twentyfour.text forKey:@"24th"];
                                                                                                                    [recorddict setObject:twentyfive.text forKey:@"25th"];
                                                                                                                    [recorddict setObject:twentysix.text forKey:@"26th"];
                                                                                                                    [recorddict setObject:other.text forKey:@"othertext"];
                                                                                                                    [recorddict setObject:addcomments.text forKey:@"addcmt"];
                                                                                                                    
                                                                                                                    
                                                                                                                    [recorddict setObject:checkstring1 forKey:@"neuro"];
                                                                                                                    [recorddict setObject:checkstring2 forKey:@"typing"];
                                                                                                                    [recorddict setObject:checktring3 forKey:@"driving"];
                                                                                                                    [recorddict setObject:checkstring4 forKey:@"ot"];
                                                                                                                    
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    suc=0;
                                                                                                                    
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please enter valid addcomments field."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                suc=0;
                                                                                                                
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please enter valid other text field."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            suc=0;
                                                                                                            
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please enter valid motor t1 right field."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        suc=0;
                                                                                                        
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please enter valid motor t1 left field."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    suc=0;
                                                                                                    
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid sensory t1 right field."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                suc=0;
                                                                                                
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid sensory t1 left field."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            suc=0;
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid motor c8 right field."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        suc=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid motor c8 left field."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                else
                                                                                {
                                                                                    suc=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid sensory c8 right field."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                suc=0;
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid sensory c8 left field."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            suc=0;
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid reflexes c7 right field."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        suc=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid reflexes c7 left field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    suc=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid motor c7 right field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                suc=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid motor c7 left field value."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            suc=0;
                                                            
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid sensory c7 right field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        suc=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid sensory c7 left field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    suc=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid reflexes c6 right field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                suc=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid reflexes c6 left field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            suc=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid motor c6 right field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        suc=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid motor c6 left field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                    }
                                    
                                }
                                else
                                {
                                    suc=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid sensory c6 right field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                    
                                }
                                
                            }
                            else
                            {
                                suc=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid sensory c6 left field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                            }
                            
                        }
                        else
                        {
                            suc=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid reflexes c5 right field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        suc=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid reflexes c5 left field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                        
                    }
                    
                }
                else
                {
                    suc=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid motor c5 right field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                }
                
            }
            else
            {
                suc=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid motor c5 left field."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
            }
            
        }
        else
        {
            suc=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid sensory c5 right field."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
        }
        
    }
    else
    {
        suc=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter valid sensory c5 left field."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
    }
    if(suc==1){
        [self performSegueWithIdentifier:@"wrist2" sender:self];
    }
    
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"wrist2"])
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
    
    
    if ([segue.identifier isEqualToString:@"wrist2"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
        WristExamViewController2 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        NSLog(@"recorddict in knee exam controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}

- (IBAction)segbut:(id)sender {
    if(seg1.selectedSegmentIndex==0){
        segva=@"Excellent";
    }
    else  if(seg1.selectedSegmentIndex==1){
        segva=@"Good";
        
    }
    
    else  if(seg1.selectedSegmentIndex==2){
        segva=@"Fair";
    }
    else  if(seg1.selectedSegmentIndex==3){
        segva=@"Poor";
    }
}

@end
