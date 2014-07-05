//
//  shoulderViewController.m
//  shoulder
//
//  Created by deemsys on 2/24/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "shoulderViewController.h"
#import "shoulder1ViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "hamilViewController.h"
#import "databaseurl.h"
@interface shoulderViewController ()
{
    databaseurl *du;
}
@end

@implementation shoulderViewController
@synthesize resultset;
@synthesize patientname;
@synthesize date;
@synthesize muscle;
@synthesize swelling;
@synthesize ao;
@synthesize pectoralisminor;
@synthesize teresminor;
@synthesize supraspinatus;
@synthesize teresmajor;
@synthesize infraspinatus;
@synthesize  rhomboids;
@synthesize  serratusant;
@synthesize trapezius;
@synthesize palpation;
@synthesize rangeofmotion;
@synthesize orthotesting;
@synthesize neurological;
@synthesize flexionleft;
@synthesize flexionright;
@synthesize extensionleft;
@synthesize extensionright;
@synthesize abductionleft;
@synthesize abductionright;
@synthesize adductionleft;
@synthesize adductionright;
@synthesize internalleft;
@synthesize internalright;
@synthesize externalleft;
@synthesize externalright;
@synthesize canleft;
@synthesize canright;
@synthesize signleft;
@synthesize signright;
@synthesize scratchleft;
@synthesize scratchright;
@synthesize pushleft;
@synthesize pushright;
@synthesize dawbarnleft;
@synthesize dawbarnright;
@synthesize yergasonleft;
@synthesize yergasonright;
@synthesize codmanleft;
@synthesize codmanright;
@synthesize apprehensionleft;
@synthesize apprehensionright;
@synthesize c5left;
@synthesize c5right;
@synthesize c6left;
@synthesize c6right;
@synthesize c7left;
@synthesize c7right;
@synthesize c8left;
@synthesize c8right;
@synthesize t1left;
@synthesize t1right;
@synthesize mc5left;
@synthesize mc5right;
@synthesize mc6left;
@synthesize mc6right;
@synthesize mc7left;
@synthesize mc7right;
@synthesize mc8left;
@synthesize mc8right;
@synthesize mt1left;
@synthesize mt1right;
@synthesize recorddict;
@synthesize notes;

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


- (IBAction)ao:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        aolabel=@"Excellent";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        aolabel=@"Good";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        aolabel=@"Fair";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        aolabel=@"Severe";
    }
    
}
- (IBAction)pectoralisminor:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        pectoralisminorlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        pectoralisminorlabel=@"Right";
    }
}
- (IBAction)teresminor:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        teresminorlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        teresminorlabel=@"Right";
    }
    
}
- (IBAction)supraspinatus:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        supraspinatuslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        supraspinatuslabel=@"Right";
    }
    
}
- (IBAction)teresmajor:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        teresmajorlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        teresmajorlabel=@"Right";
    }
}
- (IBAction)infraspinatus:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        infraspinatuslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        infraspinatuslabel=@"Right";
    }
    
}
- (IBAction)rhomboids:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rhomboidslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rhomboidslabel=@"Right";
    }
    
}
- (IBAction)serratusant:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        serratusantlabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        serratusantlabel=@"Right";
    }
    
}
- (IBAction)trapezius:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        trapeziuslabel=@"Left";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        trapeziuslabel=@"Right";
    }
    
}
-(BOOL)validateNumber:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbersfield:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]+";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)checkboxselected:(UIButton *)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
    //[(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    //[(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames2:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9._/-]+";
    
    //[(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)next:(id)sender {
    recorddict=[[NSMutableDictionary alloc]init];
    a=1;
    temp1 =patientname.text;
    temp2 =muscle.text;
    temp3 =swelling.text;
    temp4 =flexionleft.text;
    temp5 =flexionright.text;
    temp6=extensionleft.text;
    temp7=extensionright.text;
    temp8=abductionleft.text;
    temp9=abductionright.text;
    temp10=adductionleft.text;
    temp11=adductionright.text;
    temp12=internalleft.text;
    temp13=internalright.text;
    temp14=externalleft.text;
    temp15=externalright.text;
    temp16=canleft.text;
    temp17=canright.text;
    temp18=signleft.text;
    temp19=signright.text;
    temp20=scratchleft.text;
    temp21=scratchright.text;
    temp22=pushleft.text;
    temp23=pushright.text;
    temp24=dawbarnleft.text;
    temp25=dawbarnright.text;
    temp26=yergasonleft.text;
    temp27=yergasonright.text;
    temp28=codmanleft.text;
    temp29=codmanright.text;
    temp30=apprehensionleft.text;
    temp31=apprehensionright.text;
    temp32=c5left.text;
    temp33=c5right.text;
    temp34=c6left.text;
    temp35=c6right.text;
    temp36=c7left.text;
    temp37=c7right.text;
    temp38=c8left.text;
    temp39=c8right.text;
    temp40=t1left.text;
    temp41=t1right.text;
    temp42=mc5left.text;
    temp43=mc5right.text;
    temp44=mc6left.text;
    temp45=mc6right.text;
    temp46=mc7left.text;
    temp47=mc7right.text;
    temp48=mc8left.text;
    temp49=mc8right.text;
    temp50=mt1left.text;
    temp51=mt1right.text;
    temp52=notes.text;
    temp52=[temp52 stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    temp52=[temp52 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    temp52=[temp52 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    
    
    if(palpation.selected)
    {
        
        palpationlabel=@"All Soft Tissue Unremarkable";
        
    }
    else
    {
        palpationlabel=@"null";
        
    }
    if(rangeofmotion.selected)
    {
        
        rangeofmotionlabel=@"Unremarkable";
        
    }
    else
    {
        rangeofmotionlabel=@"null";
        
        
    }
    if(orthotesting.selected)
    {
        
        orthotestinglabel=@"Unremarkable";
        
    }
    else
    {
        orthotestinglabel=@"null";
        
    }
    if(neurological.selected)
    {
        
        neurologicallabel=@"Neurological Testing Unremarkable";
        
    }
    else
    {
        neurologicallabel=@"null";
        
        
    }
    [recorddict setValue:palpationlabel forKey:@"palpation"];
    [recorddict setValue:rangeofmotionlabel forKey:@"range"];
    [recorddict  setValue:orthotestinglabel forKey:@"orthotest"];
    [recorddict  setValue:neurologicallabel forKey:@"neurological"];
    if(([temp1 length]!=0)&&
       ([date.text length]!=0))
    {
        if([du patname:temp1]==1)
        {
            if([self validateDate:[date text]]==1)
            {
                if((([temp2 length]>0)&&([du otherfields:temp2]==1))||([temp2 length]==0))
                {
                    if((([temp3 length]>0)&&([du otherfields:temp3 ]==1))||([temp3 length]==0))
                    {
                        if((([temp52 length]>0)&&([du comments:temp52]==1))||([temp52 length]==0))
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
                                                                                                                                                                                if((([temp41 length]>0)&&([du date:temp41 ]==1))||([temp41 length]==0))
                                                                                                                                                                                {
                                                                                                                                                                                    if((([temp42 length]>0)&&([du byfive:temp42]==1))||([temp42 length]==0))
                                                                                                                                                                                    {
                                                                                                                                                                                        if((([temp43 length]>0)&&([du byfive:temp43 ]==1))||([temp43 length]==0))
                                                                                                                                                                                        {
                                                                                                                                                                                            if((([temp44 length]>0)&&([du byfive:temp44]==1))||([temp44 length]==0))
                                                                                                                                                                                            {
                                                                                                                                                                                                if((([temp45 length]>0)&&([du byfive:temp45]==1))||([temp45 length]==0))
                                                                                                                                                                                                {
                                                                                                                                                                                                    if((([temp46 length]>0)&&([du byfive:temp46]==1))||([temp46 length]==0))
                                                                                                                                                                                                    {
                                                                                                                                                                                                        if((([temp47 length]>0)&&([du byfive:temp47 ]==1))||([temp47 length]==0))
                                                                                                                                                                                                        {
                                                                                                                                                                                                            if((([temp48 length]>0)&&([du byfive:temp48]==1))||([temp48 length]==0))
                                                                                                                                                                                                            {
                                                                                                                                                                                                                if((([temp49 length]>0)&&([du byfive:temp49 ]==1))||([temp49 length]==0))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    if((([temp50 length]>0)&&([du byfive:temp50]==1))||([temp50 length]==0))
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        if((([temp51 length]>0)&&([du byfive:temp51]==1))||([temp51 length]==0))
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            [recorddict setValue:patientname.text forKey:@"patientname"];
                                                                                                                                                                                                                            [recorddict setValue:date.text forKey:@"date"];
                                                                                                                                                                                                                            [recorddict setValue:flexionleft.text forKey:@"flexionleft"];
                                                                                                                                                                                                                            [recorddict setValue:flexionright.text forKey:@"flexionright"];
                                                                                                                                                                                                                            [recorddict setValue: extensionleft.text forKey:@"extensionleft"];
                                                                                                                                                                                                                            [recorddict setValue:extensionright.text forKey:@"extensionright"];
                                                                                                                                                                                                                            [recorddict setValue:abductionleft.text forKey:@"abductionleft"];
                                                                                                                                                                                                                            [recorddict setValue:abductionright.text forKey:@"abdutionright"];
                                                                                                                                                                                                                            [recorddict setValue:adductionleft.text forKey:@"adductionleft"];
                                                                                                                                                                                                                            [recorddict setValue:adductionright.text forKey:@"adductionright"];
                                                                                                                                                                                                                            [recorddict setValue:internalleft.text forKey:@"internalleft"];
                                                                                                                                                                                                                            [recorddict setValue:internalright.text forKey:@"internalright"];
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            [recorddict setValue:externalleft.text forKey:@"externalleft"];
                                                                                                                                                                                                                            [recorddict setValue:externalright.text forKey:@"externalright"];
                                                                                                                                                                                                                            [recorddict setValue:canleft.text forKey:@"canleft"];
                                                                                                                                                                                                                            [recorddict setValue:canright.text forKey:@"canright"];
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            [recorddict setValue:signleft.text forKey:@"signleft"];
                                                                                                                                                                                                                            [recorddict setValue:signright.text forKey:@"signright"];
                                                                                                                                                                                                                            [recorddict setValue:scratchleft.text forKey:@"scratchleft"];
                                                                                                                                                                                                                            [recorddict setValue:scratchright.text forKey:@"scratchright"];
                                                                                                                                                                                                                            [recorddict setValue:pushleft.text forKey:@"pushleft"];
                                                                                                                                                                                                                            [recorddict setValue:pushright.text forKey:@"pushright"];
                                                                                                                                                                                                                            [recorddict setValue:dawbarnleft.text forKey:@"dawbarnleft"];
                                                                                                                                                                                                                            [recorddict setValue:dawbarnright.text forKey:@"dawbarnright"];
                                                                                                                                                                                                                            [recorddict setValue:yergasonleft.text forKey:@"yergasonleft"];
                                                                                                                                                                                                                            [recorddict setValue:yergasonright.text forKey:@"yergasonright"];
                                                                                                                                                                                                                            [recorddict setValue:codmanleft.text forKey:@"codmanleft"];
                                                                                                                                                                                                                            [recorddict setValue:codmanright.text forKey:@"codmanright"];
                                                                                                                                                                                                                            [recorddict setValue:apprehensionleft.text forKey:@"apprehensionleft"];
                                                                                                                                                                                                                            [recorddict setValue:apprehensionright.text forKey:@"apprehensionright"];
                                                                                                                                                                                                                            [recorddict setValue:c5left.text forKey:@"c5left"];
                                                                                                                                                                                                                            [recorddict setValue:c5right.text forKey:@"c5right"];
                                                                                                                                                                                                                            [recorddict setValue:c6left.text forKey:@"c6left"];
                                                                                                                                                                                                                            [recorddict setValue:c6right.text forKey:@"c6right"];
                                                                                                                                                                                                                            [recorddict setValue:c7left.text forKey:@"c7left"];
                                                                                                                                                                                                                            [recorddict setValue:c7right.text forKey:@"c7right"];
                                                                                                                                                                                                                            [recorddict setValue:c8left.text forKey:@"c8left"];
                                                                                                                                                                                                                            [recorddict setValue:c8right.text forKey:@"c8right"];
                                                                                                                                                                                                                            [recorddict setValue:t1left.text forKey:@"t1left"];
                                                                                                                                                                                                                            [recorddict setValue:t1right.text forKey:@"t1right"];
                                                                                                                                                                                                                            [recorddict setValue:mc5left.text forKey:@"mc5left"];
                                                                                                                                                                                                                            [recorddict setValue:mc5right.text forKey:@"mc5right"];
                                                                                                                                                                                                                            [recorddict setValue:mc6left.text forKey:@"mc6left"];
                                                                                                                                                                                                                            [recorddict setValue:mc6right.text forKey:@"mc6right"];
                                                                                                                                                                                                                            [recorddict setValue:mc7left.text forKey:@"mc7left"];
                                                                                                                                                                                                                            [recorddict setValue:mc7right.text forKey:@"mc7right"];
                                                                                                                                                                                                                            [recorddict setValue:mc8left.text forKey:@"mc8left"];
                                                                                                                                                                                                                            [recorddict setValue:mc8right.text forKey:@"mc8right"];
                                                                                                                                                                                                                            [recorddict setValue:mt1left.text forKey:@"mt1left"];
                                                                                                                                                                                                                            [recorddict setValue:mt1right.text forKey:@"mt1right"];
                                                                                                                                                                                                                            [recorddict setValue:notes.text forKey:@"notes"];
                                                                                                                                                                                                                            [recorddict setValue:muscle.text forKey:@"muscle"];
                                                                                                                                                                                                                            [recorddict setValue:swelling.text forKey:@"swelling"];
                                                                                                                                                                                                                            [recorddict setValue:aolabel  forKey:@"ao"];
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            [recorddict setValue:pectoralisminorlabel forKey:@"pectoralisminor"];
                                                                                                                                                                                                                            [recorddict setValue:teresminorlabel forKey:@"tereminorlabel"];
                                                                                                                                                                                                                            [recorddict setValue:supraspinatuslabel forKey:@"suprapinatuslabel"];
                                                                                                                                                                                                                            [recorddict setValue:teresmajorlabel forKey:@"teremajor"];
                                                                                                                                                                                                                            [recorddict setValue:infraspinatuslabel forKey:@"infraspinatus"];
                                                                                                                                                                                                                            [recorddict setValue:rhomboidslabel forKey:@"rhomboids"];
                                                                                                                                                                                                                            [recorddict setValue:serratusantlabel forKey:@"serratudant"];
                                                                                                                                                                                                                            [recorddict setValue:trapeziuslabel forKey:@"trapezius"];
                                                                                                                                                                                                                            //                                                                                                                                                                                                                        NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                                                                                                                                            if(a==1)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                [self performSegueWithIdentifier:@"shoulder1" sender:self];
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            a=0;
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                           description:@"Please enter valid mt1 right."
                                                                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        a=0;
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                       description:@"Please enter valid mt1 left."
                                                                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                                
                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                   description:@"Please enter valid mc8 right."
                                                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                                a=0;
                                                                                                                                                                                                                
                                                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                               description:@"Please enter valid mc8 left."
                                                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                                                
                                                                                                                                                                                                                
                                                                                                                                                                                                                
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                        
                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                            a=0;
                                                                                                                                                                                                            
                                                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                           description:@"Please enter valid mc7 right."
                                                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                                                            
                                                                                                                                                                                                            
                                                                                                                                                                                                            
                                                                                                                                                                                                            
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                    
                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                        a=0;
                                                                                                                                                                                                        
                                                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                       description:@"Please enter valid mc7 left."
                                                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                                
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                    
                                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                   description:@"Please enter valid mc6 right."
                                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                            
                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                                a=0;
                                                                                                                                                                                                
                                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                               description:@"Please enter valid mc6 left."
                                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                                
                                                                                                                                                                                                
                                                                                                                                                                                                
                                                                                                                                                                                                
                                                                                                                                                                                                
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                        
                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                            a=0;
                                                                                                                                                                                            
                                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                           description:@"Please enter valid mc5 right."
                                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                                            
                                                                                                                                                                                            
                                                                                                                                                                                            
                                                                                                                                                                                            
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                    
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                        a=0;
                                                                                                                                                                                        
                                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                       description:@"Please enter valid mc5 left."
                                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                    a=0;
                                                                                                                                                                                    
                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                   description:@"Please enter valid t1 right."
                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                    
                                                                                                                                                                                    
                                                                                                                                                                                    
                                                                                                                                                                                    
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                            
                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                                a=0;
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                               description:@"Please enter valid t1 left."
                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                        
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                            a=0;
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                           description:@"Please enter valid c8 right."
                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                    
                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                        a=0;
                                                                                                                                                                        
                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                       description:@"Please enter valid c8 left."
                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                                
                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                    a=0;
                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                   description:@"Please enter valid c7 right."
                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                            
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                                a=0;
                                                                                                                                                                
                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                               description:@"Please enter valid c7 left."
                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                            a=0;
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                           description:@"Please enter valid c6 right."
                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                              callback:nil];
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                    
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        a=0;
                                                                                                                                                        
                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                       description:@"Please enter valid c6 left."
                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                          callback:nil];
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                                
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    a=0;
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                   description:@"Please enter valid c5 right."
                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                      callback:nil];
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                a=0;
                                                                                                                                                
                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                               description:@"Please enter valid c5 left."
                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                  callback:nil];
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            a=0;
                                                                                                                                            
                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                           description:@"Please enter valid apprehension right."
                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                              callback:nil];
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        a=0;
                                                                                                                                        
                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                       description:@"Please enter valid apprehension left."
                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                          callback:nil];
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    a=0;
                                                                                                                                    
                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                   description:@"Please enter valid codman right."
                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                      callback:nil];
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                            }
                                                                                                                            
                                                                                                                            else
                                                                                                                            {
                                                                                                                                a=0;
                                                                                                                                
                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                               description:@"Please enter valid codman left."
                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                  callback:nil];
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                        }
                                                                                                                        
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            
                                                                                                                            
                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                           description:@"Please enter valid yergason right."
                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                              callback:nil];
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                    }
                                                                                                                    
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        
                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                       description:@"Please enter valid yergason left."
                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                          callback:nil];
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                    }
                                                                                                                }
                                                                                                                
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please enter valid dawbarn right."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                            }
                                                                                                            
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please enter valid dawbarn left."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                        }
                                                                                                        
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please enter valid push right."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                    }
                                                                                                    
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please enter valid push left."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                                
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid scratch right."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid scratch left."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                        }
                                                                                        
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid sign right"
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid sign left."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                }
                                                                                
                                                                                
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid can right."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid can left."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid external right."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid external left."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                
                                                                
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid internal right."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                    
                                                                }
                                                            }
                                                            
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid internal left."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                        }
                                                        
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid adduction right."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                    }
                                                    
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid adduction left."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                    }
                                                }
                                                
                                                else
                                                {
                                                    a=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid abduction right."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                }
                                            }
                                            
                                            else
                                            {
                                                a=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid abduction left."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                            }
                                        }
                                        
                                        else
                                        {
                                            a=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid extension right."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                        }
                                    }
                                    
                                    else
                                    {
                                        a=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid extension left."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                    }
                                }
                                
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid flexion right."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                }
                            }
                            
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid flexion left."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                            }
                        }
                        else{
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid Note."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid swelling/discoloration."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                        
                    }
                }
                
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid muscle symmetry."
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
                                                           description:@"Please enter  valid patient name."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
        }
    }
    
    
    
    
    else
    {
        a=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter all the required fields."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
    }
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"shoulder1"])
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
    
    if ([segue.identifier isEqualToString:@"shoulder1"])
    {
        
        shoulder1ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        NSLog(@"recorddict in shoulder first %@",recorddict);
    }
    
    
}
- (IBAction)reset:(id)sender {
    patientname.text=@"";
    date.text=@"";
    muscle.text=@"";
    swelling.text=@"";
    [ao setSelectedSegmentIndex:0];
    [palpation setSelected:NO];
    palpationlabel=@"";
    [rangeofmotion setSelected:NO];
    rangeofmotionlabel=@"";
    [orthotesting setSelected:NO];
    orthotestinglabel=@"";
    [neurological setSelected:NO];
    neurologicallabel=@"";
    [pectoralisminor setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [teresminor setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [teresmajor setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [supraspinatus setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [infraspinatus setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [rhomboids setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [serratusant setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [trapezius setSelectedSegmentIndex:UISegmentedControlNoSegment];
    aolabel=@"Excellent";
    pectoralisminorlabel=@"null";
    teresmajorlabel=@"null";
    teresminorlabel=@"null";
    supraspinatuslabel=@"null";
    infraspinatuslabel=@"null";
    rhomboidslabel=@"null";
    serratusantlabel=@"null";
    trapeziuslabel=@"null";
    [palpation setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [rangeofmotion setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [orthotesting setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [neurological setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    flexionleft.text=@"";
    flexionright.text=@"";
    extensionleft.text=@"";
    extensionright.text=@"";
    abductionleft.text=@"";
    abductionright.text=@"";
    adductionleft.text=@"";
    adductionright.text=@"";
    internalleft.text=@"";
    internalright.text=@"";
    externalleft.text=@"";
    externalright.text=@"";
    canleft.text=@"";
    canright.text=@"";
    signleft.text=@"";
    signright.text=@"";
    scratchleft.text=@"";
    scratchright.text=@"";
    pushleft.text=@"";
    pushright.text=@"";
    dawbarnleft.text=@"";
    dawbarnright.text=@"";
    yergasonleft.text=@"";
    yergasonright.text=@"";
    codmanleft.text=@"";
    codmanright.text=@"";
    apprehensionleft.text=@"";
    apprehensionright.text=@"";
    c5left.text=@"";
    c5right.text=@"";
    c6left.text=@"";
    c6right.text=@"";
    c7left.text=@"";
    c7right.text =@"";
    c8left.text=@"";
    c8right.text=@"";
    t1left.text=@"";
    t1right.text=@"";
    mc5left.text=@"";
    mc5right.text=@"";
    mc6left.text=@"";
    mc6right.text=@"";
    mc7left.text=@"";
    mc7right.text=@"";
    mc8left.text=@"";
    mc8right.text=@"";
    mt1left.text=@"";
    mt1right.text=@"";
    notes.text=@"";
    
    
    
    
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
    //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    du=[[databaseurl alloc]init];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    
    aolabel=@"Excellent";
    pectoralisminorlabel=@"null";
    teresmajorlabel=@"null";
    teresminorlabel=@"null";
    supraspinatuslabel=@"null";
    infraspinatuslabel=@"null";
    rhomboidslabel=@"null";
    serratusantlabel=@"null";
    trapeziuslabel=@"null";
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
    NSArray *items1App=[itemsApp objectForKey:@"shoulderexamuser List"];
    
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
            
            temp4 =[arrayList1 objectForKey:@"muscle"];
            temp5 =[arrayList1 objectForKey:@"swelling"];
            
            temp6 =[arrayList1 objectForKey:@"ao"];
            temp9=[arrayList1 objectForKey:@"dysfunction"];
            temp10 =[arrayList1 objectForKey:@"pectoralisminor"];
            temp11 =[arrayList1 objectForKey:@"supraspinatus"];
            temp12=[arrayList1 objectForKey:@"infraspinatus"];
            temp13 =[arrayList1 objectForKey:@"serratusant"];
            temp14 =[arrayList1 objectForKey:@"teresminor"];
            temp15=[arrayList1 objectForKey:@"teresmajor"];
            temp16=[arrayList1 objectForKey:@"rhomboids"];
            temp17=[arrayList1 objectForKey:@"trapezius"];
            
            temp19=[arrayList1 objectForKey:@"note"];
            temp20=[arrayList1 objectForKey:@"functional"];
            temp21 =[arrayList1 objectForKey:@"orthopedic"];
            temp22 =[arrayList1 objectForKey:@"flexionleft"];
            temp23 =[arrayList1 objectForKey:@"flexionright"];
            temp24 =[arrayList1 objectForKey:@"extensionleft"];
            temp25 =[arrayList1 objectForKey:@"extensionright"];
            temp26=[arrayList1 objectForKey:@"abductionleft"];
            temp27 =[arrayList1 objectForKey:@"abductionright"];
            temp28 =[arrayList1 objectForKey:@"adductionleft"];
            temp29 =[arrayList1 objectForKey:@"adductionright"];
            temp30 =[arrayList1 objectForKey:@"internalrotationleft"];
            temp31 =[arrayList1 objectForKey:@"internalrotationright"];
            temp32 =[arrayList1 objectForKey:@"externalrotationleft"];
            temp33 =[arrayList1 objectForKey:@"externalrotationright"];
            temp34 =[arrayList1 objectForKey:@"emptycanleft"];
            temp35 =[arrayList1 objectForKey:@"emptycanright"];
            temp36 =[arrayList1 objectForKey:@"impingementsignleft"];
            temp37 =[arrayList1 objectForKey:@"impingementsignright"];
            temp38 =[arrayList1 objectForKey:@"apleysscratchleft"];
            temp39 =[arrayList1 objectForKey:@"apleysscratchright"];
            temp40 =[arrayList1 objectForKey:@"subacrominalpushleft"];
            temp41 =[arrayList1 objectForKey:@"subacrominalpushright"];
            temp42 =[arrayList1 objectForKey:@"dawbarnsleft"];
            temp43 =[arrayList1 objectForKey:@"dawbarnsright"];
            temp44 =[arrayList1 objectForKey:@"yergasonsleft"];
            temp45 =[arrayList1 objectForKey:@"yergasonsright"];
            temp46 =[arrayList1 objectForKey:@"codmansleft"];
            temp47 =[arrayList1 objectForKey:@"codmansright"];
            temp48 =[arrayList1 objectForKey:@"apprehensionleft"];
            temp49 =[arrayList1 objectForKey:@"apprehensionright"];
            temp50 =[arrayList1 objectForKey:@"neurological"];
            temp51 =[arrayList1 objectForKey:@"latdeltoidleft"];
            temp52 =[arrayList1 objectForKey:@"latdeltoidright"];
            temp53 =[arrayList1 objectForKey:@"latarmleft"];
            [resultset setValue:[arrayList1 objectForKey:@"latarmright"] forKey:@"latarmright"];
            [resultset setValue:[arrayList1 objectForKey:@"thirdleft"] forKey:@"thirdleft"];
            [resultset setValue:[arrayList1 objectForKey:@"thirdright"] forKey:@"thirdright"];
            [resultset setValue:[arrayList1 objectForKey:@"medforearmleft"] forKey:@"medforearmleft"];
            [resultset setValue:[arrayList1 objectForKey:@"medforearmright"] forKey:@"medforearmright"];
            [resultset setValue:[arrayList1 objectForKey:@"medelbowleft"] forKey:@"medelbowleft"];
            [resultset setValue:[arrayList1 objectForKey:@"medelbowright"] forKey:@"medelbowright"];
            [resultset setValue:[arrayList1 objectForKey:@"shdleft"] forKey:@"shdleft"];
            [resultset setValue:[arrayList1 objectForKey:@"shdright"] forKey:@"shdright"];
            [resultset setValue:[arrayList1 objectForKey:@"elbflexleft"] forKey:@"elbflexleft"];
            [resultset setValue:[arrayList1 objectForKey:@"elbflexright"] forKey:@"elbflexright"];
            [resultset setValue:[arrayList1 objectForKey:@"elbextleft"] forKey:@"elbextleft"];
            [resultset setValue:[arrayList1 objectForKey:@"elbextright"] forKey:@"elbextright"];
            [resultset setValue:[arrayList1 objectForKey:@"digitflexionleft"] forKey:@"digitflexionleft"];
            [resultset setValue:[arrayList1 objectForKey:@"digitflexionright"] forKey:@"digitflexionright"];
            [resultset setValue:[arrayList1 objectForKey:@"digitabdleft"] forKey:@"digitabdleft"];
            [resultset setValue:[arrayList1 objectForKey:@"digitabdright"] forKey:@"digitabdright"];
            [resultset setValue:[arrayList1 objectForKey:@"bicepsleft"] forKey:@"bicepsleft"];
            [resultset setValue:[arrayList1 objectForKey:@"bicepsright"] forKey:@"bicepsright"];
            [resultset setValue:[arrayList1 objectForKey:@"brachioradleft"] forKey:@"brachioradleft"];
            [resultset setValue:[arrayList1 objectForKey:@"brachioradright"] forKey:@"brachioradright"];
            [resultset setValue:[arrayList1 objectForKey:@"tricepsleft"] forKey:@"tricepsleft"];
            [resultset setValue:[arrayList1 objectForKey:@"tricepsright"] forKey:@"tricepsright"];
            [resultset setValue:[arrayList1 objectForKey:@"overhead"] forKey:@"overhead"];
            [resultset setValue:[arrayList1 objectForKey:@"lifting"] forKey:@"lifting"];
            [resultset setValue:[arrayList1 objectForKey:@"other"] forKey:@"other"];
            [resultset setValue:[arrayList1 objectForKey:@"otherdefict"] forKey:@"otherdefict"];
            
            [resultset setValue:[arrayList1 objectForKey:@"comments"] forKey:@"comments"];
            [resultset setValue:[arrayList1 objectForKey:@"patientstatus"] forKey:@"patientstatus"];
            
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis1"] forKey:@"diagnosis1"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis2"] forKey:@"diagnosis2"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis3"] forKey:@"diagnosis3"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis4"] forKey:@"diagnosis4"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis5"] forKey:@"diagnosis5"];
            
            [resultset setValue:[arrayList1 objectForKey:@"times"] forKey:@"times"];
            [resultset setValue:[arrayList1 objectForKey:@"weeks"] forKey:@"weeks"];
            [resultset setValue:[arrayList1 objectForKey:@"spinaldecompression"] forKey:@"spinaldecompression"];
            [resultset setValue:[arrayList1 objectForKey:@"chiropractic"] forKey:@"chiropractic"];
            [resultset setValue:[arrayList1 objectForKey:@"physicaltherapy"] forKey:@"physicaltherapy"];
            [resultset setValue:[arrayList1 objectForKey:@"bracing"] forKey:@"bracing"];
            [resultset setValue:[arrayList1 objectForKey:@"modalities"] forKey:@"modalities"];
            [resultset setValue:[arrayList1 objectForKey:@"supplementation"] forKey:@"supplementation"];
            [resultset setValue:[arrayList1 objectForKey:@"hep"] forKey:@"hep"];
            [resultset setValue:[arrayList1 objectForKey:@"radiographic"] forKey:@"radiographic"];
            [resultset setValue:[arrayList1 objectForKey:@"mri"] forKey:@"mri"];
            [resultset setValue:[arrayList1 objectForKey:@"scan"] forKey:@"scan"];
            [resultset setValue:[arrayList1 objectForKey:@"conduction"] forKey:@"conduction"];
            [resultset setValue:[arrayList1 objectForKey:@"emg"] forKey:@"emg"];
            [resultset setValue:[arrayList1 objectForKey:@"outsiderefferal"] forKey:@"outsiderefferal"];
            [resultset setValue:[arrayList1 objectForKey:@"dc"] forKey:@"dc"];
            [resultset setValue:[arrayList1 objectForKey:@"others"] forKey:@"others"];
            [resultset setValue:[arrayList1 objectForKey:@"othervalue"] forKey:@"othervalue"];
            [resultset setValue:[arrayList1 objectForKey:@"signature"] forKey:@"signature"];
            
            
            
            patientname.text=temp1;
            date.text=temp2;
            muscle.text=temp4;
            swelling.text=temp5;
            flexionleft .text=temp22;
            flexionright.text=temp23;
            extensionleft.text=temp24;
            extensionright.text=temp25;
            abductionleft.text=temp26;
            abductionright.text=temp27;
            adductionleft.text=temp28;
            adductionright.text=temp29;
            internalleft.text=temp30;
            internalright.text=temp31;
            externalleft.text=temp32;
            externalright.text=temp33;
            canleft.text=temp34;
            canright.text=temp35;
            signleft.text=temp36;
            signright.text=temp37;
            scratchleft.text=temp38;
            scratchright.text=temp39;
            pushleft.text=temp40;
            pushright.text=temp41;
            dawbarnleft.text=temp42;
            dawbarnright.text=temp43;
            yergasonleft.text=temp44;
            yergasonright.text= temp45;
            codmanleft.text=temp46;
            codmanright .text= temp47;
            apprehensionleft.text=temp48;
            apprehensionright.text =temp49;
            c5left.text =temp51;
            c5right.text=temp52;
            c6left.text =temp53;
            c6right.text =[resultset objectForKey:@"latarmright"];
            c7left.text =[resultset objectForKey:@"thirdleft"];
            c7right.text=[resultset objectForKey:@"thirdright"];
            c8left.text=[resultset objectForKey:@"medforearmleft"];
            c8right.text=[resultset objectForKey:@"medforearmright"];
            t1left.text=[resultset objectForKey:@"medelbowleft"];
            t1right .text=[resultset objectForKey:@"medelbowright"];
            mc5left.text=[resultset objectForKey:@"shdleft"];
            mc5right.text=[resultset objectForKey:@"shdright"];
            mc6left.text=[resultset objectForKey:@"elbflexleft"];
            mc6right.text=[resultset objectForKey:@"elbflexright"];
            mc7left.text=[resultset objectForKey:@"elbextleft"];
            mc7right.text=[resultset objectForKey:@"elbextright"];
            mc8left.text=[resultset objectForKey:@"digitflexionleft"];
            mc8right.text=[resultset objectForKey:@"digitflexionright"];
            mt1left.text=[resultset objectForKey:@"digitabdleft"];
            mt1right.text=[resultset objectForKey:@"digitabdright"];
            notes.text=temp19;
            
            
            
            
            
            
            
            
            
            if ([temp9 isEqualToString:@"All Soft Tissue Unremarkable"]) {
                palpation.selected=YES;
                [palpation setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                palpationlabel=@"All Soft Tissue Unremarkable";
                
            }
            else
            {
                palpation.selected=NO;
                [palpation setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                palpationlabel=@"null";
                
            }
            if ([temp20 isEqualToString:@"Unremarkable"]) {
                rangeofmotion.selected=YES;
                [rangeofmotion setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                rangeofmotionlabel=@"Unremarkable";
                
            }
            else
            {
                rangeofmotion.selected=NO;
                [rangeofmotion setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                rangeofmotionlabel=@"null";
            }
            if ([temp21 isEqualToString:@"Unremarkable"]) {
                orthotesting.selected=YES;
                [orthotesting setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                orthotestinglabel=@"Unremarkable";
            }
            else
            {
                orthotesting.selected=NO;
                [orthotesting setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                orthotestinglabel=@"null";
            }
            if ([temp50 isEqualToString:@"Neurological Testing Unremarkable"]) {
                neurological.selected=YES;
                [neurological setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                neurologicallabel=@"Neurological Testing Unremarkable";
            }
            else
            {
                neurological.selected=NO;
                [neurological setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                neurologicallabel=@"null";
            }
            if ([temp10 isEqualToString:@"Left"] ) {
                [pectoralisminor setSelectedSegmentIndex:0];
                pectoralisminorlabel=@"Left";
            }
            else if ([temp10 isEqualToString:@"Right"] ) {
                [pectoralisminor setSelectedSegmentIndex:1];
                pectoralisminorlabel=@"Right";
            }
            else
            {
                [pectoralisminor setSelectedSegmentIndex:UISegmentedControlNoSegment];
                pectoralisminorlabel=@"null";
            }
            if ([temp11 isEqualToString:@"Left"] ) {
                [supraspinatus setSelectedSegmentIndex:0];
                supraspinatuslabel=@"Left";
            }
            else if ([temp10 isEqualToString:@"Right"] ) {
                [supraspinatus setSelectedSegmentIndex:1];
                supraspinatuslabel=@"Right";
            }
            else
            {
                [supraspinatus setSelectedSegmentIndex:UISegmentedControlNoSegment];
                supraspinatuslabel=@"null";
            }
            
            
            if ([temp12 isEqualToString:@"Left"] ) {
                [infraspinatus setSelectedSegmentIndex:0];
                infraspinatuslabel=@"Left";
            }
            else if ([temp12 isEqualToString:@"Right"] ) {
                [infraspinatus setSelectedSegmentIndex:1];
                infraspinatuslabel=@"Right";
            }
            else
            {
                [infraspinatus setSelectedSegmentIndex:UISegmentedControlNoSegment];
                infraspinatuslabel=@"null";
            }
            
            if ([temp13 isEqualToString:@"Left"] ) {
                [serratusant setSelectedSegmentIndex:0];
                serratusantlabel=@"Left";
            }
            else if ([temp13 isEqualToString:@"Right"] ) {
                [serratusant setSelectedSegmentIndex:1];
                serratusantlabel=@"Right";
            }
            else
            {
                [serratusant setSelectedSegmentIndex:UISegmentedControlNoSegment];
                serratusantlabel=@"null";
            }
            if ([temp14 isEqualToString:@"Left"] ) {
                [teresminor setSelectedSegmentIndex:0];
                teresminorlabel=@"Left";
            }
            else if ([temp14 isEqualToString:@"Right"] ) {
                [teresminor setSelectedSegmentIndex:1];
                teresminorlabel=@"Right";
            }
            else
            {
                [teresminor setSelectedSegmentIndex:UISegmentedControlNoSegment];
                teresminorlabel=@"null";
            }
            
            if ([temp15 isEqualToString:@"Left"] ) {
                [teresmajor setSelectedSegmentIndex:0];
                teresmajorlabel=@"Left";
            }
            else if ([temp15 isEqualToString:@"Right"] ) {
                [teresmajor setSelectedSegmentIndex:1];
                teresmajorlabel=@"Right";
            }
            else
            {
                [teresmajor setSelectedSegmentIndex:UISegmentedControlNoSegment];
                teresmajorlabel=@"null";
            }
            if ([temp16 isEqualToString:@"Left"] ) {
                [rhomboids setSelectedSegmentIndex:0];
                rhomboidslabel=@"Left";
            }
            else if ([temp16 isEqualToString:@"Right"] ) {
                [rhomboids setSelectedSegmentIndex:1];
                rhomboidslabel=@"Right";
            }
            else
            {
                [rhomboids setSelectedSegmentIndex:UISegmentedControlNoSegment];
                rhomboidslabel=@"null";
            }
            
            if ([temp17 isEqualToString:@"Left"] ) {
                [trapezius setSelectedSegmentIndex:0];
                trapeziuslabel=@"Left";
            }
            else if ([temp17 isEqualToString:@"Right"] ) {
                [trapezius setSelectedSegmentIndex:1];
                trapeziuslabel=@"Right";
            }
            else
            {
                [trapezius setSelectedSegmentIndex:UISegmentedControlNoSegment];
                trapeziuslabel=@"null";
            }
            
            if ([temp6 isEqualToString:@"Excellent"] ) {
                [ao setSelectedSegmentIndex:0];
                aolabel=@"Excellent";
            }
            else if ([temp6 isEqualToString:@"Good"] ) {
                [ao setSelectedSegmentIndex:1];
                aolabel=@"Good";
            }
            else if ([temp6 isEqualToString:@"Fair"] ) {
                [ao setSelectedSegmentIndex:2];
                aolabel=@"Fair";
            }
            else if ([temp6 isEqualToString:@"Severe"] ) {
                [ao setSelectedSegmentIndex:3];
                aolabel=@"Severe";
            }
            
            
            
        }
    }
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Shoulderexam.php?service=shoulderexamselect";
    
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

-(void)dismissKeyboard
{
    [patientname resignFirstResponder];
    [date resignFirstResponder];
    [muscle resignFirstResponder];
    [swelling resignFirstResponder];
    [flexionleft resignFirstResponder];
    [flexionright resignFirstResponder];
    [extensionleft resignFirstResponder];
    [extensionright resignFirstResponder];
    [abductionleft resignFirstResponder];
    [abductionright resignFirstResponder];
    [adductionleft resignFirstResponder];
    [adductionright resignFirstResponder];
    [internalleft resignFirstResponder];
    [internalright resignFirstResponder];
    [externalleft resignFirstResponder];
    [externalright resignFirstResponder];
    [canleft resignFirstResponder];
    [canright resignFirstResponder];
    [signleft resignFirstResponder];
    [signright resignFirstResponder];
    [scratchleft resignFirstResponder];
    [scratchright resignFirstResponder];
    [pushleft resignFirstResponder];
    [pushright resignFirstResponder];
    [dawbarnleft resignFirstResponder];
    [dawbarnright resignFirstResponder];
    [yergasonleft resignFirstResponder];
    [yergasonright resignFirstResponder];
    [codmanleft resignFirstResponder];
    [codmanright resignFirstResponder];
    [apprehensionleft resignFirstResponder];
    [apprehensionright resignFirstResponder];
    [c5left resignFirstResponder];
    [c5right resignFirstResponder];
    [c6left resignFirstResponder];
    [c6right resignFirstResponder];
    [c7left resignFirstResponder];
    [c7right resignFirstResponder];
    [c8left resignFirstResponder];
    [c8right resignFirstResponder];
    [t1left resignFirstResponder];
    [t1right resignFirstResponder];
    [mc5left resignFirstResponder];
    [mc5right resignFirstResponder];
    [mc6left resignFirstResponder];
    [mc6right resignFirstResponder];
    [mc7left resignFirstResponder];
    [mc7right resignFirstResponder];
    [mc8left resignFirstResponder];
    [mc8right resignFirstResponder];
    [mt1left resignFirstResponder];
    [mt1right resignFirstResponder];
    [notes resignFirstResponder];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    [super dealloc];
}
@end
