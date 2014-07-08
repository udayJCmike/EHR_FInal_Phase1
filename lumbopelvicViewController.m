//
//  lumbopelvicViewController.m
//  EHR
//
//  Created by DeemsysInc on 2/27/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "lumbopelvicViewController.h"
#import "lumbopelvic1ViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "hamilViewController.h"
#import "databaseurl.h"
@interface lumbopelvicViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation lumbopelvicViewController
@synthesize resultset;
@synthesize recorddict;
@synthesize patientname;
@synthesize othernotes;
@synthesize flexion;
@synthesize extension;
@synthesize lateralL;
@synthesize lateralR;
@synthesize rotationL;
@synthesize rotationR;
@synthesize T8_9;
@synthesize T10_11;
@synthesize T12_L1;
@synthesize L2_3;
@synthesize L4_5;
@synthesize LSI;
@synthesize T9_10;
@synthesize T11_12;
@synthesize L1_2;
@synthesize L3_4;
@synthesize L5_SI;
@synthesize RSI;
@synthesize trendL;
@synthesize trendR;
@synthesize kempL;
@synthesize kempR;
@synthesize slumpL;
@synthesize slumpR;
@synthesize straightlegL;
@synthesize straightlegR;
@synthesize welllegL;
@synthesize welllegR;
@synthesize nachelsL;
@synthesize nachelsR;
@synthesize positive;
@synthesize positive_adam;
@synthesize L1L;
@synthesize L1R;
@synthesize L2L;
@synthesize L2R;
@synthesize L3L;
@synthesize L3RR;
@synthesize L4L;
@synthesize L4R;
@synthesize L5L;
@synthesize L5R;
@synthesize SIL;
@synthesize SIR;
@synthesize segmentSwitch;
@synthesize piri;
@synthesize glu;
@synthesize lli;
@synthesize quad;
@synthesize glutes;
@synthesize rect;
@synthesize para;
@synthesize ham;
@synthesize obli;
@synthesize gait;

@synthesize gaitArray;
@synthesize pelvic;
@synthesize pelvicArray;
@synthesize rightbut;
@synthesize leftbut;
@synthesize gaitseg;
@synthesize pelvicseg;

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
    //    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    NSString *countryFormat1 = @"[0-9]{1,3}+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    //    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames2:(NSString *)country1
{
    //    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
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
-(BOOL)validateNameformat:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z]+";
    //    NSString *countryFormat1 = @"[0-9]{1,3}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
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
    
    if (leftbut.selected)
    {
        leftseg.hidden=NO;
    }
    else
    {
        
        leftseg.hidden=YES;
        lefoth.hidden=YES;
    }
    if (rightbut.selected)
    {
        rightseg.hidden=NO;
    }
    else{
        rigoth.hidden=YES;
        rightseg.hidden=YES;
    }
}
- (IBAction)lef:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        left=@"1/8";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if(selectedSegment==1)
    {
        left=@"1/4";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if (selectedSegment == 2)
    {
        left=@"3/8";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if(selectedSegment==3)
    {
        left=@"1/2";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if (selectedSegment == 4)
    {
        left=@"5/8";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if(selectedSegment==5)
    {
        left=@"3/4";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if (selectedSegment == 6)
    {
        left=@"7/8";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if(selectedSegment==7)
    {
        left=@"1";
        lefoth.hidden=YES;
        lefoth.text=@"";
    }
    else if(selectedSegment==8)
    {
        left=@"other";
        lefoth.hidden=NO;
        //        left=lefoth.text;
    }
    
}
- (IBAction)rig:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        right=@"1/8";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if(selectedSegment==1)
    {
        right=@"1/4";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if (selectedSegment == 2)
    {
        right=@"3/8";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if(selectedSegment==3)
    {
        right=@"1/2";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if (selectedSegment == 4)
    {
        right=@"5/8";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if(selectedSegment==5)
    {
        right=@"3/4";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if (selectedSegment == 6)
    {
        right=@"7/8";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if(selectedSegment==7)
    {
        right=@"1";
        rigoth.hidden=YES;
        rigoth.text=@"";
    }
    else if(selectedSegment==8)
    {
        right=@"other";
        rigoth.hidden=NO;
        //        right=rigoth.text;
    }
}

- (IBAction)piri:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        Piriforms=@"Left";
    }
    else if(selectedSegment==1)
    {
        Piriforms=@"Right";
    }
}
- (IBAction)glu:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        GluteusMaximus=@"Left";
    }
    else if(selectedSegment==1)
    {
        GluteusMaximus=@"Right";
    }
}
- (IBAction)lli:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        lliopsoas=@"Left";
    }
    if(selectedSegment==1)
    {
        lliopsoas=@"Right";
    }
}
- (IBAction)quad:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        QuadLumb=@"Left";
    }
    if(selectedSegment==1)
    {
        QuadLumb=@"Right";
    }
}
- (IBAction)glutes:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        GluteusMedius=@"Left";
    }
    if(selectedSegment==1)
    {
        GluteusMedius=@"Right";
    }
}
- (IBAction)rect:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        RectusAbdominis=@"Left";
    }
    if(selectedSegment==1)
    {
        RectusAbdominis=@"Right";
    }
}
- (IBAction)para:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        Paraspinals=@"Left";
    }
    if(selectedSegment==1)
    {
        Paraspinals=@"Right";
    }
}
- (IBAction)ham:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        Hamstrings=@"Left";
    }
    if(selectedSegment==1)
    {
        Hamstrings=@"Right";
    }
}
- (IBAction)obli:(id)sender
{
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        Obliques=@"Left";
    }
    if(selectedSegment==1)
    {
        Obliques=@"Right";
    }
}


- (IBAction)segmentSwitch:(id)sender


{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0)
    {
        AO=@"Excellent";
    }
    else if(selectedSegment==1)
    {
        AO=@"Good";
    }
    else if(selectedSegment==2)
    {
        AO=@"Fair";
    }else if(selectedSegment==3)
    {
        AO=@"Severe";
    }
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"perry1to2"])
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
    
    if ([segue.identifier isEqualToString:@"perry1to2"])
    {
        
        lumbopelvic1ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        //NSLog(@"recorddict in perry first %@",recorddict);
    }
    
    
}
- (IBAction)NEXT:(id)sender
{
    
    recorddict=[[NSMutableDictionary alloc]init];
    //    [recorddict addEntriesFromDictionary:recorddict];
    //electedcheckbox=[[NSMutableArray alloc]init];
    
    
    if(PALPATION.selected)
    {
        [recorddict setValue:@"All Soft Tissue Unremarkable" forKey:@"palpation un"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"palpation un"];
    }
    if(FUNCTIONAL.selected)
    {
        [recorddict setValue:@"Unremarkable" forKey:@"functional un"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"functional un"];
    }
    if(SUBLUX.selected)
    {
        [recorddict setValue:@"Unremarkable" forKey:@"sublex un"];
        
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"sublex un"];
    }
    if(ORTHO.selected)
    {
        [recorddict setValue:@"Unremarkable" forKey:@"orthopedic un"];
        
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"orthopedic un"];
    }
    if(NEURO.selected)
    {
        [recorddict setValue:@"Unremarkable" forKey:@"neuro un"];
        
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"neuro un"];
    }
    if( leftbut.selected){
        [recorddict setValue:@"Left" forKey:@"leftsegment"];
        
    }
    else{
        [recorddict setValue:@"null" forKey:@"leftsegment"];
        lefoth.text=@"null";
    }
    
    if( rightbut.selected){
        [recorddict setValue:@"Right" forKey:@"rightsegment"];
    }
    else{
        rigoth.text=@"null";
        [recorddict setValue:@"null" forKey:@"rightsegment"];
    }
    if([lefoth.text isEqualToString:@""]){
        lefoth.text=@"";
    }
    if([rigoth.text isEqualToString:@""]){
        rigoth.text=@"";
    }
    
    a=1;
    temp1 =patientname.text;
    temp2 =date.text;
    temp3 =othernotes.text;
    temp4 =flexion.text;
    temp5 =extension.text;
    temp6=lateralL.text;
    temp7=lateralR.text;
    temp8=rotationL.text;
    temp9=rotationR.text;
    temp10=T8_9.text;
    temp11=T10_11.text;
    temp12=T12_L1.text;
    temp13=L2_3.text;
    temp14=L4_5.text;
    temp15=LSI.text;
    temp16=T9_10.text;
    temp17=T11_12.text;
    temp18=L1_2.text;
    temp19=L3_4.text;
    temp20=L5_SI.text;
    temp21=RSI.text;
    temp22=trendL.text;
    temp23=trendR.text;
    temp24=kempL.text;
    temp25=kempR.text;
    temp26=slumpL.text;
    temp27=slumpR.text;
    temp28=straightlegL.text;
    temp29=straightlegR.text;
    temp30=welllegL.text;
    temp31=welllegR.text;
    temp32=nachelsL.text;
    temp33=nachelsR.text;
    temp34=positive.text;
    temp35=positive_adam.text;
    temp36=L1L.text;
    temp37=L1R.text;
    temp38=L2L.text;
    temp39=L2R.text;
    temp40=L3L.text;
    temp41=L3RR.text;
    temp42=L4L.text;
    temp43=L4R.text;
    temp44=L5L.text;
    temp45=L5R.text;
    temp46=SIL.text;
    temp47=SIR.text;
    
    
    
    if(([temp1 length]!=0)&&
       ([temp2 length]!=0))
    {
        if([du patname:temp1]==1)
        {
            if([self validateDate:temp2]==1)
            {
                if((([temp3 length]>0)&&([du otherfields:temp3 ]==1))||([temp3 length]==0))
                {
                    if((([temp4 length]>0)&&([du date:temp4 ]==1))||([temp4 length]==0))
                    {
                        if((([temp5 length]>0)&&([du date:temp5]==1))||([temp5 length]==0))
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
                                                                                                if((([temp23 length]>0)&&([du date:temp23 ]==1))||([temp23 length]==0))
                                                                                                {
                                                                                                    if((([temp24 length]>0)&&([du date:temp24]==1))||([temp24 length]==0))
                                                                                                    {
                                                                                                        if((([temp25 length]>0)&&([du date:temp25 ]==1))||([temp25 length]==0))
                                                                                                        {
                                                                                                            if((([temp26 length]>0)&&([du date:temp26 ]==1))||([temp26 length]==0))
                                                                                                            {
                                                                                                                if((([temp27 length]>0)&&([du date:temp27]==1))||([temp27 length]==0))
                                                                                                                {
                                                                                                                    if((([temp28 length]>0)&&([du date:temp28 ]==1))||([temp28 length]==0))
                                                                                                                    {
                                                                                                                        if((([temp29 length]>0)&&([du date:temp29]==1))||([temp29 length]==0))
                                                                                                                        {
                                                                                                                            if((([temp30 length]>0)&&([du date:temp30]==1))||([temp30 length]==0))
                                                                                                                            {
                                                                                                                                if((([temp31 length]>0)&&([du date:temp31]==1))||([temp31 length]==0))
                                                                                                                                {
                                                                                                                                    if((([temp32 length]>0)&&([du date:temp32 ]==1))||([temp32 length]==0))
                                                                                                                                    {
                                                                                                                                        if((([temp33 length]>0)&&([du date:temp33]==1))||([temp33 length]==0))
                                                                                                                                        {
                                                                                                                                            if((([temp34 length]>0)&&([du date:temp34 ]==1))||([temp34 length]==0))
                                                                                                                                            {
                                                                                                                                                if((([temp35 length]>0)&&([du date:temp35]==1))||([temp35 length]==0))
                                                                                                                                                {
                                                                                                                                                    if((([temp36 length]>0)&&([du date:temp36 ]==1))||([temp36 length]==0))
                                                                                                                                                    {
                                                                                                                                                        if((([temp37 length]>0)&&([du date:temp37]==1))||([temp37 length]==0))
                                                                                                                                                        {
                                                                                                                                                            if((([temp38 length]>0)&&([du date:temp38 ]==1))||([temp38 length]==0))
                                                                                                                                                            {
                                                                                                                                                                if((([temp39 length]>0)&&([du date:temp39]==1))||([temp39 length]==0))
                                                                                                                                                                {
                                                                                                                                                                    if((([temp40 length]>0)&&([du date:temp40 ]==1))||([temp40 length]==0))
                                                                                                                                                                    {
                                                                                                                                                                        
                                                                                                                                                                        if((([temp41 length]>0)&&([du date:temp41]==1))||([temp41 length]==0))
                                                                                                                                                                        {
                                                                                                                                                                            if((([temp42 length]>0)&&([du date:temp42 ]==1))||([temp42 length]==0))
                                                                                                                                                                            {
                                                                                                                                                                                if((([temp43 length]>0)&&([du date:temp43]==1))||([temp43 length]==0))
                                                                                                                                                                                {
                                                                                                                                                                                    if((([temp44 length]>0)&&([du date:temp44 ]==1))||([temp44 length]==0))
                                                                                                                                                                                    {
                                                                                                                                                                                        if((([temp45 length]>0)&&([du date:temp45 ]==1))||([temp45 length]==0))
                                                                                                                                                                                        {
                                                                                                                                                                                            if((([temp46 length]>0)&&([du date:temp46 ]==1))||([temp46 length]==0))
                                                                                                                                                                                            {
                                                                                                                                                                                                if((([temp47 length]>0)&&([du date:temp47]==1))||([temp47 length]==0))
                                                                                                                                                                                                {
                                                                                                                                                                                                    
                                                                                                                                                                                                    a=1;
                                                                                                                                                                                                    /*if([flexion.text isEqualToString:@""]){
                                                                                                                                                                                                     flexion.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([extension.text isEqualToString:@""]){
                                                                                                                                                                                                     extension.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([lateralL.text isEqualToString:@""]){
                                                                                                                                                                                                     lateralL.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([rotationL.text isEqualToString:@""]){
                                                                                                                                                                                                     rotationL.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([lateralR.text isEqualToString:@""]){
                                                                                                                                                                                                     lateralR.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([rotationR.text isEqualToString:@""]){
                                                                                                                                                                                                     rotationR.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([T8_9.text isEqualToString:@""]){
                                                                                                                                                                                                     T8_9.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([T10_11.text isEqualToString:@""]){
                                                                                                                                                                                                     T10_11.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([T12_L1.text isEqualToString:@""]){
                                                                                                                                                                                                     T12_L1.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([L2_3.text isEqualToString:@""]){
                                                                                                                                                                                                     L2_3.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([L4_5.text isEqualToString:@""]){
                                                                                                                                                                                                     L4_5.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([LSI.text isEqualToString:@""]){
                                                                                                                                                                                                     LSI.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([T9_10.text isEqualToString:@""]){
                                                                                                                                                                                                     T9_10.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([T11_12.text isEqualToString:@""]){
                                                                                                                                                                                                     T11_12.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([L1_2.text isEqualToString:@""]){
                                                                                                                                                                                                     L1_2.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([L3_4.text isEqualToString:@""]){
                                                                                                                                                                                                     L3_4.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([L5_SI.text isEqualToString:@""]){
                                                                                                                                                                                                     L5_SI.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([RSI.text isEqualToString:@""]){
                                                                                                                                                                                                     RSI.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([trendL.text isEqualToString:@""]){
                                                                                                                                                                                                     trendL.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([trendR.text isEqualToString:@""]){
                                                                                                                                                                                                     trendR.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([kempL.text isEqualToString:@""]){
                                                                                                                                                                                                     kempL.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([kempR.text isEqualToString:@""]){
                                                                                                                                                                                                     kempR.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([slumpL.text isEqualToString:@""]){
                                                                                                                                                                                                     slumpL.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([slumpR.text isEqualToString:@""]){
                                                                                                                                                                                                     slumpR.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([straightlegL.text isEqualToString:@""]){
                                                                                                                                                                                                     straightlegL.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([straightlegR.text isEqualToString:@""]){
                                                                                                                                                                                                     straightlegR.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([welllegL.text isEqualToString:@""]){
                                                                                                                                                                                                     welllegL.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([welllegR.text isEqualToString:@""]){
                                                                                                                                                                                                     welllegR.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([nachelsL.text isEqualToString:@""]){
                                                                                                                                                                                                     nachelsL.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([nachelsR.text isEqualToString:@""]){
                                                                                                                                                                                                     nachelsR.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([positive.text isEqualToString:@""]){
                                                                                                                                                                                                     positive.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([positive_adam.text isEqualToString:@""]){
                                                                                                                                                                                                     positive_adam.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([L1L.text isEqualToString:@""]){
                                                                                                                                                                                                     L1L.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([L1R.text isEqualToString:@""]){
                                                                                                                                                                                                     L1R.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([L2L.text isEqualToString:@""]){
                                                                                                                                                                                                     L2L.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([L2R.text isEqualToString:@""]){
                                                                                                                                                                                                     L2R.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([L3L.text isEqualToString:@""]){
                                                                                                                                                                                                     L3L.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([L3RR.text isEqualToString:@""]){
                                                                                                                                                                                                     L3RR.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([L4L.text isEqualToString:@""]){
                                                                                                                                                                                                     L4L.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([L4R.text isEqualToString:@""]){
                                                                                                                                                                                                     L4R.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([L5L.text isEqualToString:@""]){
                                                                                                                                                                                                     L5L.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([L5R.text isEqualToString:@""]){
                                                                                                                                                                                                     L5R.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     
                                                                                                                                                                                                     if([SIL.text isEqualToString:@""]){
                                                                                                                                                                                                     SIL.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([SIR.text isEqualToString:@""]){
                                                                                                                                                                                                     SIR.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     if([othernotes.text isEqualToString:@""]){
                                                                                                                                                                                                     othernotes.text=@"null";
                                                                                                                                                                                                     }
                                                                                                                                                                                                     */
                                                                                                                                                                                                    
                                                                                                                                                                                                    [recorddict setValue:patientname.text forKey:@"patientname"];
                                                                                                                                                                                                    [recorddict setValue:date.text forKey:@"Date"];
                                                                                                                                                                                                    [recorddict setValue:othernotes.text forKey:@"other notes"];
                                                                                                                                                                                                    [recorddict setValue:flexion.text forKey:@"flexion"];
                                                                                                                                                                                                    [recorddict setValue:extension.text forKey:@"extension"];
                                                                                                                                                                                                    [recorddict setValue:lateralL.text forKey:@"lateralL"];
                                                                                                                                                                                                    [recorddict setValue:lateralR.text forKey:@"lateralR"];
                                                                                                                                                                                                    [recorddict setValue:rotationL.text forKey:@"rotation left"];
                                                                                                                                                                                                    [recorddict setValue:rotationR.text forKey:@"rotation right"];
                                                                                                                                                                                                    [recorddict setValue:T8_9.text forKey:@"t8_9"];
                                                                                                                                                                                                    [recorddict setValue:T10_11.text forKey:@"t10_11"];
                                                                                                                                                                                                    [recorddict setValue:T12_L1.text forKey:@"T12-L1"];
                                                                                                                                                                                                    [recorddict setValue:L2_3.text forKey:@"L2-3"];
                                                                                                                                                                                                    [recorddict setValue:L4_5.text forKey:@"L4-5"];
                                                                                                                                                                                                    [recorddict setValue:LSI.text forKey:@"LSI"];
                                                                                                                                                                                                    [recorddict setValue:T9_10.text forKey:@"T9-10"];
                                                                                                                                                                                                    [recorddict setValue:T11_12.text forKey:@"T11_12"];
                                                                                                                                                                                                    [recorddict setValue:L1_2.text forKey:@"L1_2"];
                                                                                                                                                                                                    [recorddict setValue:L3_4.text forKey:@"L3_4"];
                                                                                                                                                                                                    [recorddict setValue:L5_SI.text forKey:@"L5_SI"];
                                                                                                                                                                                                    [recorddict setValue:RSI.text forKey:@"RSI"];
                                                                                                                                                                                                    [recorddict setValue:trendL.text forKey:@"trend Left"];
                                                                                                                                                                                                    [recorddict setValue:trendR.text forKey:@"trend Right"];
                                                                                                                                                                                                    [recorddict setValue:kempL.text forKey:@"kemp Left"];
                                                                                                                                                                                                    [recorddict setValue:kempR.text forKey:@"kemp Right"];
                                                                                                                                                                                                    [recorddict setValue:slumpL.text forKey:@"slump Left"];
                                                                                                                                                                                                    [recorddict setValue:slumpR.text forKey:@"slumpl Right"];
                                                                                                                                                                                                    [recorddict setValue:straightlegL.text forKey:@"straightleg Left"];
                                                                                                                                                                                                    [recorddict setValue:straightlegR.text forKey:@"straightleg Right"];
                                                                                                                                                                                                    [recorddict setValue:welllegL.text forKey:@"wellleg Left"];
                                                                                                                                                                                                    [recorddict setValue:welllegR.text forKey:@"wellleg Right"];
                                                                                                                                                                                                    [recorddict setValue:nachelsL.text forKey:@"nachlas Left"];
                                                                                                                                                                                                    [recorddict setValue:nachelsR.text forKey:@"nachlas Right"];
                                                                                                                                                                                                    [recorddict setValue:positive.text forKey:@"positive"];
                                                                                                                                                                                                    [recorddict setValue:positive_adam.text forKey:@"positive adam"];
                                                                                                                                                                                                    [recorddict setValue:L1L.text forKey:@"L1 Left"];
                                                                                                                                                                                                    [recorddict setValue:L1R.text forKey:@"L1 Right"];
                                                                                                                                                                                                    [recorddict setValue:L2L.text forKey:@"L2 Left"];
                                                                                                                                                                                                    [recorddict setValue:L2R.text forKey:@"L2 Right"];
                                                                                                                                                                                                    [recorddict setValue:L3L.text forKey:@"L3 Left"];
                                                                                                                                                                                                    [recorddict setValue:L3RR.text forKey:@"L3 Right"];
                                                                                                                                                                                                    [recorddict setValue:L4L.text forKey:@"L4 Left"];
                                                                                                                                                                                                    [recorddict setValue:L4R.text forKey:@"L4 Right"];
                                                                                                                                                                                                    [recorddict setValue:L5L.text forKey:@"L5 Left"];
                                                                                                                                                                                                    [recorddict setValue:L5R.text forKey:@"L5 Right"];
                                                                                                                                                                                                    [recorddict setValue:SIL.text forKey:@"SI Left"];
                                                                                                                                                                                                    [recorddict setValue:SIR.text forKey:@"SI Right"];
                                                                                                                                                                                                    [recorddict setValue:left forKey:@"leftseg"];
                                                                                                                                                                                                    [recorddict setValue:right forKey:@"rightseg"];
                                                                                                                                                                                                    [recorddict setValue:AO forKey:@"AO"];
                                                                                                                                                                                                    [recorddict setValue:Piriforms forKey:@"piriforms"];
                                                                                                                                                                                                    [recorddict setValue:GluteusMaximus forKey:@"gluteus maximus"];
                                                                                                                                                                                                    [recorddict setValue:lliopsoas forKey:@"lliopsoas"];
                                                                                                                                                                                                    [recorddict setValue:QuadLumb forKey:@"quad lumb"];
                                                                                                                                                                                                    [recorddict setValue:GluteusMedius forKey:@"gluteus medius"];
                                                                                                                                                                                                    [recorddict setValue:RectusAbdominis forKey:@"rectus abdominis"];
                                                                                                                                                                                                    [recorddict setValue:Paraspinals forKey:@"paraspinals"];
                                                                                                                                                                                                    [recorddict setValue:Hamstrings forKey:@"hamstrings"];
                                                                                                                                                                                                    [recorddict setValue:Obliques forKey:@"obliques"];
                                                                                                                                                                                                    [recorddict setValue:selectgait forKey:@"selectedgait"];
                                                                                                                                                                                                    [recorddict setValue:selectpelvic forKey:@"pelvic unleveling"];
                                                                                                                                                                                                    [recorddict setValue:lefoth.text forKey:@"left other"];
                                                                                                                                                                                                    [recorddict setValue:rigoth.text forKey:@"right other"];
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    //  NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                                                                                                                    
                                                                                                                                                                                                    if(a==1)
                                                                                                                                                                                                    {
                                                                                                                                                                                                        [self performSegueWithIdentifier:@"perry1to2" sender:self];
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                   description:@"Please enter valid si right."
                                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                                a=0;
                                                                                                                                                                                                
                                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                               description:@"Please enter valid si left."
                                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                            a=0;
                                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                           description:@"Please enter valid l5 right."
                                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                                            
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                        a=0;
                                                                                                                                                                                        
                                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                       description:@"Please enter valid l5 left."
                                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                                        
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                    a=0;
                                                                                                                                                                                    
                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                   description:@"Please enter valid l4 right."
                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                    
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                                a=0;
                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                               description:@"Please enter valid l4 left."
                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                            a=0;
                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                           description:@"Please enter valid l3 right."
                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                            
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                        a=0;
                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                       description:@"Please enter valid l3 left."
                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                        
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                    a=0;
                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                   description:@"Please enter valid l2 right."
                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                    
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                                a=0;
                                                                                                                                                                
                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                               description:@"Please enter valid l2 left."
                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                            a=0;
                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                           description:@"Please enter valid l1 right."
                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                              callback:nil];
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        a=0;
                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                       description:@"Please enter valid l1 left."
                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                          callback:nil];
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    a=0;
                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                   description:@"Please enter valid positive adam."
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
                                                                                                                                                                                           description:@"Please enter valid nachels right."
                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                              callback:nil];
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        a=0;
                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                       description:@"Please enter valid nachels left."
                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                          callback:nil];
                                                                                                                                        
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    a=0;
                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                   description:@"Please enter valid well leg right."
                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                      callback:nil];
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                a=0;
                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                               description:@"Please enter valid well leg left."
                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                  callback:nil];
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                           description:@"Please enter valid straight leg right."
                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                              callback:nil];
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                       description:@"Please enter valid strsight leg left."
                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                          callback:nil];
                                                                                                                        
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please enter valid slump right."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please enter valid slump left."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please enter valid kemp right."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please enter valid kemp left."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid trend right."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid trend left."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid rsi."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid l5-si."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid l3-4."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid l1-2."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid t11-12."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid t9-10."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid lsi."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                }
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid l4-5."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid l2-3."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid t12-l1."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    a=0;
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid t10-11."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                }
                                            }
                                            else
                                            {
                                                a=0;
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid t8-9."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                            }
                                        }
                                        else
                                        {
                                            a=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid rotation right."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid rotation left."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                    }
                                }
                                else
                                {
                                    a=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid lateral right."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid lateral left."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                            }
                        }
                        else
                        {
                            a=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid extension."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                        }
                    }
                    else
                    {
                        a=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid flexion."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                    }
                }
                else
                {
                    a=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid other notes."
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

-(void)dismissKeyboard
{
      printView.hidden = YES;
    [patientname resignFirstResponder];
    [date resignFirstResponder];
    [othernotes resignFirstResponder];
    [flexion resignFirstResponder];
    [extension resignFirstResponder];
    [lateralL resignFirstResponder];
    [lateralR resignFirstResponder];
    [rotationL resignFirstResponder];
    [rotationR resignFirstResponder];
    [T8_9 resignFirstResponder];
    [T10_11 resignFirstResponder];
    [T12_L1 resignFirstResponder];
    [L2_3 resignFirstResponder];
    [L4_5 resignFirstResponder];
    [LSI resignFirstResponder];
    [T9_10 resignFirstResponder];
    [T11_12 resignFirstResponder];
    [L1_2 resignFirstResponder];
    [L3_4 resignFirstResponder];
    [L5_SI resignFirstResponder];
    [RSI resignFirstResponder];
    [trendL resignFirstResponder];
    [trendR resignFirstResponder];
    [kempL resignFirstResponder];
    [kempR resignFirstResponder];
    [slumpL resignFirstResponder];
    [slumpR resignFirstResponder];
    [straightlegL resignFirstResponder];
    [straightlegR resignFirstResponder];
    [welllegL resignFirstResponder];
    [welllegR resignFirstResponder];
    [nachelsL resignFirstResponder];
    [nachelsR resignFirstResponder];
    [positive resignFirstResponder];
    [positive_adam resignFirstResponder];
    [L1L resignFirstResponder];
    [L1R resignFirstResponder];
    [L2L resignFirstResponder];
    [L2R resignFirstResponder];
    [L3L resignFirstResponder];
    [L3RR resignFirstResponder];
    [L4L resignFirstResponder];
    [L4R resignFirstResponder];
    [L5L resignFirstResponder];
    [L5R resignFirstResponder];
    [SIL resignFirstResponder];
    [SIR resignFirstResponder];
    [lefoth resignFirstResponder];
    [rigoth resignFirstResponder];
    
    
}

- (void)viewDidLoad
{
    
    left=@"null";
    right=@"null";
    Piriforms=@"null";
    GluteusMaximus=@"null";
    lliopsoas=@"null";
    QuadLumb=@"null";
    GluteusMedius=@"null";
    RectusAbdominis=@"null";
    Paraspinals=@"null";
    Hamstrings=@"null";
    Obliques=@"null";
    AO=@"Excellent";
    [super viewDidLoad];
    lefoth.hidden=YES;
    rigoth.hidden=YES;
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

    [gait setBackgroundColor:([UIColor whiteColor])];
    [pelvic setBackgroundColor:([UIColor whiteColor])];
    selectgait=@"Normal";
    selectpelvic=@"None";
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    patientname.text=username;
    
    resultset=[[NSMutableDictionary alloc]init];
    [self Getdata];
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
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
    //NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"lumbopelvic List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    NSLog(@"items1app %@",items1App);
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            temp1 =[arrayList1 objectForKey:@"pname"];
            temp2 =[arrayList1 objectForKey:@"date"];
            temp3 =[arrayList1 objectForKey:@"gait"];
            temp4 =[arrayList1 objectForKey:@"pelvicunleveling"];
            /// temp5 =[arrayList1 objectForKey:@"swelling"];
            temp6 =[arrayList1 objectForKey:@"ao"];
            temp7=[arrayList1 objectForKey:@"allsoft"];
            temp8 =[arrayList1 objectForKey:@"leglengthcheckl"];
            temp9=[arrayList1 objectForKey:@"leglengthl"];
            temp10 =[arrayList1 objectForKey:@"other1"];
            temp11 =[arrayList1 objectForKey:@"leglengthcheckr"];
            temp12=[arrayList1 objectForKey:@"leglengthr"];
            temp13 =[arrayList1 objectForKey:@"other2"];
            temp14 =[arrayList1 objectForKey:@"piriformis"];
            temp15=[arrayList1 objectForKey:@"quadlumb"];
            temp16=[arrayList1 objectForKey:@"paraspinals"];
            temp17=[arrayList1 objectForKey:@"gluteus"];
            temp18=[arrayList1 objectForKey:@"gluteusmedius"];
            temp19=[arrayList1 objectForKey:@"hamstrings"];
            temp20=[arrayList1 objectForKey:@"iliopsoas"];
            temp21 =[arrayList1 objectForKey:@"rectus"];
            temp22 =[arrayList1 objectForKey:@"obliques"];
            temp23 =[arrayList1 objectForKey:@"othernotes"];
            temp24 =[arrayList1 objectForKey:@"functionalrangeofmotion"];
            temp25 =[arrayList1 objectForKey:@"subluxation"];
            temp26=[arrayList1 objectForKey:@"orthopedic"];
            temp27 =[arrayList1 objectForKey:@"flexion"];
            temp28 =[arrayList1 objectForKey:@"t89"];
            temp29 =[arrayList1 objectForKey:@"t910"];
            temp30 =[arrayList1 objectForKey:@"trendelburgl"];
            temp31 =[arrayList1 objectForKey:@"trendelburgr"];
            temp32 =[arrayList1 objectForKey:@"extension"];
            temp33 =[arrayList1 objectForKey:@"t1011"];
            temp34 =[arrayList1 objectForKey:@"t1112"];
            temp35 =[arrayList1 objectForKey:@"kempsl"];
            temp36 =[arrayList1 objectForKey:@"kempsr"];
            temp37 =[arrayList1 objectForKey:@"lflexion"];
            temp38 =[arrayList1 objectForKey:@"rflexion"];
            temp39 =[arrayList1 objectForKey:@"t12l1"];
            temp40 =[arrayList1 objectForKey:@"l12"];
            temp41 =[arrayList1 objectForKey:@"slumpl"];
            temp42 =[arrayList1 objectForKey:@"slumpr"];
            temp43 =[arrayList1 objectForKey:@"lrotation"];
            temp44 =[arrayList1 objectForKey:@"rrotation"];
            temp45 =[arrayList1 objectForKey:@"l23"];
            temp46 =[arrayList1 objectForKey:@"l34"];
            temp47 =[arrayList1 objectForKey:@"straightlegl"];
            temp48 =[arrayList1 objectForKey:@"straightlegr"];
            temp49 =[arrayList1 objectForKey:@"l45"];
            temp50 =[arrayList1 objectForKey:@"l5s1"];
            temp51 =[arrayList1 objectForKey:@"welllegl"];
            temp52 =[arrayList1 objectForKey:@"welllegr"];
            temp53 =[arrayList1 objectForKey:@"lsi"];
            temp54 =[arrayList1 objectForKey:@"rsi"];
            temp55 =[arrayList1 objectForKey:@"nachlasl"];
            temp56=[arrayList1 objectForKey:@"nachlasr"];
            temp57 =[arrayList1 objectForKey:@"positiveminor"];
            temp58 =[arrayList1 objectForKey:@"positiveadam"];
            temp59 =[arrayList1 objectForKey:@"neurologicaltest"];
            
            
            
            [resultset setValue:[arrayList1 objectForKey:@"l1l"] forKey:@"l1l"];
            [resultset setValue:[arrayList1 objectForKey:@"l1r"] forKey:@"l1r"];
            [resultset setValue:[arrayList1 objectForKey:@"l15l"] forKey:@"l15l"];
            [resultset setValue:[arrayList1 objectForKey:@"l15r"] forKey:@"l15r"];
            [resultset setValue:[arrayList1 objectForKey:@"l2l"] forKey:@"l2l"];
            [resultset setValue:[arrayList1 objectForKey:@"l2r"] forKey:@"l2r"];
            [resultset setValue:[arrayList1 objectForKey:@"l25l"] forKey:@"l25l"];
            [resultset setValue:[arrayList1 objectForKey:@"l25r"] forKey:@"l25r"];
            [resultset setValue:[arrayList1 objectForKey:@"l3l"] forKey:@"l3l"];
            [resultset setValue:[arrayList1 objectForKey:@"l3r"] forKey:@"l3r"];
            [resultset setValue:[arrayList1 objectForKey:@"l35l"] forKey:@"l35l"];
            [resultset setValue:[arrayList1 objectForKey:@"l35r"] forKey:@"l35r"];
            [resultset setValue:[arrayList1 objectForKey:@"l4l"] forKey:@"l4l"];
            [resultset setValue:[arrayList1 objectForKey:@"l4r"] forKey:@"l4r"];
            [resultset setValue:[arrayList1 objectForKey:@"l45l"] forKey:@"l45l"];
            [resultset setValue:[arrayList1 objectForKey:@"l45r"] forKey:@"l45r"];
            [resultset setValue:[arrayList1 objectForKey:@"l4l3"] forKey:@"l4l3"];
            [resultset setValue:[arrayList1 objectForKey:@"l4r3"] forKey:@"l4r3"];
            [resultset setValue:[arrayList1 objectForKey:@"l5l"] forKey:@"l5l"];
            [resultset setValue:[arrayList1 objectForKey:@"l5r"] forKey:@"l5r"];
            [resultset setValue:[arrayList1 objectForKey:@"l55l"] forKey:@"l55l"];
            [resultset setValue:[arrayList1 objectForKey:@"l55r"] forKey:@"l55r"];
            [resultset setValue:[arrayList1 objectForKey:@"l5l3"] forKey:@"l5l3"];
            [resultset setValue:[arrayList1 objectForKey:@"l5r3"] forKey:@"l5r3"];
            [resultset setValue:[arrayList1 objectForKey:@"sl"] forKey:@"sl"];
            [resultset setValue:[arrayList1 objectForKey:@"sr"] forKey:@"sr"];
            [resultset setValue:[arrayList1 objectForKey:@"s5l"] forKey:@"s5l"];
            [resultset setValue:[arrayList1 objectForKey:@"s5r"] forKey:@"s5r"];
            [resultset setValue:[arrayList1 objectForKey:@"sil"] forKey:@"sil"];
            [resultset setValue:[arrayList1 objectForKey:@"sir"] forKey:@"sir"];
            [resultset setValue:[arrayList1 objectForKey:@"sitting"] forKey:@"sitting"];
            [resultset setValue:[arrayList1 objectForKey:@"lifting"] forKey:@"lifting"];
            [resultset setValue:[arrayList1 objectForKey:@"walking"] forKey:@"walking"];
            [resultset setValue:[arrayList1 objectForKey:@"standing"] forKey:@"standing"];
            [resultset setValue:[arrayList1 objectForKey:@"stairs"] forKey:@"stairs"];
            [resultset setValue:[arrayList1 objectForKey:@"otherfunctional"] forKey:@"otherfunctional"];
            [resultset setValue:[arrayList1 objectForKey:@"break_text3"] forKey:@"break_text3"];
            [resultset setValue:[arrayList1 objectForKey:@"assessment"] forKey:@"assessment"];
            [resultset setValue:[arrayList1 objectForKey:@"patientstatus"] forKey:@"patientstatus"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis1"] forKey:@"diagnosis1"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis2"] forKey:@"diagnosis2"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis3"] forKey:@"diagnosis3"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis4"] forKey:@"diagnosis4"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis5"] forKey:@"diagnosis5"];
            [resultset setValue:[arrayList1 objectForKey:@"times"] forKey:@"times"];
            [resultset setValue:[arrayList1 objectForKey:@"week"] forKey:@"week"];
            [resultset setValue:[arrayList1 objectForKey:@"spinal"] forKey:@"spinal"];
            [resultset setValue:[arrayList1 objectForKey:@"chiropractic"] forKey:@"chiropractic"];
            [resultset setValue:[arrayList1 objectForKey:@"physical"] forKey:@"physical"];
            [resultset setValue:[arrayList1 objectForKey:@"orthotics"] forKey:@"orthotics"];
            [resultset setValue:[arrayList1 objectForKey:@"modalities"] forKey:@"modalities"];
            [resultset setValue:[arrayList1 objectForKey:@"supplementation"] forKey:@"supplementation"];
            [resultset setValue:[arrayList1 objectForKey:@"hep"] forKey:@"hep"];
            [resultset setValue:[arrayList1 objectForKey:@"radiographic"] forKey:@"radiographic"];
            [resultset setValue:[arrayList1 objectForKey:@"mri"] forKey:@"mri"];
            [resultset setValue:[arrayList1 objectForKey:@"ctscan"] forKey:@"ctscan"];
            [resultset setValue:[arrayList1 objectForKey:@"nerve"] forKey:@"nerve"];
            [resultset setValue:[arrayList1 objectForKey:@"emg"] forKey:@"emg"];
            [resultset setValue:[arrayList1 objectForKey:@"outside"] forKey:@"outside"];
            [resultset setValue:[arrayList1 objectForKey:@"dc"] forKey:@"dc"];
            [resultset setValue:[arrayList1 objectForKey:@"otheraddress"] forKey:@"otheraddress"];
            [resultset setValue:[arrayList1 objectForKey:@"break_text4"] forKey:@"break_text4"];
            [resultset setValue:[arrayList1 objectForKey:@"sign"] forKey:@"sign"];
            
            
            
            
            patientname.text=temp1;
            date.text=temp2;
            lefoth.text=temp10;
            rigoth.text=temp13;
            othernotes .text=temp23;
            flexion.text=temp27;
            extension.text=temp32;
            lateralL.text=temp37;
            lateralR.text=temp38;
            rotationL.text=temp43;
            rotationR.text=temp44;
            T8_9.text=temp28;
            T9_10.text=temp29;
            T10_11.text=temp33;
            T11_12.text=temp34;
            T12_L1.text=temp39;
            L1_2.text=temp40;
            L2_3.text=temp45;
            L3_4.text=temp46;
            L4_5.text=temp49;
            L5_SI.text=temp50;
            LSI.text=temp53;
            RSI.text=temp54;
            trendL.text=temp30;
            trendR.text=temp31;
            kempL.text=temp35;
            kempR.text=temp36;
            slumpL.text= temp41;
            slumpR.text=temp42;
            straightlegL .text= temp47;
            straightlegR.text=temp48;
            welllegL.text =temp51;
            welllegR.text =temp52;
            nachelsL.text=temp55;
            nachelsR.text =temp56;
            positive.text =temp57;
            positive_adam.text =temp58;
            L1L.text=[resultset objectForKey:@"l1l"];
            L1R.text=[resultset objectForKey:@"l1r"];
            L2L.text=[resultset objectForKey:@"l2r"];
            L2R.text=[resultset objectForKey:@"l2r"];
            L3L .text=[resultset objectForKey:@"l3r"];
            L3RR.text=[resultset objectForKey:@"l3r"];
            L4L.text=[resultset objectForKey:@"l4r"];
            L4R.text=[resultset objectForKey:@"l4r"];
            L5L.text=[resultset objectForKey:@"l5r"];
            L5R.text=[resultset objectForKey:@"l5r"];
            SIL.text=[resultset objectForKey:@"sl"];
            SIR.text=[resultset objectForKey:@"sr"];
            
            
            if ([temp8 isEqualToString:@"Left"]) {
                leftbut.selected=YES;
                [leftbut setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"Left" forKey:@"leftsegment"];
                leftseg.hidden=NO;
                
            }
            else
            {
                leftbut.selected=NO;
                [leftbut setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"null" forKey:@"leftsegment"];
                leftseg.hidden=YES;
                
            }
            if ([temp9 isEqualToString:@"1/8"] ) {
                [leftseg setSelectedSegmentIndex:0];
                left=@"1/8";
            }
            else if ([temp9 isEqualToString:@"1/4"] ) {
                [leftseg setSelectedSegmentIndex:1];
                left=@"1/4";
            }
            else if ([temp9 isEqualToString:@"3/8"] ) {
                [leftseg setSelectedSegmentIndex:2];
                left=@"3/8";
            }
            else if ([temp9 isEqualToString:@"1/2"] ) {
                [leftseg setSelectedSegmentIndex:9];
                left=@"1/2";
            }
            else if ([temp9 isEqualToString:@"5/8"] ) {
                [leftseg setSelectedSegmentIndex:4];
                left=@"5/8";
            }
            else if ([temp9 isEqualToString:@"3/4"] ) {
                [leftseg setSelectedSegmentIndex:5];
                left=@"3/4";
            }
            else if ([temp9 isEqualToString:@"7/8"] ) {
                [leftseg setSelectedSegmentIndex:6];
                left=@"7/8";
            }
            
            if ([temp9 isEqualToString:@"1"] ) {
                [leftseg setSelectedSegmentIndex:7];
                left=@"1";
            }
            else if ([temp9 isEqualToString:@"other"] ) {
                [leftseg setSelectedSegmentIndex:8];
                left=@"other";
                lefoth.hidden=NO;
                
            }
            if ([temp11 isEqualToString:@"Right"]) {
                rightbut.selected=YES;
                [rightbut setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
                rightseg.hidden=NO        ;
                [recorddict setValue:@"Right" forKey:@"rightsegment"];
                
                
            }
            else
            {
                rightbut.selected=NO;
                rightseg.hidden=YES;
                [rightbut setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"null" forKey:@"rightsegment"];
                
                
            }
            
            
            if ([temp12 isEqualToString:@"1/8"] ) {
                [rightseg setSelectedSegmentIndex:0];
                right=@"1/8";
            }
            else if ([temp12 isEqualToString:@"1/4"] ) {
                [rightseg setSelectedSegmentIndex:1];
                right=@"1/4";
            }
            else if ([temp12 isEqualToString:@"3/8"] ) {
                [rightseg setSelectedSegmentIndex:2];
                right=@"3/8";
            }
            else if ([temp12 isEqualToString:@"1/2"] ) {
                [rightseg setSelectedSegmentIndex:12];
                right=@"1/2";
            }
            else if ([temp12 isEqualToString:@"5/8"] ) {
                [rightseg setSelectedSegmentIndex:4];
                right=@"5/8";
            }
            else if ([temp12 isEqualToString:@"3/4"] ) {
                [rightseg setSelectedSegmentIndex:5];
                right=@"3/4";
            }
            else if ([temp12 isEqualToString:@"7/8"] ) {
                [rightseg setSelectedSegmentIndex:6];
                right=@"7/8";
            }
            
            if ([temp12 isEqualToString:@"1"] ) {
                [rightseg setSelectedSegmentIndex:7];
                right=@"1";
            }
            else if ([temp12 isEqualToString:@"other"] ) {
                [rightseg setSelectedSegmentIndex:8];
                right=@"other";
                rigoth.hidden=NO;
            }
            if ([temp7 isEqualToString:@"All Soft Tissue Unremarkable"]) {
                PALPATION.selected=YES;
                [PALPATION setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"All Soft Tissue Unremarkable " forKey:@"palpation un"];
                
            }
            else
            {
                PALPATION.selected=NO;
                [PALPATION setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"null" forKey:@"palpation un"];
                
                
            }
            if ([temp24 isEqualToString:@"Unremarkable"]) {
                FUNCTIONAL.selected=YES;
                [FUNCTIONAL setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"Unremarkable" forKey:@"functional un"];
                
            }
            else
            {
                FUNCTIONAL.selected=NO;
                [FUNCTIONAL setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"null" forKey:@"functional un"];
            }
            
            if ([temp26 isEqualToString:@"Unremarkable"]) {
                ORTHO.selected=YES;
                [ORTHO setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"Unremarkable" forKey:@"sublex un"];
            }
            else
            {
                ORTHO.selected=NO;
                [ORTHO setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"null" forKey:@"sublex un"];
            }
            if ([temp25 isEqualToString:@"Unremarkable"]) {
                SUBLUX.selected=YES;
                [SUBLUX setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"Unremarkable" forKey:@"orthopedic un"];
                
            }
            else
            {
                SUBLUX.selected=NO;
                [SUBLUX setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"null" forKey:@"orthopedic un"];
            }
            
            if ([temp59 isEqualToString:@"Unremarkable"]) {
                NEURO.selected=YES;
                [NEURO setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"Unremarkable" forKey:@"neuro un"];
            }
            else
            {
                NEURO.selected=NO;
                [NEURO setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [recorddict setValue:@"null" forKey:@"neuro un"];
            }
            if ([temp6 isEqualToString:@"Excellent"] ) {
                [segmentSwitch setSelectedSegmentIndex:0];
                AO=@"Excellent";
            }
            else if ([temp6 isEqualToString:@"Good"] ) {
                [segmentSwitch setSelectedSegmentIndex:1];
                AO=@"Good";
            }
            else if ([temp6 isEqualToString:@"Fair"] ) {
                [segmentSwitch setSelectedSegmentIndex:2];
                AO=@"Fair";
            }
            else if ([temp6 isEqualToString:@"Severe"] ) {
                [segmentSwitch setSelectedSegmentIndex:3];
                AO=@"Severe";
            }
            if ([temp4 isEqualToString:@"None"] ) {
                [pelvicseg setSelectedSegmentIndex:0];
                selectpelvic=@"None";
            }
            else if ([temp4 isEqualToString:@"Superior illiac Crest right"] ) {
                [pelvicseg setSelectedSegmentIndex:1];
                selectpelvic=@"Superior illiac Crest right";
            }
            else if ([temp4 isEqualToString:@"Superior illiac Crest left"] ) {
                [pelvicseg setSelectedSegmentIndex:2];
                selectpelvic=@"Superior illiac Crest left";
            }
            
            if ([temp3 isEqualToString:@"Normal"] ) {
                [gaitseg setSelectedSegmentIndex:0];
                selectgait=@"Excellent";
            }
            else if ([temp3 isEqualToString:@"Antalogic"] ) {
                [gaitseg setSelectedSegmentIndex:1];
                selectgait=@"Good";
            }
            else if ([temp3 isEqualToString:@"Shuffling"] ) {
                [gaitseg setSelectedSegmentIndex:2];
                selectgait=@"Fair";
            }
            else if ([temp3 isEqualToString:@"Limp"] ) {
                [gaitseg setSelectedSegmentIndex:3];
                selectgait=@"Good";
            }
            else if ([temp3 isEqualToString:@"Stagger"] ) {
                [gaitseg setSelectedSegmentIndex:4];
                selectgait=@"Fair";
            }
            else if ([temp3 isEqualToString:@"Cane assisted"] ) {
                [gaitseg setSelectedSegmentIndex:5];
                selectgait=@"Good";
            }
            else if ([temp3 isEqualToString:@"Wheelchair"] ) {
                [gaitseg setSelectedSegmentIndex:6];
                selectgait=@"Fair";
            }
            
            
            
            if ([temp14 isEqualToString:@"Left"] ) {
                [piri setSelectedSegmentIndex:0];
                Piriforms=@"Left";
            }
            else if ([temp14 isEqualToString:@"Right"] ) {
                [piri setSelectedSegmentIndex:1];
                Piriforms=@"Right";
            }
            else
            {
                [piri setSelectedSegmentIndex:UISegmentedControlNoSegment];
                Piriforms=@"null";
            }
            if ([temp15 isEqualToString:@"Left"] ) {
                [quad setSelectedSegmentIndex:0];
                QuadLumb=@"Left";
            }
            else if ([temp15 isEqualToString:@"Right"] ) {
                [quad setSelectedSegmentIndex:1];
                QuadLumb=@"Right";
            }
            else
            {
                [quad setSelectedSegmentIndex:UISegmentedControlNoSegment];
                QuadLumb=@"null";
            }
            
            
            if ([temp16 isEqualToString:@"Left"] ) {
                [para setSelectedSegmentIndex:0];
                Paraspinals=@"Left";
            }
            else if ([temp16 isEqualToString:@"Right"] ) {
                [para setSelectedSegmentIndex:1];
                Paraspinals=@"Right";
            }
            else
            {
                [para setSelectedSegmentIndex:UISegmentedControlNoSegment];
                Paraspinals=@"null";
            }
            
            if ([temp17 isEqualToString:@"Left"] ) {
                [glu setSelectedSegmentIndex:0];
                GluteusMaximus=@"Left";
            }
            else if ([temp17 isEqualToString:@"Right"] ) {
                [glu setSelectedSegmentIndex:1];
                GluteusMaximus=@"Right";
            }
            else
            {
                [glu setSelectedSegmentIndex:UISegmentedControlNoSegment];
                GluteusMaximus=@"null";
            }
            if ([temp18 isEqualToString:@"Left"] ) {
                [glutes setSelectedSegmentIndex:0];
                GluteusMedius=@"Left";
            }
            else if ([temp18 isEqualToString:@"Right"] ) {
                [glutes setSelectedSegmentIndex:1];
                GluteusMedius=@"Right";
            }
            else
            {
                [glutes setSelectedSegmentIndex:UISegmentedControlNoSegment];
                GluteusMedius=@"null";
            }
            
            if ([temp19 isEqualToString:@"Left"] ) {
                [ham setSelectedSegmentIndex:0];
                Hamstrings=@"Left";
            }
            else if ([temp19 isEqualToString:@"Right"] ) {
                [ham setSelectedSegmentIndex:1];
                Hamstrings=@"Right";
            }
            else
            {
                [ham setSelectedSegmentIndex:UISegmentedControlNoSegment];
                Hamstrings=@"null";
            }
            if ([temp20 isEqualToString:@"Left"] ) {
                [lli setSelectedSegmentIndex:0];
                lliopsoas=@"Left";
            }
            else if ([temp20 isEqualToString:@"Right"] ) {
                [lli setSelectedSegmentIndex:1];
                lliopsoas=@"Right";
            }
            else
            {
                [lli setSelectedSegmentIndex:UISegmentedControlNoSegment];
                lliopsoas=@"null";
            }
            
            if ([temp21 isEqualToString:@"Left"] ) {
                [rect setSelectedSegmentIndex:0];
                RectusAbdominis=@"Left";
            }
            else if ([temp21 isEqualToString:@"Right"] ) {
                [rect setSelectedSegmentIndex:1];
                RectusAbdominis=@"Right";
            }
            else
            {
                [rect setSelectedSegmentIndex:UISegmentedControlNoSegment];
                RectusAbdominis=@"null";
            }
            
            if ([temp22 isEqualToString:@"Left"] ) {
                [obli setSelectedSegmentIndex:0];
                Obliques=@"Left";
            }
            else if ([temp22 isEqualToString:@"Right"] ) {
                [obli setSelectedSegmentIndex:1];
                Obliques=@"Right";
            }
            else
            {
                [obli setSelectedSegmentIndex:UISegmentedControlNoSegment];
                Obliques=@"null";
            }
            
            
        }
    }
    
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Lumbopelvic.php?service=lumbopelvicselect";
    
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
    // NSLog(@"data %@",data);
    
    return data;
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    c=0;
}



- (IBAction)selectgait:(id)sender {
    // UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    //  NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    if (gaitseg.selectedSegmentIndex == 0)
    {
        selectgait=@"Normal";
    }
    else if(gaitseg.selectedSegmentIndex ==1)
    {
        selectgait=@"Antalgic";
    }
    else if (gaitseg.selectedSegmentIndex  == 2)
    {
        selectgait=@"Shuffling";
    }
    else if(gaitseg.selectedSegmentIndex ==3)
    {
        selectgait=@"Limp";
        
    }
    else if (gaitseg.selectedSegmentIndex  == 4)
    {
        selectgait=@"Stagger";
        
    }
    else if(gaitseg.selectedSegmentIndex ==5)
    {
        selectgait=@"Cane Assisted";
        
    }
    else if (gaitseg.selectedSegmentIndex  == 6)
    {
        selectgait=@"Wheel Chair";
        
    }
}
- (IBAction)pelvic:(id)sender
{
    if (pelvicseg.selectedSegmentIndex==0)
    {
        selectpelvic=@"None";
        
    }
    else if (pelvicseg.selectedSegmentIndex==1)
    {
        selectpelvic=@"Superior illiac Crest right";
    }
    else if (pelvicseg.selectedSegmentIndex==2)
    {
        selectpelvic=@"Superior illiac Crest left";
    }
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    /* [PALPATION release];
     [FUNCTIONAL release];
     [SUBLUX release];
     [ORTHO release];
     [NEURO release];
     
     
     [piri release];
     [glu release];
     [lli release];
     [quad release];
     [glutes release];
     [rect release];
     [para release];
     [ham release];
     [obli release];
     [piri release];
     [glu release];
     [lli release];
     [quad release];
     [glutes release];
     [rect release];
     [para release];
     [ham release];
     [obli release];
     [gait release];
     [gait release];
     [selectgait release];
     [selectpelvic release];
     [selectpelvic release];
     [pelvic release];
     [pelvic release];
     
     [date release];
     [leftseg release];
     [rightseg release];
     [lefoth release];
     [rigoth release];
     
     [leftbut release];
     [rightbut release];*/
    
    [super dealloc];
}



- (IBAction)reset:(id)sender {
    leftseg.hidden=YES;
    rightseg.hidden=YES;
    lefoth.hidden=YES;
    rigoth.hidden=YES;
    lefoth.text=@"";
    rigoth.text=@"";
    patientname.text=@"";
    date.text=@"";
    othernotes.text=@"";
    flexion.text=@"";
    extension.text=@"";
    lateralL.text=@"";
    lateralR.text=@"";
    rotationL.text=@"";
    rotationR.text=@"";
    T8_9.text=@"";
    T10_11.text=@"";
    T12_L1.text=@"";
    L2_3.text=@"";
    L4_5.text=@"";
    LSI.text=@"";
    T9_10.text=@"";
    T11_12.text=@"";
    L1_2.text=@"";
    L3_4.text=@"";
    L5_SI.text=@"";
    RSI.text=@"";
    trendL.text=@"";
    trendR.text=@"";
    kempL.text=@"";
    kempR.text=@"";
    slumpL.text=@"";
    slumpR.text=@"";
    straightlegL.text=@"";
    straightlegR.text=@"";
    welllegL.text=@"";
    welllegR.text=@"";
    nachelsL.text=@"";
    nachelsR.text=@"";
    positive.text=@"";
    positive_adam.text=@"";
    L1L.text=@"";
    L1R.text=@"";
    L2L.text=@"";
    L2R.text=@"";
    L3L.text=@"";
    L3RR.text=@"";
    L4L.text=@"";
    L4R.text=@"";
    L5L.text=@"";
    L5R.text=@"";
    SIL.text=@"";
    gaitseg.selectedSegmentIndex=0;
    pelvicseg.selectedSegmentIndex=0;
    selectpelvic=@"None";
    AO=@"Excellent";
    segmentSwitch.selectedSegmentIndex=0;
    piri.selectedSegmentIndex=0;
    glu.selectedSegmentIndex=0;
    lli.selectedSegmentIndex=0;
    quad.selectedSegmentIndex=0;
    glutes.selectedSegmentIndex=0;
    rect.selectedSegmentIndex=0;
    para.selectedSegmentIndex=0;
    ham.selectedSegmentIndex=0;
    obli.selectedSegmentIndex=0;
    [piri setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [glu setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [lli setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [quad setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [glutes setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [rect setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [para setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ham setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [obli setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    PALPATION.selected=NO;
    leftbut.selected=NO;
    rightbut.selected=NO;
    FUNCTIONAL.selected=NO;
    SUBLUX.selected=NO;
    ORTHO.selected=NO;
    NEURO.selected=NO;
    [leftbut setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [rightbut setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [PALPATION setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [FUNCTIONAL setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [SUBLUX setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [ORTHO setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [NEURO setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    //[button8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    //[button9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    
    selectgait=@"Normal";
    SIR.text=@"";
    
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
    
    // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
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
