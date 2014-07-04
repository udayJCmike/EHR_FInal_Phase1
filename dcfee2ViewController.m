//
//  dcfee2ViewController.m
//  dcfee
//
//  Created by DeemsysInc on 4/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "dcfee2ViewController.h"
#import "dcfee3ViewController.h"


#import "TWMessageBarManager.h"
#import "StringConstants.h"


@interface dcfee2ViewController ()

@end

@implementation dcfee2ViewController
@synthesize resultset;
@synthesize fitting;
@synthesize activities;
@synthesize selfcare;
@synthesize training;
@synthesize wostimulation;
@synthesize wstimulation;
@synthesize regions1;
@synthesize regions2;
@synthesize regions3;
@synthesize extremity;
@synthesize urinalysis;
@synthesize muscletest;
@synthesize muscletesthand;
@synthesize rangeofmotion;
@synthesize rangeofmotionhand;
@synthesize wofwave;
@synthesize wfwave;
@synthesize sensory;
@synthesize upper;
@synthesize lower;
@synthesize trunk;
@synthesize rl;
@synthesize test;
@synthesize evaluation;
@synthesize recorddict;
@synthesize page3;


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



-(BOOL)validateNumbers:(NSString*)number
{
    NSString *numberFormat1 =  @"[0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *numberTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",numberFormat1];
    return [numberTest1 evaluateWithObject:number];
    
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
    [super viewDidLoad];
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self displaydata];
    
	// Do any additional setup after loading the view.
}
-(void)displaydata{
    if([resultset count]>0){
        
        fitting.text=[resultset objectForKey:@"orthotics"];
        activities.text=[resultset objectForKey:@"kinetic"];
        selfcare.text=[resultset objectForKey:@"adlselfcare"];
        training .text=[resultset objectForKey:@"reintegration"];
        
        wostimulation.text=[resultset objectForKey:@"acupuncturewo"];
        
        wstimulation.text=[resultset objectForKey:@"acupuncturew"];
        
        regions1.text=[resultset objectForKey:@"spine12"];
        
        regions2.text=[resultset objectForKey:@"spine34"];
        regions3.text=[resultset objectForKey:@"spine5"];
        extremity.text=[resultset objectForKey:@"extremity"];
        
        urinalysis.text=[resultset objectForKey:@"muscle"];
        muscletest.text=[resultset objectForKey:@"routine"];
        muscletesthand.text=[resultset objectForKey:@"musclehand"];
        rangeofmotion.text=[resultset objectForKey:@"rangeofmotion"];
        rangeofmotionhand.text=[resultset objectForKey:@"rangeofmotionhand"];
        wofwave.text=[resultset objectForKey:@"ncv"];
        wfwave.text=[resultset objectForKey:@"ncvw"];
        sensory.text=[resultset objectForKey:@"ncvea"];
        upper.text=[resultset objectForKey:@"ssepupper"];
        lower.text=[resultset objectForKey:@"sseplower"];
        trunk.text=[resultset objectForKey:@"ssephead"];
        rl.text=[resultset objectForKey:@"hreflex"];
        test.text=[resultset objectForKey:@"physicalperformance"];
        evaluation.text=[resultset objectForKey:@"functionalcapacity"];
        _text1.text=[resultset objectForKey:@"text1"];
        _text2.text=[resultset objectForKey:@"text2"];
        
        if([fitting.text isEqualToString:@"0"]){
            
            fitting.text=@"";
        }
        if([activities.text isEqualToString:@"0"]){
            
            activities.text=@"";
        }
        if([selfcare.text isEqualToString:@"0"]){
            
            selfcare.text=@"";
        }
        if([training.text isEqualToString:@"0"]){
            
            training.text=@"";
        }
        if([wostimulation.text isEqualToString:@"0"]){
            
            wostimulation.text=@"";
        }
        if([wstimulation.text isEqualToString:@"0"]){
            
            wstimulation.text=@"";
        }
        if([regions1.text isEqualToString:@"0"]){
            
            regions1.text=@"";
        }
        if([regions2.text isEqualToString:@"0"]){
            
            regions2.text=@"";
        }
        if([regions3.text isEqualToString:@"0"]){
            
            regions3.text=@"";
        }
        if([extremity.text isEqualToString:@"0"]){
            
            extremity.text=@"";
        }
        if([urinalysis.text isEqualToString:@"0"]){
            
            urinalysis.text=@"";
        }
        if([muscletest.text isEqualToString:@"0"]){
            
            muscletest.text=@"";
        }
        if([muscletesthand.text isEqualToString:@"0"]){
            
            muscletesthand.text=@"";
        }
        if([rangeofmotion.text isEqualToString:@"0"]){
            
            rangeofmotion.text=@"";
        }
        if([wofwave.text isEqualToString:@"0"]){
            
            wofwave.text=@"";
        }
        if([wfwave.text isEqualToString:@"0"]){
            
            wfwave.text=@"";
        }
        if([sensory.text isEqualToString:@"0"]){
            
            sensory.text=@"";
        }
        if([upper.text isEqualToString:@"0"]){
            
            upper.text=@"";
        }
        if([lower.text isEqualToString:@"0"]){
            
            lower.text=@"";
        }
        if([trunk.text isEqualToString:@"0"]){
            
            trunk.text=@"";
        }
        if([rl.text isEqualToString:@"0"]){
            
            rl.text=@"";
        }
        if([test.text isEqualToString:@"0"]){
            
            test.text=@"";
        }
        if([evaluation.text isEqualToString:@"0"]){
            
            evaluation.text=@"";
        }
        if([_text1.text isEqualToString:@"0"]){
            
            _text1.text=@"";
        }
        if([_text2.text isEqualToString:@"0"]){
            
            _text2.text=@"";
        }
        if([rangeofmotionhand.text isEqualToString:@"0"]){
            
            rangeofmotionhand.text=@"";
        }
        
        
        
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)next:(id)sender
{
    // recorddict=[[NSMutableDictionary alloc]init];
    temp1 =[fitting.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[activities.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[selfcare.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[training.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5=[wostimulation.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6 =[wstimulation.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[regions1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[regions2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[regions3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[extremity.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[urinalysis.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[muscletest.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[muscletesthand.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[rangeofmotion.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[rangeofmotionhand.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[wofwave.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[wfwave.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[sensory.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[upper.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[lower.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[trunk.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[rl.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[test.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp24=[evaluation.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    if((([temp1 length]>0)&&([self validateNumbers:temp1]==1))||([temp1 length]==0))
    {
        if((([temp2 length]>0)&&([self validateNumbers:temp2]==1))||([temp2 length]==0))
        {
            if((([temp3 length]>0)&&([self validateNumbers:temp3]==1))||([temp3 length]==0))
            {
                if((([temp4 length]>0)&&([self validateNumbers:temp4]==1))||([temp4 length]==0))
                {
                    if((([temp5 length]>0)&&([self validateNumbers:temp5]==1))||([temp5 length]==0))
                    {
                        //                        if ([self validateDate:temp23]==1)
                        //                        {
                        if((([temp6 length]>0)&&([self validateNumbers:temp6]==1))||([temp6 length]==0))
                        {
                            if((([temp7 length]>0)&&([self validateNumbers:temp7]==1))||([temp7 length]==0))
                            {
                                if((([temp8 length]>0)&&([self validateNumbers:temp8]==1))||([temp8 length]==0))
                                {
                                    if((([temp9 length]>0)&&([self validateNumbers:temp9]==1))||([temp9 length]==0))
                                    {
                                        if((([temp10 length]>0)&&([self validateNumbers:temp10 ]==1))||([temp10 length]==0))
                                        {
                                            if((([temp11 length]>0)&&([self validateNumbers:temp11]==1))||([temp11 length]==0))
                                            {
                                                if((([temp12 length]>0)&&([self validateNumbers:temp12]==1))||([temp12 length]==0))
                                                {
                                                    if((([temp13 length]>0)&&([self validateNumbers:temp13]==1))||([temp13 length]==0))
                                                    {
                                                        if((([temp14 length]>0)&&([self validateNumbers:temp14]==1))||([temp14 length]==0))
                                                        {
                                                            if((([temp15 length]>0)&&([self validateNumbers:temp15]==1))||([temp15 length]==0))
                                                            {
                                                                if((([temp16 length]>0)&&([self validateNumbers:temp16]==1))||([temp16 length]==0))
                                                                {
                                                                    if((([temp17 length]>0)&&([self validateNumbers:temp17]==1))||([temp17 length]==0))
                                                                    {
                                                                        if((([temp18 length]>0)&&([self validateNumbers:temp18]==1))||([temp18 length]==0))
                                                                        {
                                                                            if((([temp19 length]>0)&&([self validateNumbers:temp19]==1))||([temp19 length]==0))
                                                                            {
                                                                                if((([temp20 length]>0)&&([self validateNumbers:temp20]==1))||([temp20 length]==0))
                                                                                {
                                                                                    if((([temp21 length]>0)&&([self validateNumbers:temp21]==1))||([temp21 length]==0))
                                                                                    {
                                                                                        if((([temp22 length]>0)&&([self validateNumbers:temp22]==1))||([temp22 length]==0))
                                                                                        {
                                                                                            if((([temp23 length]>0)&&([self validateNumbers:temp23]==1))||([temp23 length]==0))
                                                                                            {
                                                                                                if((([temp24 length]>0)&&([self validateNumbers:temp24]==1))||([temp24 length]==0))
                                                                                                {
                                                                                                    
                                                                                                    calc3=([fitting.text floatValue]+[activities.text floatValue]+[muscletest.text floatValue]+[muscletesthand.text floatValue]+[rangeofmotion.text floatValue]+[rangeofmotionhand.text floatValue]+[urinalysis.text floatValue]+[extremity.text floatValue]+[regions1.text floatValue]+[regions2.text floatValue]+[regions3.text floatValue]+[wstimulation.text floatValue]+[wostimulation.text floatValue]+[training.text floatValue]+[selfcare.text floatValue]+[evaluation.text floatValue]+[test.text floatValue]+[rl.text floatValue]+[trunk.text floatValue]+[lower.text floatValue]+[upper.text floatValue]+[sensory.text floatValue]+[wfwave.text floatValue]+[wofwave.text floatValue]);
                                                                                                    page3.text=[[NSString alloc] initWithFormat:@"%f",calc3];
                                                                                                    [recorddict setValue: page3.text forKey:@"calc3"];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    [recorddict setValue:fitting.text forKey:@"fitting"];
                                                                                                    [recorddict setValue:activities.text forKey:@"activities"];
                                                                                                    [recorddict setValue:selfcare.text forKey:@"selfcare"];
                                                                                                    [recorddict setValue:training.text forKey:@"training"];
                                                                                                    [recorddict setValue:wostimulation.text forKey:@"wostimulation"];
                                                                                                    [recorddict setValue:wstimulation.text forKey:@"wstimulation"];
                                                                                                    [recorddict setValue:regions1.text forKey:@"regions1"];
                                                                                                    [recorddict setValue:regions2.text forKey:@"regions2"];
                                                                                                    [recorddict setValue:regions3.text forKey:@"regions3"];
                                                                                                    [recorddict setValue:extremity.text forKey:@"extremity"];
                                                                                                    [recorddict setValue:urinalysis.text forKey:@"urinalysis"];
                                                                                                    [recorddict setValue:muscletest.text forKey:@"muscletest"];
                                                                                                    
                                                                                                    [recorddict setValue:muscletesthand.text forKey:@"muscletesthand"];
                                                                                                    [recorddict setValue:rangeofmotion.text forKey:@"rangeofmotion"];
                                                                                                    [recorddict setValue:rangeofmotionhand.text forKey:@"rangeofmotionhand"];
                                                                                                    [recorddict setValue:wofwave.text forKey:@"wofave"];
                                                                                                    
                                                                                                    [recorddict setValue:wfwave.text forKey:@"wfwave"];
                                                                                                    [recorddict setValue:sensory.text forKey:@"sensory"];
                                                                                                    [recorddict setValue:upper.text forKey:@"upper"];
                                                                                                    [recorddict setValue:lower.text forKey:@"lower"];
                                                                                                    [recorddict setValue:trunk.text forKey:@"trunk"];
                                                                                                    [recorddict setValue:rl.text forKey:@"rl"];
                                                                                                    [recorddict setValue:test.text forKey:@"test"];
                                                                                                    [recorddict setValue:evaluation.text forKey:@"evaluation"];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    [recorddict setValue:_text1.text forKey:@"text1"];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    [recorddict setValue:_text2.text forKey:@"text2"];
                                                                                                    NSLog(@"success!!!recorddict %@",recorddict);
                                                                                                    NSLog(@"success!!!recorddict %d",[recorddict count]);
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    c=1;
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    c=0;
                                                                                                    
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Enter valid functional capacity evaluation field."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                                
                                                                                                
                                                                                            }
                                                                                            
                                                                                            else
                                                                                            {
                                                                                                c=0;
                                                                                                
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Enter valid Physical performance test field."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                            
                                                                                            
                                                                                        }                                                                                          else
                                                                                        {
                                                                                            c=0;
                                                                                            
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Enter valid H-Reflex field."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                           
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        c=0;
                                                                                        
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Enter valid SSEP:Head/Trunk field."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                      
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    c=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Enter valid SSEP:Lower field."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                   
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                c=0;
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Enter valid SSEP:upper field."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                               
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            c=0;
                                                                            
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Enter valid NCV Ea.Sensory field."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                          
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Enter valid NCV Ea motor w/F-wave field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                       
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    c=0;
                                                                    
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Enter valid NCV Ea motor w/o F-wave field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                   
                                                                    
                                                                }
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Enter valid range of motion hand/rpt field."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                              
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Enter valid range of motion/report field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                           
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Enter valid muscle test hand/report field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                      
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    c=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Enter valid muscle test/report field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                  
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                c=0;
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Enter valid routine urinalysis field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                            
                                               
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            c=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Enter valid extremity field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                           
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        c=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Enter valid spine 5 regions field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                    }
                                    
                                }
                                else
                                {
                                    c=0;
                                    
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Enter valid spine 3-4 regions field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                }
                                
                            }
                            else
                            {
                                c=0;
                                
                                
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Enter valid spine 1-2 regions field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                              
                                
                            }
                            
                        }
                        else
                        {
                            c=0;
                            
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Enter valid acupuncture w/e-stimulation field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                           
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        //                        }
                        /*                      else{
                         c=0;
                         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  Date."];
                         [alert setDestructiveButtonWithTitle:@"x" block:nil];
                         [alert show];
                         }*/
                        
                    }
                    
                    else
                    {
                        c=0;
                        
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Enter valid acupuncture w/o e-stimuation field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                       
                    }
                }
                else
                {
                    c=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Enter valid reintergration training field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                   
                    
                }
            }
            
            
            else
            {
                c=0;
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Enter valid adl self care field."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
              
                
            }
        }
        else
        {
            c=0;
            
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Enter valid  kineteic activities field."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
        }
    }
    
    else
    {
        c=0;
        
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter valid orthotics fitting field."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
       
        
    }
    if(c==1)
    {
        [self performSegueWithIdentifier:@"dcfee3" sender:self];
    }
    
    
}
-(void)dismissKeyboard {
    [fitting resignFirstResponder];
    [activities resignFirstResponder];
    [ selfcare resignFirstResponder];
    [training  resignFirstResponder];
    [ _text1 resignFirstResponder];
    [_text2  resignFirstResponder];
    
    [wostimulation resignFirstResponder];
    
    [wstimulation resignFirstResponder];
    
    [regions1 resignFirstResponder];
    
    [regions2 resignFirstResponder];
    [regions3 resignFirstResponder];
    [extremity resignFirstResponder];
    
    [urinalysis resignFirstResponder];
    [muscletest resignFirstResponder];
    [muscletesthand resignFirstResponder];
    [rangeofmotion resignFirstResponder];
    [rangeofmotionhand resignFirstResponder];
    [wofwave resignFirstResponder];
    [wfwave resignFirstResponder];
    [sensory resignFirstResponder];
    [upper resignFirstResponder];
    [lower resignFirstResponder];
    [trunk resignFirstResponder];
    [rl resignFirstResponder];
    [test resignFirstResponder];
    [evaluation resignFirstResponder];
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"dcfee3"])
    {
        if (c==1)
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
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    if ([segue.identifier isEqualToString:@"dcfee3"])
    {
        
        
        dcfee3ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        NSLog(@"recorddict in dcfeedetail2%@",recorddict);
        // destViewController.delegate=self;
        
    }
}

- (void)dealloc {
    
    
    [super dealloc];
}
- (IBAction)CANCEL:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
}

- (IBAction)reset:(id)sender {
    
    
    fitting.text=@"";
    activities.text=@"";
    selfcare.text=@"";
    training .text=@"";
    
    wostimulation.text=@"";
    
    wstimulation.text=@"";
    
    regions1.text=@"";
    
    regions2.text=@"";
    regions3.text=@"";
    extremity.text=@"";
    
    urinalysis.text=@"";
    muscletest.text=@"";
    muscletesthand.text=@"";
    rangeofmotion.text=@"";
    rangeofmotionhand.text=@"";
    wofwave.text=@"";
    wfwave.text=@"";
    sensory.text=@"";
    upper.text=@"";
    lower.text=@"";
    trunk.text=@"";
    rl.text=@"";
    test.text=@"";
    evaluation.text=@"";
    _text2.text=@"";
    _text1.text=@"";
    
}
@end
