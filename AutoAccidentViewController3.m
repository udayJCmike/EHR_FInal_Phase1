//
//  AutoAccidentViewController3.m
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "AutoAccidentViewController3.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "staffautocheckViewController.h"


@interface AutoAccidentViewController3 ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation AutoAccidentViewController3
@synthesize staff;
@synthesize submit;
@synthesize delete;
@synthesize update;
@synthesize reset;
@synthesize resultset;
@synthesize reset1;
@synthesize recorddict;
@synthesize  anyonecitedswitch;
@synthesize  anyoneciteswitchlabel;
@synthesize  anyonecitedsegment;
@synthesize  anyonecitedsegmentlabel;
@synthesize  afteraccidenthadsegment;
@synthesize  symptomssegment;
@synthesize  symptomshours;
@synthesize  symptomsdays;
@synthesize  afteraccidentwentsegment;
@synthesize  hospitalname;
@synthesize hospitalcity;
@synthesize hospitalstay;
@synthesize hospitalgoingsegment;
@synthesize hospitalgoingother;
@synthesize treatmentgiven;
@synthesize waswrong;
@synthesize wholabel;
@synthesize pleasecomplelabel;
@synthesize hospitallabel;
@synthesize citylabel;
@synthesize staylabel;
@synthesize hospitalgoinglabel;
@synthesize hospitaltreatmentlabel;
@synthesize waswronglabel;
@synthesize afteraccidentsegmentlabel;
@synthesize symptomsappearedsegmentlabel;
@synthesize afteraccidentwentsegmentlabel;
@synthesize  hospitalgoingsegmentlabel;
@synthesize Cancel1;
@synthesize Cancel2;

int a,b,c,d;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13;

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

-(BOOL)onlyalphabetvalidate:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-z]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
int a,b,c,d;
-(BOOL)onlyalphanumericvalidate:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[a-zA-Z0-9]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(IBAction)back:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)checkchanged:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
    if(button7.selected){
        accidentother.hidden=NO;
        _11=accidentother.text;
    }
    else{
        accidentother.text=@"";
        accidentother.hidden=YES;
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
- (IBAction)delete:(id)sender {
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
        
        ////NSLog(@"%@ lucky numbers",luckyNumbers);
        if (luckyNumbers == nil)
        {
            
            ////NSLog(@"luckyNumbers == nil");
            
        }
        else
        {
            
            NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
            // //NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"autoaccident Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form deletion successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                    [self cancel:self];
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form deletion failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                 [self cancel:self];
                }
            }
        }
        
    }
    
    
}

-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"AutoAccident.php?service=autoaccidentedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    //    //NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    ////////NSLog(post);
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&claimnumber=%@&adjustersname=%@&estimate=%@&seating=%@&companion=%@&vehicle_make=%@&vehicle_model=%@&vehicle_year=%@&vehicle_hit=%@&other_vehicle_make=%@&other_vehicle_model=%@&other_vehicle_year=%@&carstopped=%@&driverposition=%@&vehicle_moving_time=%@&wascar=%@&estimated_rate=%@&time_of_day=%@&road_conditions=%@&conditions=%@&head_restraints=%@&seatpos_after_accident=%@&seat_after_accident=%@&lap_seat_belt=%@&shoulder_seat_belt=%@&airbag=%@&wereyou=%@&body_position=%@&body_position1=%@&head_position=%@&head_position1=%@&hands_on_wheel=%@&aware_of_crash=%@&brace=%@&ifyes=%@&further_injury=%@&injurytext=%@&patient_body=%@&patient_body1=%@&body_strike=%@&head_hit=%@&rlshoulder_hit=%@&rlhip_hit=%@&rlknee_hit=%@&chest_hit=%@&rlarm_hit=%@&rlleg_hit=%@&otherpart_hit=%@&wearing_glasses=%@&glasses_impact=%@&unconscious=%@&uncon=%@&estimated_amount=%@&damage=%@&was_anyone_cited=%@&who=%@&headache=%@&dizziness=%@&nausea=%@&confusion=%@&disorientation=%@&neckpain=%@&otherpain=%@&otherpaintext=%@&first_symptom=%@&symptom=%@&after_accident=%@&accident=%@&hosname=%@&city=%@&staylength=%@&hospitalget=%@&hospital1=%@&xray=%@&wrong=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"claim No"],[recorddict objectForKey:@"adjustername"],[recorddict objectForKey:@"estimatelabel"],[recorddict objectForKey:@"wereyouthelabel"],[recorddict objectForKey:@"anyoneincar"],[recorddict objectForKey:@"mymake"],[recorddict objectForKey:@"mymodel"],[recorddict objectForKey:@"myyear"],[recorddict objectForKey:@"vehiclehitlabel"],[recorddict objectForKey:@"othermake"],[recorddict objectForKey:@"othermodel"],[recorddict objectForKey:@"otheryear"],[recorddict objectForKey:@"carstoppedlabel"],[recorddict objectForKey:@"footonbrakelabel"],[recorddict objectForKey:@"vehiclemovinglabel"],[recorddict objectForKey:@"wasscarlabel"],[recorddict objectForKey:@"speed"],[recorddict objectForKey:@"timeofdaylabel"],[recorddict objectForKey:@"roadconditionlabel"],[recorddict objectForKey:@"roadother"],[recorddict objectForKey:@"headrestraintlabel"],[recorddict objectForKey:@"seatbeforelabel"],[recorddict objectForKey:@"seatafterlabel"],[recorddict objectForKey:@"lapseatbeltlabel"],[recorddict objectForKey:@"shoulderseatbeltlabel"],[recorddict objectForKey:@"airbagdeployed"],[recorddict objectForKey:@"wereyou"],[recorddict objectForKey:@"bodyposition"],[recorddict objectForKey:@"bodyposition1"],[recorddict objectForKey:@"headposition"],[recorddict objectForKey:@"headposition1"],[recorddict objectForKey:@"handsonwheel"],[recorddict objectForKey:@"awareofcrash"],[recorddict objectForKey:@"braceoption"],[recorddict objectForKey:@"braceseg"],[recorddict objectForKey:@"furtherinjury"],[recorddict objectForKey:@"injuryexplainlabel"],[recorddict objectForKey:@"patientbodyseg"],[recorddict objectForKey:@"patientbodyother"],[recorddict objectForKey:@"patientbodystrikelabel"],[recorddict objectForKey:@"myheadhitlabel"],[recorddict objectForKey:@"rlshoulderhitlabel"],[recorddict objectForKey:@"rlhiphitlabel"],[recorddict objectForKey:@"rlkneehitlabel"],[recorddict objectForKey:@"chesthitlabel"],[recorddict objectForKey:@"rlarmhitlabel"],[recorddict objectForKey:@"rlleghitlabel"],[recorddict objectForKey:@"otherparthitlabel"],[recorddict objectForKey:@"wearingglasslabel"],[recorddict objectForKey:@"glassesstilllabel"],[recorddict objectForKey:@"unconsiouslabel"],[recorddict objectForKey:@"unconsiousforlabel"],[recorddict objectForKey:@"propertydamagelabel"],[recorddict objectForKey:@"damageseg"],[recorddict objectForKey:@"anyonesited"],[recorddict objectForKey:@"anyonesitedseglabel"],[recorddict objectForKey:@"button1"],[recorddict objectForKey:@"button2"],[recorddict objectForKey:@"button3"],[recorddict objectForKey:@"button4"],[recorddict objectForKey:@"button5"],[recorddict objectForKey:@"button6"],[recorddict objectForKey:@"button7"],[recorddict objectForKey:@"afteraccidentwhere"],[recorddict objectForKey:@"symptomsappearedsegmentlabel"],[recorddict objectForKey:@"symptomshours"],[recorddict objectForKey:@"afteraccidentwent"],[recorddict objectForKey:@"afteraccidentwentother"],[recorddict objectForKey:@"hospitalname"],[recorddict objectForKey:@"hospitalcity"],[recorddict objectForKey:@"hospitalstay"],[recorddict objectForKey:@"hospitalgoing"],[recorddict objectForKey:@"hospitalgoingother"],[recorddict objectForKey:@"treatmentgiven"],[recorddict objectForKey:@"waswrong"],secondEntity,value2];
    //NSLog(@"POST:%@",post);
    
    
    
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
    //    //NSLog(@"data %@",data);
    
    return data;
    
}
-(void)updatedata
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1update:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    ////NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        ////NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // //NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"autoaccident Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form updation successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
             [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form updation failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
             [self cancel:self];
            }
        }
    }
}
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"AutoAccident.php?service=autoaccidentdelete";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    //    //NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    ////////NSLog(post);
    
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
    //    //NSLog(@"data %@",data);
    
    return data;
    
}

-(IBAction)submit:(id)sender;
{
    du=[[databaseurl alloc]init];
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:temp];
    
    UIImage *img=[UIImage imageNamed:@"checkBox.png"];
    
    if(button1.currentImage!=img)
    {
        //NSLog(@"INSIDE BUTTON ONE CLICK");
        _1=@"Headache";
        
        _11=@"";
        
    }
    else
    {
        _1=@"";
    }
    
    if(button2.currentImage!=img)
    {
        _2=@"Dizziness";
        _11=@"";
        
        
    }
    
    else
    {
        _2=@"";
    }
    if(button3.currentImage!=img)
    {
        _3=@"Nausea";
        
        _11=@"";
        
        
    }
    else
    {
        _3=@"";
    }
    
    if(button4.currentImage!=img)
    {
        _4=@"Confusion";
        
        _11=@"";
        
    }
    else
    {
        _4=@"";
    }
    
    if(button5.currentImage!=img)
    {
        _5=@"Disorientation";
        
        _11=@"";
        
        
    }
    
    
    else
    {
        _5=@"";
    }
    if(button6.currentImage!=img)
    {
        _6=@"Neck Pain";
        
        _11=@"";
        
        
        
    }
    else
    {
        _6=@"";
        
    }
    if(button7.currentImage!=img)
    {
        _7=@"Other";
        _11=accidentother.text;
       
    }
    else
    {
        _11=@"";
        _7=@"null";
       
    }
    
    if((symptomssegment.selectedSegmentIndex==1)||(symptomssegment.selectedSegmentIndex==3))
        
    {
    }
    else  {
        symptomshours.text=@"";
    }
    
    if(afteraccidentwentsegment.selectedSegmentIndex==5){
        _14=afteraccidentother.text;
        
    }
    
    else {
        afteraccidentother.text=@"";
        _14=@"";
    }
    
    
    
    if(hospitalgoingsegment.selectedSegmentIndex==1)
    {
        _13=hospitalgoingother.text;
        
    }
    else
    {
        hospitalgoingother.text=@"";
        _13=@"";
        
    }
    if(afteraccidentwentsegment.selectedSegmentIndex==2){
       
        
    }
    
    else {
        hospitalname.text=@"";
        hospitalcity.text=@"";
        hospitalstay.text=@"";
        treatmentgiven.text=@"";
        waswrong.text=@"";
        hospitalgoingsegmentlabel.text=@"";
    }


    texty1=[hospitalname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[hospitalcity.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[hospitalstay.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[treatmentgiven.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[waswrong.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[hospitalgoingother.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[symptomshours.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[afteraccidentother.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty9=[accidentother.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //texty10=[other6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    // texty11=[other7.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    // texty12=[other8.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    c=1;
    if((([accidentother.text length]>0)&&([du otherfields:accidentother.text]==1))||([accidentother.text length]==0))
    {
        if((([symptomshours.text length]>0)&&([du date:symptomshours.text]==1))||([symptomshours.text length]==0))
        {
            if((([afteraccidentother.text length]>0)&&([du otherfields:afteraccidentother.text]==1))||([afteraccidentother.text length]==0))
            {
                if((([hospitalname.text length]>0)&&([du patname:hospitalname.text]==1))||([hospitalname.text length]==0))
                {
                    if((([hospitalcity.text length]>0)&&([du patname:hospitalcity.text]==1))||([hospitalcity.text length]==0))
                    {
                        if((([hospitalstay.text length]>0)&&([du date:hospitalstay.text]==1))||([hospitalstay.text length]==0))
                        {
                            if((([hospitalgoingother.text length]>0)&&([du otherfields:hospitalgoingother.text]==1))||([hospitalgoingother.text length]==0))
                            {
                                if((([treatmentgiven.text length]>0)&&([du otherfields:treatmentgiven.text]==1))||([treatmentgiven.text length]==0))
                                {
                                    if((([waswrong.text length]>0)&&([du otherfields:waswrong.text]==1))||([waswrong.text length]==0))
                                    {
                                        c=1;
                                        [recorddict setValue:anyoneciteswitchlabel.text forKey:@"anyonesited"];
                                        [recorddict setValue:afteraccidentwentsegmentlabel.text forKey:@"afteraccidentwent"];
                                        [recorddict setValue:anyonecitedsegmentlabel.text forKey:@"anyonesitedseglabel"];
                                        [recorddict setValue:_12 forKey:@"symptomsappearedsegmentlabel"];
                                        // [recorddict setValue:afteraccidentsegmentlabel.text forKey:@"afteraccidentsegmentlabel"];
                                        [recorddict setValue:_1 forKey:@"button1"];
                                        [recorddict setValue:_2 forKey:@"button2"];
                                        [recorddict setValue:_3 forKey:@"button3"];
                                        [recorddict setValue:_4 forKey:@"button4"];
                                        [recorddict setValue:_5 forKey:@"button5"];
                                        [recorddict setValue:_6 forKey:@"button6"];
                                        [recorddict setValue:_7 forKey:@"button7"];
                                        [recorddict setValue:_11 forKey:@"afteraccidentwhere"];
                                        [recorddict setValue:afteraccidentother.text forKey:@"afteraccidentwentother"];
                                        
                                        [recorddict setValue:symptomshours.text forKey:@"symptomshours"];
                                        [recorddict setValue:hospitalname.text forKey:@"hospitalname"];
                                        [recorddict setValue:hospitalcity.text forKey:@"hospitalcity"];
                                        [recorddict setValue:hospitalstay.text forKey:@"hospitalstay"];
                                        [recorddict setValue:treatmentgiven.text forKey:@"treatmentgiven"];
                                        [recorddict setValue:waswrong.text forKey:@"waswrong"];
                                        [recorddict setValue:_13 forKey:@"hospitalgoingother"];
                                        [recorddict setValue:afteraccidentother.text forKey:@"afteraccidentwentother"];
                                        
                                        [recorddict setValue:hospitalgoingsegmentlabel.text forKey:@"hospitalgoing"];
                                    }
                                    else
                                    {
                                        c=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid was wrong field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                    }
                                }
                                else
                                {
                                    c=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid treatment given field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                                }
                            }
                            else
                            {
                                c=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid other field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                            }
                        }
                        else
                        {
                            c=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid length of stay." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                        }
                    }
                    else
                    {
                        c=0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid city." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    }
                }
                else
                {
                    c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid name of hospital." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
            }
            else
            {
                c=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid after accident i went field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
        }
        else
        {
            c=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid symptoms first appeared field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
    }
    else
    {
        c=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid after accident i had field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
  
    
         if(c==1)
    {
        
       
        int num=[recorddict count];
        //NSLog(@"recorddict count in autoaccident second page %d",num);
        
        
        UIButton *buton=(UIButton*)sender;
        if(buton.tag==11)
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
        else  if(buton.tag==12)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            //                  [self insertdata];
            if ([[self submitvalues]isEqualToString:@"success"]) {
                [self updatedata];
                
            }
            
            
            
            
            
        }
    }
    
    else
    {
        NULL;
    }
    
    //[self performSegueWithIdentifier:@"autotowelcome" sender:self];
    
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
			////NSLog(@"Access Not Available");
			break;
		}
            
		case ReachableViaWWAN:
		{
			isConnect=YES;
			////NSLog(@"Reachable WWAN");
			break;
		}
		case ReachableViaWiFi:
		{
			isConnect=YES;
			////NSLog(@"Reachable WiFi");
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
    
    ////NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        ////NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // //NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"autoaccident Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form submission successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
             [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form submission failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
             [self cancel:self];
            }
        }
    }
    
}


-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"AutoAccident.php?service=autoaccidentinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    //NSLog(@"record dict value%@",recorddict);
    //NSLog(@"object for key claimnumber is::%@",[recorddict objectForKey:@"adjustername"]);
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&claimnumber=%@&adjustersname=%@&estimate=%@&seating=%@&companion=%@&vehicle_make=%@&vehicle_model=%@&vehicle_year=%@&vehicle_hit=%@&other_vehicle_make=%@&other_vehicle_model=%@&other_vehicle_year=%@&carstopped=%@&driverposition=%@&vehicle_moving_time=%@&wascar=%@&estimated_rate=%@&time_of_day=%@&road_conditions=%@&conditions=%@&head_restraints=%@&seatpos_after_accident=%@&seat_after_accident=%@&lap_seat_belt=%@&shoulder_seat_belt=%@&airbag=%@&wereyou=%@&body_position=%@&body_position1=%@&head_position=%@&head_position1=%@&hands_on_wheel=%@&aware_of_crash=%@&brace=%@&ifyes=%@&further_injury=%@&injurytext=%@&patient_body=%@&patient_body1=%@&body_strike=%@&head_hit=%@&rlshoulder_hit=%@&rlhip_hit=%@&rlknee_hit=%@&chest_hit=%@&rlarm_hit=%@&rlleg_hit=%@&otherpart_hit=%@&wearing_glasses=%@&glasses_impact=%@&unconscious=%@&uncon=%@&estimated_amount=%@&damage=%@&was_anyone_cited=%@&who=%@&headache=%@&dizziness=%@&nausea=%@&confusion=%@&disorientation=%@&neckpain=%@&otherpain=%@&otherpaintext=%@&first_symptom=%@&symptom=%@&after_accident=%@&accident=%@&hosname=%@&city=%@&staylength=%@&hospitalget=%@&hospital1=%@&xray=%@&wrong=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"claim No"],[recorddict objectForKey:@"adjustername"],[recorddict objectForKey:@"estimatelabel"],[recorddict objectForKey:@"wereyouthelabel"],[recorddict objectForKey:@"anyoneincar"],[recorddict objectForKey:@"mymake"],[recorddict objectForKey:@"mymodel"],[recorddict objectForKey:@"myyear"],[recorddict objectForKey:@"vehiclehitlabel"],[recorddict objectForKey:@"othermake"],[recorddict objectForKey:@"othermodel"],[recorddict objectForKey:@"otheryear"],[recorddict objectForKey:@"carstoppedlabel"],[recorddict objectForKey:@"footonbrakelabel"],[recorddict objectForKey:@"vehiclemovinglabel"],[recorddict objectForKey:@"wasscarlabel"],[recorddict objectForKey:@"speed"],[recorddict objectForKey:@"timeofdaylabel"],[recorddict objectForKey:@"roadconditionlabel"],[recorddict objectForKey:@"roadother"],[recorddict objectForKey:@"headrestraintlabel"],[recorddict objectForKey:@"seatbeforelabel"],[recorddict objectForKey:@"seatafterlabel"],[recorddict objectForKey:@"lapseatbeltlabel"],[recorddict objectForKey:@"shoulderseatbeltlabel"],[recorddict objectForKey:@"airbagdeployed"],[recorddict objectForKey:@"wereyou"],[recorddict objectForKey:@"bodyposition"],[recorddict objectForKey:@"bodyposition1"],[recorddict objectForKey:@"headposition"],[recorddict objectForKey:@"headposition1"],[recorddict objectForKey:@"handsonwheel"],[recorddict objectForKey:@"awareofcrash"],[recorddict objectForKey:@"braceoption"],[recorddict objectForKey:@"braceseg"],[recorddict objectForKey:@"furtherinjury"],[recorddict objectForKey:@"injuryexplainlabel"],[recorddict objectForKey:@"patientbodyseg"],[recorddict objectForKey:@"patientbodyother"],[recorddict objectForKey:@"patientbodystrikelabel"],[recorddict objectForKey:@"myheadhitlabel"],[recorddict objectForKey:@"rlshoulderhitlabel"],[recorddict objectForKey:@"rlhiphitlabel"],[recorddict objectForKey:@"rlkneehitlabel"],[recorddict objectForKey:@"chesthitlabel"],[recorddict objectForKey:@"rlarmhitlabel"],[recorddict objectForKey:@"rlleghitlabel"],[recorddict objectForKey:@"otherparthitlabel"],[recorddict objectForKey:@"wearingglasslabel"],[recorddict objectForKey:@"glassesstilllabel"],[recorddict objectForKey:@"unconsiouslabel"],[recorddict objectForKey:@"unconsiousforlabel"],[recorddict objectForKey:@"propertydamagelabel"],[recorddict objectForKey:@"damageseg"],[recorddict objectForKey:@"anyonesited"],[recorddict objectForKey:@"anyonesitedseglabel"],[recorddict objectForKey:@"button1"],[recorddict objectForKey:@"button2"],[recorddict objectForKey:@"button3"],[recorddict objectForKey:@"button4"],[recorddict objectForKey:@"button5"],[recorddict objectForKey:@"button6"],[recorddict objectForKey:@"button7"],[recorddict objectForKey:@"afteraccidentwhere"],[recorddict objectForKey:@"symptomsappearedsegmentlabel"],[recorddict objectForKey:@"symptomshours"],[recorddict objectForKey:@"afteraccidentwent"],[recorddict objectForKey:@"afteraccidentwentother"],[recorddict objectForKey:@"hospitalname"],[recorddict objectForKey:@"hospitalcity"],[recorddict objectForKey:@"hospitalstay"],[recorddict objectForKey:@"hospitalgoing"],[recorddict objectForKey:@"hospitalgoingother"],[recorddict objectForKey:@"treatmentgiven"],[recorddict objectForKey:@"waswrong"],secondEntity,value2];
    //NSLog(@"POST:%@",post);
    
    
    NSURL *url = [NSURL URLWithString:url2];
    
    ////////NSLog(post);
    
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
    //NSLog(@"data %@",data);
    
    return data;
    
}


-(IBAction)clearall:(id)sender;
{
    anyonecitedsegmentlabel.text=@"You";
    anyoneciteswitchlabel.text=@"Yes";
   // wholabel.hidden=YES;
  //  anyonecitedsegment.hidden=YES;
    symptomshours.text=@"";
    symptomshours.hidden=YES;
    symptomsdays.text=@"";
    hospitalname.text=@"";
    hospitalcity.text=@"";
    hospitalstay.text=@"";
    hospitalgoingother.text=@"";
    treatmentgiven.text=@"";
    waswrong.text=@"";
    afteraccidentother.text=@"";
    afteraccidentother.hidden=YES;
    symptomssegment.selectedSegmentIndex=0;
    afteraccidenthadsegment.selectedSegmentIndex=0;
    hospitalgoingsegment.selectedSegmentIndex=0;
    afteraccidentwentsegment.selectedSegmentIndex=0;
    //    anyonecitedswitch.on=true;
    [anyonecitedswitch setOn:YES animated:YES];
       anyoneciteswitchlabel.text=@"Yes";
    pleasecomplelabel.hidden=YES;
    hospitallabel.hidden=YES;
    hospitalname.hidden=YES;
    hospitalcity.hidden=YES;
    citylabel.hidden=YES;
    hospitalstay.hidden=YES;
    staylabel.hidden=YES;
    hospitalgoingsegment.hidden=YES;
    hospitalgoingother.hidden=YES;
    hospitalgoinglabel.hidden=YES;
    treatmentgiven.hidden=YES;
    hospitaltreatmentlabel.hidden=YES;
    waswrong.hidden=YES;
    waswronglabel.hidden=YES;
    accidentother.text=@"";
    accidentother.hidden=YES;
     afteraccidentsegmentlabel.text=@"Headache";
     [button1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    [button1 setSelected:NO];
    [button2 setSelected:NO];
    [button3 setSelected:NO];
    [button4 setSelected:NO];
    [button5 setSelected:NO];
    [button6 setSelected:NO];
    [button7 setSelected:NO];
    [anyonecitedsegment setSelectedSegmentIndex:0];
    //[button1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    anyoneciteswitchlabel.text=@"Yes";
    wholabel.hidden=NO;
    anyonecitedsegment.hidden=NO;
    
    
}
-(void)dismissKeyboard
{
        printView.hidden = YES;
    [symptomsdays resignFirstResponder];
    [symptomshours resignFirstResponder];
    [hospitalcity resignFirstResponder];
    [hospitalgoingother resignFirstResponder];
    [hospitalstay resignFirstResponder];
    [hospitalname resignFirstResponder];
    [treatmentgiven resignFirstResponder];
    [waswrong resignFirstResponder];
    [accidentother resignFirstResponder];
    [afteraccidentother resignFirstResponder];
}
-(IBAction)anyonecitedswichchange:(id)sender;
{
    if (anyonecitedswitch.on)
    {
        anyoneciteswitchlabel.text=@"Yes";
        wholabel.hidden=NO;
        anyonecitedsegment.hidden=NO;
    }
    else
    {
        anyoneciteswitchlabel.text=@"No";
        wholabel.hidden=YES;
        anyonecitedsegment.hidden=YES;
    }
}
-(IBAction)whocitedsegmentchange:(id)sender;
{
    if (anyonecitedsegment.selectedSegmentIndex==0)
    {
        anyonecitedsegmentlabel.text=@"You";
    }
    if (anyonecitedsegment.selectedSegmentIndex==1)
    {
        anyonecitedsegmentlabel.text=@"Other Driver";
    }
}

-(IBAction)symptomsappearedsegmentchange:(id)sender;
{
    if (symptomssegment.selectedSegmentIndex==0)
    {
        _12=@"Immediately";
        symptomshours.hidden=YES;
        symptomshours.text=@"";
        // symptomsdays.text=@"";
        
        // symptomsdays.hidden=YES;
    }
    if (symptomssegment.selectedSegmentIndex==1)
    {
        _12=@"Hours after the Accident";
        symptomshours.hidden=NO;
        symptomshours.text=@"";
        //symptomsdays.text=@"";
        
        // symptomsdays.hidden=YES;
    }
    if (symptomssegment.selectedSegmentIndex==2)
    {
        _12=@"The next day";
        symptomshours.hidden=YES;
        symptomshours.text=@"";
        // symptomsdays.text=@"";
        
        // symptomsdays.hidden=YES;
    }
    if (symptomssegment.selectedSegmentIndex==3)
    {
        _12=@"Days";
        symptomshours.hidden=NO;
        //symptomsdays.text=@"";
        symptomshours.text=@"";
        // symptomsdays.hidden=NO;
    }
    
}
-(IBAction)afteraccidentwentsegmentchange:(id)sender;
{
    if (afteraccidentwentsegment.selectedSegmentIndex==0)
    {
        afteraccidentwentsegmentlabel.text=@"Home";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
        afteraccidentother.text=@"";
        afteraccidentother.hidden=YES;
    }
    if (afteraccidentwentsegment.selectedSegmentIndex==1)
    {
        afteraccidentwentsegmentlabel.text=@"Work";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
        afteraccidentother.text=@"";
        afteraccidentother.hidden=YES;
    }
    
    if (afteraccidentwentsegment.selectedSegmentIndex==2)
    {
        afteraccidentwentsegmentlabel.text=@"Hospital";
        pleasecomplelabel.hidden=NO;
        hospitallabel.hidden=NO;
        hospitalname.hidden=NO;
        hospitalcity.hidden=NO;
        citylabel.hidden=NO;
        hospitalstay.hidden=NO;
        staylabel.hidden=NO;
        hospitalgoingsegment.hidden=NO;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=NO;
        treatmentgiven.hidden=NO;
        hospitaltreatmentlabel.hidden=NO;
        waswrong.hidden=NO;
        waswronglabel.hidden=NO;
        afteraccidentother.hidden=YES;
        afteraccidentother.text=@"";
        if (hospitalgoingsegment.selectedSegmentIndex==0)
        {
            hospitalgoingsegmentlabel.text=@"Ambulance";
            hospitalgoingother.hidden=YES;
            _13=@"";
        }
        if (hospitalgoingsegment.selectedSegmentIndex==1)
        {
            hospitalgoingsegmentlabel.text=@"Other";
            hospitalgoingother.hidden=NO;
            hospitalgoingother.text=@"";
            _13=hospitalgoingother.text;
        }
    }
    
    if (afteraccidentwentsegment.selectedSegmentIndex==3)
    {
        afteraccidentwentsegmentlabel.text=@"Family";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
        afteraccidentother.hidden=YES;
        afteraccidentother.text=@"";
    }
    
    if (afteraccidentwentsegment.selectedSegmentIndex==4)
    {
        afteraccidentwentsegmentlabel.text=@"Physician";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
        afteraccidentother.hidden=YES;
        afteraccidentother.text=@"";
    }
    
    if (afteraccidentwentsegment.selectedSegmentIndex==5)
    {
        afteraccidentwentsegmentlabel.text=@"Other";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
        afteraccidentother.hidden=NO;
        _14=afteraccidentother.text;
    }
    
}
-(IBAction)hospitalgoingsegmentchange:(id)sender;
{
    if (hospitalgoingsegment.selectedSegmentIndex==0)
    {
        hospitalgoingsegmentlabel.text=@"Ambulance";
        hospitalgoingother.hidden=YES;
        _13=@"null";
    }
    if (hospitalgoingsegment.selectedSegmentIndex==1)
    {
        hospitalgoingsegmentlabel.text=@"Other";
        hospitalgoingother.hidden=NO;
        hospitalgoingother.text=@"";
        _13=hospitalgoingother.text;
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

    
    afteraccidentsegmentlabel.text=@"Headache";
    [button1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    
    update.hidden=YES;
    delete.hidden=YES;
    reset1.hidden=YES;
    Cancel1.hidden=NO;
    Cancel2.hidden=YES;
    submit.hidden=NO;
    reset.hidden=NO;
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
    
    pleasecomplelabel.hidden=YES;
    hospitallabel.hidden=YES;
    hospitalname.hidden=YES;
    hospitalcity.hidden=YES;
    citylabel.hidden=YES;
    hospitalstay.hidden=YES;
    staylabel.hidden=YES;
    hospitalgoingsegment.hidden=YES;
    hospitalgoingother.hidden=YES;
    hospitalgoinglabel.hidden=YES;
    treatmentgiven.hidden=YES;
    hospitaltreatmentlabel.hidden=YES;
    waswrong.hidden=YES;
    waswronglabel.hidden=YES;
    accidentother.hidden=YES;
    afteraccidentother.hidden=YES;
    anyoneciteswitchlabel.text=@"Yes";
    anyonecitedsegmentlabel.text=@"You";
    afteraccidentsegmentlabel.text=@"Headache";
    symptomsappearedsegmentlabel.text=@"Immediately";
    afteraccidentwentsegmentlabel.text=@"Home";
    hospitalgoingsegmentlabel.text=@"Ambulance";
    afteraccidentother.text=@"null";
    _1=@"null";
    _2=@"null";
    _3=@"null";
    _4=@"null";
    _5=@"null";
    _6=@"null";
    _7=@"null";
    _11=@"null";
    _12=@"Immediately";
    _13=@"null";
    _14=@"null";
    //NSLog(@"resul sert count in 3rd auto form:%@",resultset);
    if ([resultset count]>0)
    {
        update.hidden=NO;
        delete.hidden=NO;
        reset1.hidden=NO;
        Cancel1.hidden=YES;
        Cancel2.hidden=NO;
        submit.hidden=YES;
        reset.hidden=YES;
        [self loaddata];
    }
    
	// Do any additional setup after loading the view.
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
-(void)loaddata{
    hospitalcity.text=[resultset objectForKey:@"city"];
    hospitalname.text=[resultset objectForKey:@"hosname"];
    treatmentgiven.text=[resultset objectForKey:@"xray"];
    waswrong.text=[resultset objectForKey:@"wrong"];
    hospitalgoingother.text=[resultset objectForKey:@"hospital1"];
    hospitalstay.text=[resultset objectForKey:@"staylength"];
    afteraccidentother.text=[resultset objectForKey:@"accident"];
    accidentother.text=[resultset objectForKey:@"otherpaintext"];
    symptomshours.text=[resultset objectForKey:@"symptom"];
    if([[resultset objectForKey:@"was_anyone_cited"]isEqualToString:@"Yes"]){
        anyonecitedswitch.on=true;
        anyoneciteswitchlabel.text=@"Yes";
        wholabel.hidden=NO;
        anyonecitedsegment.hidden=NO;
        
    }
    else if([[resultset objectForKey:@"was_anyone_cited"]isEqualToString:@"No"]){
        anyonecitedswitch.on=false;
        anyoneciteswitchlabel.text=@"No";
        wholabel.hidden=YES;
        anyonecitedsegment.hidden=YES;
    }
    else{
    }
    if([[resultset objectForKey:@"who"]isEqualToString:@"You"]){
        [anyonecitedsegment setSelectedSegmentIndex:0];
        anyonecitedsegmentlabel.text=@"You";
    }
    else if([[resultset objectForKey:@"who"]isEqualToString:@"Other Driver"]){
        [anyonecitedsegment setSelectedSegmentIndex:1];
        anyonecitedsegmentlabel.text=@"Other Driver";
    }
    else{
        
    }
    if([[resultset objectForKey:@"first_symptom"]isEqualToString:@"Immediately"]){
        [symptomssegment setSelectedSegmentIndex:0];
        symptomshours.hidden=YES;
        symptomshours.text=@"";
        
    }
    else if([[resultset objectForKey:@"first_symptom"]isEqualToString:@"Hours after the Accident"]){
        [symptomssegment setSelectedSegmentIndex:1];
        _12=@"Hours after the Accident";
        symptomshours.hidden=NO;
        symptomshours.text=[resultset objectForKey:@"symptom"];;
        
    }
    else if([[resultset objectForKey:@"first_symptom"]isEqualToString:@"The next day"]){
        [symptomssegment setSelectedSegmentIndex:2];
        _12=@"The next day";
        symptomshours.hidden=YES;
        symptomshours.text=@"";
        
        
    }
    else if([[resultset objectForKey:@"first_symptom"]isEqualToString:@"Days"]){
        [symptomssegment setSelectedSegmentIndex:3];
        _12=@"Days";
        symptomshours.hidden=NO;
        //symptomsdays.text=@"";
        symptomshours.text=[resultset objectForKey:@"symptom"];;
    }
    
    else{
        
    }
    if([[resultset objectForKey:@"after_accident"]isEqualToString:@"Home"]){
        [afteraccidentwentsegment setSelectedSegmentIndex:0];
        afteraccidentwentsegmentlabel.text=@"Home";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
        afteraccidentother.text=@"";
        afteraccidentother.hidden=YES;
        hospitalcity.text=@"";
        hospitalname.text=@"";
        treatmentgiven.text=@"";
        waswrong.text=@"";
        hospitalgoingother.text=@"";
        hospitalstay.text=@"";
        
    }
    else if([[resultset objectForKey:@"after_accident"]isEqualToString:@"Work"]){
        [afteraccidentwentsegment setSelectedSegmentIndex:1];
        afteraccidentwentsegmentlabel.text=@"Work";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
        afteraccidentother.text=@"";
        afteraccidentother.hidden=YES;
        hospitalcity.text=@"";
        hospitalname.text=@"";
        treatmentgiven.text=@"";
        waswrong.text=@"";
        hospitalgoingother.text=@"";
        hospitalstay.text=@"";
        
        
    }
    else if([[resultset objectForKey:@"after_accident"]isEqualToString:@"Hospital"]){
        [afteraccidentwentsegment setSelectedSegmentIndex:2];
        
        afteraccidentwentsegmentlabel.text=@"Hospital";
        pleasecomplelabel.hidden=NO;
        hospitallabel.hidden=NO;
        hospitalname.hidden=NO;
        hospitalcity.hidden=NO;
        citylabel.hidden=NO;
        hospitalstay.hidden=NO;
        staylabel.hidden=NO;
        hospitalgoingsegment.hidden=NO;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=NO;
        treatmentgiven.hidden=NO;
        hospitaltreatmentlabel.hidden=NO;
        waswrong.hidden=NO;
        waswronglabel.hidden=NO;
        afteraccidentother.hidden=YES;
        afteraccidentother.text=@"";
        
    }
    else if([[resultset objectForKey:@"after_accident"]isEqualToString:@"Family"]){
        [afteraccidentwentsegment setSelectedSegmentIndex:3];
        afteraccidentwentsegmentlabel.text=@"Family";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
        afteraccidentother.hidden=YES;
        afteraccidentother.text=@"";
        hospitalcity.text=@"";
        hospitalname.text=@"";
        treatmentgiven.text=@"";
        waswrong.text=@"";
        hospitalgoingother.text=@"";
        hospitalstay.text=@"";
        
        
        
    }
    else if([[resultset objectForKey:@"after_accident"]isEqualToString:@"Physician"]){
        [afteraccidentwentsegment setSelectedSegmentIndex:4];
        afteraccidentwentsegmentlabel.text=@"Physician";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
        afteraccidentother.hidden=YES;
        afteraccidentother.text=@"";
        hospitalcity.text=@"";
        hospitalname.text=@"";
        treatmentgiven.text=@"";
        waswrong.text=@"";
        hospitalgoingother.text=@"";
        hospitalstay.text=@"";
        
        
    }
    else if([[resultset objectForKey:@"after_accident"]isEqualToString:@"Other"]){
        [afteraccidentwentsegment setSelectedSegmentIndex:5];
        afteraccidentwentsegmentlabel.text=@"Other";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
        afteraccidentother.hidden=NO;
        afteraccidentother.text=[resultset objectForKey:@"accident"];
        _14=afteraccidentother.text;
        hospitalcity.text=@"";
        hospitalname.text=@"";
        treatmentgiven.text=@"";
        waswrong.text=@"";
        hospitalgoingother.text=@"";
        hospitalstay.text=@"";
    }
    if([[resultset objectForKey:@"hospitalget"]isEqualToString:@"Ambulance"]){
        [hospitalgoingsegment setSelectedSegmentIndex:0];
        hospitalgoingsegmentlabel.text=@"Ambulance";
        hospitalgoingother.hidden=YES;
        hospitalgoingother.text=@"";
        _13=@"null";
        
        
        
    }
    else if([[resultset objectForKey:@"hospitalget"]isEqualToString:@"Other"]){
        hospitalgoingsegmentlabel.text=@"Other";
        [hospitalgoingsegment setSelectedSegmentIndex:1];
        hospitalgoingother.hidden=NO;
        
        hospitalgoingother.text=[resultset objectForKey:@"hospital1"];
        _13=hospitalgoingother.text;
    }
    
    
    
    if([[resultset objectForKey:@"headache"]isEqualToString:@"null"]){
        [button1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
        
    }
    else if([[resultset objectForKey:@"headache"]isEqualToString:@"Headache"])
    {
        [button1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        
    }
    
    if([[resultset objectForKey:@"dizziness"]isEqualToString:@"null"]){
        [button2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
        
    }
    else if([[resultset objectForKey:@"dizziness"]isEqualToString:@"Dizziness"]){
        [button2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        
    }
    
    if([[resultset objectForKey:@"nausea"]isEqualToString:@"null"]){
        [button3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
        
    }
    else if([[resultset objectForKey:@"nausea"]isEqualToString:@"Nausea"]){
        [button3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        
    }
    
    if([[resultset objectForKey:@"confusion"]isEqualToString:@"null"]){
        [button4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
        
    }
    else if([[resultset objectForKey:@"confusion"]isEqualToString:@"Confusion"]){
        [button4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        
    }
    if([[resultset objectForKey:@"disorientation"]isEqualToString:@"null"]){
        [button5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
        
    }
    else if([[resultset objectForKey:@"disorientation"]isEqualToString:@"Disorientation"]){
        [button5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        
    }
    
    if([[resultset objectForKey:@"neckpain"]isEqualToString:@"null"]){
        [button6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
        
    }
    else if([[resultset objectForKey:@"neckpain"]isEqualToString:@"Neck Pain"]){
        [button6 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        
    }
    if([[resultset objectForKey:@"otherpain"]isEqualToString:@"null"]){
        [button7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
        accidentother.text=@"";
        accidentother.hidden=YES;
        
    }
    else if([[resultset objectForKey:@"otherpain"]isEqualToString:@"Other"]){
        [button7 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        accidentother.hidden=NO;
        _11=accidentother.text;
        
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    
}
@end
