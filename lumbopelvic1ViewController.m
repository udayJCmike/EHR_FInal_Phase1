//
//  lumbopelvic1ViewController.m
//  EHR
//
//  Created by DeemsysInc on 2/27/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "lumbopelvic1ViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

#import "databaseurl.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "hamilViewController.h"
@interface lumbopelvic1ViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation lumbopelvic1ViewController
@synthesize submit;
@synthesize deletefunc;
@synthesize update;
@synthesize cancel1;
@synthesize reset1;
@synthesize resultset;
@synthesize reset2;
@synthesize cancel2;

@synthesize mo_l1l;
@synthesize mol1r;
@synthesize mo_l2l;
@synthesize mo_l2r;
@synthesize mo_l3l;
@synthesize mo_l3r;
@synthesize mo_l4l;
@synthesize mo_l4r;
@synthesize mo_l5l;
@synthesize mo_l5r;
//@synthesize mo_l6l;
//@synthesize mo_l6r;
@synthesize mo_sil;
@synthesize mo_sir;
@synthesize ref_l4l;
@synthesize ref_l4r;
@synthesize ref_l5l;
@synthesize ref_l5r;
@synthesize ref_sil;
@synthesize ref_sir;
@synthesize diag1;
@synthesize diag2;
@synthesize diag3;
@synthesize diag4;
@synthesize diag5;
@synthesize plan1;
@synthesize plan2;
@synthesize physin;
@synthesize recorddict;
@synthesize functionaldeficit;
@synthesize treatment;
@synthesize patient;
@synthesize fdother;
@synthesize planother;
@synthesize button6;
@synthesize button7;
@synthesize button8;
@synthesize button9;
@synthesize button10;
@synthesize button11;
@synthesize button12;
@synthesize button13;
@synthesize button14;
@synthesize button15;
@synthesize button16;
@synthesize button17;
@synthesize button18;
@synthesize button19;
@synthesize button20;

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


-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =@"[0-5]{1}";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(BOOL)validateNamefield:(NSString *)country1
{
    
    NSString *countryFormat1 =@"[A-Za-z0-9]+";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
}
-(BOOL)validateNamefield1:(NSString *)country1
{
    
    NSString *countryFormat1 =@"[A-Za-z]+";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
}
-(BOOL)validateNamefield2:(NSString *)country1
{
    
    NSString *countryFormat1 =@"[A-Za-z0-9._/-]+";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
}
-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if (button5.selected) {
        fdother.hidden=NO;
    }
    else{
        fdother.text=@"";
        fdother.hidden=YES;
    }
    if (button20.selected) {
        planother.hidden=NO;
    }
    else
    { planother.text=@"";
        planother.hidden=YES;
    }
    
}
- (IBAction)patient:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        patientstatus=@"Excellent";
    }
    else if(selectedSegment==1)
    {
        patientstatus=@"Good";
    }
    else if(selectedSegment==2)
    {
        patientstatus=@"Fair";
    }else if(selectedSegment==3)
    {
        patientstatus=@"Poor";
    }
    
}
- (IBAction)CANCEL:(id)sender
{
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



- (IBAction)SAVE:(id)sender
{
    
    functionaldeficit=[[NSMutableArray alloc]init];
    treatment=[[NSMutableArray alloc]init];
    // recorddict=[[NSMutableDictionary alloc]init];
    if (button20.selected) {
        planother.hidden=NO;
    }
    else
    { planother.text=@"null";
        planother.hidden=YES;
    }
    if(button1.selected)
    {
        //        NSLog(@"=============================yes");
        sitting=@"Sitting";
        [recorddict setValue:sitting forKey:@"sitting"];
    }
    else
    {
        sitting=NULL;
        [recorddict  setValue:@"null" forKey:@"sitting"];
    }
    if(button21.selected)
    {
        //        NSLog(@"=============================yes");
        standing=@"Standing";
        [recorddict setValue:standing forKey:@"standing"];
    }
    else
    {
        standing=NULL;
        [recorddict  setValue:@"null" forKey:@"standing"];
    }
    if(button2.selected)
    {
        lifting=@"Lifting";
        [recorddict setValue:lifting forKey:@"lifting"];
        
    }
    else
    {
        lifting=NULL;
        [recorddict  setValue:@"null" forKey:@"lifting"];
    }
    if(button3.selected)
    {
        walking=@"Walking";
        [recorddict setValue:walking forKey:@"walk"];
        
    }
    else
    {
        walking=NULL;
        [recorddict  setValue:@"null" forKey:@"walk"];
    }
    if(button4.selected)
    {
        
        stairs=@"Stairs";
        [recorddict setValue:stairs forKey:@"stair"];
    }
    else
    {
        stairs=NULL;
        [recorddict  setValue:@"null" forKey:@"stair"];
    }
    if(button5.selected)
    {
        other=@"other";
        [recorddict setValue:other forKey:@"other"];
        
    }
    else
    {
        other=NULL;
        [recorddict  setValue:@"null" forKey:@"other"];
    }
    if (button5.selected) {
        fdother.hidden=NO;
    }
    else{
        fdother.text=@"null";
        //fdother.hidden=YES;
    }
    
    if(button6.selected)
    {        spi=@"Spinal Decompression";
        [recorddict setValue:spi forKey:@"spinal"];
    }
    else
    {
        spi=@"null";
        [recorddict  setValue:@"null" forKey:@"spinal"];
    }
    if(button7.selected)
    {
        
        sup=@"Supplementation";
        [recorddict setValue:sup forKey:@"supplement"];
    }
    
    else
    {
        sup=@"null";
        [recorddict  setValue:@"null" forKey:@"supplement"];
    }
    if(button8.selected)
    {
        nerve=@"Nerve Conduction";
        [recorddict setValue:nerve forKey:@"nerve"];
    }
    else
    {
        nerve=@"null";
        [recorddict  setValue:@"null" forKey:@"nerve"];
    }
    if(button9.selected)
    {
        chir=@"Chiropractic";
        [recorddict setValue:chir forKey:@"chiro"];
    }
    else
    {
        chir=@"null";
        [recorddict  setValue:@"null" forKey:@"chiro"];
    }
    if(button10.selected)
    {
        
        ct=@"CT Scan";
        [recorddict setValue:ct forKey:@"ct"];
    }
    else
    {
        ct=@"null";
        [recorddict  setValue:@"null" forKey:@"ct"];
    }
    if(button11.selected)
    {
        hep=@"HEP";
        [recorddict setValue:hep forKey:@"hep"];
        
    }
    else
    {
        hep=@"null";
        [recorddict  setValue:@"null" forKey:@"hep"];
    }
    if(button12.selected)
    {
        emg=@"EMG";
        [recorddict setValue:emg forKey:@"emg"];
        
    }
    else
    {
        emg=@"null";
        [recorddict  setValue:@"null" forKey:@"emg"];
    }
    if(button13.selected)
    {
        phys=@"Physical Therapy";
        [recorddict setValue:phys forKey:@"physical"];
    }
    else
    {
        phys=@"null";
        [recorddict  setValue:@"null" forKey:@"physical"];
    }
    if(button14.selected)
    {
        radio=@"Radiographic X-Ray";
        [recorddict setValue:radio forKey:@"radio"];
        
    }
    else
    {
        radio=@"null";
        [recorddict  setValue:@"null" forKey:@"radio"];
    }
    if(button15.selected)
    {
        mod=@"Modalities";
        [recorddict setValue:mod forKey:@"modal"];
        
    }
    else
    {
        mod=@"null";
        [recorddict  setValue:@"null" forKey:@"modal"];
    }
    if(button16.selected)
    {
        outside=@"Outside Referral";
        [recorddict setValue:outside forKey:@"outside"];
    }
    else
    {
        outside=@"null";
        [recorddict  setValue:@"null" forKey:@"outside"];
    }
    if(button17.selected)
    {
        orthotic=@"Orthotics/Bracing";
        [recorddict setValue:orthotic forKey:@"orthotic"];
        
    }
    else
    {
        orthotic=@"null";
        [recorddict  setValue:@"null" forKey:@"orthotic"];
    }
    if(button18.selected)
    {
        label1=@"MRI";
        [recorddict setValue:label1 forKey:@"MRI"];
    }
    else
    {
        label1=@"null";
        [recorddict  setValue:@"null" forKey:@"MRI"];
    }
    if(button19.selected)
    {
        dc=@"D/C";
        [recorddict setValue:dc forKey:@"dc"];
        
    }
    else
    {
        dc=@"null";
        [recorddict  setValue:@"null" forKey:@"dc"];
    }
    if(button20.selected)
    {
        other1=@"other";
        [recorddict setValue:other1 forKey:@"other1"];
        
    }
    else
    {
        other1=@"null";
        [recorddict  setValue:@"null" forKey:@"other1"];
    }
    
    
    if ([assessment.text  isEqual: @""])
    {
        // assessment.text=@"null";
        [recorddict setValue:assessment.text forKey:@"assessment"];
    }
    else
    {
        [recorddict setValue:assessment.text forKey:@"assessment"];
    }
    temp1 =mo_l1l.text;
    temp2 =mol1r.text;
    temp3 =mo_l2l.text;
    temp4 =mo_l2r.text;
    temp5 =mo_l3l.text;
    temp6=mo_l3r.text;
    temp7=mo_l4l.text;
    temp8=mo_l4r.text;
    temp9=mo_l5l.text;
    temp10=mo_l5r.text;
    //temp11=mo_l6l.text;
    //temp12=mo_l6r.text;
    
    temp13=mo_sil.text;
    temp14=mo_sir.text;
    temp15=ref_l4l.text;
    temp16=ref_l4r.text;
    temp17=ref_l5l.text;
    temp18=ref_l5r.text;
    temp19=ref_sil.text;
    temp20=ref_sir.text;
    temp21=diag1.text;
    temp22=diag2.text;
    temp23=diag3.text;
    temp24=diag4.text;
    temp25=diag5.text;
    temp26=plan1.text;
    temp27=plan2.text;
    temp28=physin.text;
    temp29=assessment.text;
    temp29=[temp29 stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    temp29=[temp29 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    temp29=[temp16 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    
    
    if([temp28 length]!=0)
    {
        if((([temp1 length]>0)&&([du byfive:temp1]==1))||([temp1 length]==0))
        {
            
            if((([temp2 length]>0)&&([du byfive:temp2]==1))||([temp2 length]==0))
            {
                if((([temp3 length]>0)&&([du byfive:temp3 ]==1))||([temp3 length]==0))
                {
                    if((([temp4 length]>0)&&([du byfive:temp4 ]==1))||([temp4 length]==0))
                    {
                        if((([temp5 length]>0)&&([du byfive:temp5]==1))||([temp5 length]==0))
                        {
                            if((([temp6 length]>0)&&([du byfive:temp6]==1))||([temp6 length]==0))
                            {
                                if((([temp7 length]>0)&&([du byfive:temp7]==1))||([temp7 length]==0))
                                {
                                    if((([temp8 length]>0)&&([du byfive:temp8]==1))||([temp8 length]==0))
                                    {
                                        if((([temp9 length]>0)&&([du byfive:temp9]==1))||([temp9 length]==0))
                                        {
                                            if((([temp10 length]>0)&&([du byfive:temp10 ]==1))||([temp10 length]==0))
                                            {
                                                if((([temp11 length]>0)&&([du byfive:temp11]==1))||([temp11 length]==0))
                                                {
                                                    if((([temp12 length]>0)&&([du byfive:temp12]==1))||([temp12 length]==0))
                                                    {
                                                        if((([temp13 length]>0)&&([du byfive:temp13]==1))||([temp13 length]==0))
                                                        {
                                                            if((([temp14 length]>0)&&([du byfive:temp14]==1))||([temp14 length]==0))
                                                            {
                                                                if((([temp15 length]>0)&&([du byfive:temp15]==1))||([temp15 length]==0))
                                                                {
                                                                    if((([temp16 length]>0)&&([du byfive:temp16]==1))||([temp16 length]==0))
                                                                    {
                                                                        if((([temp17 length]>0)&&([du byfive:temp17]==1))||([temp17 length]==0))
                                                                        {
                                                                            if((([temp18 length]>0)&&([du byfive:temp18]==1))||([temp18 length]==0))
                                                                            {
                                                                                if((([temp19 length]>0)&&([du byfive:temp19]==1))||([temp19 length]==0))
                                                                                {
                                                                                    if((([temp20 length]>0)&&([du byfive:temp20]==1))||([temp20 length]==0))
                                                                                    {
                                                                                        if((([temp29 length]>0)&&([du comments:temp29]==1))||([temp29 length]==0))                         {
                                                                                            
                                                                                            if((([temp21 length]>0)&&([du otherfields:temp21]==1))||([temp21 length]==0))
                                                                                            {
                                                                                                if((([temp22 length]>0)&&([du otherfields:temp22]==1))||([temp22 length]==0))
                                                                                                {
                                                                                                    if((([temp23 length]>0)&&([du otherfields:temp23 ]==1))||([temp23 length]==0))
                                                                                                    {
                                                                                                        if((([temp24 length]>0)&&([du otherfields:temp24]==1))||([temp24 length]==0))
                                                                                                        {
                                                                                                            if((([temp25 length]>0)&&([du otherfields:temp25 ]==1))||([temp25 length]==0))
                                                                                                            {
                                                                                                                if((([temp26 length]>0)&&([du otherfields:temp26 ]==1))||([temp26 length]==0))
                                                                                                                {
                                                                                                                    if((([temp27 length]>0)&&([du otherfields:temp27]==1))||([temp27 length]==0))
                                                                                                                    {
                                                                                                                        if((([temp28 length]>0)&&([du otherfields:temp28]==1))||([temp28 length]==0))
                                                                                                                            
                                                                                                                        {
                                                                                                                            c=1;
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                            [recorddict setValue:mo_l1l.text forKey:@"Motor level1 left"];
                                                                                                                            [recorddict setValue:mol1r.text forKey:@"Motor level1 right"];
                                                                                                                            [recorddict setValue:mo_l2l.text forKey:@"Motor level2 left"];
                                                                                                                            [recorddict setValue:mo_l2r.text forKey:@"Motor level2 right"];
                                                                                                                            [recorddict setValue:mo_l3l.text forKey:@"Motor level3 left"];
                                                                                                                            [recorddict setValue:mo_l3r.text forKey:@"Motor level3 right"];
                                                                                                                            [recorddict setValue:mo_l4l.text forKey:@"Motor level4 left"];
                                                                                                                            [recorddict setValue:mo_l4r.text forKey:@"Motor level4 right"];
                                                                                                                            [recorddict setValue:mo_l5l.text forKey:@"Motor level5 left"];
                                                                                                                            [recorddict setValue:mo_l5r.text forKey:@"Motor level5 right"];
                                                                                                                            [recorddict setValue:mo_sil.text forKey:@"Motor SI left"];
                                                                                                                            [recorddict setValue:mo_sir.text forKey:@"Motor SI right"];
                                                                                                                            [recorddict setValue:ref_l4l.text forKey:@"reflexes level4  left"];
                                                                                                                            [recorddict setValue:ref_l4r.text forKey:@"reflexes level4 right"];
                                                                                                                            [recorddict setValue:ref_l5l.text forKey:@"reflexes level5 left"];
                                                                                                                            [recorddict setValue:ref_l5r.text forKey:@"reflexes level5 right"];
                                                                                                                            [recorddict setValue:ref_sil.text forKey:@"reflexes SI left"];
                                                                                                                            [recorddict setValue:ref_sir.text forKey:@"reflexes SI right"];
                                                                                                                            [recorddict setValue:diag1.text forKey:@"Diagnosis1"];
                                                                                                                            [recorddict setValue:diag2.text forKey:@"Diagnosis2"];
                                                                                                                            [recorddict setValue:diag3.text forKey:@"Diagnosis3"];
                                                                                                                            [recorddict setValue:diag4.text forKey:@"Diagnosis4"];
                                                                                                                            [recorddict setValue:diag5.text forKey:@"Diagnosis5"];
                                                                                                                            [recorddict setValue:plan1.text forKey:@"plan1"];
                                                                                                                            [recorddict setValue:plan2.text forKey:@"plan2"];
                                                                                                                            [recorddict setValue:physin.text forKey:@"Physician signature"];
                                                                                                                            [recorddict setValue:physin.text forKey:@"Assessment"];
                                                                                                                            [recorddict setValue:patientstatus forKey:@"patient status"];
                                                                                                                            [recorddict setValue:fdother.text forKey:@"FDOther"];
                                                                                                                            [recorddict setValue:planother.text forKey:@"Planother"];
                                                                                                                            //NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            c=0;
                                                                                                                            
                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                           description:@"Please enter valid physician signature."
                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                              callback:nil];
                                                                                                                            
                                                                                                                        }
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        c=0;
                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                       description:@"Please enter valid plan 2 field."
                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                          callback:nil];
                                                                                                                        
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    c=0;
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please enter valid plan 1 field."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                c=0;
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please enter valid diagnosis 5 field."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            c=0;
                                                                                                            
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please enter valid diagnosis 4 field."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        c=0;
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please enter valid diagnosis 3 field."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    c=0;
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid diagnosis 2 field."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                c=0;
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid diagnosis 1 field."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            c=0;
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid assessment."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        c=0;
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid reflexes si right."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    c=0;
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid reflexes si left."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                c=0;
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid reflexes l5 right."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            c=0;
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid reflexes l5 left."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid reflexes l4 right."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    c=0;
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid reflexes l4 left."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                }
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid motor si right."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid motor si left."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid motor l6 right."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    c=0;
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid motor l6 left."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                }
                                            }
                                            
                                            else
                                            {
                                                c=0;
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid motor l5 right."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                            }
                                        }
                                        else
                                        {
                                            c=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid motor l5 left."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                        }
                                    }
                                    else
                                    {
                                        c=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid motor l4 right."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                    }
                                }
                                else
                                {
                                    c=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid motor l4 left."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                }
                            }
                            else
                            {
                                c=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid motor l3 right."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                            }
                        }
                        else
                        {
                            c=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid motor l3 left."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                        }
                    }
                    else
                    {
                        c=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid motor l2 right."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                    }
                }
                else
                {c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid motor l2 left."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                }
            }
            else
            {
                c=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid motor l1 right."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
            }
        }
        else
        {
            c=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid motor l1 left."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
        }
    }
    
    else
    {
        c=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter physician signature."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
    }
    if (c==1) {
        
        
        HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
        HUD.mode=MBProgressHUDModeIndeterminate;
        HUD.delegate = self;
        HUD.labelText = @"Submitting";
        [HUD show:YES];
        //        [self updatedata];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"lumbopelvicexam Data"])
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
                
                // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
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
                
                // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
            }
        }
    }
    
    
    
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"lumbopelvicexam Data"])
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
                    
                    //    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
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
    NSString *url1=@"Lumbopelvic.php?service=lumbopelvicdelete";
    
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
    NSString *url1=@"Lumbopelvic.php?service=lumbopelvicedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&gait=%@&pelvicunleveling=%@&ao=%@&allsoft=%@&leglengthcheckl=%@&leglengthl=%@&other1=%@&leglengthcheckr=%@&leglengthr=%@&other2=%@&piriformis=%@&quadlumb=%@&paraspinals=%@&gluteus=%@&gluteusmedius=%@&hamstrings=%@&iliopsoas=%@&rectus=%@&obliques=%@&othernotes=%@&functionalrangeofmotion=%@&subluxation=%@&orthopedic=%@&flexion=%@&t89=%@&t910=%@&trendelburgl=%@&trendelburgr=%@&extension=%@&t1011=%@&t1112=%@&kempsl=%@&kempsr=%@&lflexion=%@&rflexion=%@&t12l1=%@&l12=%@&slumpl=%@&slumpr=%@&lrotation=%@&rrotation=%@&l23=%@&l34=%@&straightlegl=%@&straightlegr=%@&l45=%@&l5s1=%@&welllegl=%@&welllegr=%@&lsi=%@&rsi=%@&nachlasl=%@&nachlasr=%@&positiveminor=%@&positiveadam=%@&neurologicaltest=%@&l1l=%@&l1r=%@&l15l=%@&l15r=%@&l2l=%@&l2r=%@&l25l=%@&l25r=%@&l3l=%@&l3r=%@&l35l=%@&l35r=%@&l4l=%@&l4r=%@&l45l=%@&l45r=%@&l4l3=%@&l4r3=%@&l5l=%@&l5r=%@&l55l=%@&l55r=%@&l5l3=%@&l5r3=%@&sl=%@&sr=%@&s5l=%@&s5r=%@&sil=%@&sir=%@&sitting=%@&lifting=%@&walking=%@&stairs=%@&otherfunctional=%@&break_text3=%@&assessment=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&times=%@&week=%@&spinal=%@&chiropractic=%@&physical=%@&orthotics=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&ctscan=%@&nerve=%@&emg=%@&outside=%@&dc=%@&otheraddress=%@&break_text4=%@&sign=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"Date"],[recorddict objectForKey:@"selectedgait"],[recorddict objectForKey:@"pelvic unleveling"],[recorddict objectForKey:@"AO"],[recorddict objectForKey:@"palpation un"],[recorddict objectForKey:@"leftsegment"],[recorddict objectForKey:@"leftseg"],[recorddict objectForKey:@"left other"],[recorddict objectForKey:@"rightsegment"],[recorddict objectForKey:@"rightseg"],[recorddict objectForKey:@"right other"],[recorddict objectForKey:@"piriforms"],[recorddict objectForKey:@"quad lumb"],[recorddict objectForKey:@"paraspinals"],[recorddict objectForKey:@"gluteus maximus"],[recorddict objectForKey:@"gluteus medius"],[recorddict objectForKey:@"hamstrings"],[recorddict objectForKey:@"lliopsoas"],[recorddict objectForKey:@"rectus abdominis"],[recorddict objectForKey:@"obliques"],[recorddict objectForKey:@"other notes"],[recorddict objectForKey:@"functional un"],[recorddict objectForKey:@"sublex un"],[recorddict objectForKey:@"orthopedic un"],[recorddict objectForKey:@"flexion"],[recorddict objectForKey:@"t8_9"],[recorddict objectForKey:@"T9-10"],[recorddict objectForKey:@"trend Left"],[recorddict objectForKey:@"trend Right"],[recorddict objectForKey:@"extension"],[recorddict objectForKey:@"t10_11"],[recorddict objectForKey:@"T11_12"],[recorddict objectForKey:@"kemp Left"],[recorddict objectForKey:@"kemp Right"],[recorddict objectForKey:@"lateralL"],[recorddict objectForKey:@"lateralR"],[recorddict objectForKey:@"T12-L1"],[recorddict objectForKey:@"L1_2"],[recorddict objectForKey:@"slump Left"],[recorddict objectForKey:@"slumpl Right"],[recorddict objectForKey:@"rotation left"],[recorddict objectForKey:@"rotation right"],[recorddict objectForKey:@"L2-3"],[recorddict objectForKey:@"L3_4"],[recorddict objectForKey:@"straightleg Left"],[recorddict objectForKey:@"straightleg Right"],[recorddict objectForKey:@"L4-5"],[recorddict objectForKey:@"L5_SI"],[recorddict objectForKey:@"wellleg Left"],[recorddict objectForKey:@"wellleg Right"],[recorddict objectForKey:@"LSI"],[recorddict objectForKey:@"RSI"],[recorddict objectForKey:@"nachlas Left"],[recorddict objectForKey:@"nachlas Right"],[recorddict objectForKey:@"positive"],[recorddict objectForKey:@"positive adam"],[recorddict objectForKey:@"neuro un"],[recorddict objectForKey:@"L1 Left"],[recorddict objectForKey:@"L1 Right"],[recorddict objectForKey:@"Motor level1 left"],[recorddict objectForKey:@"Motor level1 right"],[recorddict objectForKey:@"L2 Left"],[recorddict objectForKey:@"L2 Right"],[recorddict objectForKey:@"Motor level2 left"],[recorddict objectForKey:@"Motor level2 right"],[recorddict objectForKey:@"L3 Left"],[recorddict objectForKey:@"L3 Right"],[recorddict objectForKey:@"Motor level3 left"],[recorddict objectForKey:@"Motor level3 right"],[recorddict objectForKey:@"L4 Left"],[recorddict objectForKey:@"L4 Right"],[recorddict objectForKey:@"Motor level4 left"],[recorddict objectForKey:@"Motor level4 right"],[recorddict objectForKey:@"reflexes level4  left"],[recorddict objectForKey:@"reflexes level4 right"],[recorddict objectForKey:@"L5 Left"],[recorddict objectForKey:@"L5 Right"],[recorddict objectForKey:@"Motor level5 left"],[recorddict objectForKey:@"Motor level5 right"],[recorddict objectForKey:@"reflexes level5 left"],[recorddict objectForKey:@"reflexes level5 right"],[recorddict objectForKey:@"SI Left"],[recorddict objectForKey:@"SI Right"],[recorddict objectForKey:@"Motor SI left"],[recorddict objectForKey:@"Motor SI right"],[recorddict objectForKey:@"reflexes SI left"],[recorddict objectForKey:@"reflexes SI right"],[recorddict objectForKey:@"sitting"],[recorddict objectForKey:@"lifting"],[recorddict objectForKey:@"walk"],[recorddict objectForKey:@"stair"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"FDOther"],[recorddict objectForKey:@"assessment"],[recorddict objectForKey:@"patient status"],[recorddict objectForKey:@"Diagnosis1"],[recorddict objectForKey:@"Diagnosis2"],[recorddict objectForKey:@"Diagnosis3"],[recorddict objectForKey:@"Diagnosis4"],[recorddict objectForKey:@"Diagnosis5"],[recorddict objectForKey:@"plan1"],[recorddict objectForKey:@"plan2"],[recorddict objectForKey:@"spinal"],[recorddict objectForKey:@"chiro"],[recorddict objectForKey:@"physical" ],[recorddict objectForKey:@"orthotic"],[recorddict objectForKey:@"modal"],[recorddict objectForKey:@"supplement"],[recorddict objectForKey:@"hep"],[recorddict objectForKey:@"radio"],[recorddict objectForKey:@"MRI"],[recorddict objectForKey:@"ct"],[recorddict objectForKey:@"nerve"],[recorddict objectForKey:@"emg"],[recorddict objectForKey:@"outside"],[recorddict objectForKey:@"dc"],[recorddict objectForKey:@"other1"],[recorddict objectForKey:@"Planother"],[recorddict objectForKey:@"Physician signature"],secondEntity,value2];
    
    
    
    
    
    
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
    
   // NSLog(@"data %@",data);
    
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
        // return result;
        
    }
    //  imgName=@"Connected.png";
    else
    {
        HUD.labelText = @"Check network connection";
        HUD.customView = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]] autorelease];
        HUD.mode = MBProgressHUDModeCustomView;
        [HUD hide:YES afterDelay:1];
        // return @"failure";
    }
    
    return  @"success";
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"lumbopelvicexam Data"])
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
                
                //     [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
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
    NSString *url1=@"Lumbopelvic.php?service=lumbopelvicinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    //    NSLog(@"values in record dictionaries::");
    //    NSLog(@"recorddict values::%@",recorddict);
    //    NSLog(@"value of reflesxes si:%@",[recorddict objectForKey:@"reflexes SI left"]);
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&gait=%@&pelvicunleveling=%@&ao=%@&allsoft=%@&leglengthcheckl=%@&leglengthl=%@&other1=%@&leglengthcheckr=%@&leglengthr=%@&other2=%@&piriformis=%@&quadlumb=%@&paraspinals=%@&gluteus=%@&gluteusmedius=%@&hamstrings=%@&iliopsoas=%@&rectus=%@&obliques=%@&othernotes=%@&functionalrangeofmotion=%@&subluxation=%@&orthopedic=%@&flexion=%@&t89=%@&t910=%@&trendelburgl=%@&trendelburgr=%@&extension=%@&t1011=%@&t1112=%@&kempsl=%@&kempsr=%@&lflexion=%@&rflexion=%@&t12l1=%@&l12=%@&slumpl=%@&slumpr=%@&lrotation=%@&rrotation=%@&l23=%@&l34=%@&straightlegl=%@&straightlegr=%@&l45=%@&l5s1=%@&welllegl=%@&welllegr=%@&lsi=%@&rsi=%@&nachlasl=%@&nachlasr=%@&positiveminor=%@&positiveadam=%@&neurologicaltest=%@&l1l=%@&l1r=%@&l15l=%@&l15r=%@&l2l=%@&l2r=%@&l25l=%@&l25r=%@&l3l=%@&l3r=%@&l35l=%@&l35r=%@&l4l=%@&l4r=%@&l45l=%@&l45r=%@&l4l3=%@&l4r3=%@&l5l=%@&l5r=%@&l55l=%@&l55r=%@&l5l3=%@&l5r3=%@&sl=%@&sr=%@&s5l=%@&s5r=%@&sil=%@&sir=%@&sitting=%@&lifting=%@&walking=%@&stairs=%@&otherfunctional=%@&break_text3=%@&assessment=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&times=%@&week=%@&spinal=%@&chiropractic=%@&physical=%@&orthotics=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&ctscan=%@&nerve=%@&emg=%@&outside=%@&dc=%@&otheraddress=%@&break_text4=%@&sign=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patientname"],[recorddict objectForKey:@"Date"],[recorddict objectForKey:@"selectedgait"],[recorddict objectForKey:@"pelvic unleveling"],[recorddict objectForKey:@"AO"],[recorddict objectForKey:@"palpation un"],[recorddict objectForKey:@"leftsegment"],[recorddict objectForKey:@"leftseg"],[recorddict objectForKey:@"left other"],[recorddict objectForKey:@"rightsegment"],[recorddict objectForKey:@"rightseg"],[recorddict objectForKey:@"right other"],[recorddict objectForKey:@"piriforms"],[recorddict objectForKey:@"quad lumb"],[recorddict objectForKey:@"paraspinals"],[recorddict objectForKey:@"gluteus maximus"],[recorddict objectForKey:@"gluteus medius"],[recorddict objectForKey:@"hamstrings"],[recorddict objectForKey:@"lliopsoas"],[recorddict objectForKey:@"rectus abdominis"],[recorddict objectForKey:@"obliques"],[recorddict objectForKey:@"other notes"],[recorddict objectForKey:@"functional un"],[recorddict objectForKey:@"sublex un"],[recorddict objectForKey:@"orthopedic un"],[recorddict objectForKey:@"flexion"],[recorddict objectForKey:@"t8_9"],[recorddict objectForKey:@"T9-10"],[recorddict objectForKey:@"trend Left"],[recorddict objectForKey:@"trend Right"],[recorddict objectForKey:@"extension"],[recorddict objectForKey:@"t10_11"],[recorddict objectForKey:@"T11_12"],[recorddict objectForKey:@"kemp Left"],[recorddict objectForKey:@"kemp Right"],[recorddict objectForKey:@"lateralL"],[recorddict objectForKey:@"lateralR"],[recorddict objectForKey:@"T12-L1"],[recorddict objectForKey:@"L1_2"],[recorddict objectForKey:@"slump Left"],[recorddict objectForKey:@"slumpl Right"],[recorddict objectForKey:@"rotation left"],[recorddict objectForKey:@"rotation right"],[recorddict objectForKey:@"L2-3"],[recorddict objectForKey:@"L3_4"],[recorddict objectForKey:@"straightleg Left"],[recorddict objectForKey:@"straightleg Right"],[recorddict objectForKey:@"L4-5"],[recorddict objectForKey:@"L5_SI"],[recorddict objectForKey:@"wellleg Left"],[recorddict objectForKey:@"wellleg Right"],[recorddict objectForKey:@"LSI"],[recorddict objectForKey:@"RSI"],[recorddict objectForKey:@"nachlas Left"],[recorddict objectForKey:@"nachlas Right"],[recorddict objectForKey:@"positive"],[recorddict objectForKey:@"positive adam"],[recorddict objectForKey:@"neuro un"],[recorddict objectForKey:@"L1 Left"],[recorddict objectForKey:@"L1 Right"],[recorddict objectForKey:@"Motor level1 left"],[recorddict objectForKey:@"Motor level1 right"],[recorddict objectForKey:@"L2 Left"],[recorddict objectForKey:@"L2 Right"],[recorddict objectForKey:@"Motor level2 left"],[recorddict objectForKey:@"Motor level2 right"],[recorddict objectForKey:@"L3 Left"],[recorddict objectForKey:@"L3 Right"],[recorddict objectForKey:@"Motor level3 left"],[recorddict objectForKey:@"Motor level3 right"],[recorddict objectForKey:@"L4 Left"],[recorddict objectForKey:@"L4 Right"],[recorddict objectForKey:@"Motor level4 left"],[recorddict objectForKey:@"Motor level4 right"],[recorddict objectForKey:@"reflexes level4  left"],[recorddict objectForKey:@"reflexes level4 right"],[recorddict objectForKey:@"L5 Left"],[recorddict objectForKey:@"L5 Right"],[recorddict objectForKey:@"Motor level5 left"],[recorddict objectForKey:@"Motor level5 right"],[recorddict objectForKey:@"reflexes level5 left"],[recorddict objectForKey:@"reflexes level5 right"],[recorddict objectForKey:@"SI Left"],[recorddict objectForKey:@"SI Right"],[recorddict objectForKey:@"Motor SI left"],[recorddict objectForKey:@"Motor SI right"],[recorddict objectForKey:@"reflexes SI left"],[recorddict objectForKey:@"reflexes SI right"],[recorddict objectForKey:@"sitting"],[recorddict objectForKey:@"lifting"],[recorddict objectForKey:@"walk"],[recorddict objectForKey:@"stair"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"FDOther"],[recorddict objectForKey:@"assessment"],[recorddict objectForKey:@"patient status"],[recorddict objectForKey:@"Diagnosis1"],[recorddict objectForKey:@"Diagnosis2"],[recorddict objectForKey:@"Diagnosis3"],[recorddict objectForKey:@"Diagnosis4"],[recorddict objectForKey:@"Diagnosis5"],[recorddict objectForKey:@"plan1"],[recorddict objectForKey:@"plan2"],[recorddict objectForKey:@"spinal"],[recorddict objectForKey:@"chiro"],[recorddict objectForKey:@"physical" ],[recorddict objectForKey:@"orthotic"],[recorddict objectForKey:@"modal"],[recorddict objectForKey:@"supplement"],[recorddict objectForKey:@"hep"],[recorddict objectForKey:@"radio"],[recorddict objectForKey:@"MRI"],[recorddict objectForKey:@"ct"],[recorddict objectForKey:@"nerve"],[recorddict objectForKey:@"emg"],[recorddict objectForKey:@"outside"],[recorddict objectForKey:@"dc"],[recorddict objectForKey:@"other1"],[recorddict objectForKey:@"Planother"],[recorddict objectForKey:@"Physician signature"],secondEntity,value2];
    //NSLog(@"POST:%@",post);
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
    
    // NSLog(@"data %@",data);
    
    return data;
    
}

-(void)dismissKeyboard{
      printView.hidden = YES;
    [mo_l1l resignFirstResponder];
    [mol1r resignFirstResponder];
    [mo_l2l resignFirstResponder];
    [mo_l2r resignFirstResponder];
    [mo_l3l resignFirstResponder];
    [mo_l3r resignFirstResponder];
    [mo_l4l resignFirstResponder];
    [mo_l4r resignFirstResponder];
    [mo_l5l resignFirstResponder];
    [mo_l5r resignFirstResponder];
    
    [ref_l4l resignFirstResponder];
    [ref_l4r resignFirstResponder];
    [ref_l5l resignFirstResponder];
    [ref_l5r resignFirstResponder];
    [mo_sil resignFirstResponder];
    [mo_sir resignFirstResponder];
    [ref_sil resignFirstResponder];
    [ref_sir resignFirstResponder];
    [diag1 resignFirstResponder];
    [diag2 resignFirstResponder];
    [diag3 resignFirstResponder];
    [diag4 resignFirstResponder];
    [diag5 resignFirstResponder];
    [plan1 resignFirstResponder];
    [plan2 resignFirstResponder];
    [physin resignFirstResponder];
    [button1 resignFirstResponder];
    [button2 resignFirstResponder];
    [button3 resignFirstResponder];
    [button4 resignFirstResponder];
    [button5 resignFirstResponder];
    [button6 resignFirstResponder];
    [button7 resignFirstResponder];
    [button8 resignFirstResponder];
    [button9 resignFirstResponder];
    [button10 resignFirstResponder];
    [button11 resignFirstResponder];
    [button12 resignFirstResponder];
    [button13 resignFirstResponder];
    [button14 resignFirstResponder];
    [button15 resignFirstResponder];
    [button16 resignFirstResponder];
    [button17 resignFirstResponder];
    [button18 resignFirstResponder];
    [button19 resignFirstResponder];
    [button20 resignFirstResponder];
    [patient resignFirstResponder];
    [patient resignFirstResponder];
    [assessment resignFirstResponder];
    [fdother resignFirstResponder];
    
    [planother resignFirstResponder];
    
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    patientstatus=@"Excellent";
    
	reset1.hidden=YES;
    update.hidden=YES;
    deletefunc.hidden=YES;
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

    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self displaydata];
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    
}
-(void)displaydata
{
    if ([resultset count]>0)
    {
        submit.hidden=YES;
        reset1.hidden=YES;
        cancel1.hidden=YES;
        update.hidden=NO;
        reset2.hidden=NO;
        deletefunc.hidden=NO;
        cancel2.hidden=NO;
        
        mol1r.text=[resultset objectForKey:@"l15l"];
        mo_l1l.text=[resultset objectForKey:@"l15r"];
        mo_l2l.text=[resultset objectForKey:@"l25l"];
        mo_l2r.text=[resultset objectForKey:@"l25r"];
        mo_l3l.text=[resultset objectForKey:@"l35l"];
        mo_l3r.text=[resultset objectForKey:@"l35r"];
        mo_l4l.text=[resultset objectForKey:@"l45l"];
        mo_l4r.text=[resultset objectForKey:@"l45r"];
        mo_l5l.text=[resultset objectForKey:@"l55l"];
        mo_l5r.text=[resultset objectForKey:@"l55r"];
        mo_sil.text=[resultset objectForKey:@"s5l"];
        mo_sir.text=[resultset objectForKey:@"s5r"];
        ref_l4l.text=[resultset objectForKey:@"l4l3"];
        ref_l4r.text=[resultset objectForKey:@"l4r3"];
        ref_l5l.text=[resultset objectForKey:@"l5l3"];
        ref_l5r.text=[resultset objectForKey:@"l5r3"];
        
        ref_sil.text=[resultset objectForKey:@"sil"];
        ref_sir.text=[resultset objectForKey:@"sir"];
        diag1.text=[resultset objectForKey:@"diagnosis1"];
        diag2.text=[resultset objectForKey:@"diagnosis2"];
        diag3.text=[resultset objectForKey:@"diagnosis3"];
        diag4.text=[resultset objectForKey:@"diagnosis4"];
        diag5.text=[resultset objectForKey:@"diagnosis5"];
        
        plan1.text=[resultset objectForKey:@"times"];
        plan2.text=[resultset objectForKey:@"week"];
        physin.text=[resultset objectForKey:@"sign"];
        planother.text=[resultset objectForKey:@"break_text3"];
        fdother.text=[resultset objectForKey:@"break_text4"];
        assessment.text=[resultset objectForKey:@"assessment"];
        
        temp1=[resultset objectForKey:@"patientstatus"];
        if ([temp1 isEqualToString:@"Excellent"] ) {
            [patient setSelectedSegmentIndex:0];
            patientstatus=@"Excellent";
        }
        else if ([temp1 isEqualToString:@"Good"] ) {
            [patient setSelectedSegmentIndex:1];
            patientstatus=@"Good";
        }
        else if ([temp1 isEqualToString:@"Fair"] ) {
            [patient setSelectedSegmentIndex:2];
            patientstatus=@"Fair";
        }
        else if ([temp1 isEqualToString:@"Poor"] ) {
            [patient setSelectedSegmentIndex:3];
            patientstatus=@"Poor";
        }
        
        if ([[resultset objectForKey:@"sitting"] isEqualToString:@"Sitting"]) {
            button1.selected=YES;
            [button1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            sitting=@"Sitting";
            
        }
        else
        {
            button1.selected=NO;
            [button1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            sitting=@"null";
            
        }
        
        if ([[resultset objectForKey:@"standing"] isEqualToString:@"Standing"]) {
            button21.selected=YES;
            [button21 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            standing=@"Standing";
            
        }
        else
        {
            button21.selected=NO;
            [button21 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            standing=@"null";
            
        }
        if ([[resultset objectForKey:@"lifting"] isEqualToString:@"Lifting"]) {
            button2.selected=YES;
            [button2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            lifting=@"Lifting";
            
        }
        else
        {
            button2.selected=NO;
            [button2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            lifting=@"null";
            
        }
        
        if ([[resultset objectForKey:@"walking"] isEqualToString:@"Walking"]) {
            button3.selected=YES;
            [button3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            walking=@"Walking";
            
        }
        else
        {
            button3.selected=NO;
            [button3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            walking=@"null";
            
        }
        if ([[resultset objectForKey:@"stairs"] isEqualToString:@"Stairs"]) {
            button4.selected=YES;
            [button4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            stairs=@"Stairs";
            
        }
        else
        {
            button4.selected=NO;
            [button4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            stairs=@"null";
            
        }
        if ([[resultset objectForKey:@"otherfunctional"] isEqualToString:@"other"]) {
            button5.selected=YES;
            [button5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            fdother.hidden=NO;
            
        }
        else
        {
            button5.selected=NO;
            [button5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            fdother.hidden=YES;
            
        }
        
        if ([[resultset objectForKey:@"spinal"] isEqualToString:@"Spinal Decompression"]) {
            button6.selected=YES;
            [button6 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            spi=@"Spinal Decompression";
            
        }
        else
        {
            button6.selected=NO;
            [button6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            spi=@"null";
            
        }
        
        if ([[resultset objectForKey:@"chiropractic"] isEqualToString:@"Chiropractic"]) {
            button9.selected=YES;
            [button9 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            chir=@"Chiropractic";
            
        }
        else
        {
            button9.selected=NO;
            [button9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            chir=@"null";
            
        }
        if ([[resultset objectForKey:@"physical"] isEqualToString:@"Physical Therapy"]) {
            button13.selected=YES;
            [button13 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            phys=@"Physical Therapy";
            
        }
        else
        {
            button13.selected=NO;
            [button13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            phys=@"null";
            
        }
        if ([[resultset objectForKey:@"orthotics"] isEqualToString:@"Orthotics/Bracing"]) {
            button17.selected=YES;
            [button17 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            orthotic=@"Orthotics/Bracing";
            
        }
        else
        {
            button17.selected=NO;
            [button17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            orthotic=@"null";
            
        }
        if ([[resultset objectForKey:@"modalities"] isEqualToString:@"Modalities"]) {
            button15.selected=YES;
            [button15 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            mod=@"Modalities";
            
        }
        else
        {
            button15.selected=NO;
            [button15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            mod=@"null";
            
        }
        
        if ([[resultset objectForKey:@"supplementation"] isEqualToString:@"Supplementation"]) {
            button7.selected=YES;
            [button7 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            sup=@"Supplementation";
            
        }
        else
        {
            button7.selected=NO;
            [button7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            sup=@"null";
            
        }
        if ([[resultset objectForKey:@"hep"] isEqualToString:@"HEP"]) {
            button11.selected=YES;
            [button11 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            hep=@"HEP";
            
        }
        else
        {
            button11.selected=NO;
            [button11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            hep=@"null";
            
        }
        if ([[resultset objectForKey:@"radiographic"] isEqualToString:@"Radiographic X-Ray"]) {
            button14.selected=YES;
            [button14 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            radio=@"Radiographic X-Ray";
            
        }
        else
        {
            button14.selected=NO;
            [button14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            radio=@"null";
            
        }
        
        
        
        if ([[resultset objectForKey:@"mri"] isEqualToString:@"MRI"]) {
            button18.selected=YES;
            [button18 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            label1=@"MRI";
            
        }
        else
        {
            button18.selected=NO;
            [button18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            label1=@"null";
            
        }
        if ([[resultset objectForKey:@"ctscan"] isEqualToString:@"CT Scan"]) {
            button10.selected=YES;
            [button10 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            ct=@"CT Scan";
            
        }
        else
        {
            button10.selected=NO;
            [button10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            ct=@"null";
            
        }
        if ([[resultset objectForKey:@"nerve"] isEqualToString:@"Nerve Conduction"]) {
            button8.selected=YES;
            [button8 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            nerve=@"Nerve Conduction";
            
        }
        else
        {
            button8.selected=NO;
            [button8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            nerve=@"null";
            
        }
        
        if ([[resultset objectForKey:@"emg"] isEqualToString:@"EMG"]) {
            button12.selected=YES;
            [button12 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            emg=@"EMG";
            
        }
        else
        {
            button12.selected=NO;
            [button12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            emg=@"null";
            
        }
        if ([[resultset objectForKey:@"outside"] isEqualToString:@"Outside Referral"]) {
            button16.selected=YES;
            [button16 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            outside=@"Outside Referral";
            
        }
        else
        {
            button16.selected=NO;
            [button16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            outside=@"null";
            
        }
        if ([[resultset objectForKey:@"dc"] isEqualToString:@"D/C"]) {
            button19.selected=YES;
            [button19 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            dc=@"D/C";
            
        }
        else
        {
            button19.selected=NO;
            [button19 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            dc=@"null";
            
        }
        
        if ([[resultset objectForKey:@"otheraddress"] isEqualToString:@"other"]) {
            button20.selected=YES;
            [button20 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            fdother.hidden=NO;
            
        }
        else
        {
            button20.selected=NO;
            [button20 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            fdother.hidden=YES;
            
        }
        
        
    }
    else
        
    {
        submit.hidden=NO;
        reset1.hidden=NO;
        cancel1.hidden=NO;
        update.hidden=YES;
        reset2.hidden=YES;
        deletefunc.hidden=YES;
        cancel2.hidden=YES;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    /*   [mo_l1l release];
     [mol1r release];
     [mo_l2l release];
     [mo_l2r release];
     [mo_l3l release];
     [mo_l3r release];
     [mo_l4l release];
     [mo_l4r release];
     [mo_l5l release];
     [mo_l5r release];
     [mo_l6l release];
     [mo_l6r release];
     [ref_l4l release];
     [ref_l4r release];
     [ref_l5l release];
     [ref_l5r release];
     [mo_sil release];
     [mo_sir release];
     [ref_sil release];
     [ref_sir release];
     [diag1 release];
     [diag2 release];
     [diag3 release];
     [diag4 release];
     [diag5 release];
     [plan1 release];
     [plan2 release];
     [physin release];
     [sitting release];
     [lifting release];
     [walking release];
     [stairs release];
     [other release];
     [button1 release];
     [button2 release];
     [button3 release];
     [button4 release];
     [button5 release];
     [button6 release];
     [button7 release];
     [button8 release];
     [button9 release];
     [button10 release];
     [button11 release];
     [button12 release];
     [button13 release];
     [button14 release];
     [button15 release];
     [button16 release];
     [button17 release];
     [button18 release];
     [button19 release];
     [button20 release];
     [patient release];
     [patient release];
     [assessment release];
     [fdother release];
     
     [planother release];*/
    
    [super dealloc];
}
- (IBAction)reset:(id)sender {
    mol1r.text=@"";
    mo_l2l.text=@"";
    mo_l2r.text=@"";
    mo_l3l.text=@"";
    mo_l3r.text=@"";
    mo_l4l.text=@"";
    mo_l4r.text=@"";
    mo_l5l.text=@"";
    mo_l5r.text=@"";
    
    ref_l4l.text=@"";
    ref_l4r.text=@"";
    ref_l5l.text=@"";
    ref_l5r.text=@"";
    mo_sil.text=@"";
    mo_sir.text=@"";
    ref_sil.text=@"";
    ref_sir.text=@"";
    diag1.text=@"";
    diag2.text=@"";
    diag3.text=@"";
    diag4.text=@"";
    diag5.text=@"";
    mo_l1l.text=@"";
    plan1.text=@"";
    plan2.text=@"";
    physin.text=@"";
    planother.hidden=YES;
    planother.text=@"";
    fdother.hidden=YES;
    fdother.text=@"";
    assessment.text=@"";
    patient.selectedSegmentIndex=0;
    button1.selected=NO;
    button2.selected=NO;
    button3.selected=NO;
    button4.selected=NO;
    button5.selected=NO;
    button6.selected=NO;
    button7.selected=NO;
    button8.selected=NO;
    button9.selected=NO;
    button10.selected=NO;
    button11.selected=NO;
    button12.selected=NO;
    button13.selected=NO;
    button14.selected=NO;
    button15.selected=NO;
    button16.selected=NO;
    button17.selected=NO;
    button18.selected=NO;
    button19.selected=NO;
    button20.selected=NO;
    [button1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button19 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button20 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
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

