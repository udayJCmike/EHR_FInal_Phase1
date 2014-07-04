//
//  soapnotesViewController.m
//  soapnotes
//
//  Created by Admin on 10/05/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "soapnotesViewController.h"
#import "soapnotes1ViewController.h"
#import "MBProgressHUD.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
 
@interface soapnotesViewController ()

@end

@implementation soapnotesViewController
@synthesize but1;
@synthesize but2;
@synthesize but3;
@synthesize but4;
@synthesize but5;
@synthesize but6;
@synthesize but7;
@synthesize but8;
@synthesize but9;
@synthesize but10;
@synthesize but11;
@synthesize but12;
@synthesize but14;
@synthesize but13;
@synthesize but15;
@synthesize but16;
@synthesize but17;
@synthesize but18;
@synthesize but19;
@synthesize but20;
@synthesize but21;
@synthesize but22;
@synthesize but23;
@synthesize but24;
@synthesize but25;
@synthesize but26;
@synthesize but27;
@synthesize but28;
@synthesize but29;
@synthesize but30;
@synthesize but31;
@synthesize name;
@synthesize painscale1;
@synthesize painscale2;
@synthesize seg1;
@synthesize seg2;
@synthesize val1;
@synthesize val2;
@synthesize save;
- (void)viewDidLoad
{
    [super viewDidLoad];
    recorddict=[[NSMutableDictionary alloc]init];
    resultset=[[NSMutableDictionary alloc]init];
    seg1.hidden=YES;
     seg2.hidden=YES;
    painscale1.hidden=YES;
     painscale2.hidden=YES;
    
    val1.hidden=YES;
    val2.hidden=YES;
    val1.text=@"No Pain";
    val2.text=@"No Pain";
    seg1val=@"Proximal";
    seg2val=@"Proximal";
      NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    name.text=username;
   
    
    
   
   
   
   
   
    [self Getdata];
    [self getDiagnosis];
	// Do any additiona;l setup after loading the view, typically from a nib.
}
-(void)getDiagnosis
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostEntityFirst1diagnosis:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    //NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"soapnotesdiagnosisuser List"];
    NSMutableArray *diagnosis=[[NSMutableArray alloc]init];
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    // NSLog(@"items1app %@",items1App);
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            [diagnosis addObject:[arrayList1 objectForKey:@"diagnosis"]];
            

        }
      //  NSLog(@"result %@",diagnosis);
        [resultset setObject:diagnosis forKey:@"diagnosis"];
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
    NSArray *items1App=[itemsApp objectForKey:@"soapnotesuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
   //   NSLog(@"items1app %d",[items1App count]);
   // NSLog(@"items1app %@",items1App);
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
          
            temp1 =[arrayList1 objectForKey:@"pname"];
            temp2 =[arrayList1 objectForKey:@"headache"];
            temp3 =[arrayList1 objectForKey:@"neckpain"];
            temp4 =[arrayList1 objectForKey:@"rightshoulderpain"];
            temp5 =[arrayList1 objectForKey:@"leftshoulderpain"];
            temp6 =[arrayList1 objectForKey:@"chestpain"];
            temp7=[arrayList1 objectForKey:@"rightarmpain"];
            temp8 =[arrayList1 objectForKey:@"rightproxi"];
            temp9=[arrayList1 objectForKey:@"leftarmpain"];
            temp10 =[arrayList1 objectForKey:@"leftproxi"];
            temp11 =[arrayList1 objectForKey:@"rightelbowpain"];
            temp12=[arrayList1 objectForKey:@"leftelbowpain"];
            temp13 =[arrayList1 objectForKey:@"rightwristpain"];
            temp14 =[arrayList1 objectForKey:@"leftwristpain"];
            temp15=[arrayList1 objectForKey:@"righthandpain"];
            temp16=[arrayList1 objectForKey:@"lefthandpain"];
            temp17=[arrayList1 objectForKey:@"mbp"];
            temp18=[arrayList1 objectForKey:@"rightribpain"];
            temp19=[arrayList1 objectForKey:@"painscale1"];
            temp20=[arrayList1 objectForKey:@"leftribpain"];
            temp21 =[arrayList1 objectForKey:@"painscale2"];
            temp22 =[arrayList1 objectForKey:@"lbp"];
            temp23 =[arrayList1 objectForKey:@"rightsipain"];
            temp24 =[arrayList1 objectForKey:@"leftsipain"];
            temp25 =[arrayList1 objectForKey:@"righthippain"];
            temp26=[arrayList1 objectForKey:@"lefthippain"];
            temp27 =[arrayList1 objectForKey:@"rightgluteulpain"];
            temp28 =[arrayList1 objectForKey:@"leftgluteulpain"];
            temp29 =[arrayList1 objectForKey:@"rightlegpain"];
            temp30 =[arrayList1 objectForKey:@"leftlegpain"];
            temp31 =[arrayList1 objectForKey:@"rightkneepain"];
            temp32 =[arrayList1 objectForKey:@"leftkneepain"];
            temp33 =[arrayList1 objectForKey:@"rightanklepain"];
            temp34 =[arrayList1 objectForKey:@"leftanklepain"];
            temp35 =[arrayList1 objectForKey:@"rightfootpain"];
            temp36 =[arrayList1 objectForKey:@"leftfootpain"];
            if ([[arrayList1 objectForKey:@"rightproxi"]isEqualToString:@"Proximal"] ) {
                [seg1 setSelectedSegmentIndex:0];
                seg1val=@"Proximal";
            }
            else if ([[arrayList1 objectForKey:@"rightproxi"]isEqualToString:@"Distal Portion"] ) {
                [seg1 setSelectedSegmentIndex:1];
                seg1val=@"Distal Portion";
            }
            if ([[arrayList1 objectForKey:@"leftproxi"]isEqualToString:@"Proximal"] ) {
                [seg2 setSelectedSegmentIndex:0];
                seg2val=@"Proximal";
            }
            else if ([[arrayList1 objectForKey:@"leftproxi"]isEqualToString:@"Distal Portion"] ) {
                [seg2 setSelectedSegmentIndex:1];
                seg2val=@"Distal Portion";
            }
            if ([temp19 isEqualToString:@"Severe Pain"])
            {
                 [painscale1 setValue:10 animated:YES];
            }
            else if ([temp19 isEqualToString:@"No Pain"])
            {
                [painscale1 setValue:0 animated:YES];
            }
            else
            {
               [painscale1 setValue:[temp19 floatValue] animated:YES];
            }
            
            val1.text=[NSString stringWithFormat:@"%@",temp19];
               
            if ([temp21 isEqualToString:@"Severe Pain"])
            {
                [painscale2 setValue:10 animated:YES];
            }
            else if ([temp21 isEqualToString:@"No Pain"])
            {
                [painscale2 setValue:0 animated:YES];
            }
            else
            {
                [painscale2 setValue:[temp21 floatValue] animated:YES];
            }
            
            val2.text=[NSString stringWithFormat:@"%@",temp21];
            
           
           
            if ([temp2 isEqualToString:@"Headache"]) {
                but1.selected=YES;
                [but1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Headache" forKey:@"b1"];
            }
            else
            {
                but1.selected=NO;
                [but1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b1"];
            }
            if ([temp3 isEqualToString:@"Neck Pain"]) {
                but2.selected=YES;
                [but2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Neck Pain" forKey:@"b2"];
            }
            else
            {
                but2.selected=NO;
                [but2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b2"];
            }
            if ([temp4 isEqualToString:@"Right Shoulder pain"]) {
                but3.selected=YES;
                [but3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Right Shoulder pain" forKey:@"b3"];
            }
            else
            {
                but3.selected=NO;
                [but3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b3"];
            }
            if ([temp5 isEqualToString:@"Left Shoulder Pain"]) {
                but4.selected=YES;
                [but4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left Shoulder Pain" forKey:@"b4"];
            }
            else
            {
                but4.selected=NO;
                [but4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b4"];
            }
            if ([temp6 isEqualToString:@"Chest Pain"]) {
                but5.selected=YES;
                [but5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Chest Pain" forKey:@"b5"];
            }
            else
            {
                but5.selected=NO;
                [but5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b5"];
            }
            if ([temp7 isEqualToString:@"Right Arm Pain"]) {
                but6.selected=YES;
                seg1.hidden=NO;
               
                [but6 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Right Arm Pain" forKey:@"b6"];
            }
            else
            {
                but6.selected=NO;
                seg1.hidden=YES;
                [but6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b6"];
            }
            if ([temp9 isEqualToString:@"Left Arm Pain"]) {
                but7.selected=YES;
                seg2.hidden=NO;
                [but7 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left Arm Pain" forKey:@"b7"];
            }
            else
            {
                but7.selected=NO;
                seg2.hidden=YES;
                [but7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b7"];
            }
            if ([temp11 isEqualToString:@"Right Elbow Pain"]) {
                but8.selected=YES;
                [but8 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Right Elbow Pain" forKey:@"b8"];
            }
            else
            {
                but8.selected=NO;
                [but8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b8"];
            }
            if ([temp12 isEqualToString:@"Left Elbow Pain"]) {
                but9.selected=YES;
                [but9 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left Elbow Pain" forKey:@"b9"];
            }
            else
            {
                but9.selected=NO;
                [but9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b9"];
            }
            if ([temp13 isEqualToString:@"Right Wrist pain"]) {
                but10.selected=YES;
                [but10 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Right Wrist pain" forKey:@"b10"];
            }
            else
            {
                but10.selected=NO;
                [but10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b10"];
            }
            if ([temp14 isEqualToString:@"Left Wrist Pain"]) {
                but11.selected=YES;
                [but11 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left Wrist Pain" forKey:@"b11"];
            }
            else
            {
                but11.selected=NO;
                [but11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b11"];
            }
            if ([temp15 isEqualToString:@"Right Hand Pain"]) {
                but12.selected=YES;
                [but12 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Right Hand Pain" forKey:@"b12"];
            }
            else
            {
                but12.selected=NO;
                [but12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b12"];
            }
            if ([temp16 isEqualToString:@"Left Hand Pain"]) {
                but13.selected=YES;
                [but13 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left Hand Pain" forKey:@"b13"];
            }
            else
            {
                but13.selected=NO;
                [but13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b13"];
            }
            if ([temp17 isEqualToString:@"MBP"]) {
                but14.selected=YES;
                [but14 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"MBP" forKey:@"b14"];
            }
            else
            {
                but14.selected=NO;
                [but14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b14"];
            }
            if ([temp18 isEqualToString:@"Right Rib Pain"]) {
                but15.selected=YES;
                painscale1.hidden=YES;
                [but15 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Right Rib Pain" forKey:@"b15"];
            }
            else
            {
                but15.selected=NO;
                painscale1.hidden=NO;
                [but15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b15"];
            }
            if ([temp20 isEqualToString:@"Left Rib Pain"]) {
                but16.selected=YES;
                painscale2.hidden=YES;
                [but16 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left Rib Pain" forKey:@"b16"];
            }
            else
            {
                but16.selected=NO;
                   painscale2.hidden=NO;
                [but16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b16"];
            }
            if ([temp22 isEqualToString:@"LBP"]) {
                but17.selected=YES;
                [but17 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"LBP" forKey:@"b17"];
            }
            else
            {
                but17.selected=NO;
                [but17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b17"];
            }
            if ([temp23 isEqualToString:@"Right SI Pain"]) {
                but18.selected=YES;
                [but18 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Right SI Pain" forKey:@"b18"];
            }
            else
            {
                but18.selected=NO;
                [but18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b18"];
            }
            if ([temp24 isEqualToString:@"Left SI Pain"]) {
                but19.selected=YES;
                [but19 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left SI Pain" forKey:@"b19"];
            }
            else
            {
                but19.selected=NO;
                [but19 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b19"];
            }
            if ([temp25 isEqualToString:@"Right Hip Pain"]) {
                but20.selected=YES;
                [but20 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Right Hip Pain" forKey:@"b20"];
            }
            else
            {
                but20.selected=NO;
                [but20 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b20"];
            }
            if ([temp26 isEqualToString:@"Left Hip Pain"]) {
                but21.selected=YES;
                [but21 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left Hip Pain" forKey:@"b21"];
            }
            else
            {
                but21.selected=NO;
                [but21 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b21"];
            }
            if ([temp27 isEqualToString:@"Right Gluteal Pain"]) {
                but22.selected=YES;
                [but22 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Right Gluteal Pain" forKey:@"b22"];
            }
            else
            {
                but22.selected=NO;
                [but22 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b22"];
            }
            if ([temp28 isEqualToString:@"Left Gluteal Pain"]) {
                but23.selected=YES;
                [but23 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left Gluteal Pain" forKey:@"b23"];
            }
            else
            {
                but23.selected=NO;
                [but23 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b23"];
            }
            if ([temp29 isEqualToString:@"Right Leg Pain"]) {
                but24.selected=YES;
                [but24 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Right Leg Pain" forKey:@"b24"];
            }
            else
            {
                but24.selected=NO;
                [but24 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b24"];
            }
            if ([temp30 isEqualToString:@"Left Leg Pain"]) {
                but25.selected=YES;
                [but25 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left Leg Pain" forKey:@"b25"];
            }
            else
            {
                but25.selected=NO;
                [but25 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b25"];
            }
            if ([temp31 isEqualToString:@"Right Knee Pain"]) {
                but26.selected=YES;
                [but26 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Right Knee Pain" forKey:@"b26"];
            }
            else
            {
                but26.selected=NO;
                [but26 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b26"];
            }
            if ([temp32 isEqualToString:@"Left Knee Pain"]) {
                but27.selected=YES;
                [but27 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left Knee Pain" forKey:@"b27"];
            }
            else
            {
                but27.selected=NO;
                [but27 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b27"];
            }
            if ([temp33 isEqualToString:@"Right Ankle Pain"]) {
                but28.selected=YES;
                [but28 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Right Ankle Pain" forKey:@"b28"];
            }
            else
            {
                but28.selected=NO;
                [but28 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b28"];
            }
            if ([temp34 isEqualToString:@"Left Ankle Pain"]) {
                but29.selected=YES;
                [but29 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left Ankle Pain" forKey:@"b29"];
            }
            else
            {
                but29.selected=NO;
                [but29 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b29"];
            }
            if ([temp35 isEqualToString:@"right Foot Pain"]) {
                but30.selected=YES;
                [but30 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"right Foot Pain" forKey:@"b30"];
            }
            else
            {
                but30.selected=NO;
                [but30 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b30"];
            }
            if ([temp36 isEqualToString:@"Left Foot Pain"]) {
                but31.selected=YES;
                [but31 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"Left Foot Pain" forKey:@"b31"];
            }
            else
            {
                but31.selected=NO;
                [but31 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                [self checkboxSelected:nil];
                [recorddict setValue:@"null" forKey:@"b31"];
            }
            
           

              [resultset setValue:[arrayList1 objectForKey:@"painscale"] forKey:@"painscale"];
              [resultset setValue:[arrayList1 objectForKey:@"date1"] forKey:@"date1"];
              [resultset setValue:[arrayList1 objectForKey:@"improved"] forKey:@"improved"];
              [resultset setValue:[arrayList1 objectForKey:@"worsened"] forKey:@"worsened"];
              [resultset setValue:[arrayList1 objectForKey:@"e1e2"] forKey:@"e1e2"];
              [resultset setValue:[arrayList1 objectForKey:@"xray"] forKey:@"xray"];
              [resultset setValue:[arrayList1 objectForKey:@"offwork1"] forKey:@"offwork1"];
              [resultset setValue:[arrayList1 objectForKey:@"reeval1"] forKey:@"reeval1"];
              [resultset setValue:[arrayList1 objectForKey:@"date2"] forKey:@"date2"];
              [resultset setValue:[arrayList1 objectForKey:@"improved1"] forKey:@"improved1"];
              [resultset setValue:[arrayList1 objectForKey:@"worsened1"] forKey:@"worsened1"];
              [resultset setValue:[arrayList1 objectForKey:@"fixation1"] forKey:@"fixation1"];
              [resultset setValue:[arrayList1 objectForKey:@"notimproved1"] forKey:@"notimproved1"];
              [resultset setValue:[arrayList1 objectForKey:@"scsm1"] forKey:@"scsm1"];
            [resultset setValue:[arrayList1 objectForKey:@"date3"] forKey:@"date3"];
            [resultset setValue:[arrayList1 objectForKey:@"improved2"] forKey:@"improved2"];
            [resultset setValue:[arrayList1 objectForKey:@"worsened2"] forKey:@"worsened2"];
            [resultset setValue:[arrayList1 objectForKey:@"fixation2"] forKey:@"fixation2"];
            [resultset setValue:[arrayList1 objectForKey:@"notimproved2"] forKey:@"notimproved2"];
            [resultset setValue:[arrayList1 objectForKey:@"scsm2"] forKey:@"scsm2"];
            [resultset setValue:[arrayList1 objectForKey:@"date4"] forKey:@"date4"];
            [resultset setValue:[arrayList1 objectForKey:@"improved3"] forKey:@"improved3"];
            [resultset setValue:[arrayList1 objectForKey:@"worsened3"] forKey:@"worsened3"];
            [resultset setValue:[arrayList1 objectForKey:@"fixation3"] forKey:@"fixation3"];
            [resultset setValue:[arrayList1 objectForKey:@"notimproved3"] forKey:@"notimproved3"];
            [resultset setValue:[arrayList1 objectForKey:@"scsm3"] forKey:@"scsm3"];
            [resultset setValue:[arrayList1 objectForKey:@"date5"] forKey:@"date5"];
            [resultset setValue:[arrayList1 objectForKey:@"improved4"] forKey:@"improved4"];
            [resultset setValue:[arrayList1 objectForKey:@"worsened4"] forKey:@"worsened4"];
            [resultset setValue:[arrayList1 objectForKey:@"fixation4"] forKey:@"fixation4"];
            [resultset setValue:[arrayList1 objectForKey:@"notimproved4"] forKey:@"notimproved4"];
            [resultset setValue:[arrayList1 objectForKey:@"scsm4"] forKey:@"scsm4"];
            [resultset setValue:[arrayList1 objectForKey:@"date6"] forKey:@"date6"];
            [resultset setValue:[arrayList1 objectForKey:@"improved5"] forKey:@"improved5"];
            [resultset setValue:[arrayList1 objectForKey:@"worsened5"] forKey:@"worsened5"];
            [resultset setValue:[arrayList1 objectForKey:@"fixation5"] forKey:@"fixation5"];
            [resultset setValue:[arrayList1 objectForKey:@"notimproved5"] forKey:@"notimproved5"];
            [resultset setValue:[arrayList1 objectForKey:@"scsm5"] forKey:@"scsm5"];
            [resultset setValue:[arrayList1 objectForKey:@"date7"] forKey:@"date7"];
            [resultset setValue:[arrayList1 objectForKey:@"improved6"] forKey:@"improved6"];
            [resultset setValue:[arrayList1 objectForKey:@"worsened6"] forKey:@"worsened6"];
            [resultset setValue:[arrayList1 objectForKey:@"fixation6"] forKey:@"fixation6"];
            [resultset setValue:[arrayList1 objectForKey:@"notimproved6"] forKey:@"notimproved6"];
            [resultset setValue:[arrayList1 objectForKey:@"scsm6"] forKey:@"scsm6"];
            [resultset setValue:[arrayList1 objectForKey:@"date8"] forKey:@"date8"];
            [resultset setValue:[arrayList1 objectForKey:@"improved7"] forKey:@"improved7"];
            [resultset setValue:[arrayList1 objectForKey:@"worsened7"] forKey:@"worsened7"];
            [resultset setValue:[arrayList1 objectForKey:@"fixation7"] forKey:@"fixation7"];
            [resultset setValue:[arrayList1 objectForKey:@"notimproved7"] forKey:@"notimproved7"];
            [resultset setValue:[arrayList1 objectForKey:@"scsm7"] forKey:@"scsm7"];
            [resultset setValue:[arrayList1 objectForKey:@"date9"] forKey:@"date9"];
            [resultset setValue:[arrayList1 objectForKey:@"improved8"] forKey:@"improved8"];
            [resultset setValue:[arrayList1 objectForKey:@"worsened8"] forKey:@"worsened8"];
            [resultset setValue:[arrayList1 objectForKey:@"fixation8"] forKey:@"fixation8"];
            [resultset setValue:[arrayList1 objectForKey:@"notimproved8"] forKey:@"notimproved8"];
            [resultset setValue:[arrayList1 objectForKey:@"scsm8"] forKey:@"scsm8"];
            [resultset setValue:[arrayList1 objectForKey:@"sign"] forKey:@"sign"];
           
           // [resultset setValue:[arrayList1 objectForKey:@""] forKey:@""];
            
        }
    }
}

-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"SoapNotes.php?service=soapnotesselect";
    
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
-(NSString *)HttpPostEntityFirst1diagnosis:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
  
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"SoapNotesDiagnosis.php?service=soapnotesdiagnosisselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
  
     NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
  //  NSLog(@"POST:%@",post);
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)act1:(id)sender {
    int val=(int)painscale1.value;
    if (val==10) {
        val1.text=@"Severe Pain";
    }
    else if(val==0)
    {
        val1.text=@"No Pain";
    }
    else
    {
        val1.text=[NSString stringWithFormat:@"%d",val];
    }
    
}
- (IBAction)act2:(id)sender {
    
    int val=(int)painscale2.value;
    if (val==10) {
        val2.text=@"Severe Pain";
    }
    else if(val==0)
    {
        val2.text=@"No Pain";
    }
    else
    {
        val2.text=[NSString stringWithFormat:@"%d",val];
    }

}
-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if (but6.selected) {
        seg1.hidden=NO;
    }
    else
    {
        seg1.hidden=YES;
    }
    if (but7.selected) {
        seg2.hidden=NO;
    }
    else
    {
        seg2.hidden=YES;
    }
    if (but15.selected) {
        val1.hidden=NO;
        painscale1.hidden=NO;
    }
    else
    {
        val1.hidden=YES;
        painscale1.hidden=YES;
    }
    if (but16.selected) {
        val2.hidden=NO;
        painscale2.hidden=NO;
    }
    else
    {
        val2.hidden=YES;
        painscale2.hidden=YES;
    }
    
   
    
    
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}
- (IBAction)reset:(id)sender {
   
    [but1 setSelected:NO];
    [but1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but2 setSelected:NO];
    [but2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but3 setSelected:NO];
    [but3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but4 setSelected:NO];
    [but4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but5 setSelected:NO];
    [but5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but6 setSelected:NO];
    [but6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but7 setSelected:NO];
    [but7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but8 setSelected:NO];
    [but8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but9 setSelected:NO];
    [but9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but10 setSelected:NO];
    [but10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    [but11 setSelected:NO];
    [but11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but12 setSelected:NO];
    [but12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but13 setSelected:NO];
    [but13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but14 setSelected:NO];
    [but14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but15 setSelected:NO];
    [but15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but16 setSelected:NO];
    [but16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but17 setSelected:NO];
    [but17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but18 setSelected:NO];
    [but18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but19 setSelected:NO];
    [but19 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but20 setSelected:NO];
    [but20 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    [but21 setSelected:NO];
    [but21 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but22 setSelected:NO];
    [but22 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but23 setSelected:NO];
    [but23 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but24 setSelected:NO];
    [but24 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but25 setSelected:NO];
    [but25 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but26 setSelected:NO];
    [but26 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but27 setSelected:NO];
    [but27 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but28 setSelected:NO];
    [but28 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but29 setSelected:NO];
    [but29 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but30 setSelected:NO];
    [but30 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but31 setSelected:NO];
    [but31 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [seg1 setSelectedSegmentIndex:0];
    [seg2 setSelectedSegmentIndex:0];
    [painscale1 setValue:0 animated:YES];
    [painscale2 setValue:0 animated:YES];
    val1.text=@"No Pain";
    val2.text=@"No Pain";
    seg1val=@"Proximal";
    seg2val=@"Proximal";
    seg1.hidden=YES;
    seg2.hidden=YES;
    painscale1.hidden=YES;
    painscale2.hidden=YES;
    val1.hidden=YES;
    val2.hidden=YES;
    


    
    
}
- (IBAction)next:(id)sender {
            [recorddict setValue:name.text forKey:@"pname"];
      [recorddict setValue:seg1val forKey:@"segval1"];
      [recorddict setValue:seg2val forKey:@"segval2"];
      [recorddict setValue:val1.text forKey:@"val1"];
      [recorddict setValue:val2.text forKey:@"val2"];
    
    if (but1.selected) {
        [recorddict setValue:@"Headache" forKey:@"b1"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b1"];
    }
    if (but2.selected) {
        [recorddict setValue:@"Neck Pain" forKey:@"b2"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b2"];
    }
    if (but3.selected) {
        [recorddict setValue:@"Right Shoulder pain" forKey:@"b3"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b3"];
    }
    if (but4.selected) {
        [recorddict setValue:@"Left Shoulder Pain" forKey:@"b4"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b4"];
    }
    if (but5.selected) {
        [recorddict setValue:@"Chest Pain" forKey:@"b5"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b5"];
    }
    if (but6.selected) {
        [recorddict setValue:@"Right Arm Pain" forKey:@"b6"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b6"];
    }
    if (but7.selected) {
        [recorddict setValue:@"Left Arm Pain" forKey:@"b7"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b7"];
    }
    if (but8.selected) {
        [recorddict setValue:@"Right Elbow Pain" forKey:@"b8"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b8"];
    }
    if (but9.selected) {
        [recorddict setValue:@"Left Elbow Pain" forKey:@"b9"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b9"];
    }
    if (but10.selected) {
        [recorddict setValue:@"Right Wrist pain" forKey:@"b10"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b10"];
    }
    if (but11.selected) {
        [recorddict setValue:@"Left Wrist Pain" forKey:@"b11"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b11"];
    }
    if (but12.selected) {
        [recorddict setValue:@"Right Hand Pain" forKey:@"b12"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b12"];
    }
    if (but13.selected) {
        [recorddict setValue:@"Left Hand Pain" forKey:@"b13"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b13"];
    }
    if (but14.selected) {
        [recorddict setValue:@"MBP" forKey:@"b14"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b14"];
    }
    if (but15.selected) {
        [recorddict setValue:@"Right Rib Pain" forKey:@"b15"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b15"];
    }
    if (but16.selected) {
        [recorddict setValue:@"Left Rib Pain" forKey:@"b16"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b16"];
    }
    if (but17.selected) {
        [recorddict setValue:@"LBP" forKey:@"b17"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b17"];
    }
    if (but18.selected) {
        [recorddict setValue:@"Right SI Pain" forKey:@"b18"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b18"];
    }
    if (but19.selected) {
        [recorddict setValue:@"Left SI Pain" forKey:@"b19"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b19"];
    }
    if (but20.selected) {
        [recorddict setValue:@"Right Hip Pain" forKey:@"b20"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b20"];
    }
    if (but21.selected) {
        [recorddict setValue:@"Left Hip Pain" forKey:@"b21"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b21"];
    }
    if (but22.selected) {
        [recorddict setValue:@"Right Gluteal Pain" forKey:@"b22"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b22"];
    }
    if (but23.selected) {
        [recorddict setValue:@"Left Gluteal Pain" forKey:@"b23"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b23"];
    }
    if (but24.selected) {
        [recorddict setValue:@"Right Leg Pain" forKey:@"b24"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b24"];
    }
    if (but25.selected) {
        [recorddict setValue:@"Left Leg Pain" forKey:@"b25"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b25"];
    }
    if (but26.selected) {
        [recorddict setValue:@"Right Knee Pain" forKey:@"b26"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b26"];
    }
    if (but27.selected) {
        [recorddict setValue:@"Left Knee Pain" forKey:@"b27"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b27"];
    }
    if (but28.selected) {
        [recorddict setValue:@"Right Ankle Pain" forKey:@"b28"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b28"];
    }
    if (but29.selected) {
        [recorddict setValue:@"Left Ankle Pain" forKey:@"b29"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b29"];
    }
    if (but30.selected) {
        [recorddict setValue:@"right Foot Pain" forKey:@"b30"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b30"];
    }
    if (but31.selected) {
        [recorddict setValue:@"Left Foot Pain" forKey:@"b31"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"b31"];
    }

    
    [self performSegueWithIdentifier:@"soap1" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"soap1"])
    {
        
        soapnotes1ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
       // NSLog(@"recorddict in soapnotes first %@",recorddict);
    }
    
    
}

- (IBAction)seg1act:(id)sender {
    if ([sender selectedSegmentIndex]==0) {
        seg1val=@"Proximal";
    }
    if ([sender selectedSegmentIndex]==1) {
     seg1val=@"Distal Portion";
    }
}
- (IBAction)seg2act:(id)sender {
    if ([sender selectedSegmentIndex]==0) {
        seg2val=@"Proximal";
    }
    if ([sender selectedSegmentIndex]==1) {
        seg2val=@"Distal Portion";
    }
}

- (void)dealloc {
   
  
    [super dealloc];
}
@end
