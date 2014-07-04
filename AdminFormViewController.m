//
//  AdminFormViewController.m
//  Admin Form
//
//  Created by deemsys on 3/1/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "AdminFormViewController.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "UITextField+AKNumericFormatter.h"
#import "AKNumericFormatter.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"


@interface AdminFormViewController ()
{
    
    databaseurl *du;
}

@end

@implementation AdminFormViewController
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
@synthesize toaddress;
@synthesize tofax;
@synthesize update;
@synthesize deleteform;
@synthesize submit;
@synthesize reset;
@synthesize cancel2;
@synthesize reset2;
@synthesize cancel;


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
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty42,*texty43,*texty44,*texty45,*texty46,*texty47,*text32other;

- (void)viewDidLoad
{
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    [super viewDidLoad];
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
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
    
    other.hidden=YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    AKNumericFormatterMode mode = AKNumericFormatterMixed;
    tofax.numericFormatter = [AKNumericFormatter formatterWithMask:@"(***)***-****" placeholderCharacter:'*'mode:mode];
    [self Getdata];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dismissKeyboard {
    [other resignFirstResponder];
    [clinicrepsign resignFirstResponder];
    [toaddress resignFirstResponder];
    [tofax resignFirstResponder];
}
- (void)dealloc {
    
    
    
    [reset2 release];
    [cancel2 release];
    [cancel release];
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
    if(check6.selected){
        other.hidden=NO;
        texty32=[other text];
    }
    else{
        other.hidden=YES;
        texty32=@"";
        
    }
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
    NSString *userFormat1 =@"[A-Za-z]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateString1:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateString2:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z-,]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[/]+[0-9]{1,2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)cancel:(id)sender {
    [self performSegueWithIdentifier:@"requesttowelcome" sender:self];
}
- (IBAction)reset:(id)sender {
    tofax.text=@"";
    toaddress.text=@"";
    other.text=@"";
    other.hidden=YES;
    clinicrepsign.text=@"";
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
    
    
}
-(BOOL)validateFax:(NSString *)country1
{
    NSString *countryFormat1 =@"^(\\([0-9]{3})\\)[0-9]{3}-[0-9]{4}$";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateMobile:(NSString*)mobilenumber{
    NSCharacterSet *textremove = [NSCharacterSet characterSetWithCharactersInString:@"(-)"];
    mobilenumber= [[mobilenumber componentsSeparatedByCharactersInSet: textremove] componentsJoinedByString:@""];
    
    
    
    NSString *mobileFormat1 =  @"[0-9]{10}";
    
    
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    if ([mobileTest1 evaluateWithObject:mobilenumber])
    {
        NSString *indexvalues=[mobilenumber substringWithRange: NSMakeRange (0, 3)];
        NSString *indexvalues1=[mobilenumber substringWithRange: NSMakeRange (3,3)];
        
        if (([indexvalues isEqualToString:@"000"])||([indexvalues1 isEqualToString:@"000"]))
        {
            return 0;
        }
        else
            return 1;
        
    }
    else
    {
        return [mobileTest1 evaluateWithObject:mobilenumber];
    }
    
    
}

- (IBAction)save:(id)sender {
    du=[[databaseurl alloc]init];
    texty1=[other.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[clinicrepsign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[toaddress.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[tofax.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    if(check1.selected){
        texty27=@"on";
        //  texty27=@"on";
        
    }
    else{
        texty27=@"null";
    }
    if(check2.selected){
        texty28=@"on";
        
    }
    else{
        texty28=@"null";
    }
    if(check3.selected){
        texty29=@"on";
    }
    else{
        texty29=@"null";
    }
    if(check4.selected){
        texty30=@"on";
    }
    else{
        texty30=@"null";
    }
    if(check5.selected){
        texty31=@"on";
    }
    else{
        texty31=@"null";
    }
    if(check6.selected){
        other.hidden=NO;
        
        texty32=@"Other";
        text32other=[other text];
    }
    else{
        texty32=@"null";
        text32other=@"";
    }
    
    if(check7.selected){
        texty33=@"on";
    }
    else{
        texty33=@"null";
    }
    if(check8.selected){
        texty34=@"on";
    }
    else{
        texty34=@"null";
    }
    if(check9.selected){
        texty35=@"on";
    }
    else{
        texty35=@"null";
    }
    if(check10.selected){
        texty36=@"on";
    }
    else{
        texty36=@"null";
    }
    if(check11.selected){
        texty37=@"on";
    }
    else{
        texty37=@"null";
    }
    if(check12.selected){
        texty38=@"on";
    }
    else{
        texty38=@"null";
    }
    if(([clinicrepsign.text length]!=0)&&([toaddress.text length]!=0)&&([tofax.text length]!=0))
    {
        
        if ([du patname:texty3])
        {
            if ([du mobilenumber:texty4])
            {
                if([other.text length]==0||([du patname:texty1]==1))
                {
                    if(([du patname:texty2]==1))
                    {
                        suc=1;
                        
                        recorddict=[[NSMutableDictionary alloc]init];
                        [recorddict setObject:other.text forKey:@"requestdemandother"];
                        [recorddict setObject:clinicrepsign.text forKey:@"requestdemandclinicsignature"];
                        
                        [recorddict setObject:texty27 forKey:@"requestdemandcheck1"];
                        [recorddict setObject:texty28 forKey:@"requestdemandcheck2"];
                        [recorddict setObject:texty29 forKey:@"requestdemandcheck3"];
                        [recorddict setObject:texty30 forKey:@"requestdemandcheck4"];
                        [recorddict setObject:texty31 forKey:@"requestdemandcheck5"];
                        [recorddict setObject:texty32 forKey:@"requestdemandcheck6"];
                        [recorddict setObject:text32other forKey:@"requestdemandcheck6other"];
                        [recorddict setObject:texty33 forKey:@"requestdemandcheck7"];
                        [recorddict setObject:texty34 forKey:@"requestdemandcheck8"];
                        [recorddict setObject:texty35 forKey:@"requestdemandcheck9"];
                        [recorddict setObject:texty36 forKey:@"requestdemandcheck10"];
                        [recorddict setObject:texty37 forKey:@"requestdemandcheck11"];
                        [recorddict setObject:texty38 forKey:@"requestdemandcheck12"];
                        //NSLog(@"Record dict in request demand form::%@",recorddict);
                        
                        
                    }
                    else
                    {
                        suc=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid clinic representative signature."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                        
                        
                    }
                }else
                {
                    suc=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid name."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                    
                }
            }
            else
            {
                suc=0;
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid fax number."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
            }
        }
        else
        {
            suc=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Enter valid to address."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
            
        }
        
        
        
    }else
    {
        suc=0;
        
        
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter all the required fields."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
    }
    if (suc==1) {
        UIButton *buton=(UIButton*)sender;
        if(buton.tag==12)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            
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
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            
            if ([[self submitvalues]isEqualToString:@"success"]) {
                [self updatedata];
            }
            
            
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
    // NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"requestuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            //        NSLog(@"arraylist count %d",[arrayList1 count]);
            temp=[arrayList1 objectForKey:@"faultinsurer"];
            temp1 =[arrayList1 objectForKey:@"medpayinsurer"];
            temp2 =[arrayList1 objectForKey:@"paidbenefits"];
            temp3 =[arrayList1 objectForKey:@"bankrupt"];
            temp4 =[arrayList1 objectForKey:@"treatment"];
            temp5=[arrayList1 objectForKey:@"other"];
            temp6=[arrayList1 objectForKey:@"txtare"];
            temp15=[arrayList1 objectForKey:@"pleasesend"];
            temp7=[arrayList1 objectForKey:@"copymedpay"];
            temp8=[arrayList1 objectForKey:@"copyform"];
            temp9=[arrayList1 objectForKey:@"copyassign"];
            temp10=[arrayList1 objectForKey:@"greencard"];
            temp11 =[arrayList1 objectForKey:@"defaultattorney"];
            temp12 =[arrayList1 objectForKey:@"clinicrep"];
            temp13 =[arrayList1 objectForKey:@"tonum"];
            temp14 =[arrayList1 objectForKey:@"fax"];
            
            toaddress.text=temp13;
            tofax.text=temp14;
            clinicrepsign.text=temp12;
            if ([temp isEqualToString:@"on"])
            {
                [check1 setSelected:YES];
                [check1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            }
            else
            {
                [check1 setSelected:NO];
                [check1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
            if([temp1 isEqualToString:@"on"])
            {
                [check2 setSelected:YES];
                [check2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            else
            {
                [check2 setSelected:NO];
                [check2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
            if([temp2 isEqualToString:@"on"])
            {
                [check3 setSelected:YES];
                [check3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            }
            else
            {
                [check3 setSelected:NO];
                [check3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
            if([temp3 isEqualToString:@"on"])
            {
                [check4 setSelected:YES];
                [check4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            }
            else
            {
                [check4 setSelected:NO];
                [check4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
            if([temp4 isEqualToString:@"on"])
            {
                [check5 setSelected:YES];
                [check5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            }
            else
            {
                [check5 setSelected:NO];
                [check5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
            if([temp5 isEqualToString:@"Other"])
                
            {
                other.hidden=NO;
                other.text=temp6;
                [check6 setSelected:YES];
                [check6 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            }
            else
            {
                other.hidden=YES;
                other.text=@"";
                [check6 setSelected:NO];
                [check6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
            if([temp15 isEqualToString:@"on"])
            {
                [check7 setSelected:YES];
                [check7 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            else
            {
                [check7 setSelected:NO];
                [check7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
            if([temp7 isEqualToString:@"on"])
            {
                [check8 setSelected:YES];
                [check8 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            }
            else
            {
                [check8 setSelected:NO];
                [check8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
            if([temp8 isEqualToString:@"on"])
            {
                [check9 setSelected:YES];
                [check9 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            }
            else
            {
                [check9 setSelected:NO];
                [check9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
            if([temp9 isEqualToString:@"on"])
            {
                [check10 setSelected:YES];
                [check10 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            }
            else
            {
                [check10 setSelected:NO];
                [check10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
            if([temp10 isEqualToString:@"on"])
            {
                [check11 setSelected:YES];
                [check11 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            }
            else
            {
                [check11 setSelected:NO];
                [check11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
            if([temp11 isEqualToString:@"on"])
            {
                [check12 setSelected:YES];
                [check12 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            }
            else
            {
                [check12 setSelected:NO];
                [check12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            }
            
            
            
            
        }
        update.hidden=NO;
        deleteform.hidden=NO;
        submit.hidden=YES;
        reset.hidden=YES;
        cancel.hidden=YES;
        reset2.hidden=NO;
        cancel2.hidden=NO;
        
        
        
        //  NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
    }
    else
    {
        update.hidden=YES;
        deleteform.hidden=YES;
        submit.hidden=NO;
        reset.hidden=NO;
        cancel.hidden=NO;
        reset2.hidden=YES;
        cancel2.hidden=YES;
        
        // NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"request Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form updation successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault                                                                  callback:nil];
                
                
                
                
                
                
                [self performSegueWithIdentifier:@"requesttowelcome" sender:self];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form updation failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
                
                [self performSegueWithIdentifier:@"requesttowelcome" sender:self];
                
                
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"request Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault                                                                  callback:nil];
                
                
                
                
                
                [self performSegueWithIdentifier:@"requesttowelcome" sender:self];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
                
                [self performSegueWithIdentifier:@"requesttowelcome" sender:self];
                
                
            }
        }
    }
    
}
- (IBAction)deleteaction:(id)sender
{
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"request Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                                   description:@"Form deletion successful."
                                                                          type:TWMessageBarMessageTypeSuccess
                                                                statusBarStyle:UIStatusBarStyleDefault                                                                  callback:nil];
                    
                    
                    
                    
                    [self performSegueWithIdentifier:@"requesttowelcome" sender:self];
                    
                    
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Form deletion failed."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                    
                    
                    [self performSegueWithIdentifier:@"requesttowelcome" sender:self];
                    
                    
                }
            }
        }
        
    }
    
}

-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Requestfordemand.php?service=requestinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&tonum=%@&fax=%@&faultinsurer=%@&medpayinsurer=%@&paidbenefits=%@&bankrupt=%@&treatment=%@&other=%@&txtare=%@&pleasesend=%@&copymedpay=%@&copyform=%@&copyassign=%@&greencard=%@&defaultattorney=%@&clinicrep=%@&%@=%@",firstEntity,value1,toaddress.text,tofax.text,texty27,texty28,texty29,texty30,texty31,texty32,text32other,texty33,texty34,texty35,texty36,texty37,texty38,clinicrepsign.text,secondEntity,value2];
    
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
    NSString *url1=@"Requestfordemand.php?service=requestedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&tonum=%@&fax=%@&faultinsurer=%@&medpayinsurer=%@&paidbenefits=%@&bankrupt=%@&treatment=%@&other=%@&txtare=%@&pleasesend=%@&copymedpay=%@&copyform=%@&copyassign=%@&greencard=%@&defaultattorney=%@&clinicrep=%@&%@=%@",firstEntity,value1,toaddress.text,tofax.text,texty27,texty28,texty29,texty30,texty31,texty32,text32other,texty33,texty34,texty35,texty36,texty37,texty38,clinicrepsign.text,secondEntity,value2];
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
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Requestfordemand.php?service=requestdelete";
    
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

-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Requestfordemand.php?service=requestselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    //   NSLog(@"POST:%@",post);
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


@end
