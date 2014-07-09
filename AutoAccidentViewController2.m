//
//  AutoAccidentViewController2.m
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "AutoAccidentViewController2.h"
#import "AutoAccidentViewController3.h"
#import "staffautocheckViewController.h"

@interface AutoAccidentViewController2 ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation AutoAccidentViewController2
@synthesize staff;
@synthesize recorddict;
@synthesize resultset;
@synthesize shoulderseatbeltlabel;
@synthesize airbagdeployedlabel;
@synthesize wereyoulabel;
@synthesize bodypositionlabel;
@synthesize bodypositionotherlabel;
@synthesize headpositionlabel;
@synthesize headpositionotherlabel;
@synthesize handsonwheellabel;
@synthesize awareofcrashlabel;
@synthesize braceyourselflabel;
@synthesize braceyourselfoptionlabel;
@synthesize furtherinjurylabel;
@synthesize injuryexplainlabel;
@synthesize patientbodylabel;
@synthesize patientbodyotherlabel;
@synthesize wearingglasslabel;
@synthesize glassesstilllabel;
@synthesize unconsiouslabel;
@synthesize unconsiousforlabel;
@synthesize propertydamagelabel;
@synthesize damagecarlabel;
@synthesize patientbodystrikelabel;
@synthesize myheadhitlabel;
@synthesize rLhiphitlabel;
@synthesize chesthitlabel;
@synthesize rlleghitlabel;
@synthesize rlshoulderhitlabel;
@synthesize rlkneehitlabel;
@synthesize rlarmhitlabel;
@synthesize otherparthitlabel;
@synthesize shoulderseatbeltsegment;
@synthesize wereyousegment;
@synthesize bodypositionsegment;
@synthesize headpositionsegment;
@synthesize handsonwheelsegment;
@synthesize awareofcrashsegment;
@synthesize braceoptionsegment;
@synthesize patientbodysegment;
@synthesize damagecarsegment;
@synthesize airbagdeployedswitch;
@synthesize braceyourselfswitch;
@synthesize furtherinjuryswitch;
@synthesize wearingglassswitch;
@synthesize glassesstillswitch;
@synthesize unconsiousswitch;
@synthesize patientbodystrikeswitch;
@synthesize cancel;
NSString *_11,*_12,*_13,*_14,*_15,*_16,*_17,*_18,*_19,*_20,*_21,*_22,*_23,*_24,*_25,*_26,*_27,*_28,*_29,*_35,*_30,*_31;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15;

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

-(IBAction)back:(id)sender
{
    
}

-(IBAction)shoulderseatbeltsegmentchange:(id)sender
{
    if (shoulderseatbeltsegment.selectedSegmentIndex==0)
    {
        _11=@"Worn";
    }
    if (shoulderseatbeltsegment.selectedSegmentIndex==1)
    {
        _11=@"Not Worn";
    }
    if (shoulderseatbeltsegment.selectedSegmentIndex==2)
    {
        _11=@"Dont Know";
    }
}
-(IBAction)airbagdeployedswitchchange:(id)sender
{
    if (airbagdeployedswitch.on)
    {
        airbagdeployedlabel.text=@"Yes";
        _12=@"Yes";
        wereyou2.hidden=NO;
        wereyousegment.hidden=NO;
        
    }
    else
    {
        airbagdeployedlabel.text=@"No";
        _12=@"No";
        wereyou2.hidden=YES;
        wereyousegment.hidden=YES;
    }
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	//NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	//NSLog(@"begin editing");
}
-(IBAction)wereyousegmentchange:(id)sender
{
    if(wereyousegment.selectedSegmentIndex==0)
    {
        _13=@"Struck";
    }
    else
    {
        _13=@"Not Struck";
    }
}
-(IBAction)bodypositionsegmentchange:(id)sender
{
    if (bodypositionsegment.selectedSegmentIndex==0)
    {
        _14=@"Good";
       
      
        bodypositionotherlabel.hidden=YES;
    }
    if (bodypositionsegment.selectedSegmentIndex==1)
    {
        _14=@"Forward";
       
        bodypositionotherlabel.hidden=YES;
    }
    if (bodypositionsegment.selectedSegmentIndex==2)
    {
        _14=@"Leaning";
       
      
        bodypositionotherlabel.hidden=YES;
    }
    if (bodypositionsegment.selectedSegmentIndex==3)
    {
        _14=@"Unknown";
        
      
        bodypositionotherlabel.hidden=YES;
    }
    if (bodypositionsegment.selectedSegmentIndex==4)
    {
        _14=@"Other";
        //bodypositionotherlabel.text=@"";
        _16=bodypositionotherlabel.text;
        //NSLog(@"in body segment body::%@",_16);
        bodypositionotherlabel.hidden=NO;
    }
    
}
-(IBAction)headpositionsegmentchange:(id)sender
{
    if (headpositionsegment.selectedSegmentIndex==0)
    {
        _17=@"Forward";
      
        headpositionotherlabel.text=@"";
        headpositionotherlabel.hidden=YES;
    }
    if (headpositionsegment.selectedSegmentIndex==1)
    {
        _17=@"Left";
       
        headpositionotherlabel.text=@"";
        headpositionotherlabel.hidden=YES;
    }
    if (headpositionsegment.selectedSegmentIndex==2)
    {
        _17=@"Right";
        
        headpositionotherlabel.text=@"";
        headpositionotherlabel.hidden=YES;
    }
    if (headpositionsegment.selectedSegmentIndex==3)
    {
        _17=@"Up";
     
        headpositionotherlabel.text=@"";
        headpositionotherlabel.hidden=YES;
    }
    if (headpositionsegment.selectedSegmentIndex==4)
    {
        _17=@"Down";
       
        headpositionotherlabel.text=@"";
        headpositionotherlabel.hidden=YES;
    }
    if (headpositionsegment.selectedSegmentIndex==5)
    {
        _17=@"UnKnown";
       
        headpositionotherlabel.hidden=YES;
    }
    if (headpositionsegment.selectedSegmentIndex==6)
    {
        _17=@"Other";
        _18=headpositionotherlabel.text;
        headpositionotherlabel.hidden=NO;
    }
}
-(IBAction)handsonwheelsegmentchange:(id)sender
{
    if (handsonwheelsegment.selectedSegmentIndex==0)
    {
        _19=@"One";
    }
    if (handsonwheelsegment.selectedSegmentIndex==1)
    {
        _19=@"Two";
    }
    
}
-(IBAction)awareofcrashsegmentchange:(id)sender
{
    if (awareofcrashsegment.selectedSegmentIndex==0)
    {
        _20=@"Aware";
    }
    if (awareofcrashsegment.selectedSegmentIndex==1)
    {
        _20=@"Surprised";
    }
}
-(IBAction)braceyourselfswitchchange:(id)sender
{
    if (braceyourselfswitch.on)
    {
        braceyourselflabel.text=@"Yes";
        _21=@"Yes";
        braceoptionsegment.hidden=NO;
    }
    else
    {
        braceyourselflabel.text=@"No";
        _21=@"No";
        braceoptionsegment.hidden=YES;
    }
}
-(IBAction)braceoptionsegmentchange:(id)sender
{
    if (braceoptionsegment.selectedSegmentIndex==0)
    {
        
        _22=@"Braced with Arms";
    }
    if (braceoptionsegment.selectedSegmentIndex==1)
    {
        _22=@"Braced with Legs";
    }
}
-(IBAction)furtherinjuryswitchchange:(id)sender
{
    if (furtherinjuryswitch.on)
    {
        _23=@"Yes";
        _35=injuryexplainlabel.text;
        furtherinjurylabel.text=@"Yes";
        pleaseexplain2.hidden=NO;
        injuryexplainlabel.hidden=NO;
    }
    else
    {
        _23=@"No";
        _35=@"";
        furtherinjurylabel.text=@"No";
        pleaseexplain2.hidden=YES;
        injuryexplainlabel.hidden=YES;
    }
}
-(IBAction)patientbodysegmentchange:(id)sender
{
    if (patientbodysegment.selectedSegmentIndex==0)
    {
        _24=@"Jolted";
        _25=@"null";
        patientbodyotherlabel.text=@"";
        patientbodyotherlabel.hidden=YES;
    }
    if (patientbodysegment.selectedSegmentIndex==1)
    {
        _24=@"Thrown";
        patientbodyotherlabel.text=@"";
        _25=@"null";
        patientbodyotherlabel.hidden=YES;
    }
    if (patientbodysegment.selectedSegmentIndex==2)
    {
        _24=@"Stunned";
        _25=@"null";
        patientbodyotherlabel.text=@"";
        patientbodyotherlabel.hidden=YES;
    }
    if (patientbodysegment.selectedSegmentIndex==3)
    {
        _24=@"Dazzed";
        _25=@"null";
        patientbodyotherlabel.text=@"";
        patientbodyotherlabel.hidden=YES;
    }
    if (patientbodysegment.selectedSegmentIndex==4)
    {
        _24=@"Whipped";
        _25=@"null";
        patientbodyotherlabel.text=@"";
        patientbodyotherlabel.hidden=YES;
    }
    if (patientbodysegment.selectedSegmentIndex==5)
    {
        _24=@"Slammed";
        _25=@"null";
        patientbodyotherlabel.text=@"";
        patientbodyotherlabel.hidden=YES;
    }
    if (patientbodysegment.selectedSegmentIndex==6)
    {
        _24=@"Other";
        _25=patientbodyotherlabel.text;
        patientbodyotherlabel.hidden=NO;
    }
}
-(IBAction)wearingglassswitchchange:(id)sender
{
    if (wearingglassswitch.on)
    {
        _26=@"Yes";
        wearingglasslabel.text=@"Yes";
    }
    else
    {
        wearingglasslabel.text=@"No";
        _26=@"No";
    }
    
}
-(IBAction)glassesstillswitchchange:(id)sender
{
    if (glassesstillswitch.on)
    {
        _27=@"Yes";
        glassesstilllabel.text=@"Yes";
        
    }
    else
    {
        _27=@"No";
        glassesstilllabel.text=@"No";
        
    }
}
-(IBAction)unconsiousswitchchange:(id)sender
{
    if (unconsiousswitch.on)
    {
        _28=@"Yes";
        unconsious2.hidden=NO;
        unconsiouslabel.text=@"Yes";
        _29=unconsiousforlabel.text;
        unconsiousforlabel.hidden=NO;
    }
    else
    {
        _28=@"No";
        unconsious2.hidden=YES;
        _29=@"null";
        unconsiousforlabel.text=@"";
        unconsiouslabel.text=@"No";
        unconsiousforlabel.hidden=YES;
    }
}
-(IBAction)damagecarsegmentchange:(id)sender
{
    if (damagecarsegment.selectedSegmentIndex==0)
    {
        _30=@"Minimal";
        
    }
    if (damagecarsegment.selectedSegmentIndex==1)
    {
        _30=@"Moderate";
    }
    if (damagecarsegment.selectedSegmentIndex==2)
    {
        _30=@"Major";
    }
    if (damagecarsegment.selectedSegmentIndex==3)
    {
        _30=@"Totalled";
    }
    
    
}
-(IBAction)patientbodystrikeswitchchange:(id)sender
{
    if (patientbodystrikeswitch.on)
    {
        _31=@"Yes";
        patientbodystrikelabel.text=@"Yes";
        pleasecomplete.hidden=NO;
        label1.hidden=NO;
        label2.hidden=NO;
        label3.hidden=NO;
        label4.hidden=NO;
        label5.hidden=NO;
        label6.hidden=NO;
        label7.hidden=NO;
        label8.hidden=NO;
        myheadhitlabel.hidden=NO;
        rLhiphitlabel.hidden=NO;
        chesthitlabel.hidden=NO;
        rlleghitlabel.hidden=NO;
        rlshoulderhitlabel.hidden=NO;
        rlkneehitlabel.hidden=NO;
        rlarmhitlabel.hidden=NO;
        otherparthitlabel.hidden=NO;
    }
    else
    {
        _31=@"No";
        patientbodystrikelabel.text=@"No";
        pleasecomplete.hidden=YES;
        label1.hidden=YES;
        label2.hidden=YES;
        label3.hidden=YES;
        label4.hidden=YES;
        label5.hidden=YES;
        label6.hidden=YES;
        label7.hidden=YES;
        label8.hidden=YES;
        myheadhitlabel.hidden=YES;
        rLhiphitlabel.hidden=YES;
        chesthitlabel.hidden=YES;
        rlleghitlabel.hidden=YES;
        rlshoulderhitlabel.hidden=YES;
        rlkneehitlabel.hidden=YES;
        rlarmhitlabel.hidden=YES;
        otherparthitlabel.hidden=YES;
    }
}
-(BOOL)numbervalidate:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{1,5}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
-(BOOL)onlyalphabetvalidate:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-z]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateUsername:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(IBAction)saveandcontinue:(id)sender
{
    du=[[databaseurl alloc]init];
    if (bodypositionsegment.selectedSegmentIndex==4)
    {
        
        _16=bodypositionotherlabel.text;
        
    }
    else{
        
        _16=@"";
        bodypositionotherlabel.text=@"";
        
    }
    
    if (patientbodysegment.selectedSegmentIndex==6)
    {
        
        _25=patientbodyotherlabel.text;
        
    }
    else{
        _25=@"";
         patientbodyotherlabel.text=@"";
    }
    if (headpositionsegment.selectedSegmentIndex==6)
    {
        
        _18=headpositionotherlabel.text;
        
    }
    else{
        _18=@"";
         headpositionotherlabel.text=@"";
    }
    if (unconsiousswitch.on)
    {
        
        
        _29=unconsiousforlabel.text;
        
    }
    else{
        _29=@"";
         unconsiousforlabel.text=@"";
    }
    
    
    
    if (furtherinjuryswitch.on)
    {
        
        _35=injuryexplainlabel.text;
        
    }
    else{
        _35=@"";
         injuryexplainlabel.text=@"";
    }
    if([patientbodystrikelabel.text isEqual:@"Yes"])
    {
        
    }
    if (patientbodystrikeswitch.on)
    {
        _31=@"Yes";
        patientbodystrikelabel.text=@"Yes";
       
       
    }
    else
    {
        _31=@"No";
        patientbodystrikelabel.text=@"No";
       
        myheadhitlabel.text=@"";
        rLhiphitlabel.text=@"";
        chesthitlabel.text=@"";
        rlleghitlabel.text=@"";
        rlshoulderhitlabel.text=@"";
        rlkneehitlabel.text=@"";
        rlarmhitlabel.text=@"";
        otherparthitlabel.text=@"";
    }

    
    //NSLog(@"16th value::%@",_16);
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:temp];
    
    texty1=[bodypositionotherlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[headpositionotherlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[patientbodyotherlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[propertydamagelabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[myheadhitlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[rlarmhitlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[rLhiphitlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[rlshoulderhitlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty9=[rlkneehitlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty10=[chesthitlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty11=[otherparthitlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty12=[rlleghitlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty13=[unconsiousforlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty14=[injuryexplainlabel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
   
    if ([propertydamagelabel.text length]>0) {
         c=1;
    
    if((([bodypositionotherlabel.text length]>0)&&([du otherfields:bodypositionotherlabel.text]==1))||([bodypositionotherlabel.text length]==0))
    {
        if((([headpositionotherlabel.text length]>0)&&([du otherfields:headpositionotherlabel.text]==1))||([headpositionotherlabel.text length]==0))
        {
            if((([injuryexplainlabel.text length]>0)&&([du otherfields:injuryexplainlabel.text]==1))||([injuryexplainlabel.text length]==0))
            {
                if((([patientbodyotherlabel.text length]>0)&&([du otherfields:patientbodyotherlabel.text]==1))||([patientbodyotherlabel.text length]==0))
                {
                    if((([unconsiousforlabel.text length]>0)&&([du percentage:unconsiousforlabel.text]==1))||([unconsiousforlabel.text length]==0))
                    {
                        if((([propertydamagelabel.text length]>0)&&([du percentage:propertydamagelabel.text]==1))||([propertydamagelabel.text length]==0))
                        {
                        if((([myheadhitlabel.text length]>0)&&([du otherfields:myheadhitlabel.text]==1))||([myheadhitlabel.text length]==0))
                        {
                            if((([rLhiphitlabel.text length]>0)&&([du otherfields:rLhiphitlabel.text]==1))||([rLhiphitlabel.text length]==0))
                            {
                                if((([chesthitlabel.text length]>0)&&([du otherfields:chesthitlabel.text]==1))||([chesthitlabel.text length]==0))
                                {
                                    if((([rlleghitlabel.text length]>0)&&([du otherfields:rlleghitlabel.text]==1))||([rlleghitlabel.text length]==0))
                                    {
                                        if((([rlshoulderhitlabel.text length]>0)&&([du otherfields:rlshoulderhitlabel.text]==1))||([rlshoulderhitlabel.text length]==0))
                                        {
                                            if((([rlkneehitlabel.text length]>0)&&([du otherfields:rlkneehitlabel.text]==1))||([rlkneehitlabel.text length]==0))
                                            {
                                                if((([rlarmhitlabel.text length]>0)&&([du otherfields:rlarmhitlabel.text]==1))||([rlarmhitlabel.text length]==0))
                                                {
                                                    if((([otherparthitlabel.text length]>0)&&([du otherfields:otherparthitlabel.text]==1))||([otherparthitlabel.text length]==0))
                                                    {
                                                        c=1;
                                                        [recorddict setValue:_11 forKey:@"shoulderseatbeltlabel"];
                                                        [recorddict setValue:airbagdeployedlabel.text forKey:@"airbagdeployed"];
                                                        [recorddict setValue:furtherinjurylabel.text forKey:@"furtherinjury"];
                                                        [recorddict setValue:_13 forKey:@"wereyou"];
                                                        [recorddict setValue:_14 forKey:@"bodyposition"];
                                                        [recorddict setValue:_16 forKey:@"bodyposition1"];
                                                        [recorddict setValue:_17 forKey:@"headposition"];
                                                        [recorddict setValue:_18 forKey:@"headposition1"];
                                                        [recorddict setValue:_19 forKey:@"handsonwheel"];
                                                        [recorddict setValue:_20 forKey:@"awareofcrash"];
                                                        [recorddict setValue:_21 forKey:@"braceoption"];
                                                        [recorddict setValue:_22 forKey:@"braceseg"];
                                                        [recorddict setValue:_24 forKey:@"patientbodyseg"];
                                                        [recorddict setValue:_25 forKey:@"patientbodyother"];
                                                        [recorddict setValue:_30 forKey:@"damageseg"];
                                                        [recorddict setValue:_35 forKey:@"injuryexplainlabel"];
                                                        [recorddict setValue:wearingglasslabel.text forKey:@"wearingglasslabel"];
                                                        [recorddict setValue:glassesstilllabel.text forKey:@"glassesstilllabel"];
                                                        [recorddict setValue:propertydamagelabel.text forKey:@"propertydamagelabel"];
                                                        [recorddict setValue:damagecarlabel.text forKey:@"damagecarlabel"];
                                                        [recorddict setValue:patientbodystrikelabel.text forKey:@"patientbodystrikelabel"];
                                                        
                                                        [recorddict setValue:bodypositionlabel.text forKey:@"bodypositionlabel"];
                                                        [recorddict setValue:headpositionlabel.text forKey:@"headpositionlabel"];
                                                        
                                                        [recorddict setValue:patientbodylabel.text forKey:@"patientbodylabel"];
                                                        [recorddict setValue:unconsiouslabel.text forKey:@"unconsiouslabel"];
                                                        [recorddict setValue:_29 forKey:@"unconsiousforlabel"];
                                                        
                                                        
                                                        
                                                        [recorddict setValue:myheadhitlabel.text forKey:@"myheadhitlabel"];
                                                        [recorddict setValue:rLhiphitlabel.text forKey:@"rlhiphitlabel"];
                                                        [recorddict setValue:chesthitlabel.text forKey:@"chesthitlabel"];
                                                        [recorddict setValue:rlleghitlabel.text forKey:@"rlleghitlabel"];
                                                        [recorddict setValue:rlshoulderhitlabel.text forKey:@"rlshoulderhitlabel"];
                                                        [recorddict setValue:rlkneehitlabel.text forKey:@"rlkneehitlabel"];
                                                        [recorddict setValue:rlarmhitlabel.text forKey:@"rlarmhitlabel"];
                                                        [recorddict setValue:otherparthitlabel.text forKey:@"otherparthitlabel"];
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid other body part hit field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    c=0;
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid my right left arm hit field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                                }
                                                
                                            }
                                            else
                                            {
                                                c=0;
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid my right left knee hit field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                            }
                                            
                                        }
                                        else
                                        {
                                            c=0;
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid my right left shoulder hit field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                        }
                                    }
                                    else
                                    {
                                        c=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid my right left leg hit field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                    }

                                }
                                else
                                {
                                    c=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid my chest hit field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                }

                            }
                            else
                            {
                                c=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid my right left hip hit field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                            }

                        }
                        else
                        {
                            c=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid my head hit field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                        }
                        }
                        else
                        {
                            c=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid property damage amount field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                        }
                       

                    }
                    else
                    {
                        c=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid unconscious field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    }
 
                }
                else
                {
                    c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid patient body field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
            }
            else
            {
                c=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid further injury field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
 
        }
        else
        {
            c=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid head position." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
    }
    else
    {
        c=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid body position at the time of accident." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
        }
    else{
        c=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Required fields should not be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        
    }
    
 
    if (c==1)
    {
        //NSLog(@"record dict in auto 2nd page:%@",recorddict);
        [self performSegueWithIdentifier:@"autoacc5" sender:self];
    }
    
}

-(IBAction)clearall:(id)sender
{
    bodypositionotherlabel.text=@"Good";
    headpositionotherlabel.text=@"Forward";
    injuryexplainlabel.text=@"";
    unconsiousforlabel.text=@"";
    propertydamagelabel.text=@"";
    myheadhitlabel.text=@"";
    rLhiphitlabel.text=@"";
    chesthitlabel.text=@"";
    rlleghitlabel.text=@"";
    rlshoulderhitlabel.text=@"";
    rlkneehitlabel.text=@"";
    rlarmhitlabel.text=@"";
    otherparthitlabel.text=@"";
    shoulderseatbeltsegment.selectedSegmentIndex=0;
        airbagdeployedswitch.on=true;
//    [airbagdeployedswitch setOn:NO animated:YES];
    wereyousegment.selectedSegmentIndex=0;
//    wereyoulabel.hidden=YES;
    bodypositionsegment.selectedSegmentIndex=0;
    headpositionsegment.selectedSegmentIndex=0;
    bodypositionotherlabel.hidden=YES;
    headpositionotherlabel.hidden=YES;
    handsonwheelsegment.selectedSegmentIndex=0;
    awareofcrashsegment.selectedSegmentIndex=0;
    braceoptionsegment.selectedSegmentIndex=0;
    //    braceyourselfswitch.on=true;
    [braceyourselfswitch setOn:YES animated:YES];
    [furtherinjuryswitch setOn:YES animated:YES];
    //    furtherinjuryswitch.on=true;
//    injuryexplainlabel.hidden=YES;
    injuryexplainlabel.text=@"";
//    patientbodyotherlabel.hidden=YES;
    patientbodysegment.selectedSegmentIndex=0;
    //    wearingglassswitch.on=true;
    [wearingglassswitch setOn:YES animated:YES];
    wearingglasslabel.text=@"Yes";
    glassesstilllabel.text=@"Yes";
    //    glassesstillswitch.on=true;
    [glassesstillswitch setOn:YES animated:YES];
    //    patientbodystrikeswitch.on=true;
    [patientbodystrikeswitch setOn:YES animated:YES];
    patientbodystrikelabel.text=@"Yes";
    unconsiousforlabel.text=@"";
    //    unconsiousswitch.on=true;
    [unconsiousswitch setOn:YES animated:YES];
    unconsiouslabel.text=@"Yes";
    unconsious2.hidden=YES;
    damagecarsegment.selectedSegmentIndex=0;
    patientbodystrikelabel.text=@"Yes";
//    pleasecomplete.hidden=YES;
//    label1.hidden=YES;
//    label2.hidden=YES;
//    label3.hidden=YES;
//    label4.hidden=YES;
//    label5.hidden=YES;
//    label6.hidden=YES;
//    label7.hidden=YES;
//    label8.hidden=YES;
//    myheadhitlabel.hidden=YES;
//    rLhiphitlabel.hidden=YES;
//    chesthitlabel.hidden=YES;
//    rlleghitlabel.hidden=YES;
//    rlshoulderhitlabel.hidden=YES;
//    rlkneehitlabel.hidden=YES;
//    rlarmhitlabel.hidden=YES;
//    otherparthitlabel.hidden=YES;
//    wereyou2.hidden=YES;
//    wereyousegment.hidden=YES;
//    braceoptionsegment.hidden=YES;
    braceoptionsegment.selectedSegmentIndex=0;
    furtherinjurylabel.text=@"Yes";
    pleaseexplain2.hidden=NO;
    injuryexplainlabel.hidden=YES;
    unconsious2.hidden=NO;
    unconsiouslabel.text=@"Yes";
    
    unconsiousforlabel.hidden=YES;
    airbagdeployedlabel.text=@"Yes";
    braceyourselflabel.text=@"Yes";
    furtherinjurylabel.text=@"Yes";
    wearingglasslabel.text=@"Yes";
    glassesstilllabel.text=@"Yes";
    unconsiouslabel.text=@"Yes";
    shoulderseatbeltlabel.text=@"Worn";
    wereyoulabel.text=@"Struck";
    bodypositionlabel.text=@"Good";
    headpositionlabel.text=@"Forward";
    handsonwheellabel.text=@"One";
    awareofcrashlabel.text=@"Aware";
    braceyourselflabel.text=@"Yes";
    braceyourselfoptionlabel.text=@"Braced with Arms";
    patientbodylabel.text=@"Jolted";
    damagecarlabel.text=@"Minimal";
    injuryexplainlabel.text=@"";
    unconsiousforlabel.text=@"";
    patientbodyotherlabel.text=@"";
    _28=@"Yes";
    unconsious2.hidden=NO;
    unconsiouslabel.text=@"Yes";
    _29=unconsiousforlabel.text;
    unconsiousforlabel.hidden=NO;
    _11=@"Worn";
    _13=@"Struck";
    _14=@"Good";
    _16=@"null";
    _17=@"Forward";
    _18=@"null";
    _19=@"One";
    _20=@"Aware";
    _21=@"Yes";
    _22=@"Braced with Arms";
    _24=@"Jolted";
    _25=@"null";
    
    _30=@"Minimal";
    _35=@"";
    furtherinjuryswitch.on=true;
    _23=@"Yes";
    
    furtherinjurylabel.text=@"Yes";
    pleaseexplain2.hidden=NO;
    injuryexplainlabel.hidden=NO;
    
    
}
-(void)dismissKeyboard
{
        printView.hidden = YES;
    [bodypositionotherlabel resignFirstResponder];
    [headpositionotherlabel resignFirstResponder];
    [injuryexplainlabel resignFirstResponder];
    [unconsiousforlabel resignFirstResponder];
    [propertydamagelabel resignFirstResponder];
    [myheadhitlabel resignFirstResponder];
    [rlarmhitlabel resignFirstResponder];
    [rLhiphitlabel resignFirstResponder];
    [chesthitlabel resignFirstResponder];
    [rlleghitlabel resignFirstResponder];
    [rlshoulderhitlabel resignFirstResponder];
    [rlkneehitlabel resignFirstResponder];
    [otherparthitlabel resignFirstResponder];
    [patientbodyotherlabel resignFirstResponder];
    
}
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
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    temp=[[NSMutableDictionary alloc]init];
    temp=recorddict;
    [super viewDidLoad];
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
    
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]])
        {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    airbagdeployedlabel.text=@"Yes";
    braceyourselflabel.text=@"Yes";
    furtherinjurylabel.text=@"Yes";
    wearingglasslabel.text=@"Yes";
    glassesstilllabel.text=@"Yes";
    unconsiouslabel.text=@"Yes";
    shoulderseatbeltlabel.text=@"Worn";
    wereyoulabel.text=@"Struck";
    bodypositionlabel.text=@"Good";
    headpositionlabel.text=@"Forward";
    handsonwheellabel.text=@"One";
    awareofcrashlabel.text=@"Aware";
    braceyourselflabel.text=@"Yes";
    braceyourselfoptionlabel.text=@"Braced with Arms";
    patientbodylabel.text=@"Jolted";
    damagecarlabel.text=@"Minimal";
    injuryexplainlabel.text=@"";
    unconsiousforlabel.text=@"";
    patientbodyotherlabel.text=@"";
    _11=@"Worn";
    _13=@"Struck";
    _14=@"Good";
    _16=@"null";
    _17=@"Forward";
    _18=@"null";
    _19=@"One";
    _20=@"Aware";
    _21=@"Yes";
    _22=@"Braced with Arms";
    _24=@"Jolted";
    _25=@"null";
    _29=@"null";
    _30=@"Minimal";
    _35=@"null";
    [self displaydata];
    //NSLog(@"count in result set::%@",recorddict);
	
    
    // Do any additional setup after loading the view.
}
-(void)displaydata
{
    if([resultset count]>0){
        bodypositionotherlabel.text=[resultset objectForKey:@"bodyposition1"];
        headpositionotherlabel.text=[resultset objectForKey:@"headposition1"];
        unconsiousforlabel.text=[resultset objectForKey:@"uncon"];
        injuryexplainlabel.text=[resultset objectForKey:@"injurytext"];
        propertydamagelabel.text=[resultset objectForKey:@"estimated_amount"];
        myheadhitlabel.text=[resultset objectForKey:@"head_hit"];
        rLhiphitlabel.text=[resultset objectForKey:@"rlhip_hit"];
        chesthitlabel.text=[resultset objectForKey:@"chest_hit"];
        rlleghitlabel.text=[resultset objectForKey:@"rlleg_hit"];
        rlshoulderhitlabel.text=[resultset objectForKey:@"rlshoulder_hit"];
        rlkneehitlabel.text=[resultset objectForKey:@"rlknee_hit"];
        rlarmhitlabel.text=[resultset objectForKey:@"rlarm_hit"];
        otherparthitlabel.text=[resultset objectForKey:@"otherpart_hit"];
        //NSLog(@"value of shoulder belt::%@",[resultset objectForKey:@"shoulder_seat_belt"]);
        
        
        if([[resultset objectForKey:@"shoulder_seat_belt"]isEqualToString:@"Worn"]){
            //NSLog(@"value of shoulder belt one::%@",[resultset objectForKey:@"shoulder_seat_belt"]);
            [shoulderseatbeltsegment setSelectedSegmentIndex:0];
            _11=@"Worn";
        }
        else if([[resultset objectForKey:@"shoulder_seat_belt"]isEqualToString:@"Not Worn"]){
            //NSLog(@"value of shoulder belt two::%@",[resultset objectForKey:@"shoulder_seat_belt"]);
            [shoulderseatbeltsegment setSelectedSegmentIndex:1];
            _11=@"Not Worn";
        }
        else if([[resultset objectForKey:@"shoulder_seat_belt"]isEqualToString:@"Dont Know"]){
            //NSLog(@"value of shoulder belt three::%@",[resultset objectForKey:@"shoulder_seat_belt"]);
            [shoulderseatbeltsegment setSelectedSegmentIndex:2];
            _11=@"Dont Know";
        }
        else{
            //NSLog(@"value of shoulder belt nothing selected::%@",[resultset objectForKey:@"shoulder_seat_belt"]);
            
            [shoulderseatbeltsegment setSelectedSegmentIndex:0];
            _11=@"Worn";
            
        }
        if([[resultset objectForKey:@"airbag"]isEqualToString:@"Yes"]){
            airbagdeployedswitch.on=true;
            airbagdeployedlabel.text=@"Yes";
            _12=@"Yes";
            wereyou2.hidden=NO;
            wereyousegment.hidden=NO;
        }
        else if([[resultset objectForKey:@"airbag"]isEqualToString:@"No"]){
            airbagdeployedswitch.on=false;
            airbagdeployedlabel.text=@"No";
            _12=@"No";
            wereyou2.hidden=YES;
            wereyousegment.hidden=YES;
        }
        else{
        }
        if([[resultset objectForKey:@"wereyou"]isEqualToString:@"Struck"]){
            [wereyousegment setSelectedSegmentIndex:0];
            _13=@"Struck";
        }
        else if([[resultset objectForKey:@"wereyou"]isEqualToString:@"Not Struck"]){
            [wereyousegment setSelectedSegmentIndex:1];
            _13=@"Not Struck";
        }
        else{
            _13=@"null";
        }
        if([[resultset objectForKey:@"body_position"]isEqualToString:@"Good"]){
            [bodypositionsegment setSelectedSegmentIndex:0];
            _14=@"Good";
            _16=@"null";
            bodypositionotherlabel.text=@"";
            bodypositionotherlabel.hidden=YES;
            
        }
        else if([[resultset objectForKey:@"body_position"]isEqualToString:@"Forward"]){
            [bodypositionsegment setSelectedSegmentIndex:1];
            _14=@"Forward";
            _16=@"null";
            bodypositionotherlabel.text=@"";
            bodypositionotherlabel.hidden=YES;
            
        }
        else if([[resultset objectForKey:@"body_position"]isEqualToString:@"Leaning"]){
            [bodypositionsegment setSelectedSegmentIndex:2];
            _14=@"Leaning";
            _16=@"null";
            bodypositionotherlabel.text=@"";
            bodypositionotherlabel.hidden=YES;
            
        }
        else if([[resultset objectForKey:@"body_position"]isEqualToString:@"Unknown"]){
            [bodypositionsegment setSelectedSegmentIndex:3];
            _14=@"Unknown";
            _16=@"null";
            bodypositionotherlabel.text=@"";
            bodypositionotherlabel.hidden=YES;
            
        }
        else if([[resultset objectForKey:@"body_position"]isEqualToString:@"Other"]){
            [bodypositionsegment setSelectedSegmentIndex:4];
            _14=@"Other";
            bodypositionotherlabel.text=[resultset objectForKey:@"body_position1"];
            _16=bodypositionotherlabel.text;
            
            //NSLog(@"in body segment body::%@",[resultset objectForKey:@"body_position1"]);
            bodypositionotherlabel.hidden=NO;
        }
        
        
        else{
            _14=@"null";
            _16=@"null";
        }
        if([[resultset objectForKey:@"head_position"]isEqualToString:@"Forward"]){
            [headpositionsegment setSelectedSegmentIndex:0];
            _17=@"Forward";
            _18=@"null";
            headpositionotherlabel.text=@"";
            headpositionotherlabel.hidden=YES;
            
        }
        else if([[resultset objectForKey:@"head_position"]isEqualToString:@"Left"]){
            [headpositionsegment setSelectedSegmentIndex:1];
            _17=@"Left";
            _18=@"null";
            headpositionotherlabel.text=@"";
            headpositionotherlabel.hidden=YES;
            
        }
        else if([[resultset objectForKey:@"head_position"]isEqualToString:@"Right"]){
            [headpositionsegment setSelectedSegmentIndex:2];
            _17=@"Right";
            _18=@"null";
            headpositionotherlabel.text=@"";
            headpositionotherlabel.hidden=YES;
            
        }
        else if([[resultset objectForKey:@"head_position"]isEqualToString:@"Up"]){
            [headpositionsegment setSelectedSegmentIndex:3];
            _17=@"Up";
            _18=@"null";
            headpositionotherlabel.text=@"";
            headpositionotherlabel.hidden=YES;
            
        }
        else if([[resultset objectForKey:@"head_position"]isEqualToString:@"Down"]){
            [headpositionsegment setSelectedSegmentIndex:4];
            _17=@"Down";
            _18=@"null";
            headpositionotherlabel.text=@"";
            headpositionotherlabel.hidden=YES;
            
        }
        else if([[resultset objectForKey:@"head_position"]isEqualToString:@"Unknown"]){
            [headpositionsegment setSelectedSegmentIndex:5];
            _17=@"Unknown";
            _18=@"null";
            headpositionotherlabel.text=@"";
            headpositionotherlabel.hidden=YES;
            
        }
        else if([[resultset objectForKey:@"head_position"]isEqualToString:@"Other"]){
            [headpositionsegment setSelectedSegmentIndex:6];
            _17=@"Other";
            
            headpositionotherlabel.text=[resultset objectForKey:@"head_position1"];
            _18=headpositionotherlabel.text;
            //NSLog(@"in head segment head::%@",_18);
            headpositionotherlabel.hidden=NO;
        }
        
        
        else{
            _17=@"null";
            _18=@"null";
        }
        if([[resultset objectForKey:@"hands_on_wheel"]isEqualToString:@"One"]){
            [handsonwheelsegment setSelectedSegmentIndex:0];
            _19=@"One";
            
        }
        else if([[resultset objectForKey:@"hands_on_wheel"]isEqualToString:@"Two"]){
            [handsonwheelsegment setSelectedSegmentIndex:1];
            _19=@"Two";
            
        }
        else{
        }
        if([[resultset objectForKey:@"aware_of_crash"]isEqualToString:@"Aware"]){
            [awareofcrashsegment setSelectedSegmentIndex:0];
            _19=@"One";
            
        }
        else if([[resultset objectForKey:@"aware_of_crash"]isEqualToString:@"Surprised"]){
            [awareofcrashsegment setSelectedSegmentIndex:1];
            _19=@"Two";
            
        }
        else{
        }
        if([[resultset objectForKey:@"brace"]isEqualToString:@"Yes"]){
            braceyourselfswitch.on=true;
            braceyourselflabel.text=@"Yes";
            _21=@"Yes";
            braceoptionsegment.hidden=NO;
            
            
        }
        else if([[resultset objectForKey:@"brace"]isEqualToString:@"No"]){
            braceyourselfswitch.on=false;
            braceyourselflabel.text=@"No";
            _21=@"No";
            braceoptionsegment.hidden=YES;
            
        }
        else{
        }
        
        if([[resultset objectForKey:@"ifyes"]isEqualToString:@"Braced with Arms"]){
            [braceoptionsegment setSelectedSegmentIndex:0];
            _22=@"Braced with Arms";
            
            
        }
        else if([[resultset objectForKey:@"ifyes"]isEqualToString:@"Braced with Legs"]){
            [braceoptionsegment setSelectedSegmentIndex:1];
            _22=@"Braced with Arms";
            
        }
        else{
        }
        
        if([[resultset objectForKey:@"further_injury"]isEqualToString:@"Yes"]){
            furtherinjuryswitch.on=true;
            _23=@"Yes";
            _35=injuryexplainlabel.text;
            furtherinjurylabel.text=@"Yes";
            pleaseexplain2.hidden=NO;
            injuryexplainlabel.hidden=NO;
            
            
        }
        else if([[resultset objectForKey:@"further_injury"]isEqualToString:@"No"]){
            furtherinjuryswitch.on=false;
            _23=@"No";
            injuryexplainlabel.text=@"";
            _35=@"null";
            furtherinjurylabel.text=@"No";
            pleaseexplain2.hidden=YES;
            injuryexplainlabel.hidden=YES;
        }
        else{
        }
        
        
        if([[resultset objectForKey:@"patient_body"]isEqualToString:@"Jolted"]){
            [patientbodysegment setSelectedSegmentIndex:0];
            _24=@"Jolted";
            _25=@"null";
            patientbodyotherlabel.text=@"";
            patientbodyotherlabel.hidden=YES;
        }
        
        else if([[resultset objectForKey:@"patient_body"]isEqualToString:@"Thrown"]){
            [patientbodysegment setSelectedSegmentIndex:1];
            _24=@"Thrown";
            _25=@"null";
            patientbodyotherlabel.text=@"";
            patientbodyotherlabel.hidden=YES;
        }
        else if([[resultset objectForKey:@"patient_body"]isEqualToString:@"Stunned"]){
            [patientbodysegment setSelectedSegmentIndex:2];
            _24=@"Stunned";
            _25=@"null";
            patientbodyotherlabel.text=@"";
            patientbodyotherlabel.hidden=YES;
        }
        else if([[resultset objectForKey:@"patient_body"]isEqualToString:@"Dazzed"]){
            [patientbodysegment setSelectedSegmentIndex:3];
            _24=@"Dazzed";
            _25=@"null";
            patientbodyotherlabel.text=@"";
            patientbodyotherlabel.hidden=YES;
        }
        else if([[resultset objectForKey:@"patient_body"]isEqualToString:@"Whipped"]){
            [patientbodysegment setSelectedSegmentIndex:4];
            _24=@"Whipped";
            _25=@"null";
            patientbodyotherlabel.text=@"";
            patientbodyotherlabel.hidden=YES;
        }
        else if([[resultset objectForKey:@"patient_body"]isEqualToString:@"Slammed"]){
            [patientbodysegment setSelectedSegmentIndex:5];
            patientbodyotherlabel.text=@"";
            
            _24=@"Slammed";
            _25=@"null";
            patientbodyotherlabel.text=@"";
            patientbodyotherlabel.hidden=YES;
        }
        else if([[resultset objectForKey:@"patient_body"]isEqualToString:@"Other"]){
            [patientbodysegment setSelectedSegmentIndex:6];
            
            patientbodyotherlabel.text=[resultset objectForKey:@"patient_body1"];
            _24=@"Other";
            _25=patientbodyotherlabel.text;
            patientbodyotherlabel.hidden=NO;
            
        }
        else{}
        if([[resultset objectForKey:@"wearing_glasses"]isEqualToString:@"Yes"]){
            wearingglassswitch.on=true;
            _26=@"Yes";
            wearingglasslabel.text=@"Yes";
            
            
        }
        else if([[resultset objectForKey:@"wearing_glasses"]isEqualToString:@"No"]){
            wearingglassswitch.on=false;
            wearingglasslabel.text=@"No";
            _26=@"No";
        }
        else{
        }
        if([[resultset objectForKey:@"glasses_impact"]isEqualToString:@"Yes"]){
            glassesstillswitch.on=true;
            _27=@"Yes";
            glassesstilllabel.text=@"Yes";
            
            
        }
        else if([[resultset objectForKey:@"glasses_impact"]isEqualToString:@"No"]){
            glassesstillswitch.on=false;
            _27=@"No";
            glassesstilllabel.text=@"No";
            
        }
        else{
        }
        if([[resultset objectForKey:@"unconscious"]isEqualToString:@"Yes"]){
            unconsiousswitch.on=true;
            _28=@"Yes";
            unconsious2.hidden=NO;
            unconsiouslabel.text=@"Yes";
            _29=unconsiousforlabel.text;
            unconsiousforlabel.hidden=NO;
            
            
        }
        else if([[resultset objectForKey:@"unconscious"]isEqualToString:@"No"]){
            unconsiousswitch.on=false;
            _28=@"No";
            unconsious2.hidden=YES;
            _29=@"null";
            unconsiousforlabel.text=@"";
            unconsiouslabel.text=@"No";
            unconsiousforlabel.hidden=YES;
            
        }
        else{
        }
        if([[resultset objectForKey:@"damage"]isEqualToString:@"Minimal"]){
            [damagecarsegment setSelectedSegmentIndex:0];
            _30=@"Minimal";
            
        }
        else if([[resultset objectForKey:@"damage"]isEqualToString:@"Moderate"]){
            [damagecarsegment setSelectedSegmentIndex:1];
            _30=@"Moderate";
            
        }
        else if([[resultset objectForKey:@"damage"]isEqualToString:@"Major"]){
            [damagecarsegment setSelectedSegmentIndex:2];
            _30=@"Major";
            
            
        }
        else if([[resultset objectForKey:@"damage"]isEqualToString:@"Totalled"]){
            [damagecarsegment setSelectedSegmentIndex:3];
            _30=@"Totalled";
            
        }
        
        if([[resultset objectForKey:@"body_strike"]isEqualToString:@"Yes"]){
            patientbodystrikeswitch.on=true;
            _31=@"Yes";
            patientbodystrikelabel.text=@"Yes";
            pleasecomplete.hidden=NO;
            label1.hidden=NO;
            label2.hidden=NO;
            label3.hidden=NO;
            label4.hidden=NO;
            label5.hidden=NO;
            label6.hidden=NO;
            label7.hidden=NO;
            label8.hidden=NO;
            myheadhitlabel.hidden=NO;
            rLhiphitlabel.hidden=NO;
            chesthitlabel.hidden=NO;
            rlleghitlabel.hidden=NO;
            rlshoulderhitlabel.hidden=NO;
            rlkneehitlabel.hidden=NO;
            rlarmhitlabel.hidden=NO;
            otherparthitlabel.hidden=NO;
            
            
        }
        else if([[resultset objectForKey:@"body_strike"]isEqualToString:@"No"]){
            patientbodystrikeswitch.on=false;
            _31=@"No";
            patientbodystrikelabel.text=@"No";
            pleasecomplete.hidden=YES;
            label1.hidden=YES;
            label2.hidden=YES;
            label3.hidden=YES;
            label4.hidden=YES;
            label5.hidden=YES;
            label6.hidden=YES;
            label7.hidden=YES;
            label8.hidden=YES;
            myheadhitlabel.hidden=YES;
            rLhiphitlabel.hidden=YES;
            chesthitlabel.hidden=YES;
            rlleghitlabel.hidden=YES;
            rlshoulderhitlabel.hidden=YES;
            rlkneehitlabel.hidden=YES;
            rlarmhitlabel.hidden=YES;
            otherparthitlabel.hidden=YES;
            myheadhitlabel.text=@"";
            rLhiphitlabel.text=@"";
            chesthitlabel.text=@"";
            rlleghitlabel.text=@"";
            rlshoulderhitlabel.text=@"";
            rlkneehitlabel.text=@"";
            rlarmhitlabel.text=@"";
            otherparthitlabel.text=@"";
            
        }
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"autoacc5"])
    {
        
        AutoAccidentViewController3 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
           destViewController.staff=staff;
        int num=[recorddict count];
        //NSLog(@"result set in second apge:%@",resultset);
        //NSLog(@"recorddict count in autoaccident second page %d",num);
    }
    
    
}
-(IBAction)cancel:(id)sender
{
    if ([[staff objectForKey:@"staff"]isEqualToString:@"1"]) {
        
        
        for(UIViewController *controller in self.navigationController.viewControllers)
        {
            if ([controller isKindOfClass:[staffautocheckViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
    }
    else
        
    {
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
        
    }
    
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

- (void)dealloc {
    
    [super dealloc];
}

@end
