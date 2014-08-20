//
//  hipViewController.m
//  hip
//
//  Created by DeemsysInc on 4/18/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "hipViewController.h"
#import "hip1ViewController.h"
#import "Reachability.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "hamilViewController.h"

@interface hipViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation hipViewController
@synthesize patientname;
@synthesize resultset;
@synthesize date;
@synthesize left;
@synthesize right;
@synthesize pelvic;
@synthesize ao;
@synthesize palpation;
@synthesize rangeofmotion;
@synthesize orthotesting;
@synthesize flexionleft;
@synthesize flexionright;
@synthesize extensionleft;
@synthesize extensionright;
@synthesize  abductionleft;
@synthesize abductionright;
@synthesize adductionleft;
@synthesize adductionright;
@synthesize internalleft;
@synthesize internalright;
@synthesize externalleft;
@synthesize externalright;
@synthesize patrickleft;
@synthesize patrickright;
@synthesize nachlasleft;
@synthesize nachlasright;
@synthesize  elyleft;
@synthesize elyright;
@synthesize yeomanleft;
@synthesize yeomanright;
@synthesize oberleft;
@synthesize oberright;
@synthesize hibbsleft;
@synthesize hibbsright;
@synthesize thomasleft;
@synthesize thomasright;
@synthesize neurological;
@synthesize l1left;
@synthesize l1right;
@synthesize l2left;
@synthesize l2right;
@synthesize l3left;
@synthesize l3right;
@synthesize l4left;
@synthesize l4right;
@synthesize l5left;
@synthesize l5right;
@synthesize s1left;
@synthesize s1right;
@synthesize ml1left;
@synthesize ml1right;
@synthesize ml2left;
@synthesize ml2right;
@synthesize ml3left;
@synthesize ml3right;
@synthesize ml4left;
@synthesize ml4right;
@synthesize ml5left;
@synthesize ml5right;
@synthesize ms1left;
@synthesize ms1right;
@synthesize recorddict;
@synthesize gait;
@synthesize palleft;
@synthesize palright;



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
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[A-Za-z0-9-_]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)validateNumbers1:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9-_]{1,4}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)validateNumberslimit:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-5]{1}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	//NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	//NSLog(@"begin editing");
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Hipexam.php?service=hipexamselect";
    
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
    //NSLog(@"data %@",data);
    
    return data;
    
}


-(void)getdatas
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    ////NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"hipexamuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //NSLog(@"items1app count %d",[items1App count]);
    //NSLog(@"items1app %@",items1App);
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            texty1=[arrayList1 objectForKey:@"username"];
            texty2 =[arrayList1 objectForKey:@"pname"];
            texty3  =[arrayList1 objectForKey:@"date"];
            texty4 =[arrayList1 objectForKey:@"gait"];
            texty5  =[arrayList1 objectForKey:@"pelvic"];
            texty6  =[arrayList1 objectForKey:@"ao"];
            texty7  =[arrayList1 objectForKey:@"dysfunction"];
            texty8  =[arrayList1 objectForKey:@"shortlegleft"];
            texty9  =[arrayList1 objectForKey:@"shortlegleftvalue"];
            texty10  =[arrayList1 objectForKey:@"shortlegleftother"];
            texty11  =[arrayList1 objectForKey:@"shortlegright"];
            texty12 =[arrayList1 objectForKey:@"shortlegrightvalue"];
            texty13 =[arrayList1 objectForKey:@"shortlegrightother"];
            texty14 =[arrayList1 objectForKey:@"piriformisleft"];
            texty15 =[arrayList1 objectForKey:@"gluteusleft"];
            texty16  =[arrayList1 objectForKey:@"iliopsoasleft"];
            texty17  =[arrayList1 objectForKey:@"hamstringsleft"];
            texty18 =[arrayList1 objectForKey:@"note"];
            texty19  =[arrayList1 objectForKey:@"functional"];
            texty20  =[arrayList1 objectForKey:@"orthotpedic"];
            texty21  =[arrayList1 objectForKey:@"flexionleft"];
            texty22 =[arrayList1 objectForKey:@"flexionright"];
            texty23  =[arrayList1 objectForKey:@"extensionleft"];
            texty24  =[arrayList1 objectForKey:@"extensionright"];
            texty25  =[arrayList1 objectForKey:@"abductionleft"];
            texty26 =[arrayList1 objectForKey:@"abductionright"];
            texty27  =[arrayList1 objectForKey:@"adductionleft"];
            texty28 =[arrayList1 objectForKey:@"adductionright"];
            texty29  =[arrayList1 objectForKey:@"internalrotationleft"];
            texty30 =[arrayList1 objectForKey:@"internalrotationright"];
            texty31  =[arrayList1 objectForKey:@"externalrotationleft"];
            texty32  =[arrayList1 objectForKey:@"externalrotationright"];
            texty33  =[arrayList1 objectForKey:@"fabereleft"];
            texty34  =[arrayList1 objectForKey:@"fabereright"];
            texty35 =[arrayList1 objectForKey:@"nachlasleft"];
            texty36 =[arrayList1 objectForKey:@"nachlasright"];
            texty37  =[arrayList1 objectForKey:@"elysleft"];
            texty38  =[arrayList1 objectForKey:@"elysright"];
            texty39  =[arrayList1 objectForKey:@"yeomansleft"];
            texty40  =[arrayList1 objectForKey:@"yeomansright"];
            texty41  =[arrayList1 objectForKey:@"obersleft"];
            texty42  =[arrayList1 objectForKey:@"obersright"];
            texty43 =[arrayList1 objectForKey:@"hibbsleft"];
            texty44  =[arrayList1 objectForKey:@"hibbsright"];
            texty45  =[arrayList1 objectForKey:@"thomasleft"];
            texty46  =[arrayList1 objectForKey:@"thomasright"];
            texty47 =[arrayList1 objectForKey:@"neurological"];
            texty48 =[arrayList1 objectForKey:@"inguinalarealeft"];
            texty49 =[arrayList1 objectForKey:@"inguinalarearight"];
            texty50  =[arrayList1 objectForKey:@"antleft"];
            texty51  =[arrayList1 objectForKey:@"antright"];
            texty52  =[arrayList1 objectForKey:@"kneeleft"];
            texty53=[arrayList1 objectForKey:@"kneeright"];
            texty54 =[arrayList1 objectForKey:@"medialleft"];
            texty55 =[arrayList1 objectForKey:@"medialright"];
            texty56  =[arrayList1 objectForKey:@"latleft"];
            texty57  =[arrayList1 objectForKey:@"latright"];
            texty58  =[arrayList1 objectForKey:@"plantarleft"];
            texty59  =[arrayList1 objectForKey:@"plantarright"];
            texty60  =[arrayList1 objectForKey:@"iliopsoasfirstleft"];
            texty61  =[arrayList1 objectForKey:@"iliopsoasfirstright"];
            texty62  =[arrayList1 objectForKey:@"iliopsoas1left"];
            texty63 =[arrayList1 objectForKey:@"iliopsoas1right"];
            texty64  =[arrayList1 objectForKey:@"iliopsoas2left"];
            texty65  =[arrayList1 objectForKey:@"iliopsoas2right"];
            texty66 =[arrayList1 objectForKey:@"femleft"];
            texty67  =[arrayList1 objectForKey:@"femright"];
            texty68  =[arrayList1 objectForKey:@"medleft"];
            texty69  =[arrayList1 objectForKey:@"medright"];
            texty70  =[arrayList1 objectForKey:@"maxleft"];
            texty71 =[arrayList1 objectForKey:@"maxright"];
            texty72 =[arrayList1 objectForKey:@"patellarleft"];
            texty73  =[arrayList1 objectForKey:@"patellarright"];
            texty74  =[arrayList1 objectForKey:@"hsleft"];
            texty75  =[arrayList1 objectForKey:@"hsright"];
            texty76 =[arrayList1 objectForKey:@"achillesleft"];
            texty77  =[arrayList1 objectForKey:@"achillesright"];
            texty78  =[arrayList1 objectForKey:@"walking"];
            texty79  =[arrayList1 objectForKey:@"standing"];
            texty80  =[arrayList1 objectForKey:@"stairs"];
            texty81  =[arrayList1 objectForKey:@"other"];
            texty82  =[arrayList1 objectForKey:@"otherdefict"];
            texty83  =[arrayList1 objectForKey:@"comments"];
            texty84  =[arrayList1 objectForKey:@"patientstatus"];
            texty85  =[arrayList1 objectForKey:@"diagnosis1"];
            texty86  =[arrayList1 objectForKey:@"diagnosis2"];
            texty87  =[arrayList1 objectForKey:@"diagnosis3"];
            texty88  =[arrayList1 objectForKey:@"diagnosis4"];
            texty89 =[arrayList1 objectForKey:@"diagnosis5"];
            texty90 =[arrayList1 objectForKey:@"times"];
            texty91  =[arrayList1 objectForKey:@"weeks"];
            texty92  =[arrayList1 objectForKey:@"spinaldecompression"];
            texty93  =[arrayList1 objectForKey:@"chiropractic"];
            texty94  =[arrayList1 objectForKey:@"physicaltherapy"];
            texty95  =[arrayList1 objectForKey:@"bracing"];
            texty96 =[arrayList1 objectForKey:@"modalities"];
            texty97  =[arrayList1 objectForKey:@"supplementation"];
            texty98 =[arrayList1 objectForKey:@"hep"];
            texty99  =[arrayList1 objectForKey:@"radiographic"];
            texty100  =[arrayList1 objectForKey:@"mri"];
            texty101  =[arrayList1 objectForKey:@"scan"];
            texty102 =[arrayList1 objectForKey:@"conduction"];
            texty103  =[arrayList1 objectForKey:@"emg"];
            texty104  =[arrayList1 objectForKey:@"outsidereferral"];
            texty105  =[arrayList1 objectForKey:@"dc"];
            texty106  =[arrayList1 objectForKey:@"signature"];
            
            
            [resultset setValue:texty14 forKey:@"piriformisleft"];
            [resultset setValue:texty15 forKey:@"gluteusleft"];
            [resultset setValue:texty16 forKey:@"iliopsoasleft"];
            [resultset setValue:texty17 forKey:@"hamstringsleft"];
            [resultset setValue:texty18 forKey:@"note"];
            
            
            [resultset setValue:texty72 forKey:@"patellarleft"];
            [resultset setValue:texty73 forKey:@"patellarright"];
            [resultset setValue:texty74 forKey:@"hsleft"];
            [resultset setValue:texty75 forKey:@"hsright"];
            [resultset setValue:texty76 forKey:@"achillesleft"];
            [resultset setValue:texty77 forKey:@"achillesright"];
            [resultset setValue:texty78 forKey:@"walking"];
            [resultset setValue:texty79 forKey:@"standing"];
            [resultset setValue:texty80 forKey:@"stairs"];
            [resultset setValue:texty81 forKey:@"other"];
            [resultset setValue:texty82 forKey:@"otherdefict"];
            [resultset setValue:texty83 forKey:@"comments"];
            [resultset setValue:texty84 forKey:@"patientstatus"];
            [resultset setValue:texty85 forKey:@"diagnosis1"];
            [resultset setValue:texty86 forKey:@"diagnosis2"];
            [resultset setValue:texty87 forKey:@"diagnosis3"];
            [resultset setValue:texty88 forKey:@"diagnosis4"];
            [resultset setValue:texty89 forKey:@"diagnosis5"];
            [resultset setValue:texty90 forKey:@"times"];
            [resultset setValue:texty91 forKey:@"weeks"];
            [resultset setValue:texty92 forKey:@"spinaldecompression"];
            [resultset setValue:texty93 forKey:@"chiropractic"];
            [resultset setValue:texty94 forKey:@"physicaltherapy"];
            [resultset setValue:texty95 forKey:@"bracing"];
            [resultset setValue:texty96 forKey:@"modalities"];
            [resultset setValue:texty97 forKey:@"supplementation"];
            [resultset setValue:texty98 forKey:@"hep"];
            [resultset setValue:texty99 forKey:@"radiographic"];
            [resultset setValue:texty100 forKey:@"mri"];
            [resultset setValue:texty101 forKey:@"scan"];
            [resultset setValue:texty102 forKey:@"conduction"];
            [resultset setValue:texty103 forKey:@"emg"];
            [resultset setValue:texty104 forKey:@"outsidereferral"];
            [resultset setValue:texty105 forKey:@"dc"];
            [resultset setValue:texty106 forKey:@"signature"];
            
            
            //NSLog(@"resultset count%d",[resultset count]);
            //NSLog(@"value of result set::%@",resultset);
            
            
            patientname.text=texty2;
            date.text=texty3;
            flexionleft.text=texty21;
            flexionright.text=texty22;
            externalleft.text=texty31;
            externalright.text=texty32;
            extensionleft.text=texty23;
            extensionright.text=texty24;
            abductionleft.text=texty25;
            abductionright.text=texty26;
            adductionleft.text=texty27;
            adductionright.text=texty28;
            internalleft.text=texty29;
            internalright.text=texty30;
            patrickleft.text=texty33;
            patrickright.text=texty34;
            nachlasleft.text=texty35;
            nachlasright.text=texty36;
            elyleft.text=texty37;
            elyright.text=texty38;
            yeomanleft.text=texty39;
            yeomanright.text=texty40;
            oberleft.text=texty41;
            oberright.text=texty42;
            hibbsleft.text=texty43;
            hibbsright.text=texty44;
            thomasleft.text=texty45;
            thomasright.text=texty46;
            l1left.text=texty48;
            l1right.text=texty49;
            l2left.text=texty50;
            l2right.text=texty51;
            l3left.text=texty52;
            l3right.text=texty53;
            l4left.text=texty54;
            l4right.text=texty55;
            l5left.text=texty56;
            l5right.text=texty57;
            s1left.text=texty58;
            s1right.text=texty59;
            ml1left.text=texty60;
            ml1right.text=texty61;
            ml2left.text=texty62;
            ml2right.text=texty63;
            ml3left.text=texty64;
            ml3right.text=texty65;
            ml4left.text=texty66;
            ml4right.text=texty67;
            ml5left.text=texty68;
            ml5right.text=texty69;
            ms1left.text=texty70;
            ms1right.text=texty71;
            leftother.text=texty10;
            rightother.text=texty13;
            
            if([texty7 isEqualToString:@"All Soft Tissue Unremarkable"]){
                palpation.selected=true;
                [palpation setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                palpationlabel=@"All Soft Tissue Unremarkable";
            }
            
            if([texty8 isEqualToString:@"Left"]){
                palleft.selected=true;
                left.hidden=NO;
                [palleft setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([texty11 isEqualToString:@"right"]){
                palright.selected=true;
                right.hidden=NO;
                [palright setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([texty19 isEqualToString:@"Unremarkable"]){
                [rangeofmotion setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                rangeofmotion.selected=true;
                rangeofmotionlabel=@"Unremarkable";
                
            }
            
            if([texty20 isEqualToString:@"Unremarkable"]){
                [orthotesting setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                orthotesting.selected=true;
                orthotestinglabel=@"Unremarkable";
            }
            if([texty47 isEqualToString:@"Unremarkable"]){
                [neurological setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                neurological.selected=true;
                neurologicallabel=@"Unremarkable";
            }
            
            if([texty9 isEqualToString:@"1/8"])
            {
                left.selectedSegmentIndex=0;
                leftlabel=@"1/8";
                
            }
            else  if([texty9 isEqualToString:@"1/4"])
            {
                left.selectedSegmentIndex=1;
                leftlabel=@"1/4";
                
            }
            else  if([texty9 isEqualToString:@"3/8"])
            {
                left.selectedSegmentIndex=2;
                leftlabel=@"3/8";
                
            }
            else  if([texty9 isEqualToString:@"1/2"])
            {
                left.selectedSegmentIndex=3;
                leftlabel=@"1/2";
                
            }
            else  if([texty9 isEqualToString:@"5/8"])
            {
                left.selectedSegmentIndex=4;
                leftlabel=@"5/8";
                
            }
            else  if([texty9 isEqualToString:@"3/4"])
            {
                left.selectedSegmentIndex=5;
                leftlabel=@"3/4";
                
            }
            else  if([texty9 isEqualToString:@"7/8"])
            {
                left.selectedSegmentIndex=6;
                leftlabel=@"7/8";
                
            }
            else  if([texty9 isEqualToString:@"1"])
            {
                left.selectedSegmentIndex=7;
                leftlabel=@"1";
                
            }
            else  if([texty9 isEqualToString:@"other"])
            {
                left.selectedSegmentIndex=8;
                leftlabel=@"other";
                leftother.hidden=NO;
                
            }
            
            
            
            if([texty12 isEqualToString:@"1/8"])
            {
                right.selectedSegmentIndex=0;
                rightlabel=@"1/8";
                
            }
            else  if([texty12 isEqualToString:@"1/4"])
            {
                right.selectedSegmentIndex=1;
                rightlabel=@"1/4";
                
            }
            else  if([texty12 isEqualToString:@"3/8"])
            {
                right.selectedSegmentIndex=2;
                rightlabel=@"3/8";
                
            }
            else  if([texty12 isEqualToString:@"1/2"])
            {
                right.selectedSegmentIndex=3;
                rightlabel=@"1/2";
                
            }
            else  if([texty12 isEqualToString:@"5/8"])
            {
                right.selectedSegmentIndex=4;
                rightlabel=@"5/8";
                
            }
            else  if([texty12 isEqualToString:@"3/4"])
            {
                right.selectedSegmentIndex=5;
                rightlabel=@"3/4";
                
            }
            else  if([texty12 isEqualToString:@"7/8"])
            {
                right.selectedSegmentIndex=6;
                rightlabel=@"7/8";
                
            }
            else  if([texty12 isEqualToString:@"1"])
            {
                right.selectedSegmentIndex=7;
                rightlabel=@"1";
                
            }
            else  if([texty12 isEqualToString:@"other"])
            {
                right.selectedSegmentIndex=8;
                rightlabel=@"other";
                rightother.hidden=NO;
                
            }
            
            
            
            
            if([texty6 isEqualToString:@"excellent"])
            {
                ao.selectedSegmentIndex=0;
                aolabel=@"excellent";
                
            }
            else if([texty6 isEqualToString:@"good"])
            {
                ao.selectedSegmentIndex=1;
                aolabel=@"good";
                
            }
            else if([texty6 isEqualToString:@"fair"])
            {
                ao.selectedSegmentIndex=2;
                aolabel=@"fair";
                
            }
            else  if([texty6 isEqualToString:@"severe"])
            {
                ao.selectedSegmentIndex=3;
                aolabel=@"severe";
                
            }
            
            
            
            
            
            
            
            
            if([texty5 isEqualToString:@"none"])
            {
                pelvic.selectedSegmentIndex=0;
                pelviclabel=@"none";
                
            }
            else if([texty5 isEqualToString:@"superior illiac crest right"])
            {
                pelvic.selectedSegmentIndex=1;
                pelviclabel=@"superior illiac crest right";
                
            }
            else if([texty5 isEqualToString:@"superior iliac crest left"])
            {
                pelvic.selectedSegmentIndex=2;
                pelviclabel=@"superior illiac crest left";
                
            }
            
            
            
            
            
            
            
            
            if([texty4 isEqualToString:@"normal"])
            {
                gait.selectedSegmentIndex=0;
                gaitlabel=@"normal";
                
            }
            else if([texty4 isEqualToString:@"antalogic"])
            {
                gait.selectedSegmentIndex=1;
                gaitlabel=@"antalogic";
                
            }
            else if([texty4 isEqualToString:@"shuffling"])
            {
                gait.selectedSegmentIndex=2;
                gaitlabel=@"shuffling";
                
            }
            else  if([texty4 isEqualToString:@"limp"])
            {
                gait.selectedSegmentIndex=3;
                gaitlabel=@"limp";
                
            }
            else  if([texty4 isEqualToString:@"stagger"])
            {
                gait.selectedSegmentIndex=4;
                gaitlabel=@"stagger";
                
            }
            else  if([texty4 isEqualToString:@"cane assisted"])
            {
                gait.selectedSegmentIndex=5;
                gaitlabel=@"cane assisted";
                
            }
            
            else  if([texty4 isEqualToString:@"wheelchair"])
            {
                gait.selectedSegmentIndex=6;
                gaitlabel=@"wheelchair";
                
            }
            
            
            
            
            
            
            
        }
    }
    
    
    
    
}
- (IBAction)next:(id)sender {
    
    
    temp1 =patientname.text;
    temp2 =flexionleft.text;
    temp3 =flexionright.text;
    temp4 =externalleft.text;
    temp5 =externalright.text;
    temp6=extensionleft.text;
    temp7=extensionright.text;
    temp8=abductionleft.text;
    temp9=abductionright.text;
    temp10=adductionleft.text;
    temp11=adductionright.text;
    temp12=internalleft.text;
    temp13=internalright.text;
    temp14=patrickleft.text;
    temp15=patrickright.text;
    temp16=nachlasleft.text;
    temp17=nachlasright.text;
    temp18=elyleft.text;
    temp19=elyright.text;
    temp20=yeomanleft.text;
    temp21=yeomanright.text;
    temp22=oberleft.text;
    temp23=oberright.text;
    temp24=hibbsleft.text;
    temp25=hibbsright.text;
    temp26=thomasleft.text;
    temp27=thomasright.text;
    //    temp28=medialright.text;
    temp29=l1left.text;
    temp30=l1right.text;
    temp31=l2left.text;
    temp32=l2right.text;
    temp33=l3left.text;
    temp34=l3right.text;
    temp35=l4left.text;
    temp36=l4right.text;
    temp37=s1left.text;
    temp38=s1right.text;
    temp39=ml1left.text;
    temp40=ml1right.text;
    temp41=ml2left.text;
    temp42=ml2right.text;
    temp43=ml3left.text;
    temp44=ml3right.text;
    temp45=ml4left.text;
    temp46=ml4right.text;
    temp47=ml5left.text;
    temp48=ml5right.text;
    temp49=ms1left.text;
    temp50=ms1right.text;
    temp51=l5left.text;
    temp52=l5right.text;
    temp53=leftother.text;
    temp54=rightother.text;
    if(palpation.selected)
    {
        palpationlabel=@"All Soft Tissue Unremarkable";
    }
    else
        palpationlabel=@"null";
    if(rangeofmotion.selected)
    {
        rangeofmotionlabel=@"Unremarkable";
        
        
    }
    else
        rangeofmotionlabel=@"null";
    if(orthotesting.selected)
    {
        orthotestinglabel=@"Unremarkable";
    }
    else
        orthotestinglabel=@"null";
    if(neurological.selected)
    {
        neurologicallabel=@"Neurological Testing Unremarkable";
    }
    else
        neurologicallabel=@"null";
    if (palleft.selected) {
        [recorddict setValue:@"Left" forKey:@"palleft"];
    }
    else
    {
        leftother.text=@"";
        [recorddict setValue:@"null" forKey:@"palleft"];
    }
    if (palright.selected) {
        [recorddict setValue:@"right" forKey:@"palright"];
    }
    else
    {
        rightother.text=@"";
        [recorddict setValue:@"null" forKey:@"palright"];
    }
    
    //    [recorddict setValue:@"" forKey:@"palpationleftother"];
    //    [recorddict setValue:@"" forKey:@"palpationrightother"];
    if(([temp1 length]!=0)&&([date.text length]!=0))
    {
        a=0;
        
        if ([du patname:temp1]==1)
        {
            if ([self validateDate:date.text]==1)
            {
                if((([temp53 length]>0)&&([du otherfields:temp53]==1))||([temp53 length]==0))
                {
                    if((([temp54 length]>0)&&([du otherfields:temp54 ]==1))||([temp54 length]==0))
                    {
                        if((([temp2 length]>0)&&([du date:temp2]==1))||([temp2 length]==0))
                        {
                            if((([temp3 length]>0)&&([du date:temp3 ]==1))||([temp3 length]==0))
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
                                                                if((([temp4 length]>0)&&([du date:temp4 ]==1))||([temp4 length]==0))
                                                                {
                                                                    if((([temp5 length]>0)&&([du date:temp5]==1))||([temp5 length]==0))
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
                                                                                                                                                                    if((([temp51 length]>0)&&([du date:temp51]==1))||([temp51 length]==0))
                                                                                                                                                                    {
                                                                                                                                                                        
                                                                                                                                                                        if((([temp52 length]>0)&&([du date:temp52]==1))||([temp52 length]==0))
                                                                                                                                                                        {
                                                                                                                                                                            if((([temp37 length]>0)&&([du date:temp37 ]==1))||([temp37 length]==0))
                                                                                                                                                                            {
                                                                                                                                                                                
                                                                                                                                                                                if((([temp38 length]>0)&&([du date:temp38 ]==1))||([temp38 length]==0))
                                                                                                                                                                                {
                                                                                                                                                                                    
                                                                                                                                                                                    
                                                                                                                                                                                    if((([temp39 length]>0)&&([du byfive:temp39 ]==1))||([temp39 length]==0))
                                                                                                                                                                                    {
                                                                                                                                                                                        
                                                                                                                                                                                        if((([temp40 length]>0)&&([du byfive:temp40 ]==1))||([temp40 length]==0))
                                                                                                                                                                                        {
                                                                                                                                                                                            
                                                                                                                                                                                            if((([temp41 length]>0)&&([du byfive:temp41]==1))||([temp41 length]==0))
                                                                                                                                                                                            {
                                                                                                                                                                                                if((([temp42 length]>0)&&([du byfive:temp42]==1))||([temp42 length]==0))
                                                                                                                                                                                                {
                                                                                                                                                                                                    if((([temp43 length]>0)&&([du byfive:temp43]==1))||([temp43 length]==0))
                                                                                                                                                                                                    {
                                                                                                                                                                                                        if((([temp44 length]>0)&&([du byfive:temp44]==1))||([temp44 length]==0))
                                                                                                                                                                                                        {
                                                                                                                                                                                                            if((([temp45 length]>0)&&([du byfive:temp45]==1))||([temp45 length]==0))
                                                                                                                                                                                                            {
                                                                                                                                                                                                                if((([temp46 length]>0)&&([du byfive:temp46]==1))||([temp46 length]==0))
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    if((([temp47 length]>0)&&([du byfive:temp47]==1))||([temp47 length]==0))
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        if((([temp48 length]>0)&&([du byfive:temp48]==1))||([temp48 length]==0))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            if((([temp49 length]>0)&&([du byfive:temp49]==1))||([temp49 length]==0))
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                if((([temp50 length]>0)&&([du byfive:temp50]==1))||([temp50 length]==0))
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    [recorddict setValue:patientname.text forKey:@"patientname"];
                                                                                                                                                                                                                                    [recorddict setValue:date.text forKey:@"date"];
                                                                                                                                                                                                                                    [recorddict setValue:flexionleft.text forKey:@"flexionleft"];
                                                                                                                                                                                                                                    [recorddict setValue:flexionright.text forKey:@"flexionright"];
                                                                                                                                                                                                                                    [recorddict setValue:extensionleft.text forKey:@"extensionleft"];
                                                                                                                                                                                                                                    [recorddict setValue:extensionright.text forKey:@"extensionright"];
                                                                                                                                                                                                                                    [recorddict setValue:abductionleft.text forKey:@"abductionleft"];
                                                                                                                                                                                                                                    [recorddict setValue:abductionright.text forKey:@"abdutionright"];
                                                                                                                                                                                                                                    [recorddict setValue:adductionleft.text forKey:@"adductionleft"];
                                                                                                                                                                                                                                    [recorddict setValue:adductionright.text forKey:@"adductionright"];
                                                                                                                                                                                                                                    [recorddict setValue:internalleft.text forKey:@"internalrotationleft"];
                                                                                                                                                                                                                                    [recorddict setValue:internalright.text forKey:@"internalrotationright"];
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    [recorddict setValue:externalleft.text forKey:@"externalrotationleft"];
                                                                                                                                                                                                                                    [recorddict setValue:externalright.text forKey:@"externalrotationright"];
                                                                                                                                                                                                                                    [recorddict setValue:patrickleft.text forKey:@"patrickleft"];
                                                                                                                                                                                                                                    [recorddict setValue:patrickright.text forKey:@"patrickright"];
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    [recorddict setValue:nachlasleft.text forKey:@"nachlasleft"];
                                                                                                                                                                                                                                    [recorddict setValue:nachlasright.text forKey:@"nachlasright"];
                                                                                                                                                                                                                                    [recorddict setValue:elyleft.text forKey:@"elyleft"];
                                                                                                                                                                                                                                    [recorddict setValue:elyright.text forKey:@"elyright"];
                                                                                                                                                                                                                                    [recorddict setValue:yeomanleft.text forKey:@"yeomanleft"];
                                                                                                                                                                                                                                    [recorddict setValue:yeomanright.text forKey:@"yeomanright"];
                                                                                                                                                                                                                                    [recorddict setValue:oberleft.text forKey:@"oberleft"];
                                                                                                                                                                                                                                    [recorddict setValue:oberright.text forKey:@"oberright"];
                                                                                                                                                                                                                                    [recorddict setValue:hibbsleft.text forKey:@"hibbsleft"];
                                                                                                                                                                                                                                    [recorddict setValue:hibbsright.text forKey:@"hibbsright"];
                                                                                                                                                                                                                                    [recorddict setValue:thomasleft.text forKey:@"thomasleft"];
                                                                                                                                                                                                                                    [recorddict setValue:thomasright.text forKey:@"thomasright"];
                                                                                                                                                                                                                                    [recorddict setValue:l1left.text forKey:@"l1left"];
                                                                                                                                                                                                                                    [recorddict setValue:l1right.text forKey:@"l1right"];
                                                                                                                                                                                                                                    [recorddict setValue:l2left.text forKey:@"l2left"];
                                                                                                                                                                                                                                    [recorddict setValue:l2right.text forKey:@"l2right"];
                                                                                                                                                                                                                                    [recorddict setValue:l3left.text forKey:@"l3left"];
                                                                                                                                                                                                                                    [recorddict setValue:l3right.text forKey:@"l3right"];
                                                                                                                                                                                                                                    [recorddict setValue:l4left.text forKey:@"l4left"];
                                                                                                                                                                                                                                    [recorddict setValue:l4right.text forKey:@"l4right"];
                                                                                                                                                                                                                                    [recorddict setValue:l5left.text forKey:@"l5left"];
                                                                                                                                                                                                                                    [recorddict setValue:l5right.text forKey:@"l5right"];
                                                                                                                                                                                                                                    [recorddict setValue:s1left.text forKey:@"s1left"];
                                                                                                                                                                                                                                    [recorddict setValue:s1right.text forKey:@"s1right"];
                                                                                                                                                                                                                                    [recorddict setValue:ml1left.text forKey:@"ml1left"];
                                                                                                                                                                                                                                    [recorddict setValue:ml1right.text forKey:@"ml1right"];
                                                                                                                                                                                                                                    [recorddict setValue:ml2left.text forKey:@"ml2left"];
                                                                                                                                                                                                                                    [recorddict setValue:ml2right.text forKey:@"ml2right"];
                                                                                                                                                                                                                                    [recorddict setValue:ml3left.text forKey:@"ml3left"];
                                                                                                                                                                                                                                    [recorddict setValue:ml3right.text forKey:@"ml3right"];
                                                                                                                                                                                                                                    [recorddict setValue:ml4left.text forKey:@"ml4left"];
                                                                                                                                                                                                                                    [recorddict setValue:ml4right.text forKey:@"ml4right"];
                                                                                                                                                                                                                                    [recorddict setValue:ml5left.text forKey:@"ml5left"];
                                                                                                                                                                                                                                    [recorddict setValue:ml5right.text forKey:@"ml5right"];
                                                                                                                                                                                                                                    [recorddict setValue:ms1left.text forKey:@"ms1left"];
                                                                                                                                                                                                                                    [recorddict setValue:ms1right.text forKey:@"ms1right"];
                                                                                                                                                                                                                                    [recorddict setValue:gaitlabel forKey:@"gaitl"];
                                                                                                                                                                                                                                    [recorddict setValue:pelviclabel forKey:@"pelvicl"];
                                                                                                                                                                                                                                    [recorddict setValue:leftlabel forKey:@"left"];
                                                                                                                                                                                                                                    [recorddict setValue:rightlabel forKey:@"right"];
                                                                                                                                                                                                                                    [recorddict setValue:aolabel forKey:@"aol"];
                                                                                                                                                                                                                                    [recorddict setValue:palpationlabel forKey:@"palpationlabel"];
                                                                                                                                                                                                                                    [recorddict setValue:rangeofmotionlabel forKey:@"rangeofmotionlabel"];
                                                                                                                                                                                                                                    [recorddict setValue:orthotestinglabel forKey:@"orthotestinglabel"];
                                                                                                                                                                                                                                    [recorddict setValue:neurologicallabel forKey:@"neurologicallabel"];
                                                                                                                                                                                                                                    [recorddict setValue:leftother.text forKey:@"palpationleftother"];
                                                                                                                                                                                                                                    [recorddict setValue:rightother.text forKey:@"palpationrightother"];
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    //NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    a=1;
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                
                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                                   description:@"Please enter valid motor s1 right field."
                                                                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                            else
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                a=0;
                                                                                                                                                                                                                                
                                                                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                               description:@"Please enter valid motor s1 left field."
                                                                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                                                                
                                                                                                                                                                                                                                
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                            
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                            a=0;
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                           description:@"Please enter valid motor l5 right field."
                                                                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                            
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    else
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                        a=0;
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                       description:@"Please enter valid motor l5 left field."
                                                                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                        
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                                else
                                                                                                                                                                                                                {
                                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                                   description:@"Please enter valid motor l4 right field."
                                                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    
                                                                                                                                                                                                                    
                                                                                                                                                                                                                }
                                                                                                                                                                                                                
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                                a=0;
                                                                                                                                                                                                                
                                                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                               description:@"Please enter valid motor l4 left field."
                                                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                                                
                                                                                                                                                                                                                
                                                                                                                                                                                                                
                                                                                                                                                                                                                
                                                                                                                                                                                                            }
                                                                                                                                                                                                            
                                                                                                                                                                                                        }
                                                                                                                                                                                                        else
                                                                                                                                                                                                        {
                                                                                                                                                                                                            a=0;
                                                                                                                                                                                                            
                                                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                           description:@"Please enter valid motor l3 right field."
                                                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                                                            
                                                                                                                                                                                                            
                                                                                                                                                                                                            
                                                                                                                                                                                                            
                                                                                                                                                                                                        }
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                    }
                                                                                                                                                                                                    else
                                                                                                                                                                                                    {
                                                                                                                                                                                                        a=0;
                                                                                                                                                                                                        
                                                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                       description:@"Please enter valid motor l3 left field."
                                                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                    }
                                                                                                                                                                                                    
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                    a=0;
                                                                                                                                                                                                    
                                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                                   description:@"Please enter valid motor l2 right field."
                                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                    
                                                                                                                                                                                                }
                                                                                                                                                                                                
                                                                                                                                                                                            }
                                                                                                                                                                                            else
                                                                                                                                                                                            {
                                                                                                                                                                                                a=0;
                                                                                                                                                                                                
                                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                               description:@"Please enter valid motor l2 left field."
                                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                                
                                                                                                                                                                                                
                                                                                                                                                                                                
                                                                                                                                                                                                
                                                                                                                                                                                            }
                                                                                                                                                                                            
                                                                                                                                                                                        }
                                                                                                                                                                                        else
                                                                                                                                                                                        {
                                                                                                                                                                                            a=0;
                                                                                                                                                                                            
                                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                           description:@"Please enter valid motor l1 right field."
                                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                                            
                                                                                                                                                                                            
                                                                                                                                                                                            
                                                                                                                                                                                            
                                                                                                                                                                                        }
                                                                                                                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                        a=0;
                                                                                                                                                                                        
                                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                       description:@"Please enter valid motor l1 left field."
                                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                    }
                                                                                                                                                                                    
                                                                                                                                                                                    
                                                                                                                                                                                }
                                                                                                                                                                                else
                                                                                                                                                                                {
                                                                                                                                                                                    a=0;
                                                                                                                                                                                    
                                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                                   description:@"Please enter valid sensory s1 right field."
                                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                                    
                                                                                                                                                                                    
                                                                                                                                                                                    
                                                                                                                                                                                    
                                                                                                                                                                                }
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                            }
                                                                                                                                                                            else
                                                                                                                                                                            {
                                                                                                                                                                                a=0;
                                                                                                                                                                                
                                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                               description:@"Please enter valid sensory s1 left field."
                                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                                
                                                                                                                                                                            }
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                            a=0;
                                                                                                                                                                            
                                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                           description:@"Please enter valid sensory l5 right field."
                                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                              callback:nil];
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                            
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                    else
                                                                                                                                                                    {
                                                                                                                                                                        a=0;
                                                                                                                                                                        
                                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                       description:@"Please enter valid sensory l5 left field."
                                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                          callback:nil];
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                        
                                                                                                                                                                    }
                                                                                                                                                                    
                                                                                                                                                                }
                                                                                                                                                                else
                                                                                                                                                                {
                                                                                                                                                                    a=0;
                                                                                                                                                                    
                                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                                   description:@"Please enter valid sensory l4 right field."
                                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                      callback:nil];
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                    
                                                                                                                                                                }
                                                                                                                                                                
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                                a=0;
                                                                                                                                                                
                                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                               description:@"Please enter valid sensory l4 left field."
                                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                                  callback:nil];
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                            }
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                            a=0;
                                                                                                                                                            
                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                           description:@"Please enter valid sensory l3 right field."
                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                              callback:nil];
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        a=0;
                                                                                                                                                        
                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                       description:@"Please enter valid sensory l3 left field."
                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                          callback:nil];
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    a=0;
                                                                                                                                                    
                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                   description:@"Please enter valid sensory l2 right field."
                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                      callback:nil];
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                a=0;
                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                               description:@"Please enter valid sensory l2 left field."
                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                  callback:nil];
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            a=0;
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                           description:@"Please enter valid sensory l1 right field."
                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                              callback:nil];
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        a=0;
                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                       description:@"Please enter valid sensory l1 left field."
                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                          callback:nil];
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    a=0;
                                                                                                                                    
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                a=0;
                                                                                                                                
                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                               description:@"Please enter valid Thomas right field."
                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                  callback:nil];
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            
                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                           description:@"Please enter valid thomas left field."
                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                              callback:nil];
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        
                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                       description:@"Please enter valid hibbs right field."
                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                          callback:nil];
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please enter valid hibbs left field."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please enter valid ober right field."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please enter valid ober left field."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please enter valid yeoman right field."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    
                                                                                                    
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid yeoman left field."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid ely right field."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid ely left field."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid nachlas right field."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid nachlas left field."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid patrick right field."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid patrick left field."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid external right field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid external left field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid internal right field."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid internal left field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid adduction right field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid adduction left field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid abduction right field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid abduction left field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid extension right field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                        
                                    }
                                    
                                }
                                else
                                {
                                    a=0;
                                    
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid extension left field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                }
                                
                            }
                            
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid flexion right field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                                
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid flexion left field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid palpation right field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                    }
                    
                }
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid palpation left field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                }
                
            }
            else
            {
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid date."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
            }
            
        }
        else
        {
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid patient name."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
        }
        
    }
    else
    {
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Required field should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
    }
    
    if(a ==1)
    {
        [self performSegueWithIdentifier:@"hip1" sender:self];
    }
    
}

- (IBAction)pelvic:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        pelviclabel=@"none                                                                                                                                                                                                                                                                                                                                             ";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        pelviclabel=@"superior illiac crest right";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        pelviclabel=@"superior illiac crest left";
    }
    
}

- (IBAction)ao:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        aolabel=@"excellent";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        aolabel=@"good";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        aolabel=@"fair";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        aolabel=@"severe";
    }
    
}

- (IBAction)gait:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        gaitlabel=@"normal";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        gaitlabel=@"antalogic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        gaitlabel=@"shuffling";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        gaitlabel=@"limp";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        gaitlabel=@"stagger";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        gaitlabel=@"cane assisted";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        gaitlabel=@"wheelchair";
    }
    
    
    
    
}
- (IBAction)left:(id)sender {
    leftother.hidden=YES;
    if ([sender selectedSegmentIndex]==0)
    {
        leftlabel=@"1/8";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        leftlabel=@"1/4";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        leftlabel=@"3/8";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        leftlabel=@"1/2";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        leftlabel=@"5/8";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        leftlabel=@"3/4";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        leftlabel=@"7/8";
    }
    if ([sender selectedSegmentIndex]==7)
    {
        leftlabel=@"1";
    }
    if ([sender selectedSegmentIndex]==8)
    {
        leftlabel=@"other";
        leftother.hidden=NO;
    }
    else
    {
        leftother.hidden=YES;
    }
    
    
    
    
}
- (IBAction)right:(id)sender {
    rightother.hidden=YES;
    if ([sender selectedSegmentIndex]==0)
    {
        rightlabel=@"1/8";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rightlabel=@"1/4";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        rightlabel=@"3/8";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        rightlabel=@"1/2";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        rightlabel=@"5/8";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        rightlabel=@"3/4";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        rightlabel=@"7/8";
    }
    if ([sender selectedSegmentIndex]==7)
    {
        rightlabel=@"1";
    }
    if ([sender selectedSegmentIndex]==8)
    {
        rightlabel=@"other";
        rightother.hidden=NO;
        
    }
    else
    {
        rightother.hidden=YES;
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
    if (palleft.selected) {
        left.hidden=NO;
    }
    else
    {
        left.hidden=YES;
    }
    if (palright.selected) {
        right.hidden=NO;
    }
    else
    {
        right.hidden=YES;
    }
    
    
    
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    ////NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"hip1"])
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
    
    
    if ([segue.identifier isEqualToString:@"hip1"])
    {
        
        
        hip1ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        //NSLog(@"recorddict in hip%@",recorddict);
        // destViewController.delegate=self;
        
    }
}
- (IBAction)cancel:(id)sender
{
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






- (IBAction)reset:(id)sender
{
    pelviclabel=@"None";
    aolabel=@"Excellent";
    gaitlabel=@"Normal";
    leftlabel=@"1/8";
    rightlabel=@"1/8";
    patientname.text=@"";
    date.text=@"";
    left.hidden=YES;
    right.hidden=YES;
    [gait setSelectedSegmentIndex:0];
    [pelvic setSelectedSegmentIndex:0];
    [ao setSelectedSegmentIndex:0];
    [left setSelectedSegmentIndex:0];
    [right setSelectedSegmentIndex:0];
    [palpation setSelected:NO];
    [palpation setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [palleft setSelected:NO];
    [palleft setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [palright setSelected:NO];
    [palright setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    leftother.text=@"";
    rightother.text=@"";
    leftother.hidden=YES;
    rightother.hidden=YES;
    [rangeofmotion setSelected:NO];
    [rangeofmotion setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [orthotesting setSelected:NO];
    [orthotesting setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [neurological setSelected:NO];
    [neurological setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    flexionleft.text=@"";
    flexionright.text=@"";
    externalleft.text=@"";
    externalright.text=@"";
    extensionleft.text=@"";
    extensionright.text=@"";
    abductionleft.text=@"";
    abductionright.text=@"";
    adductionleft.text=@"";
    adductionright.text=@"";
    internalleft.text=@"";
    internalright.text=@"";
    patrickleft.text=@"";
    patrickright.text=@"";
    nachlasleft.text=@"";
    nachlasright.text=@"";
    elyleft.text=@"";
    elyright.text=@"";
    yeomanleft.text=@"";
    yeomanright.text=@"";
    oberleft.text=@"";
    oberright.text=@"";
    hibbsleft.text=@"";
    hibbsright.text=@"";
    thomasleft.text=@"";
    thomasright.text=@"";
    l1left.text=@"";
    l1right.text=@"";
    l2left.text=@"";
    l2right.text=@"";
    l3left.text=@"";
    l3right.text=@"";
    l4left.text=@"";
    l4right.text=@"";
    s1left.text=@"";
    s1right.text=@"";
    ml1left.text=@"";
    ml1right.text=@"";
    ml2left.text=@"";
    ml2right.text=@"";
    ml3left.text=@"";
    ml3right.text=@"";
    ml4left.text=@"";
    ml4right.text=@"";
    ml5left.text=@"";
    ml5right.text=@"";
    ms1left.text =@"";
    ms1right.text=@"";
    l5left.text=@"";
    l5right.text=@"";
    
    
    
}
-(BOOL)validatepatientname:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z0-9@_]+";
    
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    resultset=[[NSMutableDictionary alloc]init];
    recorddict=[[NSMutableDictionary alloc]init];
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
    
    
    pelviclabel=@"none";
    aolabel=@"excellent";
    gaitlabel=@"normal";
    leftlabel=@"1/8";
    rightlabel=@"1/8";
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    patientname.text=username;
    [self getdatas];
    
}
-(void)dismissKeyboard
{
    [ patientname resignFirstResponder];
    [leftother resignFirstResponder];
    [rightother resignFirstResponder];
    [flexionleft resignFirstResponder];
    [flexionright resignFirstResponder];
    [externalleft resignFirstResponder];
    [externalright resignFirstResponder];
    [extensionleft resignFirstResponder];
    [extensionright resignFirstResponder];
    [abductionleft resignFirstResponder];
    [abductionright resignFirstResponder];
    [adductionleft resignFirstResponder];
    [adductionright resignFirstResponder];
    [internalleft resignFirstResponder];
    [internalright resignFirstResponder];
    [patrickleft resignFirstResponder];
    [patrickright resignFirstResponder];
    [nachlasleft resignFirstResponder];
    [nachlasright resignFirstResponder];
    [elyleft resignFirstResponder];
    [elyright resignFirstResponder];
    [yeomanleft resignFirstResponder];
    [yeomanright resignFirstResponder];
    [oberleft resignFirstResponder];
    [oberright resignFirstResponder];
    [hibbsleft resignFirstResponder];
    [hibbsright resignFirstResponder];
    [thomasleft resignFirstResponder];
    [thomasright resignFirstResponder];
    [l1left resignFirstResponder];
    [l1right resignFirstResponder];
    [l2left resignFirstResponder];
    [l2right resignFirstResponder];
    [l3left resignFirstResponder];
    [l3right resignFirstResponder];
    [l4left resignFirstResponder];
    [l4right resignFirstResponder];
    [s1left resignFirstResponder];
    [s1right resignFirstResponder];
    [ml1left resignFirstResponder];
    [ml1right resignFirstResponder];
    [ml2left resignFirstResponder];
    [ml2right resignFirstResponder];
    [ml3left resignFirstResponder];
    [ml3right resignFirstResponder];
    [ml4left resignFirstResponder];
    [ml4right resignFirstResponder];
    [ml5left resignFirstResponder];
    [ml5right resignFirstResponder];
    [ms1left resignFirstResponder];
    [ms1right resignFirstResponder];
    [l5left resignFirstResponder];
    [l5right resignFirstResponder];
    printView.hidden = YES;
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
    
    [super dealloc];
    [left release];
    [right release];
    [leftother release];
    [rightother release];
    
    [palleft release];
    [palright release];
    
}
@end
