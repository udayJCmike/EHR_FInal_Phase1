//
//  narrative1ViewController.m
//  narrative
//
//  Created by deemsys on 2/27/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "narrative1ViewController.h"
#import "narrativeViewController.h"
#import "narrative2ViewController.h"

#import "TWMessageBarManager.h"
#import "StringConstants.h"


@interface narrative1ViewController ()

@end

@implementation narrative1ViewController
@synthesize mutearray;
@synthesize flexionpain;
@synthesize flexpain;
@synthesize flexionton;
@synthesize flexton;
@synthesize extensionpain;
@synthesize extensionton;
@synthesize exetpain;
@synthesize exetton;
@synthesize rightlateralpain;
@synthesize rightlateralton;
@synthesize rightlatpain;
@synthesize recorddict;
@synthesize rightlatton;
@synthesize rightrotationpain;
@synthesize rightrotationton;
@synthesize rightrotpain;
@synthesize rightrotton;
@synthesize leftlateralpain;
@synthesize leftlateralton;
@synthesize leftlatpain;
@synthesize leftlatton;
@synthesize leftrotationpain;
@synthesize leftrotationton;
@synthesize leftrotpain;
@synthesize leftrotton;

@synthesize resultset;
@synthesize cervicseg;

@synthesize lrseg;
@synthesize lrtrapseg;
@synthesize lrseganother;
@synthesize note;
@synthesize range;
@synthesize tender;


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


-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,3}+";
    
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validatestring:(NSString *)country1
{
    NSString *countryFormat1 =@"[A-Z0-9a-z._/-]+";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

- (IBAction)next:(id)sender {
    a=1;
    temp1 =[flexionpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[extensionpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[rightrotationpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[leftrotationpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[rightlateralpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[leftlateralpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[flexionton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[extensionton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[rightlateralton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[leftlateralton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[rightrotationton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[leftrotationton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[flexpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[exetpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[rightrotpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[leftrotpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[rightlatpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[leftlatpain.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[flexton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[exetton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[rightlatton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[leftlatton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[rightrotton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp24=[leftrotton.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    temp28=[tender.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp29=[note.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp30=[range.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if((([temp28 length]>0)&&([self validatestring:temp28]==1))||([temp28 length]==0))
    {
        
        if((([temp29 length]>0)&&([self validatestring:temp29]==1))||([temp29 length]==0))
        {
            
            if((([temp30 length]>0)&&([self validateNames:temp30]==1))||([temp30 length]==0))
            {
                if((([temp1 length]>0)&&([self validateNames:temp1]==1))||([temp1 length]==0))
                {
                    
                    if((([temp2 length]>0)&&([self validateNames:temp2]==1))||([temp2 length]==0))
                    {
                        if((([temp5 length]>0)&&([self validateNames:temp5 ]==1))||([temp5 length]==0))
                        {
                            if((([temp6 length]>0)&&([self validateNames:temp6 ]==1))||([temp6 length]==0))
                            {
                                if((([temp3 length]>0)&&([self validateNames:temp3]==1))||([temp3 length]==0))
                                {
                                    if((([temp4 length]>0)&&([self validateNames:temp4]==1))||([temp4 length]==0))
                                    {
                                        if((([temp7 length]>0)&&([self validateNames:temp7]==1))||([temp7 length]==0))
                                        {
                                            if((([temp8 length]>0)&&([self validateNames:temp8]==1))||([temp8 length]==0))
                                            {
                                                if((([temp9 length]>0)&&([self validateNames:temp9]==1))||([temp9 length]==0))
                                                {
                                                    if((([temp10 length]>0)&&([self validateNames:temp10 ]==1))||([temp10 length]==0))
                                                    {
                                                        if((([temp11 length]>0)&&([self validateNames:temp11]==1))||([temp11 length]==0))
                                                        {
                                                            if((([temp12 length]>0)&&([self validateNames:temp12]==1))||([temp12 length]==0))
                                                            {
                                                                if((([temp13 length]>0)&&([self validateNames:temp13]==1))||([temp13 length]==0))
                                                                {
                                                                    if((([temp14 length]>0)&&([self validateNames:temp14]==1))||([temp14 length]==0))
                                                                    {
                                                                        if((([temp17 length]>0)&&([self validateNames:temp17]==1))||([temp17 length]==0))
                                                                        {
                                                                            if((([temp18 length]>0)&&([self validateNames:temp18]==1))||([temp18 length]==0))
                                                                            {
                                                                                if((([temp15 length]>0)&&([self validateNames:temp15]==1))||([temp15 length]==0))
                                                                                {
                                                                                    if((([temp16 length]>0)&&([self validateNames:temp16]==1))||([temp16 length]==0))
                                                                                    {
                                                                                        if((([temp19 length]>0)&&([self validateNames:temp19]==1))||([temp19 length]==0))
                                                                                        {
                                                                                            if((([temp20 length]>0)&&([self validateNames:temp20]==1))||([temp20 length]==0))
                                                                                            {
                                                                                                if((([temp21 length]>0)&&([self validateNames:temp21]==1))||([temp21 length]==0))
                                                                                                {
                                                                                                    if((([temp22 length]>0)&&([self validateNames:temp22]==1))||([temp22 length]==0))
                                                                                                    {
                                                                                                        if((([temp23 length]>0)&&([self validateNames:temp23 ]==1))||([temp23 length]==0))
                                                                                                        {
                                                                                                            if((([temp24 length]>0)&&([self validateNames:temp24]==1))||([temp24 length]==0))
                                                                                                            {
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                [recorddict setValue:flexionpain.text forKey:@"flexionpain"];
                                                                                                                [recorddict setValue:extensionpain.text forKey:@"extensionpain"];
                                                                                                                [recorddict setValue:rightlateralpain.text forKey:@"rightlateralpain"];
                                                                                                                [recorddict setValue:leftlateralpain.text forKey:@"leftlateralpain"];
                                                                                                                [recorddict setValue:rightrotationpain.text forKey:@"rightrotationpain"];
                                                                                                                
                                                                                                                [recorddict setValue:leftrotationpain.text forKey:@"leftrotationpain"];
                                                                                                                [recorddict setValue:flexionton.text forKey:@"flexionton"];
                                                                                                                [recorddict setValue:extensionton.text forKey:@"extensionton"];
                                                                                                                [recorddict setValue:rightlateralton.text forKey:@"rightlateralton"];
                                                                                                                [recorddict setValue:leftlateralton.text forKey:@"leftlateralton"];
                                                                                                                [recorddict setValue:rightrotationton.text forKey:@"rightrotationton"];
                                                                                                                
                                                                                                                [recorddict setValue:leftrotationton.text forKey:@"leftrotationton"];
                                                                                                                [recorddict setValue:flexpain.text forKey:@"flexpain"];
                                                                                                                [recorddict setValue:exetpain.text forKey:@"exetpain"];
                                                                                                                [recorddict setValue:rightlatpain.text forKey:@"rightlatpain"];
                                                                                                                [recorddict setValue:leftlatpain.text forKey:@"leftlatpain"];
                                                                                                                [recorddict setValue:rightrotpain.text forKey:@"rightrotpain"];
                                                                                                                
                                                                                                                [recorddict setValue:leftrotpain.text forKey:@"leftrotpain"];
                                                                                                                [recorddict setValue:flexton.text forKey:@"flexton"];
                                                                                                                [recorddict setValue:exetton.text forKey:@"exetton"];
                                                                                                                [recorddict setValue:rightlatton.text forKey:@"rightlatton"];
                                                                                                                [recorddict setValue:leftlatton.text forKey:@"leftlatton"];
                                                                                                                [recorddict setValue:rightrotton.text forKey:@"rightrotton"];
                                                                                                                
                                                                                                                [recorddict setValue:leftrotton.text forKey:@"leftrotton"];
                                                                                                                [recorddict setValue:tender.text forKey:@"tender"];
                                                                                                                [recorddict setValue:cerviclabel forKey:@"cervicalanother"];
                                                                                                                [recorddict setValue:lranother forKey:@"lrother"];
                                                                                                                [recorddict setValue:lrtrapezius forKey:@"lrtrapezius"];
                                                                                                                [recorddict setValue:lrlabel forKey:@"lrlabel"];
                                                                                                                [recorddict setValue:note.text forKey:@"note"];
                                                                                                                [recorddict setValue:range.text forKey:@"range"];
                                                                                                                
                                                                                                                
                                                                                                                if(a==1)
                                                                                                                {
                                                                                                                    [self performSegueWithIdentifier:@"narr2" sender:self];
                                                                                                                }
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                            
                                                                                                            else
                                                                                                            {
                                                                                                                a=0;
                                                                                                                
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Enter valid lumbar left rotation tonicity."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            a=0;
                                                                                                            
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Enter valid lumbar right rotation tonicity."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                           
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        a=0;
                                                                                                        
                                                                                                        
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Enter valid lumbar left lateral tonicity."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                       
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    a=0;
                                                                                                    
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Enter valid lumbar right lateral tonicity."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                   
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                a=0;
                                                                                                
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Enter valid lumbar exetension tonicity."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                

                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            a=0;
                                                                                            
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Enter valid lumbar flexion tonicity."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                          
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    
                                                                                    else
                                                                                    {
                                                                                        a=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Enter the valid  lumbar left rotation pain."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                else
                                                                                {
                                                                                    a=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Enter valid  lumbar right rotation pain."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                  
                                                                                    
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                a=0;
                                                                                
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Enter valid lumbar left lateral pain."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                               
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            a=0;
                                                                            
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Enter valid lumbar right lateral pain."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        a=0;
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Enter valid lumbar exetension pain."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        

                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    a=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Enter valid lumbar flexion pain."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                  
                                                                    
                                                                }
                                                            }
                                                            
                                                            else
                                                            {
                                                                a=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Enter the valid  cervical leftrotation tonicity."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                               
                                                                
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            a=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Enter valid  cervical rightrotation tonicity."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        a=0;
                                                        
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Enter valid  cervical left lateral tonicity."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                       
                                                        
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    a=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Enter valid  cervical right lateral tonicity."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                   
                                                }
                                                
                                            }
                                            else
                                            {
                                                a=0;
                                                
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Enter valid cervical extension tonicity."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                               
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Enter valid cervical flexion tonicity."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            

                                        }
                                    }
                                    
                                    else
                                    {
                                        a=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Enter the valid cervical left rotation pain."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                       
                                        
                                    }
                                    
                                }
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Enter valid  cervical right rotation pain."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                   
                                    
                                }
                                
                            }
                            else
                            {
                                a=0;
                                
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Enter valid cervical left lateral pain."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                               
                                
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Enter valid cervical right lateral pain."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Enter valid cervical extension pain."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                        
                    }
                    
                }
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Enter valid cervical flexion pain."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                   
                    
                }
            }
            else
            {
                a=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Enter the valid range."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
               
                
            }
            
        }
        else
        {
            a=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Enter the valid note."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
         
            
        }
        
    }
    else
    {
        a=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter the valid tender."
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
    cerviclabel=@"Cervical";
    lrlabel=@"L-R";
    lrtrapezius=@"L-R Trapezius";
    lranother=@"L-R";
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self displaydata];
    if([mutearray count]>0){
        [self dataset];
    }
    
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
}
- (IBAction)reset:(id)sender
{
    [cervicseg setSelectedSegmentIndex:0];
    cerviclabel=@"Cervical";
    [lrseg setSelectedSegmentIndex:0];
    lrlabel=@"L-R";
    [lrtrapseg setSelectedSegmentIndex:0];
    lrtrapezius=@"L-R Trapezius";
    [lrseganother setSelectedSegmentIndex:0];
    lranother=@"L-R";
    tender.text=@"";
    range.text=@"";
    note.text=@"";
    flexionpain.text=@"";
    extensionpain.text=@"";
    rightrotationpain.text=@"";
    leftrotationpain.text=@"";
    rightlateralpain.text=@"";
    leftlateralpain.text=@"";
    flexionton.text=@"";
    extensionton.text=@"";
    rightlateralton.text=@"";
    leftlateralton.text=@"";
    rightrotationton.text=@"";
    leftrotationton.text=@"";
    flexpain.text=@"";
    exetpain.text=@"";
    rightrotpain.text=@"";
    leftrotpain.text=@"";
    rightlatpain.text=@"";
    leftlatpain.text=@"";
    flexton.text=@"";
    exetton.text=@"";
    rightlatton.text=@"";
    leftlatton.text=@"";
    rightrotton.text=@"";
    leftrotton.text=@"";
    
}
-(void)dataset{
    flexionpain.text=[mutearray objectForKey:@"flexpain"];
    extensionpain.text=[mutearray objectForKey:@"extpain"];
    rightrotationpain.text=[mutearray objectForKey:@"rrpain"];
    leftrotationpain.text=[mutearray objectForKey:@"lrpain"];
    rightlateralpain.text=[mutearray objectForKey:@"rlfpain"];
    leftlateralpain.text=[mutearray objectForKey:@"llfpain"];
    
}
-(void)displaydata

{
    if([resultset count]>0)
    {
        tender.text=[resultset objectForKey:@"tenderness"];
        note.text=[resultset objectForKey:@"noted"];
        range.text=[resultset objectForKey:@"rangeofmotion"];
        flexionpain.text=[resultset objectForKey:@"painres1"];
        extensionpain.text=[resultset objectForKey:@"painres2"];
        rightrotationpain.text=[resultset objectForKey:@"painres3"];
        leftrotationpain.text=[resultset objectForKey:@"painres4"];
        rightlateralpain.text=[resultset objectForKey:@"painres5"];
        leftlateralpain.text=[resultset objectForKey:@"painres6"];
        flexionton.text=[resultset objectForKey:@"tonicity1"];
        extensionton.text=[resultset objectForKey:@"tonicity2"];
        rightlateralton.text=[resultset objectForKey:@"tonicity3"];
        leftlateralton.text=[resultset objectForKey:@"tonicity4"];
        rightrotationton.text=[resultset objectForKey:@"tonicity5"];
        leftrotationton.text=[resultset objectForKey:@"tonicity6"];
        flexpain.text=[resultset objectForKey:@"painres7"];
        exetpain.text=[resultset objectForKey:@"painres8"];
        rightrotpain.text=[resultset objectForKey:@"painres9"];
        leftrotpain.text=[resultset objectForKey:@"painres10"];
        rightlatpain.text=[resultset objectForKey:@"painres11"];
        leftlatpain.text=[resultset objectForKey:@"painres12"];
        flexton.text=[resultset objectForKey:@"tonicity7"];
        exetton.text=[resultset objectForKey:@"tonicity8"];
        rightlatton.text=[resultset objectForKey:@"tonicity9"];
        leftlatton.text=[resultset objectForKey:@"tonicity10"];
        rightrotton.text=[resultset objectForKey:@"tonicity11"];
        leftrotton.text=[resultset objectForKey:@"tonicity12"];
        if ([[resultset objectForKey:@"gendernew5"]isEqualToString:@"Cervical"])
        {
            [cervicseg setSelectedSegmentIndex:0];
            cerviclabel=@"Cervical";
            
        }
        if ([[resultset objectForKey:@"gendernew5"]isEqualToString:@"Thoracic"])
        {
            [cervicseg setSelectedSegmentIndex:1];
            cerviclabel=@"Thoracic";
            
        }
        if ([[resultset objectForKey:@"gendernew5"]isEqualToString:@"Lumbar"])
        {
            [cervicseg setSelectedSegmentIndex:2];
            cerviclabel=@"Lumbar";
        }
        if ([[resultset objectForKey:@"gender40"]isEqualToString:@"L-R"]) {
            [lrseg setSelectedSegmentIndex:0];
            lrlabel=@"L-R";
        }
        if ([[resultset objectForKey:@"gender40"]isEqualToString:@"Bilaterally"]) {
            [lrseg setSelectedSegmentIndex:1];
            lrlabel=@"Bilaterally";
        }
        if ([[resultset objectForKey:@"gendernew6"]isEqualToString:@"L-R Trapezius"]) {
            [lrtrapseg setSelectedSegmentIndex:0];
            lrtrapezius=@"L-R Trapezius";
        }
        if ([[resultset objectForKey:@"gendernew6"]isEqualToString:@"L-R Strnocleidomastoid"]) {
            [lrtrapseg setSelectedSegmentIndex:1];
            lrtrapezius=@"L-R Strnocleidomastoid";
        }
        if ([[resultset objectForKey:@"gendernew6"]isEqualToString:@"L-R quadratuslumborum"]) {
            [lrtrapseg setSelectedSegmentIndex:2];
            lrtrapezius=@"L-R quadratuslumborum";
        }
        if ([[resultset objectForKey:@"gendernew6"]isEqualToString:@"L-R Hamstring"]) {
            [lrtrapseg setSelectedSegmentIndex:3];
            lrtrapezius=@"L-R Hamstring";
        }
        
        if ([[resultset objectForKey:@"gender41"]isEqualToString:@"L-R"]) {
            [lrseganother setSelectedSegmentIndex:0];
            
            lranother=@"L-R";
            
        }
        if ([[resultset objectForKey:@"gender41"]isEqualToString:@"Bilaterally"]) {
            [lrseganother setSelectedSegmentIndex:1];
            lranother=@"Bilaterally";
        }
    }
    
}
-(void)dismissKeyboard
{
    [tender resignFirstResponder];
    [note resignFirstResponder];
    [range resignFirstResponder];
    [flexionpain resignFirstResponder];
    [flexionton resignFirstResponder];
    [exetpain resignFirstResponder];
    [exetton resignFirstResponder];
    [rightlateralpain resignFirstResponder];
    [rightlateralton resignFirstResponder];
    [leftlateralpain resignFirstResponder];
    [leftlateralton resignFirstResponder];
    [extensionpain resignFirstResponder];
    [extensionton resignFirstResponder];
    [rightrotationpain resignFirstResponder];
    [rightrotationton resignFirstResponder];
    [leftrotationpain resignFirstResponder];
    [leftrotationton resignFirstResponder];
    [flexpain resignFirstResponder];
    [flexton resignFirstResponder];
    [exetpain resignFirstResponder];
    [exetton resignFirstResponder];
    [rightlatpain resignFirstResponder];
    [rightlatton resignFirstResponder];
    [leftlatpain resignFirstResponder];
    [leftlatton resignFirstResponder];
    [rightrotpain resignFirstResponder];
    [rightrotton resignFirstResponder];
    [leftrotpain resignFirstResponder];
    [leftrotton resignFirstResponder];
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)cervicccc:(id)sender
{
    if (cervicseg.selectedSegmentIndex==0) {
        cerviclabel=@"Cervical";
    }
    if (cervicseg.selectedSegmentIndex==1) {
        cerviclabel=@"Thoracic";
    }
    if (cervicseg.selectedSegmentIndex==2) {
        cerviclabel=@"Lumbar";
    }
    
}

- (IBAction)lrrrrr:(id)sender
{
    if (lrseg.selectedSegmentIndex==0) {
        lrlabel=@"L-R";
    }
    if (lrseg.selectedSegmentIndex==1) {
        lrlabel=@"Bilaterally";
    }
}
- (IBAction)lrtraprr:(id)sender
{
    if (lrtrapseg.selectedSegmentIndex==0) {
        lrtrapezius=@"L-R Trapezius";
    }
    if (lrtrapseg.selectedSegmentIndex==1) {
        lrtrapezius=@"L-R Strnocleidomastoid";
    }
    if (lrtrapseg.selectedSegmentIndex==2) {
        lrtrapezius=@"L-R quadratuslumborum";
    }
    if (lrtrapseg.selectedSegmentIndex==3) {
        lrtrapezius=@"L-R Hamstring";
    }
    
    
}
- (IBAction)lrother:(id)sender
{
    if (lrseganother.selectedSegmentIndex==0) {
        lranother=@"L-R";
    }
    if (lrseganother.selectedSegmentIndex==1) {
        lranother=@"Bilaterally";
    }
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"narr2"])
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
    
    if ([segue.identifier isEqualToString:@"narr2"])
    {
        
        narrative2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        destViewController.mutearray=mutearray;
        NSLog(@"recorddict in narrative second page %@",recorddict);
    }
    
    
}

- (void)dealloc {
    
    
    
    
    [super dealloc];
}
@end
