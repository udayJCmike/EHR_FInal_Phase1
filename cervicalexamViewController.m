//
//  cervicalexamViewController.m
//  cervicalexam
//
//  Created by DeemsysInc on 2/20/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "cervicalexamViewController.h"
#import "cervicalexam2ViewController.h"
#import "hamilViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "databaseurl.h"
@interface cervicalexamViewController ()
{
    databaseurl *du;
}
@end

@implementation cervicalexamViewController
@synthesize resultset;
@synthesize aoseg;
@synthesize roundseg;
@synthesize p1seg;
@synthesize p2seg;
@synthesize p3seg;
@synthesize p4seg;
@synthesize p5seg;
@synthesize p6seg;
@synthesize p7seg;
@synthesize p8seg;
@synthesize p9seg;
@synthesize recorddict;
@synthesize c1;
@synthesize c2;
@synthesize c3;
@synthesize c4;
@synthesize patname;
@synthesize forward;
@synthesize muscle;
@synthesize swell;
@synthesize roundval;
@synthesize other;
@synthesize date;
@synthesize aoval;
@synthesize p1val;
@synthesize p2val;
@synthesize p3val;
@synthesize p4val;
@synthesize p5val;
@synthesize p6val;
@synthesize p7val;
@synthesize p8val;
@synthesize p9val;

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

- (IBAction)reset:(id)sender
{
    p1val=@"null";
    p2val=@"null";
    p3val=@"null";
    p4val=@"null";
    p5val=@"null";
    p6val=@"null";
    p7val=@"null";
    p8val=@"null";
    p9val=@"null";
    roundval=@"null";
    aoval=@"Excellent";
    patname.text=@"";
    date.text=@"";
    muscle.text=@"";
    forward.text=@"";
    swell.text=@"";
    c1.selected=NO;
    [c1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    allsoft=@"null";
    c2.selected=NO;
    [c2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    func=@"null";
    c3.selected=NO;
    [c3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    sublax=@"null";
    c4.selected=NO;
    [c4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    ortho=@"null";
    other.text=@"";
    f1.text=@"";
    f2.text=@"";
    f3.text=@"";
    f4.text=@"";
    f5.text=@"";
    f6.text=@"";
    s11.text=@"";
    s12.text=@"";
    s13.text=@"";
    s21.text=@"";
    s22.text=@"";
    s23.text=@"";
    s31.text=@"";
    s32.text=@"";
    s33.text=@"";
    s41.text=@"";
    s42.text=@"";
    s43.text=@"";
    s51.text=@"";
    s52.text=@"";
    s53.text=@"";
    ot11.text=@"";
    ot12.text=@"";
    ot21.text=@"";
    ot22.text=@"";
    ot31.text=@"";
    ot32.text=@"";
    ot41.text=@"";
    ot42.text=@"";
    ot51.text=@"";
    ot52.text=@"";
    [roundseg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [p1seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [p2seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [p3seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [p4seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [p5seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [p6seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [p7seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [p8seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [p9seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [aoseg setSelectedSegmentIndex:0];
    
    
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    recorddict=[[NSMutableDictionary alloc]init];
    p1val=@"null";
    p2val=@"null";
    p3val=@"null";
    p4val=@"null";
    p5val=@"null";
    p6val=@"null";
    p7val=@"null";
    p8val=@"null";
    p9val=@"null";
    roundval=@"null";
    aoval=@"Excellent";
    du=[[databaseurl alloc]init];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
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
    patname.text=username;
    resultset=[[NSMutableDictionary alloc]init];
    [self Getdata];
    
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
    NSArray *items1App=[itemsApp objectForKey:@"cervicalexamuser List"];
    
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
            // temp3 =[arrayList1 objectForKey:@"gait"];
            temp4 =[arrayList1 objectForKey:@"muscle"];
            temp5 =[arrayList1 objectForKey:@"swelling"];
            temp7=[arrayList1 objectForKey:@"headposture"];
            temp8 =[arrayList1 objectForKey:@"roundshoulder"];
            temp6 =[arrayList1 objectForKey:@"ao"];
            temp9=[arrayList1 objectForKey:@"allsoft"];
            temp10 =[arrayList1 objectForKey:@"suboccipital"];
            temp11 =[arrayList1 objectForKey:@"scalenes"];
            temp12=[arrayList1 objectForKey:@"levator"];
            temp13 =[arrayList1 objectForKey:@"teresminor"];
            temp14 =[arrayList1 objectForKey:@"teresmajor"];
            temp15=[arrayList1 objectForKey:@"rhomboids"];
            temp16=[arrayList1 objectForKey:@"trapezius"];
            temp17=[arrayList1 objectForKey:@"pectoralis"];
            temp18=[arrayList1 objectForKey:@"paraspinals"];
            temp19=[arrayList1 objectForKey:@"othernotes"];
            temp20=[arrayList1 objectForKey:@"functionalrangeofmotion"];
            temp21 =[arrayList1 objectForKey:@"subluxation"];
            temp22 =[arrayList1 objectForKey:@"orthopedic"];
            temp23 =[arrayList1 objectForKey:@"flexion"];
            temp24 =[arrayList1 objectForKey:@"c01"];
            temp25 =[arrayList1 objectForKey:@"c12"];
            temp26=[arrayList1 objectForKey:@"c23"];
            temp27 =[arrayList1 objectForKey:@"hautantl"];
            temp28 =[arrayList1 objectForKey:@"hautantr"];
            temp29 =[arrayList1 objectForKey:@"extension"];
            temp30 =[arrayList1 objectForKey:@"c34"];
            temp31 =[arrayList1 objectForKey:@"c45"];
            temp32 =[arrayList1 objectForKey:@"c56"];
            temp33 =[arrayList1 objectForKey:@"foraminall"];
            temp34 =[arrayList1 objectForKey:@"foraminalr"];
            temp35 =[arrayList1 objectForKey:@"lflexion"];
            temp36 =[arrayList1 objectForKey:@"rflexion"];
            temp37 =[arrayList1 objectForKey:@"c67"];
            temp38 =[arrayList1 objectForKey:@"c7t1"];
            temp39 =[arrayList1 objectForKey:@"t12"];
            temp40 =[arrayList1 objectForKey:@"sotohalll"];
            temp41 =[arrayList1 objectForKey:@"sotohallr"];
            temp42 =[arrayList1 objectForKey:@"lrotation"];
            temp43 =[arrayList1 objectForKey:@"rrotation"];
            temp44 =[arrayList1 objectForKey:@"t23"];
            temp45 =[arrayList1 objectForKey:@"t34"];
            temp46 =[arrayList1 objectForKey:@"t45"];
            temp47 =[arrayList1 objectForKey:@"adsonsl"];
            temp48 =[arrayList1 objectForKey:@"adsonsr"];
            temp49 =[arrayList1 objectForKey:@"t56"];
            temp50 =[arrayList1 objectForKey:@"t67"];
            temp51 =[arrayList1 objectForKey:@"t78"];
            temp52 =[arrayList1 objectForKey:@"ulttl"];
            temp53 =[arrayList1 objectForKey:@"ulttr"];
            [resultset setValue:[arrayList1 objectForKey:@"neurologicaltest"] forKey:@"neurologicaltest"];
            [resultset setValue:[arrayList1 objectForKey:@"c5l"] forKey:@"c5l"];
            [resultset setValue:[arrayList1 objectForKey:@"c5r"] forKey:@"c5r"];
            [resultset setValue:[arrayList1 objectForKey:@"c51l"] forKey:@"c51l"];
            [resultset setValue:[arrayList1 objectForKey:@"c51r"] forKey:@"c51r"];
            [resultset setValue:[arrayList1 objectForKey:@"c53l"] forKey:@"c53l"];
            [resultset setValue:[arrayList1 objectForKey:@"c53r"] forKey:@"c53r"];
            [resultset setValue:[arrayList1 objectForKey:@"c6l"] forKey:@"c6l"];
            [resultset setValue:[arrayList1 objectForKey:@"c6r"] forKey:@"c6r"];
            [resultset setValue:[arrayList1 objectForKey:@"c61l"] forKey:@"c61l"];
            [resultset setValue:[arrayList1 objectForKey:@"c61r"] forKey:@"c61r"];
            [resultset setValue:[arrayList1 objectForKey:@"c63l"] forKey:@"c63l"];
            [resultset setValue:[arrayList1 objectForKey:@"c63r"] forKey:@"c63r"];
            [resultset setValue:[arrayList1 objectForKey:@"c7l"] forKey:@"c7l"];
            [resultset setValue:[arrayList1 objectForKey:@"c7r"] forKey:@"c7r"];
            [resultset setValue:[arrayList1 objectForKey:@"c71l"] forKey:@"c71l"];
            [resultset setValue:[arrayList1 objectForKey:@"c71r"] forKey:@"c71r"];
            [resultset setValue:[arrayList1 objectForKey:@"c73l"] forKey:@"c73l"];
            [resultset setValue:[arrayList1 objectForKey:@"c73r"] forKey:@"c73r"];
            [resultset setValue:[arrayList1 objectForKey:@"c8l"] forKey:@"c8l"];
            [resultset setValue:[arrayList1 objectForKey:@"c8r"] forKey:@"c8r"];
            [resultset setValue:[arrayList1 objectForKey:@"c81l"] forKey:@"c81l"];
            [resultset setValue:[arrayList1 objectForKey:@"c81r"] forKey:@"c81r"];
            [resultset setValue:[arrayList1 objectForKey:@"t1l"] forKey:@"t1l"];
            [resultset setValue:[arrayList1 objectForKey:@"t1r"] forKey:@"t1r"];
            [resultset setValue:[arrayList1 objectForKey:@"t11l"] forKey:@"t11l"];
            [resultset setValue:[arrayList1 objectForKey:@"t11r"] forKey:@"t11r"];
            
            [resultset setValue:[arrayList1 objectForKey:@"sitting"] forKey:@"sitting"];
            [resultset setValue:[arrayList1 objectForKey:@"standing"] forKey:@"standing"];
            [resultset setValue:[arrayList1 objectForKey:@"driving"] forKey:@"driving"];
            [resultset setValue:[arrayList1 objectForKey:@"computeruse"] forKey:@"computeruse"];
            [resultset setValue:[arrayList1 objectForKey:@"otherfunctional"] forKey:@"otherfunctional"];
            [resultset setValue:[arrayList1 objectForKey:@"break_text3"] forKey:@"break_text3"];
            [resultset setValue:[arrayList1 objectForKey:@"assessment"] forKey:@"assessment"];
            [resultset setValue:[arrayList1 objectForKey:@"patientstatus"] forKey:@"patientstatus"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis1"] forKey:@"diagnosis1"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis2"] forKey:@"diagnosis2"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis3"] forKey:@"diagnosis3"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis4"] forKey:@"diagnosis4"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis5"] forKey:@"diagnosis5"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis6"] forKey:@"diagnosis6"];
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
            
            
            
            patname.text=temp1;
            date.text=temp2;
            muscle.text=temp4;
            swell.text=temp5;
            forward .text=temp7;
            f1.text=temp23;
            f2.text=temp29;
            f3.text=temp35;
            f4.text=temp36;
            f5.text=temp42;
            f6.text=temp43;
            s11.text=temp24;
            s12.text=temp25;
            s13.text=temp26;
            s21.text=temp30;
            s22.text=temp31;
            s23.text=temp32;
            s31.text=temp37;
            s32.text=temp38;
            s33.text=temp39;
            s41.text=temp44;
            s42.text=temp45;
            s43.text=temp46;
            s51.text=temp49;
            s52.text=temp50;
            s53.text=temp51;
            ot11.text=temp27;
            ot12.text= temp28;
            ot21.text=temp33;
            ot22 .text= temp34;
            ot31.text=temp40;
            ot32.text =temp41;
            ot41.text =temp47;
            ot42.text=temp48;
            ot51.text =temp52;
            ot52.text =temp53;
            other.text =temp19;
            
            
            if ([temp9 isEqualToString:@"All Soft Tissue Unremarkable"]) {
                c1.selected=YES;
                [c1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                allsoft=@"All Soft Tissue Unremarkable";
                
            }
            else
            {
                c1.selected=NO;
                [c1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                allsoft=@"null";
                
            }
            if ([temp20 isEqualToString:@"Unremarkable"]) {
                c2.selected=YES;
                [c2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                func=@"Unremarkable";
                
            }
            else
            {
                c2.selected=NO;
                [c2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                func=@"null";
            }
            if ([temp21 isEqualToString:@"Unremarkable"]) {
                c3.selected=YES;
                [c3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                func=@"Unremarkable";
            }
            else
            {
                c3.selected=NO;
                [c3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                func=@"null";
            }
            if ([temp22 isEqualToString:@"Unremarkable"]) {
                c4.selected=YES;
                [c4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                ortho=@"Unremarkable";
            }
            else
            {
                c4.selected=NO;
                [c4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                ortho=@"null";
            }
            if ([temp8 isEqualToString:@"Left"] ) {
                [roundseg setSelectedSegmentIndex:0];
                roundval=@"Left";
            }
            else if ([temp8 isEqualToString:@"Right"] ) {
                [roundseg setSelectedSegmentIndex:1];
                roundval=@"Right";
            }
            else
            {
                [roundseg setSelectedSegmentIndex:UISegmentedControlNoSegment];
                roundval=@"null";
            }
            if ([temp10 isEqualToString:@"Left"] ) {
                [p1seg setSelectedSegmentIndex:0];
                p1val=@"Left";
            }
            else if ([temp10 isEqualToString:@"Right"] ) {
                [p1seg setSelectedSegmentIndex:1];
                p1val=@"Right";
            }
            else
            {
                [p1seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
                p1val=@"null";
            }
            
            
            if ([temp11 isEqualToString:@"Left"] ) {
                [p2seg setSelectedSegmentIndex:0];
                p2val=@"Left";
            }
            else if ([temp11 isEqualToString:@"Right"] ) {
                [p2seg setSelectedSegmentIndex:1];
                p2val=@"Right";
            }
            else
            {
                [p2seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
                p2val=@"null";
            }
            
            if ([temp12 isEqualToString:@"Left"] ) {
                [p3seg setSelectedSegmentIndex:0];
                p3val=@"Left";
            }
            else if ([temp12 isEqualToString:@"Right"] ) {
                [p3seg setSelectedSegmentIndex:1];
                p3val=@"Right";
            }
            else
            {
                [p3seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
                p3val=@"null";
            }
            if ([temp13 isEqualToString:@"Left"] ) {
                [p4seg setSelectedSegmentIndex:0];
                p4val=@"Left";
            }
            else if ([temp13 isEqualToString:@"Right"] ) {
                [p4seg setSelectedSegmentIndex:1];
                p4val=@"Right";
            }
            else
            {
                [p4seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
                p4val=@"null";
            }
            if ([temp14 isEqualToString:@"Left"] ) {
                [p5seg setSelectedSegmentIndex:0];
                p5val=@"Left";
            }
            else if ([temp14 isEqualToString:@"Right"] ) {
                [p5seg setSelectedSegmentIndex:1];
                p5val=@"Right";
            }
            else
            {
                [p5seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
                p5val=@"null";
            }
            
            if ([temp15 isEqualToString:@"Left"] ) {
                [p6seg setSelectedSegmentIndex:0];
                p6val=@"Left";
            }
            else if ([temp15 isEqualToString:@"Right"] ) {
                [p6seg setSelectedSegmentIndex:1];
                p6val=@"Right";
            }
            else
            {
                [p6seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
                p6val=@"null";
            }
            if ([temp16 isEqualToString:@"Left"] ) {
                [p7seg setSelectedSegmentIndex:0];
                p7val=@"Left";
            }
            else if ([temp16 isEqualToString:@"Right"] ) {
                [p7seg setSelectedSegmentIndex:1];
                p7val=@"Right";
            }
            else
            {
                [p7seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
                p7val=@"null";
            }
            
            if ([temp17 isEqualToString:@"Left"] ) {
                [p8seg setSelectedSegmentIndex:0];
                p8val=@"Left";
            }
            else if ([temp17 isEqualToString:@"Right"] ) {
                [p8seg setSelectedSegmentIndex:1];
                p8val=@"Right";
            }
            else
            {
                [p8seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
                p8val=@"null";
            }
            
            if ([temp18 isEqualToString:@"Left"] ) {
                [p9seg setSelectedSegmentIndex:0];
                p9val=@"Left";
            }
            else if ([temp18 isEqualToString:@"Right"] ) {
                [p9seg setSelectedSegmentIndex:1];
                p9val=@"Right";
            }
            else
            {
                [p9seg setSelectedSegmentIndex:UISegmentedControlNoSegment];
                p9val=@"null";
            }
            if ([temp6 isEqualToString:@"Excellent"] ) {
                [aoseg setSelectedSegmentIndex:0];
                aoval=@"Excellent";
            }
            else if ([temp6 isEqualToString:@"Good"] ) {
                [aoseg setSelectedSegmentIndex:1];
                aoval=@"Good";
            }
            else if ([temp6 isEqualToString:@"Fair"] ) {
                [aoseg setSelectedSegmentIndex:2];
                aoval=@"Fair";
            }
            else if ([temp6 isEqualToString:@"Severe"] ) {
                [aoseg setSelectedSegmentIndex:3];
                aoval=@"Severe";
            }
            
            
            
        }
    }
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Cervicalexam.php?service=cervicalexamselect";
    
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
    [patname resignFirstResponder];
    [muscle resignFirstResponder];
    [forward resignFirstResponder];
    [swell resignFirstResponder];
    [other resignFirstResponder];
    [f1 resignFirstResponder];
    [f2 resignFirstResponder];
    [f3 resignFirstResponder];
    [f4 resignFirstResponder];
    [f5 resignFirstResponder];
    [f6 resignFirstResponder];
    [s11 resignFirstResponder];
    [s12 resignFirstResponder];
    [s13 resignFirstResponder];
    [s21 resignFirstResponder];
    [s22 resignFirstResponder];
    [s23 resignFirstResponder];
    [s31 resignFirstResponder];
    [s32 resignFirstResponder];
    [s33 resignFirstResponder];
    [s41 resignFirstResponder];
    [s42 resignFirstResponder];
    [s43 resignFirstResponder];
    [s51 resignFirstResponder];
    [s52 resignFirstResponder];
    [s53 resignFirstResponder];
    [ot11 resignFirstResponder];
    [ot12 resignFirstResponder];
    [ot21 resignFirstResponder];
    [ot22 resignFirstResponder];
    [ot31 resignFirstResponder];
    [ot32 resignFirstResponder];
    [ot41 resignFirstResponder];
    [ot42 resignFirstResponder];
    [ot51 resignFirstResponder];
    [ot52 resignFirstResponder];
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}
-(BOOL)validateNumbers1:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9-_]{1,4}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(IBAction)p1segselected:(id)sender
{
    if(p1seg.selectedSegmentIndex==0)
    {
        p1val=@"Left";
    }
    else if (p1seg.selectedSegmentIndex==1)
    {
        p1val=@"Right";
    }
}
-(IBAction)p2segselected:(id)sender
{
    if(p2seg.selectedSegmentIndex==0)
    {
        p2val=@"Left";
    }
    else if (p2seg.selectedSegmentIndex==1)
    {
        p2val=@"Right";
    }
}

-(IBAction)p3segselected:(id)sender
{
    if(p3seg.selectedSegmentIndex==0)
    {
        p3val=@"Left";
    }
    else if (p3seg.selectedSegmentIndex==1)
    {
        p3val=@"Right";
    }
}

-(IBAction)p4segselected:(id)sender
{
    if(p4seg.selectedSegmentIndex==0)
    {
        p4val=@"Left";
    }
    else if (p4seg.selectedSegmentIndex==1)
    {
        p4val=@"Right";
    }
}

-(IBAction)p5segselected:(id)sender
{
    if(p5seg.selectedSegmentIndex==0)
    {
        p5val=@"Left";
    }
    else if (p5seg.selectedSegmentIndex==1)
    {
        p5val=@"Right";
    }
}

-(IBAction)p6segselected:(id)sender
{
    if(p6seg.selectedSegmentIndex==0)
    {
        p6val=@"Left";
    }
    else if (p6seg.selectedSegmentIndex==1)
    {
        p6val=@"Right";
    }
}

-(IBAction)p7segselected:(id)sender
{
    if(p7seg.selectedSegmentIndex==0)
    {
        p7val=@"Left";
    }
    else if (p7seg.selectedSegmentIndex==1)
    {
        p7val=@"Right";
    }
}

-(IBAction)p8segselected:(id)sender
{
    if(p8seg.selectedSegmentIndex==0)
    {
        p8val=@"Left";
    }
    else if (p8seg.selectedSegmentIndex==1)
    {
        p8val=@"Right";
    }
}

-(IBAction)p9segselected:(id)sender
{
    if(p9seg.selectedSegmentIndex==0)
    {
        p9val=@"Left";
    }
    else if (p9seg.selectedSegmentIndex==1)
    {
        p9val=@"Right";
    }
}



-(IBAction)roundsegselected:(id)sender
{
    if(roundseg.selectedSegmentIndex==0)
    {
        roundval=@"Left";
    }
    else if (roundseg.selectedSegmentIndex==1)
    {
        roundval=@"Right";
    }
}
-(IBAction)aosegselected:(id)sender
{
    if(aoseg.selectedSegmentIndex==0)
    {
        aoval=@"Excellent";
    }
    else if (aoseg.selectedSegmentIndex==1)
    {
        aoval=@"Good";
    }
    else if (aoseg.selectedSegmentIndex==2)
    {
        aoval=@"Fair";
    }
    else if (aoseg.selectedSegmentIndex==3)
    {
        aoval=@"Severe";
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
    
    
}
-(BOOL)validatepatientname:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z0-9@_]+";
    
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}


-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9_-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[/]+[0-9]{1,2}+[/]+[0-9]{4}";
    
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




-(IBAction)saveandcontinue:(id)sender
{
    a=1;
    temp1 =patname.text;
    temp2 =muscle.text;
    temp3 =swell.text;
    temp4 =forward.text;
    temp5 =other.text;
    temp6=f1.text;
    temp7=f2.text;
    temp8=f3.text;
    temp9=f4.text;
    temp10=f5.text;
    temp11=f6.text;
    temp12=s11.text;
    temp13=s12.text;
    temp14=s13.text;
    temp15=s21.text;
    temp16=s22.text;
    temp17=s23.text;
    temp18=s31.text;
    temp19=s32.text;
    temp20=s33.text;
    temp21=s41.text;
    temp22=s42.text;
    temp23=s43.text;
    temp24=s51.text;
    temp25=s52.text;
    temp26=s53.text;
    temp27=ot11.text;
    temp28=ot12.text;
    temp29=ot21.text;
    temp30=ot22.text;
    temp31=ot31.text;
    temp32=ot32.text;
    temp33=ot41.text;
    temp34=ot42.text;
    temp35=ot51.text;
    temp36=ot52.text;
    if(c1.selected)
    {
        
        allsoft=@"All Soft Tissue Unremarkable";
        
    }
    else
    {
        allsoft=@"null";
        
    }
    if(c2.selected)
    {
        
        func=@"Unremarkable";
    }
    else
    {
        func=@"null";;
        
        
    }
    if(c3.selected)
    {
        
        sublax=@"Unremarkable";
        
    }
    else
    {
        sublax=@"null";;
        
    }
    if(c4.selected)
    {
        
        ortho=@"Unremarkable";
    }
    else
    {
        ortho=@"null";;
        
        
    }
    [recorddict setValue:allsoft forKey:@"allsoft"];
    [recorddict setValue:func forKey:@"func"];
    [recorddict  setValue:sublax forKey:@"sublax"];
    [recorddict  setValue:ortho forKey:@"orthopedic"];
    
    //    NSLog(@"p1val %@",p1val);
    [recorddict setValue:p1val forKey:@"p1"];
    [recorddict setValue:p2val forKey:@"p2"];
    [recorddict setValue:p3val forKey:@"p3"];
    [recorddict setValue:p4val forKey:@"p4"];
    [recorddict setValue:p5val forKey:@"p5"];
    [recorddict setValue:p6val forKey:@"p6"];
    [recorddict setValue:p7val forKey:@"p7"];
    [recorddict setValue:p8val forKey:@"p8"];
    [recorddict setValue:p9val forKey:@"p9"];
    
    [recorddict setValue:roundval forKey:@"round"];
    [recorddict setValue:aoval forKey:@"aoval"];
    //    NSLog(@"recorddict b4 %@",recorddict);
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
                        if((([temp4 length]>0)&&([du otherfields:temp4 ]==1))||([temp4 length]==0))
                        {
                            if((([temp5 length]>0)&&([du otherfields:temp5]==1))||([temp5 length]==0))
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
                                                                                                                                                            
                                                                                                                                                            [recorddict setValue:patname.text forKey:@"Patientname"];
                                                                                                                                                            [recorddict setValue:date.text forKey:@"date"];
                                                                                                                                                            [recorddict setValue:muscle.text forKey:@"musle"];
                                                                                                                                                            [recorddict setValue:swell.text forKey:@"swell"];
                                                                                                                                                            [recorddict setValue:forward.text forKey:@"forward"];
                                                                                                                                                            [recorddict setValue:other.text forKey:@"other"];
                                                                                                                                                            [recorddict setValue:f1.text forKey:@"f1"];
                                                                                                                                                            [recorddict setValue:f2.text forKey:@"f2"];
                                                                                                                                                            [recorddict setValue:f3.text forKey:@"f3"];
                                                                                                                                                            [recorddict setValue:f4.text forKey:@"f4"];
                                                                                                                                                            [recorddict setValue:f5.text forKey:@"f5"];
                                                                                                                                                            [recorddict setValue:f6.text forKey:@"f6"];
                                                                                                                                                            [recorddict setValue:s11.text forKey:@"s11"];
                                                                                                                                                            [recorddict setValue:s12.text forKey:@"s12"];
                                                                                                                                                            [recorddict setValue:s13.text forKey:@"s13"];
                                                                                                                                                            [recorddict setValue:s21.text forKey:@"s21"];
                                                                                                                                                            [recorddict setValue:s22.text forKey:@"s22"];
                                                                                                                                                            [recorddict setValue:s23.text forKey:@"s23"];
                                                                                                                                                            [recorddict setValue:s31.text forKey:@"s31"];
                                                                                                                                                            [recorddict setValue:s32.text forKey:@"s32"];
                                                                                                                                                            [recorddict setValue:s33.text forKey:@"s33"];
                                                                                                                                                            [recorddict setValue:s41.text forKey:@"s41"];
                                                                                                                                                            [recorddict setValue:s42.text forKey:@"s42"];
                                                                                                                                                            [recorddict setValue:s43.text forKey:@"s43"];
                                                                                                                                                            [recorddict setValue:s51.text forKey:@"s51"];
                                                                                                                                                            [recorddict setValue:s52.text forKey:@"s52"];
                                                                                                                                                            [recorddict setValue:s53.text forKey:@"s53"];
                                                                                                                                                            [recorddict setValue:ot11.text forKey:@"ot11"];
                                                                                                                                                            [recorddict setValue:ot12.text forKey:@"ot12"];
                                                                                                                                                            [recorddict setValue:ot21.text forKey:@"ot21"];
                                                                                                                                                            [recorddict setValue:ot22.text forKey:@"ot22"];
                                                                                                                                                            [recorddict setValue:ot31.text forKey:@"ot31"];
                                                                                                                                                            [recorddict setValue:ot32.text forKey:@"ot32"];
                                                                                                                                                            [recorddict setValue:ot41.text forKey:@"ot41"];
                                                                                                                                                            [recorddict setValue:ot42.text forKey:@"ot42"];
                                                                                                                                                            [recorddict setValue:ot51.text forKey:@"ot51"];
                                                                                                                                                            [recorddict setValue:ot52.text forKey:@"ot52"];
                                                                                                                                                            
                                                                                                                                                            
                                                                                                                                                            //                                                                                                                                                            NSLog(@"record %@",recorddict);
                                                                                                                                                            if(a==1)
                                                                                                                                                            {
                                                                                                                                                                [self performSegueWithIdentifier:@"cervical1to2" sender:self];
                                                                                                                                                            }
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                        else
                                                                                                                                                        {
                                                                                                                                                            a=0;
                                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                           description:@"Please enter valid ullt right field."
                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                              callback:nil];
                                                                                                                                                            
                                                                                                                                                        }
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    else
                                                                                                                                                    {
                                                                                                                                                        a=0;[[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                           description:@"Please enter valid ullt left field."
                                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                              callback:nil];
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                    a=0;
                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                   description:@"Please enter valid adsons right field."
                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                      callback:nil];
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            else
                                                                                                                                            {
                                                                                                                                                a=0;
                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                               description:@"Please enter valid adson left field."
                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                  callback:nil];
                                                                                                                                                
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        else
                                                                                                                                        {
                                                                                                                                            a=0;
                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                           description:@"Please enter valid soto hall right field."
                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                              callback:nil];
                                                                                                                                            
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                        a=0;
                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                       description:@"Please enter valid soto hall left field."
                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                          callback:nil];
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                }
                                                                                                                                else
                                                                                                                                {
                                                                                                                                    a=0;
                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                   description:@"Please enter valid forminal right field."
                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                      callback:nil];
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                                
                                                                                                                            }
                                                                                                                            else
                                                                                                                            {
                                                                                                                                a=0;
                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                               description:@"Please enter valid forminal comp left field."
                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                  callback:nil];
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            a=0;
                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                           description:@"Please enter valid hautants right field."
                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                              callback:nil];
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                        
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        a=0;
                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                       description:@"Please enter valid hautants left field."
                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                          callback:nil];
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    a=0;
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please enter valid subluxation T7-8 field."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please enter valid subluxation T6-7 field."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please enter valid subluxation T5-6 field."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please enter valid subluxation T4-5 field."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid subluxation T3-4 field."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid subluxation T2-3 field."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid subluxation T1-2 field."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid subluxation c7-T1 field."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid subluxation c6-7 field."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid subluxation c5-6 field."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid subluxation c4-5 field."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid subluxation c3-4field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid subluxation c2-3 field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                    
                                                                }
                                                            }
                                                            else
                                                            {
                                                                a=0;
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid subluxation c1-2 field."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid subluxation c0-1 field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid rotation right field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    a=0;
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid rotation left field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                a=0;
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid lateral right  field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid lateral left field field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        a=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid extension field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                    }
                                    
                                }
                                else
                                {
                                    a=0;
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid flexion field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                }
                                
                            }
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid other field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                            }
                            
                        }
                        else
                        {
                            a=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid forward field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid swell field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                    }
                    
                }
                else
                {
                    a=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid muscle field."
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
                                                       description:@"Please enter all the required fields."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
    }
    
    
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"cervical1to2"])
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
    
    if ([segue.identifier isEqualToString:@"cervical1to2"])
    {
        
        cervicalexam2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        NSLog(@"recorddict in cervical first %@",recorddict);
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
