//
//  narrative2ViewController.m
//  narrative
//
//  Created by deemsys on 2/27/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "narrative2ViewController.h"
#import "narrative1ViewController.h"
#import "narrative3ViewController.h"

#import "TWMessageBarManager.h"
#import "StringConstants.h"
#import "databaseurl.h"



@interface narrative2ViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}

@end

@implementation narrative2ViewController
@synthesize mutearray;
@synthesize resultset;
@synthesize  text1;
@synthesize text2;
@synthesize text3;
@synthesize text4;
@synthesize o1;
@synthesize o2;
@synthesize o3;
@synthesize o4;
@synthesize o5;
@synthesize o6;
@synthesize rs1;
@synthesize rs2;
@synthesize recorddict;
@synthesize rs3;
@synthesize rs4;
@synthesize rs5;
@synthesize rs6;
@synthesize ls1;
@synthesize ls2;
@synthesize ls3;
@synthesize ls4;
@synthesize ls5;
@synthesize ls6;
@synthesize s1;
@synthesize s2;
@synthesize s3;
@synthesize s4;
@synthesize s5;
@synthesize s6;
@synthesize s7;
@synthesize s8;
@synthesize s9;
@synthesize s10;
@synthesize s11;
@synthesize s12;
@synthesize s13;
@synthesize s14;
@synthesize s15;
@synthesize s16;
@synthesize s17;
@synthesize s18;
@synthesize s18another;

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
    NSString *countryFormat1 = @"[A-Za-z0-9._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    ////NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"narr3"])
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
    
    if ([segue.identifier isEqualToString:@"narr3"])
    {
        
        narrative3ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        destViewController.mutearray=mutearray;
       // //NSLog(@"recorddict in narrative second page %@",recorddict);
    }
    
    
}
- (IBAction)s1:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s1l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s1l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s1l=@"Lumbar";
    }
}
- (IBAction)s2:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s2l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s2l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s2l=@"Lumbar";
    }
    
    
}
- (IBAction)s3:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s3l=@"Within normal limits";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s3l=@"Not Within Normal Limits";
    }
    
    
}
- (IBAction)s4:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s4l=@"Equal and intact without incident";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s4l=@"Hypo-reflexic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s4l=@"Hyper-reflexic";
    }
    
    
}
- (IBAction)s5:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s5l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s5l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s5l=@"Lumbar";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        s5l=@"Sacroilliac Spine";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        s5l=@"Other";
    }
    
    
    
}
- (IBAction)s6:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s6l=@"Two";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s6l=@"Three";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s6l=@"Four";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        s6l=@"Five";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        s6l=@"Six";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        s6l=@"Seven";
    }
    
}
- (IBAction)s7:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s7l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s7l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s7l=@"Lumbar";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        s7l=@"SI";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        s7l=@"Other";
    }
}
- (IBAction)s8:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s8l=@"Two";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s8l=@"Three";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s8l=@"Four";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        s8l=@"Five";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        s8l=@"Six";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        s8l=@"Seven";
    }
    
    
}
- (IBAction)s9:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s9l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s9l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s9l=@"Lumbar";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        s9l=@"SI";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        s9l=@"Other";
    }
    
    
}
- (IBAction)s10:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s10l=@"Negative for recent fracture";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s10l=@"Dislocation or gross osteopathology";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s10l=@"Positive for fracture of the";
    }
    
}
- (IBAction)s11:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s11l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s11l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s11l=@"Lumbar";
    }
    
}
- (IBAction)s12:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s12l=@"Hyperlordosis";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s12l=@"Hypolordosis";
    }
    
}
- (IBAction)s13:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s13l=@"Not present";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s13l=@"Present at the";
    }
    
}
- (IBAction)s14:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s14l=@"Anterior";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s14l=@"Thoracic";
    }
}
- (IBAction)s15:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s15l=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s15l=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s15l=@"Severe";
    }
}
- (IBAction)s16:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s16l=@"Dextro";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s16l=@"levo";
    }
    
}
- (IBAction)s17:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s17l=@"Scoliosis";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s17l=@"Towering";
    }
}
- (IBAction)s18:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s19l=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s19l=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s19l=@"Lumbar";
    }
    
}
- (IBAction)s18another:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        s18ll=@"Cervical";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        s18ll=@"Thoracic";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        s18ll=@"Lumbar";
    }
    
}
- (IBAction)rs1:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rs1l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rs1l=@"Negative";
    }
    
}
- (IBAction)rs2:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rs2l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rs2l=@"Negative";
    }
}
- (IBAction)rs3:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rs3l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rs3l=@"Negative";
    }
}
- (IBAction)rs4:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rs4l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rs4l=@"Negative";
    }
}
- (IBAction)rs5:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rs5l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rs5l=@"Negative";
    }
}
- (IBAction)rs6:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        rs6l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        rs6l=@"Negative";
    }
}
- (IBAction)ls1:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ls1l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ls1l=@"Negative";
    }
}
- (IBAction)ls2:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ls2l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ls2l=@"Negative";
    }
}
- (IBAction)ls3:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ls3l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ls3l=@"Negative";
    }
    
}
- (IBAction)ls4:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ls4l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ls4l=@"Negative";
    }
}
- (IBAction)ls5:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ls5l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ls5l=@"Negative";
    }
}
- (IBAction)ls6:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ls6l=@"Positive";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ls6l=@"Negative";
    }
}

- (IBAction)next:(id)sender {
    
    du=[[databaseurl alloc]init];
    //recorddict=[[NSMutableDictionary alloc]init];
    
    a=1;
    temp1 =[text1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[text2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[text3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[text4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[o1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6 =[o2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7 =[o3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8 =[o4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9 =[o5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10 =[o6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    if((([temp1 length]>0)&&([du otherfields:temp1]==1))||([temp1 length]==0))
    {
        
        if((([temp2 length]>0)&&([du percentage:temp2]==1))||([temp2 length]==0))
        {
            
            if((([temp5 length]>0)&&([du otherfields:temp5]==1))||([temp5 length]==0))
            {
                
                if((([temp6 length]>0)&&([du otherfields:temp6]==1))||([temp6 length]==0))
                {
                    if((([temp7 length]>0)&&([du otherfields:temp7 ]==1))||([temp7 length]==0))
                    {
                        if((([temp8 length]>0)&&([du otherfields:temp8 ]==1))||([temp8 length]==0))
                        {
                            if((([temp9 length]>0)&&([du otherfields:temp9 ]==1))||([temp9 length]==0))
                            {
                                if((([temp10 length]>0)&&([du otherfields:temp10 ]==1))||([temp10 length]==0))
                                {
                                    if((([temp3 length]>0)&&([du otherfields:temp3 ]==1))||([temp3 length]==0))
                                    {
                                        if((([temp4 length]>0)&&([du otherfields:temp4 ]==1))||([temp4 length]==0))
                                        {
                                            [recorddict setValue:text1.text forKey:@"textl1"];
                                            [recorddict setValue:text2.text forKey:@"textl2"];
                                            [recorddict setValue:text3.text forKey:@"textl3"];
                                            [recorddict setValue:text4.text forKey:@"textl4"];
                                            [recorddict setValue:o1.text forKey:@"o1"];
                                            [recorddict setValue:o2.text forKey:@"o2"];
                                            [recorddict setValue:o3.text forKey:@"o3"];
                                            [recorddict setValue:o4.text forKey:@"o4"];
                                            [recorddict setValue:o5.text forKey:@"o5"];
                                            [recorddict setValue:o6.text forKey:@"o6"];
                                            
                                            
                                            [recorddict setValue:s1l forKey:@"s1r"];
                                            [recorddict setValue:s2l forKey:@"s2r"];
                                            [recorddict setValue:s3l forKey:@"s3r"];
                                            [recorddict setValue:s4l forKey:@"s4r"];
                                            [recorddict setValue:s5l forKey:@"s5r"];
                                            [recorddict setValue:s6l forKey:@"s6r"];
                                            [recorddict setValue:s7l forKey:@"s7r"];
                                            [recorddict setValue:s8l forKey:@"s8r"];
                                            [recorddict setValue:s9l forKey:@"s9r"];
                                            [recorddict setValue:s10l forKey:@"s10r"];
                                            
                                            
                                            
                                            [recorddict setValue:s11l forKey:@"s11r"];
                                            [recorddict setValue:s12l forKey:@"s12r"];
                                            [recorddict setValue:s13l forKey:@"s13r"];
                                            [recorddict setValue:s14l forKey:@"s14r"];
                                            [recorddict setValue:s15l forKey:@"s15r"];
                                            [recorddict setValue:s16l forKey:@"s16r"];
                                            [recorddict setValue:s17l forKey:@"s17r"];
                                            
                                            
                                            [recorddict setValue:s19l forKey:@"s18r"];
                                            
                                            [recorddict setValue:s18ll forKey:@"s19r"];
                                            
                                            
                                            [recorddict setValue:rs1l forKey:@"rs1"];
                                            [recorddict setValue:rs2l forKey:@"rs2"];
                                            [recorddict setValue:rs3l forKey:@"rs3"];
                                            [recorddict setValue:rs4l forKey:@"rs4"];
                                            [recorddict setValue:rs5l forKey:@"rs5"];
                                            [recorddict setValue:rs6l forKey:@"rs6"];
                                            
                                            [recorddict setValue:ls1l forKey:@"ls1"];
                                            [recorddict setValue:ls2l forKey:@"ls2"];
                                            [recorddict setValue:ls3l forKey:@"ls3"];
                                            [recorddict setValue:ls4l forKey:@"ls4"];
                                            [recorddict setValue:ls6l forKey:@"ls6"];
                                            [recorddict setValue:ls5l forKey:@"ls5"];
                                            
                                           // //NSLog(@"success!!!recorddict %@",recorddict);
                                        }
                                        else
                                        {
                                            a=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid present field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                            
                                        }
                                    }
                                    else
                                    {
                                        a=0;
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid osteophytes field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                        
                                    }
                                    
                                    
                                }
                                
                                
                                
                                else
                                {
                                    a=0;
                                    
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid orthopedic test6."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                    
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid orthopedic test5."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                            }
                        }
                        else
                        {
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid  orthopedic test4."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid  orthopedic test3."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                    }
                    
                }
                else
                {
                    a=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid orthopedic test2."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                }
                
            }
            else
            {
                a=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid orthopedic test1."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
            }
            
            
        }
        else
        {
            a=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid level field."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
        }
    }
    else
    {
        a=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter valid dermatome level."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
        
    }
    if(a==1)
    {
        [self performSegueWithIdentifier:@"narr3" sender:self];
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

    [super viewDidLoad];
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    s1l=@"Cervical";
    s2l=@"Cervical";
    s3l=@"Within normal limits";
    s4l=@"Equal and intact without incident";
    s5l=@"Cervical";
    s6l=@"Two";
    s7l=@"Cervical";
    s8l=@"Two";
    s9l=@"Cervical";
    s10l=@"Negative for recent fracture";
    s11l=@"Cervical";
    s12l=@"Hyperlordosis";
    s13l=@"Not present";
    s14l=@"Anterior";
    s15l=@"Mild";
    s16l=@"Dextro";
    s17l=@"Scoliosis";
    s19l=@"Cervical";
    s18ll=@"Cervical";
    rs1l=@"null";
    rs2l=@"null";
    rs3l=@"null";
    rs4l=@"null";
    rs5l=@"null";
    rs6l=@"null";
    
    ls1l=@"null";
    ls2l=@"null";
    ls3l=@"null";
    ls4l=@"null";
    ls5l=@"null";
    ls6l=@"null";
	// Do any additional setup after loading the view.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    
    [self displaydata];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)reset:(id)sender {
    text1.text=@"";
    text2.text=@"";
    text3.text=@"";
    text4.text=@"";
    o1.text=@"";
    o2.text=@"";
    o3.text=@"";
    o4.text=@"";
    o5.text=@"";
    o6.text=@"";
    [s1 setSelectedSegmentIndex:0];
    s1l=@"Cervical";
    [s2 setSelectedSegmentIndex:0];
    s2l=@"Cervical";
    [s3 setSelectedSegmentIndex:0];
    s3l=@"Within normal limits";
    [s4 setSelectedSegmentIndex:0];
    s4l=@"Equal and intact without incident";
    [s5 setSelectedSegmentIndex:0];
    s5l=@"Cervical";
    [s6 setSelectedSegmentIndex:0];
    s6l=@"Two";
    [s7 setSelectedSegmentIndex:0];
    s7l=@"Cervical";
    [s8 setSelectedSegmentIndex:0];
    s8l=@"Two";
    [s9 setSelectedSegmentIndex:0];
    s9l=@"Cervical";
    [s10 setSelectedSegmentIndex:0];
    s10l=@"Negative for recent fracture";
    [s11 setSelectedSegmentIndex:0];
    s11l=@"Cervical";
    [s12 setSelectedSegmentIndex:0];
    s12l=@"Hyperlordosis";
    [s13 setSelectedSegmentIndex:0];
    s13l=@"Not present";
    [s14 setSelectedSegmentIndex:0];
    s14l=@"Anterior";
    [s15 setSelectedSegmentIndex:0];
    s15l=@"Mild";
    [s16 setSelectedSegmentIndex:0];
    s16l=@"Dextro";
    [s17 setSelectedSegmentIndex:0];
    s17l=@"Scoliosis";
    [s18 setSelectedSegmentIndex:0];
    s19l=@"Cervical";
    [s18another setSelectedSegmentIndex:0];
    s18ll=@"Cervical";
    [rs1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [rs2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [rs3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [rs4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [rs5 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [rs6 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
    [ls1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ls2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ls3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ls4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ls5 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ls6 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    rs1l=@"null";
    rs2l=@"null";
    rs3l=@"null";
    rs4l=@"null";
    rs5l=@"null";
    rs6l=@"null";
    
    ls1l=@"null";
    ls2l=@"null";
    ls3l=@"null";
    ls4l=@"null";
    ls5l=@"null";
    ls6l=@"null";
    
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
}
-(void)displaydata

{
    if([resultset count]>0)
    {
        text1.text=[resultset objectForKey:@"dermatome"];
        text2.text=[resultset objectForKey:@"level"];
        text3.text=[resultset objectForKey:@"osteophytes"];
        text4.text=[resultset objectForKey:@"subluxations"];
        o1.text=[resultset objectForKey:@"orthopedictest1"];
        o2.text=[resultset objectForKey:@"orthopedictest2"];
        o3.text=[resultset objectForKey:@"orthopedictest3"];
        o4.text=[resultset objectForKey:@"orthopedictest4"];
        o5.text=[resultset objectForKey:@"orthopedictest5"];
        o6.text=[resultset objectForKey:@"orthopedictest6"];
        if ([[resultset objectForKey:@"gender42"]isEqualToString:@"Cervical"])
        {
            [s1 setSelectedSegmentIndex:0];
            s1l=@"Cervical";
        }
        if ([[resultset objectForKey:@"gender42"]isEqualToString:@"Thoracic"] )
        {
            [s1 setSelectedSegmentIndex:1];
            s1l=@"Thoracic";
        }
        if ( [[resultset objectForKey:@"gender42"]isEqualToString:@"Lumbar"])
        {
            [s1 setSelectedSegmentIndex:2];
            s1l=@"Lumbar";
        }
        if ([[resultset objectForKey:@"gender43"]isEqualToString:@"Cervical"])
        {
            [s2 setSelectedSegmentIndex:0];
            s2l=@"Cervical";
        }
        if ([[resultset objectForKey:@"gender43"]isEqualToString:@"Thoracic"] )
        {
            [s2 setSelectedSegmentIndex:1];
            s2l=@"Thoracic";
        }
        if ( [[resultset objectForKey:@"gender43"]isEqualToString:@"Lumbar"])
        {
            [s2 setSelectedSegmentIndex:2];
            s2l=@"Lumbar";
        }
        if ( [[resultset objectForKey:@"gender44"]isEqualToString:@"Within normal limits"])
        {
            [s3 setSelectedSegmentIndex:0];
            s3l=@"Within normal limits";
        }
        if ( [[resultset objectForKey:@"gender44"]isEqualToString:@"Not Within Normal Limits"])
        {
            [s3 setSelectedSegmentIndex:1];
            s3l=@"Not Within Normal Limits" ;
        }
        
        if ( [[resultset objectForKey:@"gender45"]isEqualToString:@"Equal and intact without incident"])
        {
            [s4 setSelectedSegmentIndex:0];
            s4l=@"Equal and intact without incident";
        }
        if ( [[resultset objectForKey:@"gender45"]isEqualToString:@"Hypo-reflexic"])
        {
            [s4 setSelectedSegmentIndex:1];
            s4l=@"Hypo-reflexic";
        }
        if ( [[resultset objectForKey:@"gender45"]isEqualToString:@"Hyper-reflexic"])
        {
            [s4 setSelectedSegmentIndex:2];
            s4l=@"Hyper-reflexic";
        }
        if ([[resultset objectForKey:@"gender46"]isEqualToString:@"Cervical"])
        {
            [s5 setSelectedSegmentIndex:0];
            s5l=@"Cervical";
        }
        if ([[resultset objectForKey:@"gender46"]isEqualToString:@"Thoracic"] )
        {
            [s5 setSelectedSegmentIndex:1];
            s5l=@"Thoracic";
        }
        if ( [[resultset objectForKey:@"gender46"]isEqualToString:@"Lumbar"])
        {
            [s5 setSelectedSegmentIndex:2];
            s5l=@"Lumbar";
        }
        if ( [[resultset objectForKey:@"gender46"]isEqualToString:@"Sacroilliac Spine"])
        {
            [s5 setSelectedSegmentIndex:3];
            s5l=@"Sacroilliac Spine";
        }
        if ( [[resultset objectForKey:@"gender46"]isEqualToString:@"Other"])
        {
            [s5 setSelectedSegmentIndex:4];
            s5l=@"Other";
        }
        if ( [[resultset objectForKey:@"gender47"]isEqualToString:@"Two"])
        {
            [s6 setSelectedSegmentIndex:0];
            s6l=@"Two";
        }
        if ( [[resultset objectForKey:@"gender47"]isEqualToString:@"Three"])
        {
            [s6 setSelectedSegmentIndex:1];
            s6l=@"Three";
        }
        if ( [[resultset objectForKey:@"gender47"]isEqualToString:@"Four"])
        {
            [s6 setSelectedSegmentIndex:2];
            s6l=@"Four";
        }
        if ( [[resultset objectForKey:@"gender47"]isEqualToString:@"Five"])
        {
            [s6 setSelectedSegmentIndex:3];
            s6l=@"Five";
        }
        if ( [[resultset objectForKey:@"gender47"]isEqualToString:@"Six"])
        {
            [s6 setSelectedSegmentIndex:4];
            s6l=@"Six";
        }
        if ( [[resultset objectForKey:@"gender47"]isEqualToString:@"Seven"])
        {
            [s6 setSelectedSegmentIndex:5];
            s6l=@"Seven";
        }
        if ([[resultset objectForKey:@"gender48"]isEqualToString:@"Cervical"])
        {
            [s7 setSelectedSegmentIndex:0];
            s7l=@"Cervical";
        }
        if ([[resultset objectForKey:@"gender48"]isEqualToString:@"Thoracic"] )
        {
            [s7 setSelectedSegmentIndex:1];
            s7l=@"Thoracic";
        }
        if ( [[resultset objectForKey:@"gender48"]isEqualToString:@"Lumbar"])
        {
            [s7 setSelectedSegmentIndex:2];
            s7l=@"Lumbar";
        }
        if ( [[resultset objectForKey:@"gender48"]isEqualToString:@"SI"])
        {
            [s7 setSelectedSegmentIndex:3];
            s7l=@"SI";
        }
        if ( [[resultset objectForKey:@"gender48"]isEqualToString:@"Other"])
        {
            [s7 setSelectedSegmentIndex:4];
            s7l=@"Other";
        }
        if ( [[resultset objectForKey:@"gender49"]isEqualToString:@"Two"])
        {
            [s8 setSelectedSegmentIndex:0];
            s8l=@"Two";
        }
        if ( [[resultset objectForKey:@"gender49"]isEqualToString:@"Three"])
        {
            [s8 setSelectedSegmentIndex:1];
            s8l=@"Three";
        }
        if ( [[resultset objectForKey:@"gender49"]isEqualToString:@"Four"])
        {
            [s8 setSelectedSegmentIndex:2];
            s8l=@"Four";
        }
        if ( [[resultset objectForKey:@"gender49"]isEqualToString:@"Five"])
        {
            [s8 setSelectedSegmentIndex:3];
            s8l=@"Five";
        }
        if ( [[resultset objectForKey:@"gender49"]isEqualToString:@"Six"])
        {
            [s8 setSelectedSegmentIndex:4];
            s8l=@"Six";
        }
        if ( [[resultset objectForKey:@"gender49"]isEqualToString:@"Seven"])
        {
            [s8 setSelectedSegmentIndex:5];
            s8l=@"Seven";
        }
        if ([[resultset objectForKey:@"gender50"]isEqualToString:@"Cervical"])
        {
            [s9 setSelectedSegmentIndex:0];
            s9l=@"Cervical";
        }
        if ([[resultset objectForKey:@"gender50"]isEqualToString:@"Thoracic"] )
        {
            [s9 setSelectedSegmentIndex:1];
            s9l=@"Thoracic";
        }
        if ( [[resultset objectForKey:@"gender50"]isEqualToString:@"Lumbar"])
        {
            [s9 setSelectedSegmentIndex:2];
            s9l=@"Lumbar";
        }
        if ( [[resultset objectForKey:@"gender50"]isEqualToString:@"SI"])
        {
            [s9 setSelectedSegmentIndex:3];
            s9l=@"SI";
        }
        if ( [[resultset objectForKey:@"gender50"]isEqualToString:@"Other"])
        {
            [s9 setSelectedSegmentIndex:4];
            s9l=@"Other";
        }
        if ( [[resultset objectForKey:@"gender51"]isEqualToString:@"Negative for recent fracture"])
        {
            [s10 setSelectedSegmentIndex:0];
            s10l=@"Negative for recent fracture";
        }
        if( [[resultset objectForKey:@"gender51"]isEqualToString:@"Dislocation or gross osteopathology"])
        {
            [s10 setSelectedSegmentIndex:1];
            s10l=@"Dislocation or gross osteopathology";
        }
        if ( [[resultset objectForKey:@"gender51"]isEqualToString:@"Positive for fracture of the"])
        {
            [s10 setSelectedSegmentIndex:2];
            s10l=@"Positive for fracture of the";
        }
        
        if ([[resultset objectForKey:@"gender52"]isEqualToString:@"Cervical"])
        {
            [s11 setSelectedSegmentIndex:0];
            s11l=@"Cervical";
        }
        if ([[resultset objectForKey:@"gender52"]isEqualToString:@"Thoracic"] )
        {
            [s11 setSelectedSegmentIndex:1];
            s11l=@"Thoracic";
        }
        if ( [[resultset objectForKey:@"gender52"]isEqualToString:@"Lumbar"])
        {
            [s11 setSelectedSegmentIndex:2];
            s11l=@"Lumbar";
        }
        if ( [[resultset objectForKey:@"gender53"]isEqualToString:@"Hyperlordosis"])
        {
            [s12 setSelectedSegmentIndex:0];
            s12l=@"Hyperlordosis";
        }
        if ( [[resultset objectForKey:@"gender53"]isEqualToString:@"Hypolordosis"])
        {
            [s12 setSelectedSegmentIndex:1];
            s12l=@"Hypolordosis";
        }
        if ( [[resultset objectForKey:@"gender54"]isEqualToString:@"Not present"])
        {
            [s13 setSelectedSegmentIndex:0];
            s13l=@"Not present";
        }
        if ( [[resultset objectForKey:@"gender54"]isEqualToString:@"Present at the"])
        {
            [s13 setSelectedSegmentIndex:1];
            s13l=@"Present at the";
        }
        if ( [[resultset objectForKey:@"gender55"]isEqualToString:@"Anterior"])
        {
            [s14 setSelectedSegmentIndex:0];
            s14l=@"Anterior";
        }
        if ([[resultset objectForKey:@"gender55"]isEqualToString:@"Thoracic"] )
        {
            [s14 setSelectedSegmentIndex:1];
            s14l=@"Thoracic";
        }
        if ( [[resultset objectForKey:@"gender56"]isEqualToString:@"Mild"])
        {
            [s15 setSelectedSegmentIndex:0];
            s15l=@"Mild";
        }
        if ( [[resultset objectForKey:@"gender56"]isEqualToString:@"Moderate"])
        {
            [s15 setSelectedSegmentIndex:1];
            s15l=@"Moderate";
        }
        if ( [[resultset objectForKey:@"gender56"]isEqualToString:@"Severe"])
        {
            [s15 setSelectedSegmentIndex:2];
            s15l=@"Severe";
        }
        if ( [[resultset objectForKey:@"gender57"]isEqualToString:@"Dextro"])
        {
            [s16 setSelectedSegmentIndex:0];
            s16l=@"Dextro";
        }
        if ( [[resultset objectForKey:@"gender57"]isEqualToString:@"levo"])
        {
            [s16 setSelectedSegmentIndex:1];
            s16l=@"levo";
        }
        if ( [[resultset objectForKey:@"gender58"]isEqualToString:@"Scoliosis"])
        {
            [s17 setSelectedSegmentIndex:0];
            s17l=@"Scoliosis";
        }
        if ( [[resultset objectForKey:@"gender58"]isEqualToString:@"Towering"])
        {
            [s17 setSelectedSegmentIndex:1];
            s17l=@"Towering";
        }
        if ([[resultset objectForKey:@"gender59"]isEqualToString:@"Cervical"])
        {
            [s18 setSelectedSegmentIndex:0];
            s19l=@"Cervical";
        }
        if ([[resultset objectForKey:@"gender59"]isEqualToString:@"Thoracic"] )
        {
            [s18 setSelectedSegmentIndex:1];
            s19l=@"Thoracic";
        }
        if ( [[resultset objectForKey:@"gender59"]isEqualToString:@"Lumbar"])
        {
            [s18 setSelectedSegmentIndex:2];
            s19l=@"Lumbar";
        }
        if ([[resultset objectForKey:@"gender60"]isEqualToString:@"Cervical"])
        {
            [s18another setSelectedSegmentIndex:0];
            s18ll=@"Cervical";
        }
        if ([[resultset objectForKey:@"gender60"]isEqualToString:@"Thoracic"] )
        {
            [s18another setSelectedSegmentIndex:1];
            s18ll=@"Thoracic";
        }
        if ( [[resultset objectForKey:@"gender60"]isEqualToString:@"Lumbar"])
        {
            [s18another setSelectedSegmentIndex:2];
            s18ll=@"Lumbar";
        }
        if ([[resultset objectForKey:@"jacksonsr"]isEqualToString:@"Positive"])
        {
            [rs1 setSelectedSegmentIndex:0];
            rs1l=@"Positive";
        }
        if ([[resultset objectForKey:@"jacksonsr"]isEqualToString:@"Negative"])
        {
            [rs1 setSelectedSegmentIndex:1];
            rs1l=@"Negative";
        }
        if ([[resultset objectForKey:@"doublelegraiser"]isEqualToString:@"Positive"])
        {
            [rs2 setSelectedSegmentIndex:0];
            rs2l=@"Positive";
        }
        if ([[resultset objectForKey:@"doublelegraiser"]isEqualToString:@"Negative"])
        {
            [rs2 setSelectedSegmentIndex:1];
            rs2l=@"Negative";
        }
        if ([[resultset objectForKey:@"yeomansr"]isEqualToString:@"Positive"])
        {
            [rs3 setSelectedSegmentIndex:0];
            rs3l=@"Positive";
        }
        if ([[resultset objectForKey:@"yeomansr"]isEqualToString:@"Negative"])
        {
            [rs3 setSelectedSegmentIndex:1];
            rs3l=@"Negative";
        }
        if ([[resultset objectForKey:@"foraminalr"]isEqualToString:@"Positive"])
        {
            [rs4 setSelectedSegmentIndex:0];
            rs4l=@"Positive";
        }
        if ([[resultset objectForKey:@"foraminalr"]isEqualToString:@"Negative"])
        {
            [rs4 setSelectedSegmentIndex:1];
            rs4l=@"Negative";
        }
        if ([[resultset objectForKey:@"shoulderr"]isEqualToString:@"Positive"])
        {
            [rs5 setSelectedSegmentIndex:0];
            rs5l=@"Positive";
        }
        if ([[resultset objectForKey:@"shoulderr"]isEqualToString:@"Negative"])
        {
            [rs5 setSelectedSegmentIndex:1];
            rs5l=@"Negative";
        }
        if ([[resultset objectForKey:@"orthopedicr"]isEqualToString:@"Positive"])
        {
            [rs6 setSelectedSegmentIndex:0];
            rs6l=@"Positive";
        }
        if ([[resultset objectForKey:@"orthopedicr"]isEqualToString:@"Negative"])
        {
            [rs6 setSelectedSegmentIndex:1];
            rs6l=@"Negative";
        }
        if ([[resultset objectForKey:@"jacksonsl"]isEqualToString:@"Positive"])
        {
            [ls1 setSelectedSegmentIndex:0];
            ls1l=@"Positive";
        }
        if ([[resultset objectForKey:@"jacksonsl"]isEqualToString:@"Negative"])
        {
            [ls1 setSelectedSegmentIndex:1];
            
            ls1l=@"Negative";
        }
        if ([[resultset objectForKey:@"doublelegraisel"]isEqualToString:@"Positive"])
        {
            [ls2 setSelectedSegmentIndex:0];
            ls2l=@"Positive";
        }
        if ([[resultset objectForKey:@"doublelegraisel"]isEqualToString:@"Negative"])
        {
            [ls2 setSelectedSegmentIndex:1];
            ls2l=@"Negative";
        }
        if ([[resultset objectForKey:@"yeomansl"]isEqualToString:@"Positive"])
        {
            [ls3 setSelectedSegmentIndex:0];
            ls3l=@"Positive";
        }
        if ([[resultset objectForKey:@"yeomansl"]isEqualToString:@"Negative"])
        {
            [ls3 setSelectedSegmentIndex:1];
            ls3l=@"Negative";
        }
        if ([[resultset objectForKey:@"foraminall"]isEqualToString:@"Positive"])
        {
            [ls4 setSelectedSegmentIndex:0];
            ls4l=@"Positive";
        }
        if ([[resultset objectForKey:@"foraminall"]isEqualToString:@"Negative"])
        {
            [ls4 setSelectedSegmentIndex:1];
            ls4l=@"Negative";
        }
        if ([[resultset objectForKey:@"shoulderl"]isEqualToString:@"Positive"])
        {
            [ls5 setSelectedSegmentIndex:0];
            ls5l=@"Positive";
        }
        if ([[resultset objectForKey:@"shoulderl"]isEqualToString:@"Negative"])
        {
            [ls5 setSelectedSegmentIndex:1];
            ls5l=@"Negative";
        }
        if ([[resultset objectForKey:@"orthopedicl"]isEqualToString:@"Positive"])
        {
            [ls6 setSelectedSegmentIndex:0];
            ls6l=@"Positive";
        }
        if ([[resultset objectForKey:@"orthopedicl"]isEqualToString:@"Negative"])
        {
            [ls6 setSelectedSegmentIndex:1];
            ls6l=@"Negative";
        }
    }
    
}
-(void)dismissKeyboard
{
    printView.hidden = YES;
    [text1 resignFirstResponder];
    [text2 resignFirstResponder];
    [text3 resignFirstResponder];
    [text4 resignFirstResponder];
    [o1 resignFirstResponder];
    [o2 resignFirstResponder];
    [o3 resignFirstResponder];
    [o4 resignFirstResponder];
    [o5 resignFirstResponder];
    [o6 resignFirstResponder];
    
    
    
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
}
@end
