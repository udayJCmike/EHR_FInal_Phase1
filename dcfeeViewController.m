//
//  dcfeeViewController.m
//  dcfee
//
//  Created by Admin on 05/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "dcfeeViewController.h"


#import "dcfee1ViewController.h"

#import "StringConstants.h"
#import "TWMessageBarManager.h"


#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
@interface dcfeeViewController ()
{
    databaseurl *du;
}

@end

@implementation dcfeeViewController
@synthesize patientid;
@synthesize patientname;
@synthesize physicianname;
@synthesize rpt;
@synthesize date;
@synthesize pta;
@synthesize limited;
@synthesize expanded;
@synthesize detailed;
@synthesize extended;
@synthesize ltd;
@synthesize exp;
@synthesize detail;
@synthesize comp;
@synthesize refexp;
@synthesize refdetail;
@synthesize refcomp;
@synthesize consultexp;
@synthesize consultdetail;
@synthesize consultationcomp;
@synthesize brief;
@synthesize intermediate;
@synthesize consultcomp;
@synthesize recorddict;
@synthesize page1;



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



-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z._/-]+";
    
    //   [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    
    NSString *countryFormat1 = @"[A-Za-z]+";
    
    //   [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames2:(NSString *)country1
{
    
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
    //   [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9]+";
    
    //   [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)calc:(id)sender {
    
    
}


- (IBAction)next:(id)sender
{
    du=[[databaseurl alloc]init];
    recorddict=[[NSMutableDictionary alloc]init];
    temp1 =[patientname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[physicianname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[patientid.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[rpt.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[pta.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[limited.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[expanded.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[detailed.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[extended.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[ltd.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[exp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[detail.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[comp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[refexp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[refdetail.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[refcomp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[consultexp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[consultdetail.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[consultcomp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[brief.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[intermediate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[consultationcomp.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if(([temp1 length]!=0)&&
       ([temp2 length]!=0)&&
       ([temp3 length]!=0)&&
       ([temp4 length]!=0)&&
       ([ temp5 length]!=0)
       &&       ([temp23 length]!=0))
        
        
        
    {
        c=1;
        
        if ([du time:temp3 ]==1)
        {
            if ([du patname:temp2]==1)
            {
                if([du patname:temp1]==1)
                {
                    if([du patname:temp4]==1)
                    {
                        if ([du patname:temp5]==1)
                        {
                            if ([self validateDate:temp23]==1)
                            {
                                if((([temp6 length]>0)&&([du date:temp6]==1))||([temp6 length]==0))
                                {
                                    if((([temp7 length]>0)&&([du date:temp7]==1))||([temp7 length]==0))
                                    {
                                        if((([temp8 length]>0)&&([du date:temp8]==1))||([temp8 length]==0))
                                        {
                                            if((([temp9 length]>0)&&([du date:temp9]==1))||([temp9 length]==0))
                                            {
                                                if((([temp10 length]>0)&&([du date:temp10 ]==1))||([temp10 length]==0))
                                                {
                                                    if((([temp11 length]>0)&&([du date:temp11]==1))||([temp11 length]==0))
                                                    {
                                                        if((([temp12 length]>0)&&([du date:temp12]==1))||([temp12 length]==0))
                                                        {
                                                            if((([temp13 length]>0)&&([du date:temp13]==1))||([temp13 length]==0))
                                                            {
                                                                if((([temp14 length]>0)&&([du date:temp14]==1))||([temp14 length]==0))
                                                                {
                                                                    if((([temp15 length]>0)&&([du date:temp15]==1))||([temp15 length]==0))
                                                                    {
                                                                        if((([temp16 length]>0)&&([du date:temp16]==1))||([temp16 length]==0))
                                                                        {
                                                                            if((([temp17 length]>0)&&([du date:temp17]==1))||([temp17 length]==0))
                                                                            {
                                                                                if((([temp18 length]>0)&&([du date:temp18]==1))||([temp18 length]==0))
                                                                                {
                                                                                    if((([temp19 length]>0)&&([du date:temp19]==1))||([temp19 length]==0))
                                                                                    {
                                                                                        if((([temp20 length]>0)&&([du date:temp20]==1))||([temp20 length]==0))
                                                                                        {
                                                                                            if((([temp21 length]>0)&&([du date:temp21]==1))||([temp21 length]==0))
                                                                                            {
                                                                                                if((([temp22 length]>0)&&([du date:temp22]==1))||([temp22 length]==0))
                                                                                                {
                                                                                                    calc=([limited.text floatValue]+[expanded.text floatValue]+[detailed.text floatValue]+[extended.text floatValue]+[ltd.text floatValue]+[exp.text floatValue]+[detail.text floatValue]+[comp.text floatValue]+[refexp.text floatValue]+[refdetail.text floatValue]+[refcomp.text floatValue]+[consultexp.text floatValue]+[consultdetail.text floatValue]+[consultcomp.text floatValue]+[brief.text floatValue]+[intermediate.text floatValue]+[consultationcomp.text floatValue]);
                                                                                                    page1.text=[[NSString alloc] initWithFormat:@"%f",calc];
                                                                                                    [recorddict setValue: page1.text forKey:@"calc1"];
                                                                                                    [recorddict setValue:date.text forKey:@"datefirst"];
                                                                                                    [recorddict setValue:patientid.text forKey:@"patientid"];
                                                                                                    [recorddict setValue:patientname.text forKey:@"patientname"];
                                                                                                    [recorddict setValue:physicianname.text forKey:@"physicianname"];
                                                                                                    [recorddict setValue:rpt.text forKey:@"RPT"];
                                                                                                    [recorddict setValue:pta.text forKey:@"PTA"];
                                                                                                    [recorddict setValue:limited.text forKey:@"Limited"];
                                                                                                    [recorddict setValue:expanded.text forKey:@"Expanded"];
                                                                                                    [recorddict setValue:detailed.text forKey:@"Detailed"];
                                                                                                    [recorddict setValue:extended.text forKey:@"Extended"];
                                                                                                    
                                                                                                    [recorddict setValue:ltd.text forKey:@"Ltd"];
                                                                                                    
                                                                                                    
                                                                                                    [recorddict setValue:exp.text forKey:@"Exp"];
                                                                                                    [recorddict setValue:detail.text forKey:@"Detail"];
                                                                                                    [recorddict setValue:comp.text forKey:@"comp"];
                                                                                                    [recorddict setValue:refexp.text forKey:@"refexp"];
                                                                                                    
                                                                                                    [recorddict setValue:refdetail.text forKey:@"refdetail"];
                                                                                                    [recorddict setValue:refcomp.text forKey:@"refcomp"];
                                                                                                    [recorddict setValue:consultexp.text forKey:@"consultexp"];
                                                                                                    [recorddict setValue:consultdetail.text forKey:@"consultdetail"];
                                                                                                    
                                                                                                    [recorddict setValue:consultcomp.text forKey:@"consultcomp"];
                                                                                                    [recorddict setValue:brief.text forKey:@"brief"];
                                                                                                    [recorddict setValue:intermediate.text forKey:@"intermediate"];
                                                                                                    [recorddict setValue:consultationcomp.text forKey:@"consultationcomp"];
                                                                                                    NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                    //
                                                                                                    NSLog(@"record dict count %d",[recorddict count]);
                                                                                                    
                                                                                                    c=1;
                                                                                                    
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    c=0;
                                                                                                    
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid consultaion comp field."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                c=0;
                                                                                                
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid consult intermediate field."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            c=0;
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter enter valid consulation brief  field."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        c=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid consult comp field."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    c=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid consult detail  field."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                c=0;
                                                                                
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid consult exp field."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            c=0;
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid refcomp field."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid refdetail field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    c=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid refexp field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                }
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid E/M comp field."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid E/M detail field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid E/M EXP field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    c=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid E/M LTD field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                c=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid E/M extended  field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            c=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid E/M detailed field field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        c=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid E/M expanded field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                    }
                                    
                                }
                                else
                                {
                                    c=0;
                                    
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid E/M limited field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                }
                                
                                
                                
                                
                                
                                
                                
                            }
                            else{
                                c=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter Valid  date."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                            }
                            
                        }
                        
                        else
                        {
                            c=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter Valid PTA."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                        }
                    }
                    else
                    {
                        c=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter Valid  RPT."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                    }
                }
                
                
                else
                {
                    c=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid  patient name."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                }
            }
            else
            {
                c=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid physician name."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
            }
        }
        
        else
        {
            c=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid  patient ID."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
        }
    }
    else
    {
        c=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Required field should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
        
    }
    if (c==1) {
        [self performSegueWithIdentifier:@"dcfee1" sender:self];
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
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"dcfee1"])
    {
        if (c==1)
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
    
    
    if ([segue.identifier isEqualToString:@"dcfee1"])
    {
        
        
        dcfee1ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        NSLog(@"recorddict in dcfeedetail%@",recorddict);
        NSLog(@"rsultset in dcfeedetail%@",resultset);
        // destViewController.delegate=self;
        
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dismissKeyboard{
    [limited resignFirstResponder];
    [expanded resignFirstResponder];
    [detailed resignFirstResponder];
    [extended resignFirstResponder];
    [ltd resignFirstResponder];
    [exp resignFirstResponder];
    [detail resignFirstResponder];
    [comp resignFirstResponder];
    [refexp resignFirstResponder];
    [refdetail resignFirstResponder];
    [refcomp resignFirstResponder];
    [consultexp resignFirstResponder];
    [consultdetail resignFirstResponder];
    [consultcomp resignFirstResponder];
    [brief resignFirstResponder];
    [intermediate resignFirstResponder];
    [consultationcomp resignFirstResponder];
    [patientid resignFirstResponder];
    [patientname resignFirstResponder];
    [physicianname resignFirstResponder];
    [rpt resignFirstResponder];
    [pta resignFirstResponder];
    [patientname resignFirstResponder];
    
    
    
}
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
    patientname.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    date.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"billdate"];
    page1.hidden=YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    resultset=[[NSMutableDictionary alloc]init];
    [self Getdata];
    recorddict=[[NSMutableDictionary alloc]init];
    // Do any additional setup after loading the view.
}
-(void)Getdata
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *billdate=[[NSUserDefaults standardUserDefaults]objectForKey:@"billdate"];
    NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV" EntityThird:@"date" ForValue3:billdate];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    // NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"dcfeeslipuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            NSLog(@"arraylist count %d",[arrayList1 count]);
            pid=[arrayList1 objectForKey:@"pid"];dates=[arrayList1 objectForKey:@"date"];pname=[arrayList1 objectForKey:@"pname"];dr1=[arrayList1 objectForKey:@"dr1"];rpts=[arrayList1 objectForKey:@"rpt"];ptas=[arrayList1 objectForKey:@"pta"];initialemlimited=[arrayList1 objectForKey:@"initialemlimited"];initialexpanded=[arrayList1 objectForKey:@"initialexpanded"];initialdetailed=[arrayList1 objectForKey:@"initialdetailed"];initialemextended=[arrayList1 objectForKey:@"initialemextended"];estpatientltd=[arrayList1 objectForKey:@"estpatientltd"];estpatientexp=[arrayList1 objectForKey:@"estpatientexp"];estpatientdetails=[arrayList1 objectForKey:@"estpatientdetails"];estpatientcomp=[arrayList1 objectForKey:@"estpatientcomp"];consultphys=[arrayList1 objectForKey:@"consultphys"];consultdetails=[arrayList1 objectForKey:@"consultdetail"];consultcomps=[arrayList1 objectForKey:@"consultcomp"];patientexp=[arrayList1 objectForKey:@"patientexp"];patientdetails=[arrayList1 objectForKey:@"patientdetails"];patientcomp=[arrayList1 objectForKey:@"patientcomp"];telephonebrief=[arrayList1 objectForKey:@"telephonebrief"];telephoneintermediate=[arrayList1 objectForKey:@"telephoneintermediate"];telephonecomp=[arrayList1 objectForKey:@"telephonecomp"];tractionmechanical=[arrayList1 objectForKey:@"tractionmechanical"];electricstim=[arrayList1 objectForKey:@"electricstim"];vasopneumatic=[arrayList1 objectForKey:@"vasopneumatic"];paraffin=[arrayList1 objectForKey:@"paraffin"];whirlpool=[arrayList1 objectForKey:@"whirlpool"];diathermy=[arrayList1 objectForKey:@"diathermy"];infrared=[arrayList1 objectForKey:@"infrared"];ultraviolet=[arrayList1 objectForKey:@"ultraviolet"];microwave=[arrayList1 objectForKey:@"microwave"];manualelectricalstim=[arrayList1 objectForKey:@"manualelectricalstim"];iontophoresis=[arrayList1 objectForKey:@"iontophoresis"];contrastbathss=[arrayList1 objectForKey:@"contrastbaths"];ultrasounds=[arrayList1 objectForKey:@"ultrasound"];unlisted=[arrayList1 objectForKey:@"unlisted"];therapeutic=[arrayList1 objectForKey:@"therapeutic"];neuromuscular=[arrayList1 objectForKey:@"neuromuscular"];aquatic=[arrayList1 objectForKey:@"aquatic"];gaittraining=[arrayList1 objectForKey:@"gaittraining"];massage=[arrayList1 objectForKey:@"massage"];manualtherapy=[arrayList1 objectForKey:@"manualtherapy"];unlistedother=[arrayList1 objectForKey:@"unlistedother"];orthotics=[arrayList1 objectForKey:@"orthotics"];kinetic=[arrayList1 objectForKey:@"kinetic"];adlselfcare=[arrayList1 objectForKey:@"adlselfcare"];grouptherapy=[arrayList1 objectForKey:@"grouptherapy"];reintegration=[arrayList1 objectForKey:@"reintegration"];acupuncturewo=[arrayList1 objectForKey:@"acupuncturewo"];acupuncturew=[arrayList1 objectForKey:@"acupuncturew"];spine12=[arrayList1 objectForKey:@"spine12"];spine34=[arrayList1 objectForKey:@"spine34"];spine5=[arrayList1 objectForKey:@"spine5"];extremity=[arrayList1 objectForKey:@"extremity"];muscle=[arrayList1 objectForKey:@"muscle"];routine=[arrayList1 objectForKey:@"routine"];musclehand=[arrayList1 objectForKey:@"musclehand"];rangeofmotion=[arrayList1 objectForKey:@"rangeofmotion"];rangeofmotionhand=[arrayList1 objectForKey:@"rangeofmotionhand"];ncv=[arrayList1 objectForKey:@"ncv"];ncvw=[arrayList1 objectForKey:@"ncvw"];ncvea=[arrayList1 objectForKey:@"ncvea"];sseplower=[arrayList1 objectForKey:@"sseplower"];ssepupper=[arrayList1 objectForKey:@"ssepupper"];ssephead=[arrayList1 objectForKey:@"ssephead"];hreflex=[arrayList1 objectForKey:@"hreflex"];physicalperformance=[arrayList1 objectForKey:@"physicalperformance"];functionalcapacity=[arrayList1 objectForKey:@"functionalcapacity"];text1=[arrayList1 objectForKey:@"text1"];text2=[arrayList1 objectForKey:@"text2"];supplies=[arrayList1 objectForKey:@"supplies"];patienteducation=[arrayList1 objectForKey:@"patienteducation"];medicaltestimony=[arrayList1 objectForKey:@"medicaltestimony"];insuranceform=[arrayList1 objectForKey:@"insuranceform"];teamconference=[arrayList1 objectForKey:@"teamconference"];completespine=[arrayList1 objectForKey:@"completespine"];cervical23=[arrayList1 objectForKey:@"cervical23"];cervical4=[arrayList1 objectForKey:@"cervical4"];cervical67=[arrayList1 objectForKey:@"cervical67"];thoracic4=[arrayList1 objectForKey:@"thoracic4"];thoracic2=[arrayList1 objectForKey:@"thoracic2"];scoliosis=[arrayList1 objectForKey:@"scoliosis"];lumbosacral=[arrayList1 objectForKey:@"lumbosacral"];lumbosacral4=[arrayList1 objectForKey:@"lumbosacral4"];pelvis2=[arrayList1 objectForKey:@"pelvis2"];lumbarcomplete=[arrayList1 objectForKey:@"lumbarcomplete"];elbow2=[arrayList1 objectForKey:@"elbow2"];wrist2=[arrayList1 objectForKey:@"wrist2"];hand2=[arrayList1 objectForKey:@"hand2"];knee2=[arrayList1 objectForKey:@"knee2"];ankle2=[arrayList1 objectForKey:@"ankle2"];foot2=[arrayList1 objectForKey:@"foot2"];readotherfilms=[arrayList1 objectForKey:@"readotherfilms"];cervicalpillow=[arrayList1 objectForKey:@"cervicalpillow"];lumbarsupport=[arrayList1 objectForKey:@"lumbarsupport"];orthoticcustoml=[arrayList1 objectForKey:@"orthoticcustoml"];orthoticcustomr=[arrayList1 objectForKey:@"orthoticcustomr"];tensunit=[arrayList1 objectForKey:@"tensunit"];coldpack=[arrayList1 objectForKey:@"coldpack"];wristsplint=[arrayList1 objectForKey:@"wristsplint"];heellift=[arrayList1 objectForKey:@"heellift"];exerciseball=[arrayList1 objectForKey:@"exerciseball"];exerciseband=[arrayList1 objectForKey:@"exerciseband"];unlisteditem=[arrayList1 objectForKey:@"unlisteditem"];charges=[arrayList1 objectForKey:@"charges"];less=[arrayList1 objectForKey:@"less"];balance=[arrayList1 objectForKey:@"balance"];payment=[arrayList1 objectForKey:@"payment"];paymentcashcheck=[arrayList1 objectForKey:@"paymentcashcheck"];amex=[arrayList1 objectForKey:@"amex"];discover=[arrayList1 objectForKey:@"discover"];mc=[arrayList1 objectForKey:@"mc"];visa=[arrayList1 objectForKey:@"visa"];cardsign=[arrayList1 objectForKey:@"cardsign"];date1=[arrayList1 objectForKey:@"date1"];parentsign=[arrayList1 objectForKey:@"parentsign"];doctorsign=[arrayList1 objectForKey:@"doctorsign"];week=[arrayList1 objectForKey:@"week"];months=[arrayList1 objectForKey:@"months"];
            
            
            NSLog(@"array list one::%@",arrayList1);
            
            
            [self setdatas];//set database values
            
            
            [resultset setObject:tractionmechanical forKey:@"tractionmechanical"];[resultset setObject:electricstim  forKey:@"electricstim"];[resultset setObject:vasopneumatic  forKey:@"vasopneumatic"];[resultset setObject:paraffin  forKey:@"paraffin"];[resultset setObject:whirlpool  forKey:@"whirlpool"];[resultset setObject:diathermy  forKey:@"diathermy"];[resultset setObject:infrared  forKey:@"infrared"];[resultset setObject:ultraviolet  forKey:@"ultraviolet"];[resultset setObject:microwave  forKey:@"microwave"];[resultset setObject:manualelectricalstim  forKey:@"manualelectricalstim"];[resultset setObject:iontophoresis  forKey:@"iontophoresis"];[resultset setObject:contrastbathss  forKey:@"contrastbaths"];[resultset setObject:ultrasounds  forKey:@"ultrasound"];[resultset setObject:unlisted  forKey:@"unlisted"];[resultset setObject:therapeutic  forKey:@"therapeutic"];[resultset setObject:neuromuscular  forKey:@"neuromuscular"];[resultset setObject:aquatic  forKey:@"aquatic"];[resultset setObject:gaittraining  forKey:@"gaittraining"];[resultset setObject:massage  forKey:@"massage"];[resultset setObject:manualtherapy  forKey:@"manualtherapy"];[resultset setObject:unlistedother  forKey:@"unlistedother"];[resultset setObject:orthotics  forKey:@"orthotics"];[resultset setObject:kinetic  forKey:@"kinetic"];[resultset setObject:adlselfcare  forKey:@"adlselfcare"];[resultset setObject:grouptherapy  forKey:@"grouptherapy"];[resultset setObject:reintegration  forKey:@"reintegration"];[resultset setObject:acupuncturewo  forKey:@"acupuncturewo"];[resultset setObject:acupuncturew forKey:@"acupuncturew"];[resultset setObject:spine12  forKey:@"spine12"];[resultset setObject:spine34  forKey:@"spine34"];[resultset setObject:spine5  forKey:@"spine5"];[resultset setObject:extremity  forKey:@"extremity"];[resultset setObject:muscle  forKey:@"muscle"];[resultset setObject:routine  forKey:@"routine"];[resultset setObject:musclehand  forKey:@"musclehand"];[resultset setObject:rangeofmotion  forKey:@"rangeofmotion"];[resultset setObject:rangeofmotionhand  forKey:@"rangeofmotionhand"];[resultset setObject:ncv  forKey:@"ncv"];[resultset setObject:ncvw forKey:@"ncvw"];[resultset setObject:ncvea  forKey:@"ncvea"];[resultset setObject:sseplower  forKey:@"sseplower"];[resultset setObject:ssepupper  forKey:@"ssepupper"];[resultset setObject:ssephead  forKey:@"ssephead"];[resultset setObject:hreflex  forKey:@"hreflex"];[resultset setObject:physicalperformance  forKey:@"physicalperformance"];[resultset setObject:functionalcapacity  forKey:@"functionalcapacity"];[resultset setObject:text1  forKey:@"text1"];[resultset setObject:text2  forKey:@"text2"];[resultset setObject:supplies forKey:@"supplies"];[resultset setObject:patienteducation  forKey:@"patienteducation"];[resultset setObject:medicaltestimony  forKey:@"medicaltestimony"];[resultset setObject:insuranceform  forKey:@"insuranceform"];[resultset setObject: teamconference forKey:@"teamconference"];[resultset setObject:completespine  forKey:@"completespine"];[resultset setObject: cervical23 forKey:@"cervical23"];[resultset setObject:cervical4  forKey:@"cervical4"];[resultset setObject:cervical67  forKey:@"cervical67"];[resultset setObject:thoracic4  forKey:@"thoracic4"];[resultset setObject: thoracic2 forKey:@"thoracic2"];[resultset setObject:scoliosis  forKey:@"scoliosis"];[resultset setObject:lumbosacral  forKey:@"lumbosacral"];[resultset setObject:lumbosacral4  forKey:@"lumbosacral4"];[resultset setObject:pelvis2  forKey:@"pelvis2"];[resultset setObject: lumbarcomplete forKey:@"lumbarcomplete"];[resultset setObject:elbow2  forKey:@"elbow2"];[resultset setObject: wrist2 forKey:@"wrist2"];[resultset setObject: hand2 forKey:@"hand2"];[resultset setObject:knee2  forKey:@"knee2"];[resultset setObject: ankle2 forKey:@"ankle2"];[resultset setObject: foot2 forKey:@"foot2"];[resultset setObject:readotherfilms  forKey:@"readotherfilms"];[resultset setObject: cervicalpillow forKey:@"cervicalpillow"];[resultset setObject:lumbarsupport  forKey:@"lumbarsupport"];[resultset setObject:orthoticcustoml  forKey:@"orthoticcustoml"];[resultset setObject:orthoticcustomr  forKey:@"orthoticcustomr"];[resultset setObject:tensunit  forKey:@"tensunit"];[resultset setObject: coldpack forKey:@"coldpack"];[resultset setObject:wristsplint  forKey:@"wristsplint"];[resultset setObject:heellift  forKey:@"heellift"];[resultset setObject: exerciseball forKey:@"exerciseball"];[resultset setObject:exerciseband  forKey:@"exerciseband"];[resultset setObject:unlisteditem  forKey:@"unlisteditem"];[resultset setObject:charges  forKey:@"charges"];[resultset setObject:less  forKey:@"less"];[resultset setObject:balance  forKey:@"balance"];[resultset setObject:payment  forKey:@"payment"];[resultset setObject: paymentcashcheck forKey:@"paymentcashcheck"];[resultset setObject: amex forKey:@"amex"];[resultset setObject:discover  forKey:@"discover"];[resultset setObject:mc  forKey:@"mc"];[resultset setObject: visa forKey:@"visa"];[resultset setObject:cardsign  forKey:@"cardsign"];[resultset setObject: date1 forKey:@"date1"];[resultset setObject:parentsign  forKey:@"parentsign"];[resultset setObject:doctorsign  forKey:@"doctorsign"];[resultset setObject:week  forKey:@"week"];[resultset setObject:months  forKey:@"months"];
            
            
            
            
            
        }
        [[NSUserDefaults standardUserDefaults]setObject:@"Datas read" forKey:@"status"];
        // NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
    }
    else
    {
        [[NSUserDefaults standardUserDefaults]setObject:@"Datas not read" forKey:@"status"];
    }
    [[NSUserDefaults standardUserDefaults]synchronize];
    
}
-(void)setdatas{
    
    patientid.text=pid;
    date.text=dates;
    limited.text=initialemlimited;
    expanded.text=initialexpanded;
    detailed.text=initialdetailed;
    extended.text=initialemextended;
    ltd.text=estpatientltd;
    exp.text=estpatientexp;
    detail.text=estpatientdetails;
    comp.text=estpatientcomp;
    refexp.text=consultphys;
    refdetail.text=consultdetails;
    refcomp.text=consultcomps;
    consultexp.text=patientexp;
    consultdetail.text=patientdetails;
    consultcomp.text=patientcomp;
    brief.text=telephonebrief;
    intermediate.text=telephoneintermediate;
    consultationcomp.text=telephonecomp;
    patientname.text=pname;
    physicianname.text=dr1;
    rpt.text=rpts;
    pta.text=ptas;
    if([limited.text isEqualToString:@"0"]){
        
        limited.text=@"";
    }
    
    
    if([expanded.text isEqualToString:@"0"]){
        
        expanded.text=@"";
    }
    if([detailed.text isEqualToString:@"0"]){
        
        detailed.text=@"";
    }
    if([extended.text isEqualToString:@"0"]){
        
        extended.text=@"";
    }
    if([ltd.text isEqualToString:@"0"]){
        
        ltd.text=@"";
    }
    if([exp.text isEqualToString:@"0"]){
        
        exp.text=@"";
    }
    if([detail.text isEqualToString:@"0"]){
        
        detail.text=@"";
    }
    if([comp.text isEqualToString:@"0"]){
        
        comp.text=@"";
    }
    if([refexp.text isEqualToString:@"0"]){
        
        refexp.text=@"";
    }
    if([refdetail.text isEqualToString:@"0"]){
        
        refdetail.text=@"";
    }
    if([refcomp.text isEqualToString:@"0"]){
        
        refcomp.text=@"";
    }
    if([consultcomp.text isEqualToString:@"0"]){
        
        consultcomp.text=@"";
    }
    if([consultexp.text isEqualToString:@"0"]){
        
        consultexp.text=@"";
    }
    if([consultdetail.text isEqualToString:@"0"]){
        
        consultdetail.text=@"";
    }
    if([brief.text isEqualToString:@"0"]){
        
        brief.text=@"";
    }
    if([intermediate.text isEqualToString:@"0"]){
        
        intermediate.text=@"";
    } if([consultationcomp.text isEqualToString:@"0"]){
        
        consultationcomp.text=@"";
    }
    
    
    
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2 EntityThird:(NSString*)thirdEntity ForValue3:(NSString*)value3
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"DCFeeSlip.php?service=dcfeeslipselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@&%@=%@",firstEntity,value1,secondEntity,value2,thirdEntity,value3];
    
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
    // NSLog(@"data %@",data);
    
    return data;
    
}

- (void)dealloc {
    
    [super dealloc];
    
    
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
}
- (IBAction)reset:(id)sender {
    date.text=@"";
    limited.text=@"";
    expanded.text=@"";
    detailed.text=@"";
    extended.text=@"";
    ltd.text=@"";
    exp.text=@"";
    detail.text=@"";
    comp.text=@"";
    refexp.text=@"";
    refdetail.text=@"";
    refcomp.text=@"";
    consultexp.text=@"";
    consultdetail.text=@"";
    consultcomp.text=@"";
    brief.text=@"";
    intermediate.text=@"";
    consultationcomp.text=@"";
    patientid.text=@"";
    patientname.text=@"";
    physicianname.text=@"";
    rpt.text=@"";
    pta.text=@"";
    patientname.text=@"";
    
}
@end
