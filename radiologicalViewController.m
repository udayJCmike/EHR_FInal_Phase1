//
//  radiologicalViewController.m
//  radiological
//
//  Created by deemsys on 3/2/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "radiologicalViewController.h"
#import "radiological1ViewController.h"
#import "radiological2ViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "databaseurl.h"

@interface radiologicalViewController ()
{
    databaseurl *du;
}
@end

@implementation radiologicalViewController
@synthesize  patientname;
@synthesize pid;
@synthesize dob;
@synthesize date;
@synthesize views;
@synthesize neg;
@synthesize pos;
@synthesize postext;
@synthesize bre;
@synthesize bretext;
@synthesize adi;
@synthesize  hypo;
@synthesize nor;
@synthesize hyper;
@synthesize  hyposeg;
@synthesize  norseg;
@synthesize  hyperseg;
@synthesize  mcnor;
@synthesize mcinter;
@synthesize deg;
@synthesize degseg;
@synthesize  mild;
@synthesize moderate;
@synthesize severe;
@synthesize narrow;
@synthesize narrowtext;
@synthesize  anterior;
@synthesize  anteriortext;
@synthesize  sub;
@synthesize subtext;
@synthesize  sch;
@synthesize schtext;
@synthesize  foraminal;
@synthesize  foraminalseg;
@synthesize oster;
@synthesize osterseg;
@synthesize  dec;
@synthesize decseg;
@synthesize decrl;
@synthesize decrlseg;
@synthesize dlt;
@synthesize mi;
@synthesize mo;
@synthesize se;
@synthesize apex;
@synthesize apextext;
@synthesize soft;
@synthesize softtext;
@synthesize other;
@synthesize  othertext;
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



-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)validateId:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]+";
    
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
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumber:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,10}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)views:(id)sender {
    
    if ([sender selectedSegmentIndex]==0)
    {
        viewl=@"A-P lower";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        viewl=@"Apom";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        viewl=@"L lateral";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        viewl=@"RLF";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        viewl=@"LLF";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        viewl=@"RPO";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        viewl=@"LPO";
    }
    if ([sender selectedSegmentIndex]==7)
    {
        viewl=@"Flex";
    }
    if ([sender selectedSegmentIndex]==8)
    {
        viewl=@"Ext";
    }
}
- (IBAction)hyposeg:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        hyposegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        hyposegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        hyposegl=@"Severe";
    }
    
}
- (IBAction)norseg:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        norsegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        norsegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        norsegl=@"Severe";
    }
}
- (IBAction)hyperseg:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        hypersegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        hypersegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        hypersegl=@"Severe";
    }
}
- (IBAction)degseg:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        degsegl=@"C-2/3";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        degsegl=@"C-3/4";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        degsegl=@"C-4/5";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        degsegl=@"C-5/6";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        degsegl=@"C-6/7";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        degsegl=@"C-7/T-1";
    }
    
    
}

- (IBAction)foraminalseg:(id)sender {
    
    
    if ([sender selectedSegmentIndex]==0)
    {
        foraminalsegl=@"C-2/3";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        foraminalsegl=@"C-3/4";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        foraminalsegl=@"C-4/5";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        foraminalsegl=@"C-5/6";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        foraminalsegl=@"C-6/7";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        foraminalsegl=@"C-7/T-1";
    }
    
}
- (IBAction)osterseg:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ostersegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ostersegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        ostersegl=@"Severe";
    }
    
}
- (IBAction)decseg:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        decsegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        decsegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        decsegl=@"Severe";
    }
    
    
}
- (IBAction)decrlseg:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        decrlsegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        decrlsegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        decrlsegl=@"Severe";
    }
    
}
- (IBAction)dlt:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        dltsegl=@"Dextro";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        dltsegl=@"Levo Scoliosis";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        dltsegl=@"Towering";
    }
}

- (IBAction)checkboxselected:(UIButton *)sender {
    
    
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(pos.selected)
    {
        postext.hidden=NO;
    }
    else{
        postext.hidden=YES;
        
    }
    
    if(bre.selected)
    {
        bretext.hidden=NO;
    }
    else{
        bretext.hidden=YES;
        
    }
    if(nor.selected)
    {
        norseg. hidden=NO;
    }
    else{
        norseg.hidden=YES;
        
    }
    
    if(hypo.selected)
    {
        hyposeg.hidden=NO;
    }
    else{
        hyposeg.hidden=YES;
        
    }
    if(hyper.selected)
    {
        hyperseg.hidden=NO;
    }
    else{
        hyperseg.hidden=YES;
        
    }
    
    if(deg.selected)
    {
        degseg.hidden=NO;
    }
    else{
        degseg.hidden=YES;
        
    }
    
    if(narrow.selected)
    {
        narrowtext.hidden=NO;
    }
    else{
        narrowtext.hidden=YES;
        
    }
    
    if(anterior.selected)
    {
        anteriortext.hidden=NO;
    }
    else{
        anteriortext.hidden=YES;
        
    }
    if(sub.selected)
    {
        subtext.hidden=NO;
    }
    else{
        subtext.hidden=YES;
        
    }
    
    if(sch.selected)
    {
        schtext.hidden=NO;
    }
    else{
        schtext.hidden=YES;
        
    }
    if(foraminal.selected)
    {
        foraminalseg.hidden=NO;
    }
    else{
        foraminalseg.hidden=YES;
        
    }
    
    if(oster.selected)
    {
        osterseg.hidden=NO;
    }
    else{
        osterseg.hidden=YES;
        
    }
    
    
    
    
    if(apex.selected)
    {
        apextext.hidden=NO;
    }
    else{
        apextext.hidden=YES;
        
    }
    
    if(soft.selected)
    {
        softtext.hidden=NO;
    }
    else{
        softtext.hidden=YES;
        
    }
    
    if(other.selected)
    {
        othertext.hidden=NO;
    }
    else{
        othertext.hidden=YES;
        
    }
    if(dec.selected)
    {
        decseg.hidden=NO;
    }
    else{
        decseg.hidden=YES;
        
    }
    if(decrl.selected)
    {
        decrlseg.hidden=NO;
    }
    else{
        decrlseg.hidden=YES;
        
    }
    
}


- (IBAction)next:(id)sender {
    
    
    recorddict=[[NSMutableDictionary alloc]init];
    if(other.selected)
    {
        
    }
    else{
        othertext.text=@"";
        
    }
    if(anterior.selected)
    {
        
    }
    else{
        anteriortext.text=@"";
        
    }
    if(sub.selected)
    {
        
    }
    else{
        subtext.text=@"";
        
    }
    
    if(sch.selected)
    {
        
    }
    else{
        schtext.text=@"";
        
    }
    if(bre.selected)
    {
        
    }
    else{
        bretext.text=@"";
        
    }
    if(pos.selected)
    {
        
    }
    else{
        postext.text=@"";
        
    }
    if(narrow.selected)
    {
        
    }
    else{
        narrowtext.text=@"";
        
    }
    if(neg.selected)
    {
        
        [recorddict setValue:@"Negative for recent fracture, dislocation or gross Osteopathology"forKey:@"c_Negative"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Negative"];
    }
    if(pos.selected)
    {
        
        
        [recorddict setValue:@"Positive for" forKey:@"c_positive"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_positive"];
        
    }
    if(hypo.selected)
    {
        
        
        [recorddict  setValue:@"Hypolordosis" forKey:@"c_Hypolordosis1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Hypolordosis1"];
    }
    if(bre.selected)
    {
        
        
        [recorddict  setValue:@"Break in Georges line at " forKey:@"c_Break in Georges "];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Break in Georges "];
        
    }
    if(adi.selected)
    {
        
        [recorddict setValue:@"ADI more than 3mm" forKey:@"c_ADI more"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_ADI more"];
    }
    if(nor.selected)
    {
        
        
        [recorddict setValue:@"Normal Curvature" forKey:@"c_Normal Curva"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Normal Curva"];
        
    }
    if(hyper.selected)
    {
        
        
        [recorddict  setValue:@"Hyperlordosis" forKey:@"c_Hyperlor"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Hyperlor"];
    }
    if(mcnor.selected)
    {
        
        
        [recorddict  setValue:@"McGregor's line normal" forKey:@"c_McGregor's line"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_McGregor's line"];
        
    }
    if(mcinter.selected)
    {
        
        [recorddict setValue:@"McGregor's line interupted more than 8-M or 10-F mm" forKey:@"c_McGregor's line interup"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_McGregor's line interup"];
    }
    if(deg.selected)
    {
        
        
        [recorddict setValue:@"Degenerative joint disease at" forKey:@"c_Degenerative joint"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Degenerative joint"];
        
    }
    if(mild.selected)
    {
        
        
        [recorddict  setValue:@"mild" forKey:@"c_mild"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_mild"];
    }
    if(moderate.selected)
    {
        
        
        [recorddict  setValue:@"moderate" forKey:@"c_moderate"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_moderate"];
        
    }
    if(severe.selected)
    {
        
        [recorddict setValue:@"severe" forKey:@"c_severe"];
    }
    else
    {
        [recorddict  setValue:@"null" forKey:@"c_severe"];
    }
    if(narrow.selected)
    {
        
        
        [recorddict setValue:@"Narrowed disc space at" forKey:@"c_Narrowed disc"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Narrowed disc"];
        
    }
    if(anterior.selected)
    {
        
        
        [recorddict  setValue:@"Anterior vertebral body osteophytes at"forKey:@"c_Anterior vertebr"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Anterior vertebr"];
    }
    if(sub.selected)
    {
        
        
        [recorddict  setValue:@"Subchondral sclerosis of" forKey:@"c_Subchondral"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Subchondral"];
        
    }
    if(sch.selected)
    {
        
        [recorddict setValue:@"Schmorl's nodes at"
                      forKey:@"c_Schmorl's nodes"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Schmorl's nodes"];
    }
    if(foraminal.selected)
    {
        
        
        [recorddict setValue:@"Foraminal enchroachment between"forKey:@"c_Foraminal ench"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Foraminal ench"];
        
    }
    if(oster.selected)
    {
        
        
        [recorddict  setValue:@"Osteoporosis" forKey:@"c_Osteoporosis1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Osteoporosis1"];
    }
    if(dec.selected)
    {
        
        
        [recorddict  setValue:@"Decreased Flex/Ext" forKey:@"c_Decreased Flex/Ext1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Decreased Flex/Ext1"];
        
    }
    if(decrl.selected)
    {
        
        [recorddict setValue:@"Decreased R/L Flex" forKey:@"c_Decreased R/L Flex1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_Decreased R/L Flex1"];
    }
    if(mi.selected)
    {
        
        
        [recorddict setValue:@"mi1d" forKey:@"c_mild11c"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_mild11c"];
        
    }
    if(mo.selected)
    {
        
        
        [recorddict  setValue:@"moderate" forKey:@"c_moderate11c"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_moderate11c"];
    }
    if(se.selected)
    {
        
        
        [recorddict  setValue:@"severe" forKey:@"c_severe11c"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_severe11c"];
        
    }
    
    if(apex.selected)
    {
        
        
        [recorddict setValue:@"Apex at" forKey:@"c_apex11"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_apex11"];
        
    }
    if(soft.selected)
    {
        
        
        [recorddict  setValue:@"Soft tissue edema of" forKey:@"c_soft11"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_soft11"];
    }
    if(other.selected)
    {
        
        
        [recorddict  setValue:@"other" forKey:@"c_other11"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"c_other11"];
        
    }
    
    
    
    a=1;
    temp1 = patientname.text;
    temp2 = pid.text;
    temp3 = dob.text;
    temp4 = date.text;
    temp5 = postext.text;
    temp6=bretext.text;
    temp7=narrowtext.text;
    temp8=anteriortext.text;
    temp9=subtext.text;
    temp10=schtext.text;
    temp11=apextext.text;
    temp12=softtext.text;
    temp13=othertext.text;
    
    
    
    
    
    if(([temp1 length]!=0)&&
       ([temp2 length]!=0)&&
       ([temp3 length]!=0)&&
       ([temp4 length]!=0))
        
        
    {
        
        
        if((([temp1 length]>0)&&([du patname:temp1]==1))||([temp1 length]==0))
        {
            if((([temp2 length]>0)&&([du formreg:temp2 ]==1))||([temp2 length]==0))
            {
                if((([temp3 length]>0)&&([self validateDate:temp3 ]==1))||([temp3 length]==0))
                {
                    if((([temp4 length]>0)&&([self validateDate:temp4 ]==1))||([temp4 length]==0))
                    {
                        if((([temp5 length]>0)&&([du otherfields:temp5 ]==1))||([temp5 length]==0))
                        {
                            if((([temp6 length]>0)&&([du otherfields:temp6]==1))||([temp6 length]==0))
                            {
                                if((([temp7 length]>0)&&([du otherfields:temp7]==1))||([temp7 length]==0))
                                {
                                    if((([temp8 length]>0)&&([du otherfields:temp8]==1))||([temp8 length]==0))
                                    {
                                        if((([temp9 length]>0)&&([du otherfields:temp9]==1))||([temp9 length]==0))
                                        {
                                            if((([temp10 length]>0)&&([du otherfields:temp10]==1))||([temp10 length]==0))
                                            {
                                                if((([temp11 length]>0)&&([du otherfields:temp11]==1))||([temp11 length]==0))
                                                {
                                                    if((([temp12 length]>0)&&([du otherfields:temp12]==1))||([temp12 length]==0))
                                                    {
                                                        if((([temp13 length]>0)&&([du otherfields:temp13]==1))||([temp13 length]==0))
                                                        {
                                                            
                                                            
                                                            
                                                            /*   if([pid.text isEqualToString:@""]){
                                                             pid.text=@"null";
                                                             }
                                                             if([date.text isEqualToString:@""]){
                                                             date.text=@"null";
                                                             }
                                                             if([dob.text isEqualToString:@""]){
                                                             dob.text=@"null";
                                                             }
                                                             if([postext.text isEqualToString:@""]){
                                                             postext.text=@"null";
                                                             }
                                                             if([bretext.text isEqualToString:@""]){
                                                             bretext.text=@"null";
                                                             } if([narrowtext.text isEqualToString:@""]){
                                                             narrowtext.text=@"null";
                                                             }
                                                             if([anteriortext.text isEqualToString:@""]){
                                                             anteriortext.text=@"null";
                                                             }
                                                             if([subtext.text isEqualToString:@""]){
                                                             subtext.text=@"null";
                                                             }
                                                             if([schtext.text isEqualToString:@""]){
                                                             schtext.text=@"null";
                                                             }
                                                             if([apextext.text isEqualToString:@""]){
                                                             apextext.text=@"null";
                                                             }
                                                             if([softtext.text isEqualToString:@""]){
                                                             softtext.text=@"null";
                                                             } if([othertext.text isEqualToString:@""]){
                                                             othertext.text=@"null";
                                                             }*/
                                                            
                                                            [recorddict setValue:patientname.text forKey:@"patientname"];
                                                            [recorddict setValue:pid.text forKey:@"patient id"];
                                                            [recorddict setValue:dob.text forKey:@"dob"];
                                                            [recorddict setValue:date.text forKey:@"date"];
                                                            [recorddict setValue:postext.text forKey:@"c_positive for"];
                                                            [recorddict setValue:bretext.text forKey:@"c_Break in Georges line at"];
                                                            [recorddict setValue:subtext.text forKey:@"c_Subchondral sclerosis of"];
                                                            [recorddict setValue:schtext.text forKey:@"c_Schmorl's nodes at"];
                                                            [recorddict setValue:apextext.text forKey:@"c_apex at"];
                                                            [recorddict setValue:softtext.text forKey:@"c_Soft tissue edema of"];
                                                            [recorddict setValue:othertext.text forKey:@"c_other"];
                                                            [recorddict setValue:ostersegl forKey:@"c_Osteoporosis"];
                                                            [recorddict setValue:dltsegl forKey:@"c_dlt"];
                                                            [recorddict setValue:narrowtext.text forKey:@"c_Narrowed disc space at"];
                                                            
                                                            [recorddict setValue:anteriortext.text forKey:@"c_Anterior vertebral body osteophytes at"];
                                                            [recorddict setValue:viewl forKey:@"c_views"];
                                                            [recorddict setValue:hyposegl forKey:@"c_Hypolordosis"];
                                                            [recorddict setValue:norsegl forKey:@"c_Normal Curvature"];
                                                            [recorddict setValue:hypersegl forKey:@"c_Hyperlordosis"];
                                                            [recorddict setValue:foraminalsegl forKey:@"c_Foraminal enchroachment between"];
                                                            
                                                            [recorddict setValue:decrlsegl forKey:@"c_Decreased R/L Flex"];
                                                            [recorddict setValue:degsegl forKey:@"c_Degenerative joint disease at"];
                                                            [recorddict setValue:decsegl forKey:@"c_Decreased Flex/Ext"];
                                                            
                                                            
                                                            if(a==1)
                                                            {
                                                                [self performSegueWithIdentifier:@"radio1" sender:self];
                                                            }
                                                            
                                                        }
                                                        
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid other text."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid soft text."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid apex text."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid  schmorl's nodes at text."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid  subchondral sclerosis of text."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid anterior."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                        
                                    }
                                    
                                    
                                }
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid narrow."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                    
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid break text."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                                
                            }
                        }
                        else
                        {
                            a=0;
                            
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid positive."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                        }
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid date."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                        
                    }
                }
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid dob."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                    
                    
                }
            }
            else
            {
                a=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid id."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
            }
        }
        else
        {
            a=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid patient name."
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
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"radio1"])
    {
        if (a==1)
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
    
    
    if ([segue.identifier isEqualToString:@"radio1"])
    {
        
        
        radiological1ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in radio first %@",recorddict);
        NSLog(@"size of recorddict:%d",[recorddict count]);
    }
    
    
    
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    postext .hidden=YES;
    bretext .hidden=YES;
    hyposeg.hidden=YES;
    norseg.hidden=YES;
    hyperseg.hidden=YES;
    degseg.hidden=YES;
    narrowtext .hidden=YES;
    anteriortext .hidden=YES;
    subtext .hidden=YES;
    schtext .hidden=YES;
    foraminalseg.hidden=YES;
    osterseg.hidden=YES;
    decseg.hidden=YES;
    decrlseg.hidden=YES;
    apextext .hidden=YES;
    softtext .hidden=YES;
    othertext .hidden=YES;
    recorddict=[[NSMutableDictionary alloc]init];
    viewl=@"A-P lower";
    hyposegl=@"mild";
    hypersegl=@"mild";
    norsegl=@"mild";
    degsegl=@"C-2/3";
    foraminalsegl=@"C-2/3";
    ostersegl=@"mild";
    decsegl=@"mild";
    decrlsegl=@"mild";
    dltsegl=@"Dextro";
    du=[[databaseurl alloc]init];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    patientname.text=username;
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
}
-(void)dismissKeyboard{
    
    [narrowtext resignFirstResponder];
    [pid resignFirstResponder];
    [pid resignFirstResponder];
    [dob resignFirstResponder];
    [date resignFirstResponder];
    [postext resignFirstResponder];
    [bretext resignFirstResponder];
    [narrowtext resignFirstResponder];
    [anteriortext resignFirstResponder];
    [subtext resignFirstResponder];
    [schtext resignFirstResponder];
    [apextext resignFirstResponder];
    [softtext resignFirstResponder];
    [othertext resignFirstResponder];
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [dlt release];
    [deg release];
    [degseg release];
    [views release];
    [super dealloc];
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

- (IBAction)reset:(id)sender {
    
    
    narrowtext.text=@"";
    patientname.text=@"";
    pid.text=@"";
    dob.text=@"";
    date.text=@"";
    postext.text=@"";
    bretext.text=@"";
    narrowtext.text=@"";
    anteriortext.text=@"";
    subtext.text=@"";
    schtext.text=@"";
    apextext.text=@"";
    softtext.text=@"";
    othertext.text=@"";
    postext .hidden=YES;
    bretext .hidden=YES;
    hyposeg.hidden=YES;
    norseg.hidden=YES;
    hyperseg.hidden=YES;
    degseg.hidden=YES;
    narrowtext .hidden=YES;
    anteriortext .hidden=YES;
    subtext .hidden=YES;
    schtext .hidden=YES;
    foraminalseg.hidden=YES;
    osterseg.hidden=YES;
    decseg.hidden=YES;
    decrlseg.hidden=YES;
    apextext .hidden=YES;
    softtext .hidden=YES;
    othertext .hidden=YES;
    
    viewl=@"A-P lower";
    hyposegl=@"mild";
    hypersegl=@"mild";
    norsegl=@"mild";
    degsegl=@"C-2/3";
    foraminalsegl=@"C-2/3";
    ostersegl=@"mild";
    decsegl=@"mild";
    decrlsegl=@"mild";
    dltsegl=@"Dextro";
    [views setSelectedSegmentIndex:0];
    [dlt setSelectedSegmentIndex:0];
    neg.selected=NO;
    pos.selected=NO;
    hypo.selected=NO;
    bre.selected=NO;
    adi.selected=NO;
    nor.selected=NO;
    hyper.selected=NO;
    mcnor.selected=NO;
    mcinter.selected=NO;
    deg.selected=NO;
    mild.selected=NO;
    moderate.selected=NO;
    severe.selected=NO;
    narrow.selected=NO;
    anterior.selected=NO;
    sub.selected=NO;
    sch.selected=NO;
    foraminal.selected=NO;
    oster.selected=NO;
    dec.selected=NO;
    decrl.selected=NO;
    mi.selected=NO;
    mo.selected=NO;
    se.selected=NO;
    apex.selected=NO;
    soft.selected=NO;
    other.selected=NO;
    [neg setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [pos setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [hypo setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [bre setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [adi setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [nor setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [hyper setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [mcnor setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [mcinter setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [deg setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [mild setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [moderate setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [severe setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [narrow setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [anterior setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [sub setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [sch setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [foraminal setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [oster setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [dec setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [decrl setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [mi setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [mo setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [se setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [apex setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [soft setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [other setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
}
@end
