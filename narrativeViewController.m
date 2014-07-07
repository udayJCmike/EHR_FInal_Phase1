//
//  narrativeViewController.m
//  narrative
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "narrativeViewController.h"
#import "narrative1ViewController.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "narrativereport4ViewController.h"


#import "TWMessageBarManager.h"
#import "StringConstants.h"


@interface narrativeViewController ()
{
    databaseurl *du;
}

@end

@implementation narrativeViewController
@synthesize mutearray;
@synthesize text2;
@synthesize text3;
@synthesize text4;
@synthesize text5;
@synthesize text6;

@synthesize resultset;
@synthesize recorddict;
@synthesize  patientname;
@synthesize dateofinjury;
@synthesize dateofvisit;
@synthesize reportdate;
@synthesize to;
@synthesize accon1;
@synthesize accon;
@synthesize examon;
@synthesize index;

@synthesize history;

@synthesize patname;
@synthesize patname2;
@synthesize patname3;

@synthesize gend;

@synthesize index1;

@synthesize gen1;
@synthesize gen2;
@synthesize gen3;
@synthesize gen4;
@synthesize gen5;

@synthesize gen8;
@synthesize his;
@synthesize his1;
@synthesize his2;
@synthesize his3;
@synthesize his4;


@synthesize index3;
@synthesize index4;

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



- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if (textField.tag==2) {
        
        NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
        
        self.patname.text = newString;
        self.patname2.text=newString;
        self.patname3.text=newString;
        
        return YES;
        
        
    }
    else
        return YES;
    
}

- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
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
    NSString *countryFormat1 = @"[A-Za-z]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames2:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

- (IBAction)indexseg:(id)sender {
    if (index.selectedSegmentIndex==0)
    {
        indexresult=@"Mr";
    }
    if (index.selectedSegmentIndex==1)
    {
        indexresult=@"Mrs";
    }if (index.selectedSegmentIndex==2)
    {
        indexresult=@"Ms";
    }
    index1.text=[NSString stringWithFormat:@"%@%@",indexresult,@"."];
    index3.text=[NSString stringWithFormat:@"%@%@",indexresult,@"."];
    index4.text=[NSString stringWithFormat:@"%@%@",indexresult,@"."];
    //    index1.text=[NSString stringWithFormat:@"%@.%@",indexresult,patientname.text] ;
    //    index3.text=[NSString stringWithFormat:@"%@.%@",indexresult,patientname.text] ;
    //    index4.text=[NSString stringWithFormat:@"%@.%@",indexresult,patientname.text] ;
}

- (IBAction)genderselected:(id)sender {
    if (gend.selectedSegmentIndex==0) {
        gender=@"He";
    }
    if (gend.selectedSegmentIndex==1) {
        gender=@"She";
    }
    gen1.text=gender;
    gen2.text=gender;
    gen3.text=gender;
    gen4.text=gender;
    gen5.text=gender;
    
    gen8.text=gender;
    if ([gender isEqualToString:@"He"])
    {
        his.text=@"his";
        his1.text=@"his";
        his2.text=@"his";
        his3.text=@"his";
        his4.text=@"his";
        
    }
    else if ([gender isEqualToString:@"She"])
    {
        his.text=@"her";
        his1.text=@"her";
        his2.text=@"her";
        his3.text=@"her";
        his4.text=@"her";
        
        
    }
    
}



- (IBAction)next:(id)sender {
    du=[[databaseurl alloc]init];
    recorddict=[[NSMutableDictionary alloc]init];
    a=1;
    temp2 =[text2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[text3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[text4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[text5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[text6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    temp11=[patientname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[to.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    temp14=[dateofinjury.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[dateofvisit.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[reportdate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[accon.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[accon1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[examon.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    if(
   // ([temp2 length]!=0)&&
//       ([temp3 length]!=0)&&
//       ([temp4 length]!=0)&&
//       ([temp5 length]!=0)&&
//       ([temp6 length]!=0)&&
    
       ([patientname.text length]!=0)&&
//       ([temp12 length]!=0)&&
       ([dateofinjury.text length]!=0)&&
       ([dateofvisit.text length]!=0)&&
       ([reportdate.text length]!=0)
//       ([accon.text length]!=0)&&
//       ([accon1.text length]!=0)&&
//       ([examon.text length]!=0)
       )
       
        
    {
        
        
        NSLog(@"name %@",patientname.text);
        
        if([du patname:patientname.text]==1)
            
        {
            
            
            if([self validateDate:temp16]==1)
            {
                if([self validateDate:temp14]==1)
                {
                    if([self validateDate:temp15]==1)
                    {
                        if((([temp12 length]>0)&&([du patname:temp12]==1))||([temp12 length]==0))
                        {
                            if((([temp17 length]>0)&&([self validateDate:temp17]==1))||([temp17 length]==0))
                            {
                                if((([temp19 length]>0)&&([self validateDate:temp19]==1))||([temp19 length]==0))
                                {
                                    if((([temp18 length]>0)&&([self validateDate:temp18]==1))||([temp18 length]==0))
                                    {
                                        if((([temp2 length]>0)&&([du otherfields:temp2]==1))||([temp2 length]==0))
                                        {
                                            if((([temp6 length]>0)&&([du otherfields:temp6 ]==1))||([temp6 length]==0))
                                            {
                                                if((([temp3 length]>0)&&([du otherfields:temp3 ]==1))||([temp3 length]==0))
                                                {
                                                    if((([temp4 length]>0)&&([du otherfields:temp4]==1))||([temp4 length]==0))
                                                    {
                                                        if((([temp5 length]>0)&&([du otherfields:temp5]==1))||([temp5 length]==0))
                                                        {
                                                            
                                                            
                                                            
                                                            a=1;
                                                            
                                                            [recorddict setValue:text2.text forKey:@"text2"];
                                                            [recorddict setValue:text3.text forKey:@"text3"];
                                                            [recorddict setValue:text4.text forKey:@"text4"];
                                                            
                                                            [recorddict setValue:text5.text forKey:@"text5"];
                                                            
                                                            [recorddict setValue:text6.text forKey:@"text6"];
                                                            
                                                            
                                                            [recorddict setValue:[NSString stringWithFormat:@"%@.%@",indexresult,patientname.text] forKey:@"patientname"];
                                                            [recorddict setValue:patientname.text forKey:@"patientname11"];
                                                            [recorddict setValue:to.text forKey:@"to"];
                                                            
                                                            [recorddict setValue:dateofinjury.text forKey:@"dateofinjury"];
                                                            [recorddict setValue:dateofvisit.text forKey:@"dateofvisit"];
                                                            [recorddict setValue:reportdate.text forKey:@"reportdate"];
                                                            [recorddict setValue:examon.text forKey:@"examon"];
                                                            [recorddict setValue:accon.text forKey:@"accon"];
                                                            [recorddict setValue:accon1.text forKey:@"accon1"];
                                                            [recorddict setValue:s1l forKey:@"s1"];
                                                            [recorddict setValue:s2l forKey:@"s2"];
                                                            [recorddict setValue:indexresult forKey:@"mr1"];
                                                            [recorddict setValue:wasnotlabel forKey:@"wasnotlabel"];
                                                            //                                                                                    [recorddict setValue:index1.text forKey:@"index1"];
                                                            [recorddict setValue:gen1.text  forKey:@"he"];
                                                            [recorddict setValue:his.text forKey:@"his"];
                                                            
                                                            NSLog(@"success!!!recorddict %@",recorddict);
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                        
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid accident appeared field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid symptoms."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid data."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid data."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid data."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                            
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid accident date."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                    }
                                    
                                }
                                else
                                {
                                    a=0;
                                    
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid examination date."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                }
                                
                            }
                            
                            
                            else
                            {
                                a=0;
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid accident date."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                            }
                            
                        }
                        else
                        {
                            a=0;
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid name."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid date of visit."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                    }
                    
                }
                else
                {
                    a=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid date of injury."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                    
                }
            }
            
            else
            {
                a=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid report date."
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
    if (a==1)
    {
        [self performSegueWithIdentifier:@"narr1" sender:self];
    }
}




- (void)viewDidLoad
{
    
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    [super viewDidLoad];
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    patientname.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    patname.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    patname2.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    patname3.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    mutearray=[[NSMutableDictionary alloc]init];
    
    resultset=[[NSMutableDictionary alloc]init];
    patientname.delegate=self;
    gen1.text=@"He";
    gen2.text=@"He";
    gen3.text=@"He";
    gen4.text=@"He";
    gen5.text=@"He";
    
    gen8.text=@"He";
    his1.text=@"his";
    his2.text=@"his";
    his3.text=@"his";
    his4.text=@"his";
    
    index1.text=[NSString stringWithFormat:@"%@%@",@"Mr",@"."];
    
    index3.text=[NSString stringWithFormat:@"%@%@",@"Mr",@"."];
    index4.text=[NSString stringWithFormat:@"%@%@",@"Mr",@"."];;
    s1l=@"activity";
    indexresult=@"Mr";
    s2l=@"work";
    wasnotlabel=@"was";
    
    NSMutableAttributedString *attributeString1 = [[NSMutableAttributedString alloc] initWithString:@"History"];
    [attributeString1 addAttribute:NSUnderlineStyleAttributeName
     
                             value:[NSNumber numberWithInt:1]
                             range:(NSRange){0,[attributeString1 length]}];
    history.attributedText=[attributeString1 copy];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self Getdata];
    
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)dismissKeyboard
{
    [patientname resignFirstResponder];
    [to resignFirstResponder];
    [text2 resignFirstResponder];
    [text3 resignFirstResponder];
    
    [text4 resignFirstResponder];
    [text5 resignFirstResponder];
    [text6 resignFirstResponder];
    
    
}
-(void)Getdata
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    // NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"narrativeuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            //        NSLog(@"arraylist count %d",[arrayList1 count]);
            temp=[arrayList1 objectForKey:@"reportdate"];
            temp1 =[arrayList1 objectForKey:@"patient"];
            temp2 =[arrayList1 objectForKey:@"dateofinjury"];
            temp3 =[arrayList1 objectForKey:@"dateoffirstvisit"];
            temp4 =[arrayList1 objectForKey:@"towhom"];
            temp5 =[arrayList1 objectForKey:@"patientname"];
            temp6 =[arrayList1 objectForKey:@"gender"];
            temp7=[arrayList1 objectForKey:@"accident"];
            temp8 =[arrayList1 objectForKey:@"name"];
            
            tempp7 =[arrayList1 objectForKey:@"dateofconsultation"];
            
            temp9=[arrayList1 objectForKey:@"accidentdate"];
            temp10 =[arrayList1 objectForKey:@"gender4"];
            temp11 =[arrayList1 objectForKey:@"name1"];
            temp12=[arrayList1 objectForKey:@"gender9"];
            temp13 =[arrayList1 objectForKey:@"body"];
            temp14 =[arrayList1 objectForKey:@"slammed"];
            temp15=[arrayList1 objectForKey:@"slammed1"];
            temp16=[arrayList1 objectForKey:@"symptom"];
            temp17=[arrayList1 objectForKey:@"appeared"];
            temp18=[arrayList1 objectForKey:@"priordate"];
            temp19=[arrayList1 objectForKey:@"pastmedicalhistory"];
            temp20=[arrayList1 objectForKey:@"gender13"];
            temp21 =[arrayList1 objectForKey:@"gender15"];
            temp22 =[arrayList1 objectForKey:@"gender16"];
            temp23 =[arrayList1 objectForKey:@"gender17"];
            temp24 =[arrayList1 objectForKey:@"clinicdate"];
            temp25 =[arrayList1 objectForKey:@"gender19"];
            temp26=[arrayList1 objectForKey:@"vehicleaccident"];
            temp27 =[arrayList1 objectForKey:@"allieviated"];
            temp28 =[arrayList1 objectForKey:@"gender24"];
            temp29 =[arrayList1 objectForKey:@"gendernew2"];
            temp30 =[arrayList1 objectForKey:@"gendernew3"];
            temp31 =[arrayList1 objectForKey:@"gender25"];
            temp32 =[arrayList1 objectForKey:@"gender28"];
            temp33 =[arrayList1 objectForKey:@"gender30"];
            temp34 =[arrayList1 objectForKey:@"age"];
            temp35 =[arrayList1 objectForKey:@"age1"];
            temp36 =[arrayList1 objectForKey:@"lb"];
            temp37=[arrayList1 objectForKey:@"gender31"];
            temp38 =[arrayList1 objectForKey:@"gender32"];
            
            tempp37 =[arrayList1 objectForKey:@"gender33"];
            
            temp39=[arrayList1 objectForKey:@"gendernew4"];
            temp40 =[arrayList1 objectForKey:@"gender35"];
            
            temp41 =[arrayList1 objectForKey:@"gender36"];
            temp42 =[arrayList1 objectForKey:@"gender37"];
            temp43 =[arrayList1 objectForKey:@"gender38"];
            temp44 =[arrayList1 objectForKey:@"gender39"];
            temp45 =[arrayList1 objectForKey:@"gendernew5"];
            temp46 =[arrayList1 objectForKey:@"tenderness"];
            temp47=[arrayList1 objectForKey:@"gender40"];
            temp48 =[arrayList1 objectForKey:@"gendernew6"];
            
            tempp47 =[arrayList1 objectForKey:@"gender41"];
            
            temp49=[arrayList1 objectForKey:@"noted"];
            temp50 =[arrayList1 objectForKey:@"rangeofmotion"];
            
            
            temp51 =[arrayList1 objectForKey:@"painres1"];
            temp52 =[arrayList1 objectForKey:@"tonicity1"];
            temp53 =[arrayList1 objectForKey:@"painres2"];
            temp54 =[arrayList1 objectForKey:@"tonicity2"];
            temp55 =[arrayList1 objectForKey:@"painres3"];
            temp56 =[arrayList1 objectForKey:@"tonicity3"];
            temp57=[arrayList1 objectForKey:@"painres4"];
            temp58 =[arrayList1 objectForKey:@"tonicity4"];
            
            tempp57 =[arrayList1 objectForKey:@"painres5"];
            
            temp59=[arrayList1 objectForKey:@"tonicity5"];
            temp60 =[arrayList1 objectForKey:@"painres6"];
            
            tempp60 =[arrayList1 objectForKey:@"tonicity6"];
            
            temp61 =[arrayList1 objectForKey:@"painres7"];
            temp62 =[arrayList1 objectForKey:@"tonicity7"];
            temp63 =[arrayList1 objectForKey:@"painres8"];
            temp64 =[arrayList1 objectForKey:@"tonicity8"];
            temp65 =[arrayList1 objectForKey:@"painres9"];
            temp66=[arrayList1 objectForKey:@"tonicity9"];
            temp67 =[arrayList1 objectForKey:@"painres10"];
            temp68 =[arrayList1 objectForKey:@"tonicity10"];
            temp69 =[arrayList1 objectForKey:@"painres11"];
            temp70 =[arrayList1 objectForKey:@"tonicity11"];
            
            temp71 =[arrayList1 objectForKey:@"painres12"];
            temp72 =[arrayList1 objectForKey:@"tonicity12"];
            temp73 =[arrayList1 objectForKey:@"dermatome"];
            temp74 =[arrayList1 objectForKey:@"gender42"];
            temp75 =[arrayList1 objectForKey:@"gender43"];
            temp76=[arrayList1 objectForKey:@"gender44"];
            temp77 =[arrayList1 objectForKey:@"level1"];
            temp78 =[arrayList1 objectForKey:@"level"];
            temp79 =[arrayList1 objectForKey:@"gender45"];
            temp80 =[arrayList1 objectForKey:@"level2"];
            
            temp81 =[arrayList1 objectForKey:@"orthopedictest1"];
            temp82=[arrayList1 objectForKey:@"jacksonsr"];
            temp83 =[arrayList1 objectForKey:@"jacksonsl"];
            temp84 =[arrayList1 objectForKey:@"orthopedictest2"];
            temp85=[arrayList1 objectForKey:@"doublelegraiser"];
            temp86=[arrayList1 objectForKey:@"doublelegraisel"];
            temp87=[arrayList1 objectForKey:@"orthopedictest3"];
            temp88=[arrayList1 objectForKey:@"yeomansr"];
            temp89=[arrayList1 objectForKey:@"yeomansl"];
            temp90=[arrayList1 objectForKey:@"orthopedictest4"];
            
            temp91 =[arrayList1 objectForKey:@"foraminalr"];
            temp92=[arrayList1 objectForKey:@"foraminall"];
            temp93 =[arrayList1 objectForKey:@"orthopedictest5"];
            temp94 =[arrayList1 objectForKey:@"shoulderr"];
            temp95=[arrayList1 objectForKey:@"shoulderl"];
            temp96=[arrayList1 objectForKey:@"orthopedictest6"];
            temp97=[arrayList1 objectForKey:@"orthopedicr"];
            temp98=[arrayList1 objectForKey:@"orthopedicl"];
            temp99=[arrayList1 objectForKey:@"gender46"];
            temp100=[arrayList1 objectForKey:@"gender47"];
            
            temp101 =[arrayList1 objectForKey:@"gender48"];
            temp102 =[arrayList1 objectForKey:@"gender49"];
            temp103 =[arrayList1 objectForKey:@"gender50"];
            temp104 =[arrayList1 objectForKey:@"gender51"];
            temp105 =[arrayList1 objectForKey:@"fracture"];
            temp106 =[arrayList1 objectForKey:@"gender52"];
            temp107=[arrayList1 objectForKey:@"gender53"];
            temp108 =[arrayList1 objectForKey:@"gender54"];
            temp109=[arrayList1 objectForKey:@"presentlevel"];
            temp110 =[arrayList1 objectForKey:@"gender55"];
            
            tempp=[arrayList1 objectForKey:@"osteophytes"];
            tempp1 =[arrayList1 objectForKey:@"gender56"];
            tempp2 =[arrayList1 objectForKey:@"gender57"];
            tempp3 =[arrayList1 objectForKey:@"gender58"];
            tempp4 =[arrayList1 objectForKey:@"gender60"];
            tempp5 =[arrayList1 objectForKey:@"subluxations"];
            tempp6 =[arrayList1 objectForKey:@"icd1"];
            
            tempp36=[arrayList1 objectForKey:@"description1"];
            
            tempp8 =[arrayList1 objectForKey:@"icd2"];
            tempp9=[arrayList1 objectForKey:@"description2"];
            tempp10 =[arrayList1 objectForKey:@"icd3"];
            tempp11 =[arrayList1 objectForKey:@"description3"];
            tempp12=[arrayList1 objectForKey:@"icd4"];
            tempp13 =[arrayList1 objectForKey:@"description4"];
            tempp14 =[arrayList1 objectForKey:@"gender61"];
            tempp15=[arrayList1 objectForKey:@"pname"];
            tempp16=[arrayList1 objectForKey:@"date9"];
            tempp17=[arrayList1 objectForKey:@"gender62"];
            tempp18=[arrayList1 objectForKey:@"gender63"];
            tempp19=[arrayList1 objectForKey:@"pname1"];
            tempp20=[arrayList1 objectForKey:@"datenew"];
            tempp21 =[arrayList1 objectForKey:@"gender64"];
            tempp22 =[arrayList1 objectForKey:@"gender65"];
            tempp23 =[arrayList1 objectForKey:@"poor"];
            tempp24 =[arrayList1 objectForKey:@"gender67"];
            tempp25 =[arrayList1 objectForKey:@"gender68"];
            tempp26=[arrayList1 objectForKey:@"gender69"];
            tempp27 =[arrayList1 objectForKey:@"gender70"];
            tempp28 =[arrayList1 objectForKey:@"pname2"];
            tempp29 =[arrayList1 objectForKey:@"gender71"];
            tempp30 =[arrayList1 objectForKey:@"gender72"];
            tempp31 =[arrayList1 objectForKey:@"gender73"];
            tempp32 =[arrayList1 objectForKey:@"gender74"];
            tempp33 =[arrayList1 objectForKey:@"gender75"];
            tempp34 =[arrayList1 objectForKey:@"pname3"];
            tempp35 =[arrayList1 objectForKey:@"sign"];
            
            patientname.text=temp1;
            self.patname.text = temp1;
            self.patname2.text=temp1;
            self.patname3.text=temp1;
            
            reportdate.text=temp;
            dateofinjury.text=temp2;
            dateofvisit.text=temp3;
            to.text=temp4;
            
            accon.text=temp7;
            examon.text=tempp7;
            accon1.text=temp9;
            text2.text=temp13;
            text6.text=temp14;
            text3.text=temp15;
            text4.text=temp16;
            text5.text=temp17;
            gen1.text=temp6;
            gen2.text=temp6;
            gen3.text=temp6;
            gen4.text=temp6;
            gen5.text=temp6;
            his.text=temp10;
            his1.text=temp10;
            his2.text=temp10;
            his3.text=temp10;
            his4.text=temp10;
            if ([temp6 isEqualToString:@"He"]) {
                [gend setSelectedSegmentIndex:0];
                gender=@"He";
            }
            else if ([temp6 isEqualToString:@"She"]) {
                [gend setSelectedSegmentIndex:1];
                gender=@"She";
            }
            if ([temp12 isEqualToString:@"Mr"]) {
                [index setSelectedSegmentIndex:0];
                indexresult=@"Mr";
            }
            else if ([temp12 isEqualToString:@"Mrs"]) {
                [index setSelectedSegmentIndex:1];
                indexresult=@"Mrs";
            }
            else if ([temp12 isEqualToString:@"Ms"]) {
                [index setSelectedSegmentIndex:2];
                indexresult=@"Ms";
            }
            
            index1.text=[NSString stringWithFormat:@"%@%@",indexresult,@"."];
            index3.text=[NSString stringWithFormat:@"%@%@",indexresult,@"."];
            index4.text=[NSString stringWithFormat:@"%@%@",indexresult,@"."];
            
            
            [resultset setValue:temp18 forKey:@"priordate"];
            [resultset setValue:temp19 forKey:@"pastmedicalhistory"];
            [resultset setValue:temp20 forKey:@"gender13"];
            [resultset setValue: temp21 forKey:@"gender15"];
            [resultset setValue: temp22 forKey:@"gender16"];
            [resultset setValue: temp23 forKey:@"gender17"];
            [resultset setValue: temp24 forKey:@"clinicdate"];
            [resultset setValue: temp25 forKey:@"gender19"];
            [resultset setValue: temp26 forKey:@"vehicleaccident"];
            [resultset setValue: temp27 forKey:@"allieviated"];
            [resultset setValue: temp28 forKey:@"gender24"];
            [resultset setValue: temp29 forKey:@"gendernew2"];
            [resultset setValue: temp30 forKey:@"gendernew3"];
            [resultset setValue: temp31 forKey:@"gender25"];
            [resultset setValue: temp32 forKey:@"gender28"];
            [resultset setValue: temp33 forKey:@"gender30"];
            [resultset setValue: temp34 forKey:@"age"];
            [resultset setValue: temp35 forKey:@"age1"];
            [resultset setValue: temp36 forKey:@"lb"];
            [resultset setValue: temp37 forKey:@"gender31"];
            [resultset setValue: temp38 forKey:@"gender32"];
            
            [resultset setValue: tempp37 forKey:@"gender33"];
            
            [resultset setValue: temp39 forKey:@"gendernew4"];
            [resultset setValue: temp40 forKey:@"gender35"];
            
            [resultset setValue: temp41 forKey:@"gender36"];
            [resultset setValue: temp42 forKey:@"gender37"];
            [resultset setValue: temp43 forKey:@"gender38"];
            [resultset setValue: temp44 forKey:@"gender39"];
            [resultset setValue: temp45 forKey:@"gendernew5"];
            [resultset setValue: temp46 forKey:@"tenderness"];
            [resultset setValue: temp47 forKey:@"gender40"];
            [resultset setValue: temp48 forKey:@"gendernew6"];
            
            [resultset setValue: tempp47 forKey:@"gender41"];
            
            [resultset setValue: temp49 forKey:@"noted"];
            [resultset setValue: temp50 forKey:@"rangeofmotion"];
            
            
            [resultset setValue: temp51 forKey:@"painres1"];
            [resultset setValue: temp52 forKey:@"tonicity1"];
            [resultset setValue: temp53 forKey:@"painres2"];
            [resultset setValue: temp54 forKey:@"tonicity2"];
            [resultset setValue: temp55 forKey:@"painres3"];
            [resultset setValue: temp56 forKey:@"tonicity3"];
            [resultset setValue: temp57 forKey:@"painres4"];
            [resultset setValue: temp58 forKey:@"tonicity4"];
            
            [resultset setValue: tempp57 forKey:@"painres5"];
            
            [resultset setValue: temp59 forKey:@"tonicity5"];
            [resultset setValue: temp60 forKey:@"painres6"];
            
            [resultset setValue: tempp60 forKey:@"tonicity6"];
            
            [resultset setValue: temp61 forKey:@"painres7"];
            [resultset setValue: temp62 forKey:@"tonicity7"];
            [resultset setValue: temp63 forKey:@"painres8"];
            [resultset setValue: temp64 forKey:@"tonicity8"];
            [resultset setValue: temp65 forKey:@"painres9"];
            [resultset setValue: temp66 forKey:@"tonicity9"];
            [resultset setValue: temp67 forKey:@"painres10"];
            [resultset setValue: temp68 forKey:@"tonicity10"];
            [resultset setValue: temp69 forKey:@"painres11"];
            [resultset setValue: temp70 forKey:@"tonicity11"];
            
            [resultset setValue: temp71 forKey:@"painres12"];
            [resultset setValue: temp72 forKey:@"tonicity12"];
            [resultset setValue: temp73 forKey:@"dermatome"];
            [resultset setValue: temp74 forKey:@"gender42"];
            [resultset setValue: temp75 forKey:@"gender43"];
            [resultset setValue: temp76 forKey:@"gender44"];
            [resultset setValue: temp77 forKey:@"level1"];
            [resultset setValue: temp78 forKey:@"level"];
            [resultset setValue: temp79 forKey:@"gender45"];
            [resultset setValue: temp80 forKey:@"level2"];
            
            [resultset setValue: temp81 forKey:@"orthopedictest1"];
            [resultset setValue: temp82 forKey:@"jacksonsr"];
            [resultset setValue: temp83 forKey:@"jacksonsl"];
            [resultset setValue: temp84 forKey:@"orthopedictest2"];
            [resultset setValue: temp85 forKey:@"doublelegraiser"];
            [resultset setValue: temp86 forKey:@"doublelegraisel"];
            [resultset setValue: temp87 forKey:@"orthopedictest3"];
            [resultset setValue: temp88 forKey:@"yeomansr"];
            [resultset setValue: temp89 forKey:@"yeomansl"];
            [resultset setValue: temp90 forKey:@"orthopedictest4"];
            
            [resultset setValue: temp91 forKey:@"foraminalr"];
            [resultset setValue: temp92 forKey:@"foraminall"];
            [resultset setValue: temp93 forKey:@"orthopedictest5"];
            [resultset setValue: temp94 forKey:@"shoulderr"];
            [resultset setValue: temp95 forKey:@"shoulderl"];
            [resultset setValue: temp96 forKey:@"orthopedictest6"];
            [resultset setValue: temp97 forKey:@"orthopedicr"];
            [resultset setValue: temp98 forKey:@"orthopedicl"];
            [resultset setValue: temp99 forKey:@"gender46"];
            [resultset setValue: temp100 forKey:@"gender47"];
            
            [resultset setValue: temp101 forKey:@"gender48"];
            [resultset setValue: temp102 forKey:@"gender49"];
            [resultset setValue: temp103 forKey:@"gender50"];
            [resultset setValue: temp104 forKey:@"gender51"];
            [resultset setValue: temp105 forKey:@"fracture"];
            [resultset setValue: temp106 forKey:@"gender52"];
            [resultset setValue: temp107 forKey:@"gender53"];
            [resultset setValue: temp108 forKey:@"gender54"];
            [resultset setValue: temp109 forKey:@"presentlevel"];
            [resultset setValue: temp110 forKey:@"gender55"];
            
            [resultset setValue: tempp forKey:@"osteophytes"];
            [resultset setValue: tempp1 forKey:@"gender56"];
            [resultset setValue: tempp2 forKey:@"gender57"];
            [resultset setValue: tempp3 forKey:@"gender58"];
            [resultset setValue: tempp4 forKey:@"gender60"];
            [resultset setValue: tempp5 forKey:@"subluxations"];
            [resultset setValue: tempp6 forKey:@"icd1"];
            
            [resultset setValue: tempp36 forKey:@"description1"];
            
            [resultset setValue: tempp8 forKey:@"icd2"];
            [resultset setValue: tempp9 forKey:@"description2"];
            [resultset setValue: tempp10 forKey:@"icd3"];
            [resultset setValue: tempp11 forKey:@"description3"];
            [resultset setValue: tempp12 forKey:@"icd4"];
            [resultset setValue: tempp13 forKey:@"description4"];
            [resultset setValue: tempp14 forKey:@"gender61"];
            [resultset setValue: tempp15 forKey:@"pname"];
            [resultset setValue: tempp16 forKey:@"date9"];
            [resultset setValue: tempp17 forKey:@"gender62"];
            [resultset setValue: tempp18 forKey:@"gender63"];
            [resultset setValue: tempp19 forKey:@"pname1"];
            [resultset setValue: tempp20 forKey:@"datenew"];
            [resultset setValue: tempp21 forKey:@"gender64"];
            [resultset setValue: tempp22 forKey:@"gender65"];
            [resultset setValue: tempp23 forKey:@"poor"];
            [resultset setValue: tempp24 forKey:@"gender67"];
            [resultset setValue: tempp25 forKey:@"gender68"];
            [resultset setValue: tempp26 forKey:@"gender69"];
            [resultset setValue: tempp27 forKey:@"gender70"];
            [resultset setValue: tempp28 forKey:@"pname2"];
            [resultset setValue: tempp29 forKey:@"gender71"];
            [resultset setValue: tempp30 forKey:@"gender72"];
            [resultset setValue: tempp31 forKey:@"gender73"];
            [resultset setValue: tempp32 forKey:@"gender74"];
            [resultset setValue: tempp33 forKey:@"gender75"];
            [resultset setValue: tempp34 forKey:@"pname3"];
            [resultset setValue: tempp35 forKey:@"sign"];
            
            
            
            
        }
        
        //         NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
    }
    else
    {
        [self DetectPatientData];
        [self DetectData];
        
    }
    
    
}

-(void)DetectData
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails1:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    // NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"physicalexamuser List"];
    
    NSLog(@"in detectdata");
    
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            NSLog(@"arraylist count %d",[arrayList1 count]);
            physictemp=[arrayList1 objectForKey:@"age"];
            physictemp1 =[arrayList1 objectForKey:@"sex"];
            physictemp2 =[arrayList1 objectForKey:@"weight1"];
            physictemp3 =[arrayList1 objectForKey:@"gait"];
            physictemp4 =[arrayList1 objectForKey:@"posture"];
            physictemp5 =[arrayList1 objectForKey:@"flexpain"];
            physictemp6=[arrayList1 objectForKey:@"extpain"];
            physictemp7 =[arrayList1 objectForKey:@"rlfpain"];
            physictemp8 =[arrayList1 objectForKey:@"llfpain"];
            physictemp9=[arrayList1 objectForKey:@"rrpain"];
            physictemp10 =[arrayList1 objectForKey:@"lrpain"];
            [mutearray setObject:physictemp forKey:@"age"];
            [mutearray setObject:physictemp1 forKey:@"sex"];
            [mutearray setObject:physictemp2 forKey:@"weight1"];
            [mutearray setObject:physictemp3 forKey:@"gait"];
            [mutearray setObject:physictemp4 forKey:@"posture"];
            [mutearray setObject:physictemp5 forKey:@"flexpain"];
            [mutearray setObject:physictemp6 forKey:@"extpain"];
            [mutearray setObject:physictemp7 forKey:@"rlfpain"];
            [mutearray setObject:physictemp8 forKey:@"llfpain"];
            [mutearray setObject:physictemp9 forKey:@"rrpain"];
            [mutearray setObject:physictemp10 forKey:@"lrpain"];
            
        }
    }
    [[NSUserDefaults standardUserDefaults]synchronize];
}


-(void)DetectPatientData
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails2:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    // NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"patient_detailsuser List"];
    
    NSLog(@"in detect pat data");
    
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            
            
            temp20=[arrayList1 objectForKey:@"Name"];
            [mutearray setObject:temp20 forKey:@"patiname"];
            
            NSLog(@"mutearray temp 20value::%@",temp20);
        }
        patientname.text=temp20;
        self.patname.text = temp20;
        self.patname2.text=temp20;
        self.patname3.text=temp20;
        NSLog(@"mutearray value::%@",mutearray);
    }
    [[NSUserDefaults standardUserDefaults]synchronize];
}

-(NSString *)HttpPostGetdetails2:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"PatientInfo.php?service=patient_detailsselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    NSLog(@"POST:%@",post);
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
    //    NSLog(@"data %@",data);
    
    return data;
    
}


-(NSString *)HttpPostGetdetails1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Physicalexam.php?service=physicalexamselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    NSLog(@"POST:%@",post);
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
    //    NSLog(@"data %@",data);
    
    return data;
    
}

-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Narrativereport.php?service=narrativeselect";
    
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"narr1"])
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
    
    if ([segue.identifier isEqualToString:@"narr1"])
    {
        
        narrativereport4ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        destViewController.mutearray=mutearray;
        NSLog(@"recorddict in narrative first page %@",recorddict);
        NSLog(@"resultset in narrative first page %@",resultset);
    }
    
    
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
}
- (IBAction)reset:(id)sender {
    gen1.text=@"He";
    gen2.text=@"He";
    gen3.text=@"He";
    gen4.text=@"He";
    gen5.text=@"He";
    
    gen8.text=@"He";
    his1.text=@"his";
    his2.text=@"his";
    his3.text=@"his";
    his4.text=@"his";
    
    index1.text=[NSString stringWithFormat:@"%@%@",@"Mr",@"."];
    
    index3.text=[NSString stringWithFormat:@"%@%@",@"Mr",@"."];
    index4.text=[NSString stringWithFormat:@"%@%@",@"Mr",@"."];
    s1l=@"activity";
    indexresult=@"Mr";
    s2l=@"work";
    wasnotlabel=@"was";
    patientname.text=@"";
    self.patname.text =@"";
    self.patname2.text=@"";
    self.patname3.text=@"";
    reportdate.text=@"";
    dateofinjury.text=@"";
    dateofvisit.text=@"";
    to.text=@"";
    patname.text=@"";
    accon.text=@"";
    examon.text=@"";
    accon1.text=@"";
    text2.text=@"";
    text6.text=@"";
    text3.text=@"";
    text4.text=@"";
    text5.text=@"";
    [gend setSelectedSegmentIndex:0];
    [index setSelectedSegmentIndex:0];
    gen1.text=@"He";
    gen2.text=@"He";
    gen3.text=@"He";
    gen4.text=@"He";
    gen5.text=@"He";
    
    gen8.text=@"He";
    his1.text=@"his";
    his2.text=@"his";
    his3.text=@"his";
    his4.text=@"his";
    s1l=@"activity";
    s2l=@"work";
    wasnotlabel=@"was";
}
- (void)dealloc {
    
    
    [super dealloc];
}
@end
