//
//  elbow1ViewController.m
//  elbow
//
//  Created by Admin on 25/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//
#import "elbowViewController.h"
#import "elbow1ViewController.h"


#import "Reachability.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "hamilViewController.h"
@interface elbow1ViewController ()

@end

@implementation elbow1ViewController
@synthesize update;
@synthesize deleteform;
@synthesize save;
@synthesize cancel1;
@synthesize cancel2;
@synthesize reset1;
@synthesize reset2;
@synthesize resultset;
@synthesize moc5L;
@synthesize moc5R;
@synthesize moc6L;
@synthesize moc6R;
@synthesize moc7L;
@synthesize moc7R;
@synthesize moc8L;
@synthesize moc8R;
@synthesize plan1;
@synthesize plan2;
@synthesize diag1;
@synthesize diag2;
@synthesize diag3;
@synthesize diag4;
@synthesize diag5;
@synthesize diag6;
@synthesize physician_sign;
@synthesize mot1L;
@synthesize mot1R;
@synthesize recorddict;
@synthesize assessment;
@synthesize funcother;
@synthesize planother;

@synthesize patientstatusseg;

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
    NSString *countryFormat1 = @"[A-Z0-9a-z]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumberlimit:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumberlimit1:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumberlimit2:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
    if (b3.selected) {
        funcother.hidden=NO;
    }
    else
        funcother.hidden=YES;
    if (b18.selected) {
        planother.hidden=NO;
    }
    else
        planother.hidden=YES;
    
}
- (IBAction)patient_status:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        patient_status=@"Excellent";
    }
    else if(selectedSegment==1)
    {
        patient_status=@"Good";
    }
    if (selectedSegment == 2)
    {
        patient_status=@"Fair";
    }
    else if(selectedSegment==3)
    {
        patient_status=@"Poor";
    }
    
}



- (IBAction)save:(id)sender
{
    
    a=1;
    // recorddict=[[NSMutableDictionary alloc]init];
    // [recorddict addEntriesFromDictionary:recorddict];
    
    a=1;
    if (b1.selected)
    {
        [recorddict setValue:@"Overhead Activities" forKey:@"Overhead"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Overhead"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Lifting" forKey:@"lift"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"lift"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Other" forKey:@"other"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"other"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"Spinal Decompression" forKey:@"spinal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"spinal"];
    }
    if (b5.selected)
    {
        [recorddict setValue:@"Supplementation" forKey:@"supplement"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"supplement"];
    }
    if (b6.selected)
    {
        [recorddict setValue:@"Nerve Conduction" forKey:@"nerve"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"nerve"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Chiropractic" forKey:@"chiro"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"chiro"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"HEP" forKey:@"hep"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"hep"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"EMG" forKey:@"emg"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"emg"];
    }
    if (b10.selected)
    {
        [recorddict setValue:@"Physical Therapy" forKey:@"physical"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"physical"];
    }
    if (b11.selected)
    {
        [recorddict setValue:@"Radiographic X-Ray" forKey:@"radio"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"radio"];
    }
    if (b12.selected)
    {
        [recorddict setValue:@"Outside Referral" forKey:@"outside"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"outside"];
    }
    if (b13.selected)
    {
        [recorddict setValue:@"Orthotics/Bracing" forKey:@"orthotics"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"orthotics"];
    }
    if (b14.selected)
    {
        [recorddict setValue:@"MRI" forKey:@"mri"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"mri"];
    }
    if (b15.selected)
    {
        [recorddict setValue:@"D/C" forKey:@"d/c"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"d/c"];
    }
    if (b16.selected)
    {
        [recorddict setValue:@"Modalities" forKey:@"modal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"modal"];
    }
    if (b17.selected)
    {
        [recorddict setValue:@"CT Scan" forKey:@"ct scan"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ct scan"];
    }
    if (b18.selected)
    {
        [recorddict setValue:@"other" forKey:@"other1"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"other1"];
    }
    
    temp1 =[moc5L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[moc5R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[moc6L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[moc6R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[moc7L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[moc7R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[moc8L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[moc8R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[mot1L.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[mot1R.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[diag1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[diag2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[diag3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[diag4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[diag5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[diag6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[plan1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[plan2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[funcother.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[planother.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[physician_sign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[assessment.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if([temp19 length]!=0)
    {
        if((([temp1 length]>0)&&([self validateNumberlimit:temp1]==1))||([temp1 length]==0))
        {
            if((([temp2 length]>0)&&([self validateNumberlimit:temp2]==1))||([temp2 length]==0))
            {
                if((([temp3 length]>0)&&([self validateNumberlimit:temp3 ]==1))||([temp3 length]==0))
                {
                    if((([temp4 length]>0)&&([self validateNumberlimit:temp4 ]==1))||([temp4 length]==0))
                    {
                        if((([temp5 length]>0)&&([self validateNumberlimit:temp5]==1))||([temp5 length]==0))
                        {
                            if((([temp6 length]>0)&&([self validateNumberlimit:temp6]==1))||([temp6 length]==0))
                            {
                                if((([temp7 length]>0)&&([self validateNumberlimit:temp7]==1))||([temp7 length]==0))
                                {
                                    if((([temp8 length]>0)&&([self validateNumberlimit:temp8]==1))||([temp8 length]==0))
                                    {
                                        if((([temp9 length]>0)&&([self validateNumberlimit:temp9]==1))||([temp9 length]==0))
                                        {
                                            if((([temp10 length]>0)&&([self validateNumberlimit:temp10 ]==1))||([temp10 length]==0))
                                            {
                                                if((([temp20 length]>0)&&([self validateNumberlimit1:temp20 ]==1))||([temp20 length]==0))
                                                {
                                                    if((([temp22 length]>0)&&([self validateNumberlimit2:temp22 ]==1))||([temp22 length]==0))
                                                        
                                                    {
                                                        if((([temp11 length]>0)&&([self validateNames:temp11]==1))||([temp11 length]==0))
                                                        {
                                                            if((([temp12 length]>0)&&([self validateNames:temp12]==1))||([temp12 length]==0))
                                                            {
                                                                if((([temp13 length]>0)&&([self validateNames:temp13]==1))||([temp13 length]==0))
                                                                {
                                                                    if((([temp14 length]>0)&&([self validateNames:temp14]==1))||([temp14 length]==0))
                                                                    {
                                                                        if((([temp15 length]>0)&&([self validateNames:temp15]==1))||([temp15 length]==0))
                                                                        {
                                                                            if((([temp16 length]>0)&&([self validateNames:temp16]==1))||([temp16 length]==0))
                                                                            {
                                                                                if((([temp17 length]>0)&&([self validateNames:temp17]==1))||([temp17 length]==0))
                                                                                {
                                                                                    if((([temp18 length]>0)&&([self validateNames:temp18]==1))||([temp18 length]==0))
                                                                                    {
                                                                                        if((([temp19 length]>0)&&([self validateNames1:temp19]==1))||([temp19 length]==0))
                                                                                            
                                                                                            
                                                                                        {
                                                                                            
                                                                                            
                                                                                            /*   if([moc5L.text isEqualToString:@""]){
                                                                                             
                                                                                             moc5L.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([moc5R.text isEqualToString:@""]){
                                                                                             
                                                                                             moc5R.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([moc6L.text isEqualToString:@""]){
                                                                                             
                                                                                             moc6L.text=@"null";
                                                                                             }
                                                                                             if([moc6R.text isEqualToString:@""]){
                                                                                             
                                                                                             moc6R.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([moc7L.text isEqualToString:@""]){
                                                                                             
                                                                                             moc7L.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([moc7R.text isEqualToString:@""]){
                                                                                             
                                                                                             moc7R.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([moc8L.text isEqualToString:@""]){
                                                                                             
                                                                                             moc8L.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([moc8R.text isEqualToString:@""]){
                                                                                             
                                                                                             moc8R.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([mot1L.text isEqualToString:@""]){
                                                                                             
                                                                                             mot1L.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([mot1R.text isEqualToString:@""]){
                                                                                             
                                                                                             mot1R.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([diag1.text isEqualToString:@""]){
                                                                                             
                                                                                             diag1.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([diag2.text isEqualToString:@""]){
                                                                                             
                                                                                             diag2.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([diag3.text isEqualToString:@""]){
                                                                                             
                                                                                             diag3.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([diag4.text isEqualToString:@""]){
                                                                                             
                                                                                             diag4.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([diag5.text isEqualToString:@""]){
                                                                                             
                                                                                             diag5.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([diag6.text isEqualToString:@""]){
                                                                                             
                                                                                             diag6.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([plan1.text isEqualToString:@""]){
                                                                                             
                                                                                             plan1.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([plan2.text isEqualToString:@""]){
                                                                                             
                                                                                             plan2.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([planother.text isEqualToString:@""]){
                                                                                             
                                                                                             planother.text=@"null";
                                                                                             }
                                                                                             
                                                                                             if([funcother.text isEqualToString:@""]){
                                                                                             
                                                                                             funcother.text=@"null";
                                                                                             }
                                                                                             if([assessment.text isEqualToString:@""]){
                                                                                             
                                                                                             assessment.text=@"null";
                                                                                             }
                                                                                             */
                                                                                            
                                                                                            [recorddict setValue:moc5L.text forKey:@"Motor C5 Left"];
                                                                                            [recorddict setValue:moc5R.text forKey:@"Motor C5 Right"];
                                                                                            [recorddict setValue:moc6L.text forKey:@"Motor C6 Left"];
                                                                                            [recorddict setValue:moc6R.text forKey:@"Motor C6 Right"];
                                                                                            [recorddict setValue:moc7L.text forKey:@"Motor C7 Left"];
                                                                                            [recorddict setValue:moc7R.text forKey:@"Motor C7 Right"];
                                                                                            [recorddict setValue:moc8L.text forKey:@"Motor C8 Left"];
                                                                                            [recorddict setValue:moc8R.text forKey:@"Motor C8 Right"];
                                                                                            [recorddict setValue:mot1L.text forKey:@"Motor T1 Left"];
                                                                                            [recorddict setValue:mot1R.text forKey:@"Motor T1 Right"];
                                                                                            [recorddict setValue:diag1.text forKey:@"DIAGNOSIS 1"];
                                                                                            [recorddict setValue:diag2.text forKey:@"DIAGNOSIS 2"];
                                                                                            [recorddict setValue:diag3.text forKey:@"DIAGNOSIS 3"];
                                                                                            [recorddict setValue:diag4.text forKey:@"DIAGNOSIS 4"];
                                                                                            [recorddict setValue:diag5.text forKey:@"DIAGNOSIS 5"];
                                                                                            [recorddict setValue:diag6.text forKey:@"DIAGNOSIS 6"];
                                                                                            [recorddict setValue:plan1.text forKey:@"Plan 1"];
                                                                                            [recorddict setValue:plan2.text forKey:@"Plan 2"];
                                                                                            [recorddict setValue:funcother.text forKey:@"functional other"];
                                                                                            [recorddict setValue:planother.text forKey:@"plan other"];
                                                                                            
                                                                                            [recorddict setValue:physician_sign.text forKey:@"Physician Signature"];
                                                                                            [recorddict setValue:patient_status forKey:@"Patient Status"];
                                                                                            [recorddict setValue:assessment.text forKey:@"assessment"];
                                                                                            NSLog(@"success!!!recorddict %@",recorddict);
                                                                                            NSLog(@"size of recordict:%d",[recorddict count]);
                                                                                        }
                                                                                        
                                                                                        
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Enter valid physician sign."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Enter valid week field."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Enter valid time field."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Enter valid diagnosis 6 field."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Enter valid diagnosis 5 field."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Enter valid diagnosis 4 field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Enter valid diagnosis 3 field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                }
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Enter valid diagnosis 2 field."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Enter valid diagnosis 1 field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Enter valid assessment text field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Enter valid  functional other text field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                    
                                                }
                                            }
                                            
                                            else
                                            {
                                                a=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Enter valid motor t1 right field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                                
                                                
                                            }
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Enter valid motor t1 left field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Enter valid motor c8 right."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                        
                                    }
                                }
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Enter valid motor c8 left."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                    
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Enter valid motor c7 right."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                                
                                
                            }
                        }
                        else
                        {
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Enter valid motor c7 left field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                            
                            
                        }
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Enter valid motor c6 right field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                        
                        
                    }
                }
                else
                {
                    a=0;
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Enter valid motor c6 left field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                    
                }
            }
            else
            {
                a=0;
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Enter valid motor c5 right field."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
            }
        }
        else
        {
            a=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Enter valid motor c5 left field."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
            
            
        }
    }
    else
    {
        a=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter physician signature."
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"elbowexam Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form Updation successful."
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"elbowexam Data"])
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
                    //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                    
                    
                }
            }
        }
        
    }
}

-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"ElbowExam.php?service=elbowexamdelete";
    
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
    NSString *url1=@"ElbowExam.php?service=elbowexamedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&muscle=%@&swelling=%@&dominanthand=%@&allsoft=%@&biceps=%@&triceps=%@&common=%@&pronator=%@&anconeus=%@&commonextensors=%@&othernotes=%@&functionalrangeofmotion=%@&orthopedic=%@&flexionl=%@&flexionr=%@&mcll=%@&mclr=%@&extensionl=%@&extensionr=%@&lcll=%@&lclr=%@&pronationl=%@&pronationr=%@&varusl=%@&varusr=%@&suppinationl=%@&suppinationr=%@&mcl1l=%@&mcl1r=%@&tinnelsl=%@&tinnelsr=%@&ulttl=%@&ulttr=%@&neurologicaltest=%@&c5l=%@&c5r=%@&c51l=%@&c51r=%@&c53l=%@&c53r=%@&c6l=%@&c6r=%@&c61l=%@&c61r=%@&c63l=%@&c63r=%@&c7l=%@&c7r=%@&c71l=%@&c71r=%@&c73l=%@&c73r=%@&c8l=%@&c8r=%@&c81l=%@&c81r=%@&t1l=%@&t1r=%@&t11l=%@&t11r=%@&overheadactivities=%@&lifting=%@&otherfunctional=%@&break_text3=%@&assessment=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&diagnosis6=%@&times=%@&week=%@&spinal=%@&chiropractic=%@&physical=%@&orthotics=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&ctscan=%@&nerve=%@&emg=%@&outside=%@&dc=%@&otheraddress=%@&break_text4=%@&sign=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"Patientname"],[recorddict objectForKey:@"Date"],[recorddict objectForKey:@"Muscle Symmetry"],[recorddict objectForKey:@"Swelling/Discoloration"],[recorddict objectForKey:@"Dominant hand"],[recorddict objectForKey:@"palpation un"],[recorddict objectForKey:@"Biceps brachii"],[recorddict objectForKey:@"Triceps brachii"],[recorddict objectForKey:@"Common flexors"],[recorddict objectForKey:@"Pronator_teres"],[recorddict objectForKey:@"Anconeus"],[recorddict objectForKey:@"Common extensors"],[recorddict objectForKey:@"Other/Notes"],[recorddict objectForKey:@"functional un"],[recorddict objectForKey:@"orthopedic un"],[recorddict objectForKey:@"Flexion Left"],[recorddict objectForKey:@"Flexion Right"],[recorddict objectForKey:@"Golfer's Elbow Left"],[recorddict objectForKey:@"GOlfer's Elbow Right"],[recorddict objectForKey:@"extension left"],[recorddict objectForKey:@"extension right"],[recorddict objectForKey:@"Tennis Elbow Left"],[recorddict objectForKey:@"Tennis Elbow Right"],[recorddict objectForKey:@"Pronation Left"],[recorddict objectForKey:@"Pronation Right"],[recorddict objectForKey:@"Varus Stress Left"],[recorddict objectForKey:@"Varus Stress Right"],[recorddict objectForKey:@"Supination Left"],[recorddict objectForKey:@"Supination Right"],[recorddict objectForKey:@"Valgus Stress Left"],[recorddict objectForKey:@"Valgus Stress Right"],[recorddict objectForKey:@"Tinnels Left"],[recorddict objectForKey:@"Tinnels Right"],[recorddict objectForKey:@"ULTT Left"],[recorddict objectForKey:@"ULTT Right"],[recorddict objectForKey:@"neuro un"],[recorddict objectForKey:@"Sensory c5 Left"],[recorddict objectForKey:@"Sensory c5 Right"],[recorddict objectForKey:@"Motor C5 Left"],[recorddict objectForKey:@"Motor C5 Right"],[recorddict objectForKey:@"Reflexess c5 Left"],[recorddict objectForKey:@"Reflexess c5 Right"],[recorddict objectForKey:@"Sensory c6 Left"],[recorddict objectForKey:@"Sensory c6 Right"],[recorddict objectForKey:@"Motor C6 Left"],[recorddict objectForKey:@"Motor C6 Right"],[recorddict objectForKey:@"Reflexess c6 Left"],[recorddict objectForKey:@"Reflexess c6 Right"],[recorddict objectForKey:@"Sensory c7 Left"],[recorddict objectForKey:@"Sensory c7 Right"],[recorddict objectForKey:@"Motor C7 Left"],[recorddict objectForKey:@"Motor C7 Right"],[recorddict objectForKey:@"Reflexess c7 Left"],[recorddict objectForKey:@"Reflexess c7 Right"],[recorddict objectForKey:@"Sensory c8 Left"],[recorddict objectForKey:@"Sensory c8 Right"],[recorddict objectForKey:@"Motor C8 Left"],[recorddict objectForKey:@"Motor C8 Right"],[recorddict objectForKey:@"Sensory t1 Left"],[recorddict objectForKey:@"Sensory t1 Right"],[recorddict objectForKey:@"Motor T1 Left"],[recorddict objectForKey:@"Motor T1 Right"],[recorddict objectForKey:@"Overhead"],[recorddict objectForKey:@"lift"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"functional other"],[recorddict objectForKey:@"assessment"],[recorddict objectForKey:@"Patient Status"],[recorddict objectForKey:@"DIAGNOSIS 1"],[recorddict objectForKey:@"DIAGNOSIS 2"],[recorddict objectForKey:@"DIAGNOSIS 3"],[recorddict objectForKey:@"DIAGNOSIS 4"],[recorddict objectForKey:@"DIAGNOSIS 5"],[recorddict objectForKey:@"DIAGNOSIS 6"],[recorddict objectForKey:@"Plan 1"],[recorddict objectForKey:@"Plan 2"],[recorddict objectForKey:@"spinal"],[recorddict objectForKey:@"chiro"],[recorddict objectForKey:@"physical"],[recorddict objectForKey:@"orthotics"],[recorddict objectForKey:@"modal"],[recorddict objectForKey:@"supplement"],[recorddict objectForKey:@"hep"],[recorddict objectForKey:@"radio"],[recorddict objectForKey:@"mri"],[recorddict objectForKey:@"ct scan"],[recorddict objectForKey:@"nerve"],[recorddict objectForKey:@"emg"],[recorddict objectForKey:@"outside"],[recorddict objectForKey:@"d/c"],[recorddict objectForKey:@"other1"],[recorddict objectForKey:@"plan other"],[recorddict objectForKey:@"Physician Signature"],secondEntity,value2];
    
    
    
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
    
    NSLog(@"data %@",data);
    
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
        // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"elbowexam Data"])
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
                // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
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
                // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
        }
    }
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"ElbowExam.php?service=elbowexaminsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&muscle=%@&swelling=%@&dominanthand=%@&allsoft=%@&biceps=%@&triceps=%@&common=%@&pronator=%@&anconeus=%@&commonextensors=%@&othernotes=%@&functionalrangeofmotion=%@&orthopedic=%@&flexionl=%@&flexionr=%@&mcll=%@&mclr=%@&extensionl=%@&extensionr=%@&lcll=%@&lclr=%@&pronationl=%@&pronationr=%@&varusl=%@&varusr=%@&suppinationl=%@&suppinationr=%@&mcl1l=%@&mcl1r=%@&tinnelsl=%@&tinnelsr=%@&ulttl=%@&ulttr=%@&neurologicaltest=%@&c5l=%@&c5r=%@&c51l=%@&c51r=%@&c53l=%@&c53r=%@&c6l=%@&c6r=%@&c61l=%@&c61r=%@&c63l=%@&c63r=%@&c7l=%@&c7r=%@&c71l=%@&c71r=%@&c73l=%@&c73r=%@&c8l=%@&c8r=%@&c81l=%@&c81r=%@&t1l=%@&t1r=%@&t11l=%@&t11r=%@&overheadactivities=%@&lifting=%@&otherfunctional=%@&break_text3=%@&assessment=%@&patientstatus=%@&diagnosis1=%@&diagnosis2=%@&diagnosis3=%@&diagnosis4=%@&diagnosis5=%@&diagnosis6=%@&times=%@&week=%@&spinal=%@&chiropractic=%@&physical=%@&orthotics=%@&modalities=%@&supplementation=%@&hep=%@&radiographic=%@&mri=%@&ctscan=%@&nerve=%@&emg=%@&outside=%@&dc=%@&otheraddress=%@&break_text4=%@&sign=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"Patientname"],[recorddict objectForKey:@"Date"],[recorddict objectForKey:@"Muscle Symmetry"],[recorddict objectForKey:@"Swelling/Discoloration"],[recorddict objectForKey:@"Dominant hand"],[recorddict objectForKey:@"palpation un"],[recorddict objectForKey:@"Biceps brachii"],[recorddict objectForKey:@"Triceps brachii"],[recorddict objectForKey:@"Common flexors"],[recorddict objectForKey:@"Pronator_teres"],[recorddict objectForKey:@"Anconeus"],[recorddict objectForKey:@"Common extensors"],[recorddict objectForKey:@"Other/Notes"],[recorddict objectForKey:@"functional un"],[recorddict objectForKey:@"orthopedic un"],[recorddict objectForKey:@"Flexion Left"],[recorddict objectForKey:@"Flexion Right"],[recorddict objectForKey:@"Golfer's Elbow Left"],[recorddict objectForKey:@"GOlfer's Elbow Right"],[recorddict objectForKey:@"extension left"],[recorddict objectForKey:@"extension right"],[recorddict objectForKey:@"Tennis Elbow Left"],[recorddict objectForKey:@"Tennis Elbow Right"],[recorddict objectForKey:@"Pronation Left"],[recorddict objectForKey:@"Pronation Right"],[recorddict objectForKey:@"Varus Stress Left"],[recorddict objectForKey:@"Varus Stress Right"],[recorddict objectForKey:@"Supination Left"],[recorddict objectForKey:@"Supination Right"],[recorddict objectForKey:@"Valgus Stress Left"],[recorddict objectForKey:@"Valgus Stress Right"],[recorddict objectForKey:@"Tinnels Left"],[recorddict objectForKey:@"Tinnels Right"],[recorddict objectForKey:@"ULTT Left"],[recorddict objectForKey:@"ULTT Right"],[recorddict objectForKey:@"neuro un"],[recorddict objectForKey:@"Sensory c5 Left"],[recorddict objectForKey:@"Sensory c5 Right"],[recorddict objectForKey:@"Motor C5 Left"],[recorddict objectForKey:@"Motor C5 Right"],[recorddict objectForKey:@"Reflexess c5 Left"],[recorddict objectForKey:@"Reflexess c5 Right"],[recorddict objectForKey:@"Sensory c6 Left"],[recorddict objectForKey:@"Sensory c6 Right"],[recorddict objectForKey:@"Motor C6 Left"],[recorddict objectForKey:@"Motor C6 Right"],[recorddict objectForKey:@"Reflexess c6 Left"],[recorddict objectForKey:@"Reflexess c6 Right"],[recorddict objectForKey:@"Sensory c7 Left"],[recorddict objectForKey:@"Sensory c7 Right"],[recorddict objectForKey:@"Motor C7 Left"],[recorddict objectForKey:@"Motor C7 Right"],[recorddict objectForKey:@"Reflexess c7 Left"],[recorddict objectForKey:@"Reflexess c7 Right"],[recorddict objectForKey:@"Sensory c8 Left"],[recorddict objectForKey:@"Sensory c8 Right"],[recorddict objectForKey:@"Motor C8 Left"],[recorddict objectForKey:@"Motor C8 Right"],[recorddict objectForKey:@"Sensory t1 Left"],[recorddict objectForKey:@"Sensory t1 Right"],[recorddict objectForKey:@"Motor T1 Left"],[recorddict objectForKey:@"Motor T1 Right"],[recorddict objectForKey:@"Overhead"],[recorddict objectForKey:@"lift"],[recorddict objectForKey:@"other"],[recorddict objectForKey:@"functional other"],[recorddict objectForKey:@"assessment"],[recorddict objectForKey:@"Patient Status"],[recorddict objectForKey:@"DIAGNOSIS 1"],[recorddict objectForKey:@"DIAGNOSIS 2"],[recorddict objectForKey:@"DIAGNOSIS 3"],[recorddict objectForKey:@"DIAGNOSIS 4"],[recorddict objectForKey:@"DIAGNOSIS 5"],[recorddict objectForKey:@"DIAGNOSIS 6"],[recorddict objectForKey:@"Plan 1"],[recorddict objectForKey:@"Plan 2"],[recorddict objectForKey:@"spinal"],[recorddict objectForKey:@"chiro"],[recorddict objectForKey:@"physical"],[recorddict objectForKey:@"orthotics"],[recorddict objectForKey:@"modal"],[recorddict objectForKey:@"supplement"],[recorddict objectForKey:@"hep"],[recorddict objectForKey:@"radio"],[recorddict objectForKey:@"mri"],[recorddict objectForKey:@"ct scan"],[recorddict objectForKey:@"nerve"],[recorddict objectForKey:@"emg"],[recorddict objectForKey:@"outside"],[recorddict objectForKey:@"d/c"],[recorddict objectForKey:@"other1"],[recorddict objectForKey:@"plan other"],[recorddict objectForKey:@"Physician Signature"],secondEntity,value2];
    // NSLog(@"POST:%@",post);
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
    
    //  NSLog(@"data %@",data);
    
    return data;
    
}







- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)dismissKeyboard{
    [moc5L resignFirstResponder];
    [moc5R resignFirstResponder];
    [moc6L resignFirstResponder];
    [moc6R resignFirstResponder];
    [moc7L resignFirstResponder];
    [moc7R resignFirstResponder];
    [moc8L resignFirstResponder];
    [moc8R resignFirstResponder];
    [mot1L resignFirstResponder];
    [mot1R resignFirstResponder];
    [diag1 resignFirstResponder];
    [diag2 resignFirstResponder];
    [diag3 resignFirstResponder];
    [diag4 resignFirstResponder];
    [diag5 resignFirstResponder];
    [diag6 resignFirstResponder];
    [plan1 resignFirstResponder];
    [plan2 resignFirstResponder];
    [funcother resignFirstResponder];
    [planother resignFirstResponder];
    [physician_sign resignFirstResponder];
    [assessment resignFirstResponder];
    
    
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    patient_status=@"Excellent";
    //    update.hidden=YES;
    //    deleteform.hidden=YES;
    //    reset2.hidden=YES;
    //    cancel2.hidden=NO;
    //    save.hidden=NO;
    //    cancel1.hidden=YES;
    //    reset1.hidden=NO;
    funcother.hidden=YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    [self displaydata];
	// Do any additional setup after loading the view.
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
        update.hidden=NO;
        deleteform.hidden=NO;
        reset2.hidden=NO;
        cancel2.hidden=NO;
        save.hidden=YES;
        cancel1.hidden=YES;
        reset1.hidden=YES;
        moc5L.text=[resultset objectForKey:@"c53l"];
        moc5R.text=[resultset objectForKey:@"c53r"];
        moc6L.text=[resultset objectForKey:@"c63l"];
        moc6R.text=[resultset objectForKey:@"c63r"];
        moc7L.text=[resultset objectForKey:@"c73l"];
        moc7R.text=[resultset objectForKey:@"c73r"];
        moc8L.text=[resultset objectForKey:@"c81l"];
        moc8R.text=[resultset objectForKey:@"c81r"];
        mot1L.text=[resultset objectForKey:@"t11l"];
        mot1R.text=[resultset objectForKey:@"t11r"];
        diag1.text=[resultset objectForKey:@"diagnosis1"];
        diag2.text=[resultset objectForKey:@"diagnosis2"];
        diag3.text=[resultset objectForKey:@"diagnosis3"];
        diag4.text=[resultset objectForKey:@"diagnosis4"];
        diag5.text=[resultset objectForKey:@"diagnosis5"];
        diag6.text=[resultset objectForKey:@"diagnosis6"];
        plan1.text=[resultset objectForKey:@"times"];
        plan2.text=[resultset objectForKey:@"week"];
        funcother.text=[resultset objectForKey:@"break_text3"];
        planother.text=[resultset objectForKey:@"break_text4"];
        assessment.text=[resultset objectForKey:@"assessment"];
        physician_sign.text=[resultset objectForKey:@"sign"];
        temp1 =[resultset objectForKey:@"overheadactivities"];
        temp2 =[resultset objectForKey:@"lifting"];
        temp3=[resultset objectForKey:@"otherfunctional"];
        temp4 =[resultset objectForKey:@"patientstatus"];
        
        
        if ([temp4 isEqualToString:@"Excellent"])
        {
            [patientstatusseg setSelectedSegmentIndex:0];
            patient_status=@"Excellent";
        }
        else if ([temp4 isEqualToString:@"Good"])
        {
            [patientstatusseg setSelectedSegmentIndex:1];
            patient_status=@"Good";
        }
        else if ([temp4 isEqualToString:@"Fair"]) {
            [patientstatusseg setSelectedSegmentIndex:2];
            patient_status=@"Fair";
        }
        else if ([temp4 isEqualToString:@"Poor"]) {
            [patientstatusseg setSelectedSegmentIndex:3];
            patient_status=@"Poor";
        }
        if ([temp1 isEqualToString:@"Overhead Activities"])
        {
            b1.selected=YES;
            [b1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Overhead Activities" forKey:@"Overhead"];
        }
        else
        {
            b1.selected=NO;
            [b1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"Overhead"];
            
        }
        
        if ([temp2 isEqualToString:@"Lifting"])
        {
            b2.selected=YES;
            [b2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            
            [recorddict setValue:@"Lifting" forKey:@"lift"];
        }
        else
        {
            b2.selected=NO;
            [b2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            
            [recorddict setValue:@"null" forKey:@"lift"];
        }
        if ([temp3 isEqualToString:@"Other"])
        {
            b3.selected=YES;
            [b3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            funcother.hidden=NO;
            [recorddict setValue:@"Other" forKey:@"other"];
            [recorddict setValue:funcother.text forKey:@"functional other"];
            
        }
        else
        {
            b3.selected=NO;
            [b3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            funcother.hidden=YES;
            [recorddict setValue:@"null" forKey:@"other"];
            [recorddict setValue:@"" forKey:@"functional other"];
        }
        
        if ([[resultset objectForKey:@"spinal"] isEqualToString:@"Spinal Decompression"]) {
            b4.selected=YES;
            [b4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Spinal Decompression" forKey:@"spinal"];
            
        }
        else
        {
            b4.selected=NO;
            [b4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"spinal"];
            
            
        }
        
        if ([[resultset objectForKey:@"chiropractic"] isEqualToString:@"Chiropractic"]) {
            b7.selected=YES;
            [b7 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Chiropractic" forKey:@"chiro"];
            
        }
        else
        {
            b7.selected=NO;
            [b7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"chiro"];
            
        }
        if ([[resultset objectForKey:@"physical"] isEqualToString:@"Physical Therapy"]) {
            b10.selected=YES;
            [b10 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Physical Theraphy" forKey:@"physical"];
            
        }
        else
        {
            b10.selected=NO;
            [b10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"physical"];
            
        }
        if ([[resultset objectForKey:@"orthotics"] isEqualToString:@"Orthotics/Bracing"]) {
            b13.selected=YES;
            [b13 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Orthotics/Bracing" forKey:@"orthotics"];
            
        }
        else
        {
            b13.selected=NO;
            [b13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"orthotics"];
            
        }
        if ([[resultset objectForKey:@"modalities"] isEqualToString:@"Modalities"]) {
            b16.selected=YES;
            [b16 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Modalities" forKey:@"modal"];
            
        }
        else
        {
            b16.selected=NO;
            [b16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"modal"];
            
        }
        
        if ([[resultset objectForKey:@"supplementation"] isEqualToString:@"Supplementation"]) {
            b5.selected=YES;
            [b5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Supplementation" forKey:@"supplement"];
            
        }
        else
        {
            b5.selected=NO;
            [b5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"supplement"];
            
        }
        if ([[resultset objectForKey:@"hep"] isEqualToString:@"HEP"]) {
            b8.selected=YES;
            [b8 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"HEP" forKey:@"hep"];
            
        }
        else
        {
            b8.selected=NO;
            [b8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"hep"];
            
        }
        if ([[resultset objectForKey:@"radiographic"] isEqualToString:@"Radiographic X-Ray"]) {
            b11.selected=YES;
            [b11 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Radiographic X-Ray" forKey:@"radio"];
            
            
        }
        else
        {
            b11.selected=NO;
            [b11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"radio"];
            
        }
        
        
        
        if ([[resultset objectForKey:@"mri"] isEqualToString:@"MRI"]) {
            b14.selected=YES;
            [b14 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"MRI" forKey:@"mri"];
            
            
        }
        else
        {
            b14.selected=NO;
            [b14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"mri"];
            
        }
        if ([[resultset objectForKey:@"ctscan"] isEqualToString:@"CT Scan"]) {
            b17.selected=YES;
            [b17 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"CT Scan" forKey:@"ct scan"];
            
            
        }
        else
        {
            b17.selected=NO;
            [b17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"ct scan"];
            
        }
        if ([[resultset objectForKey:@"nerve"] isEqualToString:@"Nerve Conduction"]) {
            b6.selected=YES;
            [b6 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Nerver Conduction" forKey:@"nerve"];
            
            
            
            
        }
        else
        {
            b6.selected=NO;
            [b6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"nerve"];
            
        }
        
        if ([[resultset objectForKey:@"emg"] isEqualToString:@"EMG"]) {
            b9.selected=YES;
            [b9 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"EMG" forKey:@"emg"];
            
            
        }
        else
        {
            b9.selected=NO;
            [b9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"emg"];
            
        }
        if ([[resultset objectForKey:@"outside"] isEqualToString:@"Outside Referral"]) {
            b12.selected=YES;
            [b12 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Outside Referral" forKey:@"outside"];
            
            
        }
        else
        {
            b12.selected=NO;
            [b12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"outside"];
            
        }
        if ([[resultset objectForKey:@"dc"] isEqualToString:@"D/C"]) {
            b15.selected=YES;
            [b15 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"D/C" forKey:@"d/c"];
            
            
        }
        else
        {
            b15.selected=NO;
            [b15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"d/c"];
            
        }
        
        if ([[resultset objectForKey:@"otheraddress"] isEqualToString:@"other"]) {
            b18.selected=YES;
            [b18 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            planother.hidden=NO;
            [recorddict setValue:@"other" forKey:@"other1"];
            [recorddict setValue:planother.text  forKey:@"plan other"];
            
            
        }
        else
        {
            b18.selected=NO;
            [b18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            planother.hidden=YES;
            [recorddict setValue:@"" forKey:@"other1"];
            [recorddict setValue:@"" forKey:@"plan other"];
            
            
        }
        
        
    }
    else
        
    {
        update.hidden=YES;
        deleteform.hidden=YES;
        reset2.hidden=YES;
        cancel2.hidden=YES;
        save.hidden=NO;
        cancel1.hidden=NO;
        reset1.hidden=NO;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    
    [super dealloc];
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
    moc5L.text=@"";
    moc5R.text=@"";
    moc6L.text=@"";
    moc6R.text=@"";
    moc7L.text=@"";
    moc7R.text=@"";
    moc8L.text=@"";
    moc8R.text=@"";
    mot1L.text=@"";
    mot1R.text=@"";
    diag1.text=@"";
    diag2.text=@"";
    diag3.text=@"";
    diag4.text=@"";
    diag5.text=@"";
    diag6.text=@"";
    plan1.text=@"";
    plan2.text=@"";
    funcother.text=@"";
    planother.text=@"";
    planother.hidden=YES;
    patient_status=@"Excellent";
    funcother.hidden=YES;
    assessment.text=@"";
    b1.selected=NO;
    b2.selected=NO;
    b3.selected=NO;
    b3.selected=NO;
    
    b4.selected=NO;
    
    b5.selected=NO;
    
    b6.selected=NO;
    
    b7.selected=NO;
    
    b8.selected=NO;
    
    b9.selected=NO;
    
    b10.selected=NO;
    
    b11.selected=NO;
    
    b12.selected=NO;
    
    b13.selected=NO;
    
    b14.selected=NO;
    b15.selected=NO;
    b16.selected=NO;
    
    b17.selected=NO;
    
    b18.selected=NO;
    
    
    [patientstatusseg setSelectedSegmentIndex:0];
    [b1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    physician_sign.text=@"";
}

@end
