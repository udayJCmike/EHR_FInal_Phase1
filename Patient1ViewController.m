//
//  Patient1ViewController.m
//  EHR
//
//  Created by Admin on 29/04/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "Patient1ViewController.h"
#import "Patient2ViewController.h"
#import "QuadrupleVisualAnalogueScale.h"

@interface Patient1ViewController ()

@end

@implementation Patient1ViewController
@synthesize recorddict;
@synthesize textview1;
@synthesize addmore;
@synthesize next;
@synthesize reset;
@synthesize scrollview;
@synthesize resultset;
@synthesize imageview;
@synthesize staff;
int navigationcheck;
int success;
int success1;
int changesize;
int c;
NSMutableArray *symptomresult;
- (IBAction)reset:(id)sender {
    textview1.text=@"";
    for (UIScrollView *view  in [self.scrollview subviews]){
        if ([view isKindOfClass:[UITextView class]]) {
            UITextView *text1=(UITextView*)view;
            text1.text=@"";
        }
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
        inc=1;
    x=178;
    y=185;
    [scrollview setScrollEnabled:YES];
    changesize=1801;
    [scrollview setContentSize:CGSizeMake(768, changesize)];
    [imageview setImage:[UIImage imageNamed:@"BG.png"]];
    // [scrollview setContentSize:CGSizeMake(768, changesize)];
    CGSize x1 = imageview.image.size;
    x1.height= changesize;
    x1.width=x1.width;
    imageview.frame=CGRectMake(0.0 ,0.0, x1.width, changesize);
    //    [self.scrollview addSubview:imageview];
    textview1.delegate=self;
    navigationcheck=1;
    success=1;
    success1=1;
    texttag=11;
    symptomdata=[[NSMutableArray alloc]init];
    [self displaydata];
}
-(void)displaydata
{
    
    if ([resultset count]>0)
    {
        symptomresult=[resultset objectForKey:@"symptoms"];
        textview1.text=[symptomresult objectAtIndex:0];
        for (int j=1;j<[symptomresult count]; j++) {
            //            NSLog(@"method called");
            [self addfields];
        }
        
    }
}
-(void)viewWillAppear:(BOOL)animated
{
    //   navigationcheck=1;
    //    success=1;
    //    success1=1;
}
- (IBAction)save:(id)sender
{
    c=1;
    symptomdata=[[NSMutableArray alloc]init];
    for (UIScrollView *view in [self.scrollview subviews]) {
        if ([view isKindOfClass:[UITextView class]]) {
            UITextView *text1=(UITextView*)view;
            NSString *temp=[text1.text stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            temp=[temp stringByReplacingOccurrencesOfString:@"\r" withString:@""];
            temp=[temp stringByReplacingOccurrencesOfString:@"\t" withString:@""];
            if ([temp length]>0)
            {
                c=1;
                [symptomdata addObject:temp];
                
            }
            else
            {
                c=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Symptoms shouldnot be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                break;
            }
        }
        
    }
    if (c==1)
    {
        [recorddict setObject:symptomdata forKey:@"symptomdatas"];
        [self  performSegueWithIdentifier:@"Patientdetailto2" sender:self];
    }
    
}
-(void)back
{
    
}
-(void)textViewDidBeginEditing:(UITextView *)textView
{
    
    
    reset.hidden=YES;
    next.hidden=YES;
    //    UIButton *home = [UIButton buttonWithType:UIButtonTypeCustom];
    //    UIImage *homeImage = [UIImage imageNamed:@" "]  ;
    //    [home setBackgroundImage:homeImage forState:UIControlStateNormal];
    //    [home addTarget:self action:@selector(back)
    //   forControlEvents:UIControlEventTouchUpInside];
    //    home.frame = CGRectMake(0, 0, 50, 30);
    //    UIBarButtonItem *cancelButton = [[[UIBarButtonItem alloc]
    //                                      initWithCustomView:home] autorelease];
    //    self.navigationItem.leftBarButtonItem = cancelButton;
    //    self.navigationController.navigationItem.hidesBackButton = YES;
    //    self.navigationController.navigationItem.leftBarButtonItem = nil;
    self.navigationItem.leftBarButtonItem = nil;
    self.navigationItem.hidesBackButton = YES;
    NSLog(@"text ciew at begin %@",textView.text);
    
    [recorddict setValue:textView.text forKey:@"oldsymptom"];
    
}
- (void)textViewDidEndEditing:(UITextView *)textView
{
    
    int currenttv=textView.tag;
    //    NSLog(@"tag end %d",textsame);
    NSLog(@"tag end tag %d",textView.tag);
    
    NSString* textString=[textView text];
    textString = [textString stringByReplacingOccurrencesOfString:@" " withString:@""];
    if ([textString length]>0)
    {
        next.hidden=NO;
        reset.hidden=NO;
        self.navigationItem.leftBarButtonItem = self.navigationItem.backBarButtonItem;
        self.navigationItem.hidesBackButton = NO;
        //            self.navigationController.navigationItem.hidesBackButton=NO;
        //            self.navigationController.navigationItem.leftBarButtonItem = self.navigationItem.backBarButtonItem;
        
        
        NSLog(@"tag end tag %d",textView.tag);
        
        [recorddict setValue:textView.text forKey:@"symptomtext"];
        navigationcheck=0;
        [self performSegueWithIdentifier:@"quadruple" sender:self];
    }
    else
    {
        success=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Symptoms shouldnot be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    
    
    
    
    
    
    
}
-(void)addfields
{
    UITextView *mytv  = [[UITextView alloc] initWithFrame:CGRectMake(178, y, 328, 87)];
    //    [mytv setBackgroundColor:[UIColor grayColor]];
    [mytv.layer setBorderColor:[[[UIColor grayColor] colorWithAlphaComponent:0.5] CGColor]];
    [mytv.layer setBorderWidth:2.0];
    mytv.delegate=self;
    
    //The rounded corner part, where you specify your view's corner radius:
    mytv.layer.cornerRadius = 5;
    mytv.clipsToBounds = YES;
    mytv.tag = 11+inc;
    texttag=mytv.tag;
    @try {
        if ([symptomresult count]>1) {
            mytv.text=[symptomresult objectAtIndex:inc];
            
        }
        else
        {
            
        }
    }
    @catch (NSException *e) {
        NSLog(@"index not found");
    }
    @finally {
        
    }
    
    [self createbutton]; //create button for last created textview
    [self removebutton];// delete previously created button except new one
    
    
    
    //changing next button location dynamically
    
    CGRect btFrame = reset.frame;
    btFrame.origin.x = 180;
    btFrame.origin.y = y+140;
    reset.frame = btFrame;
    
    CGRect btFrame1 = next.frame;
    btFrame1.origin.x = 425;
    btFrame1.origin.y = y+140;
    next.frame = btFrame1;
    
    
    y=y+110;
    inc++;
    
    [self.scrollview addSubview:mytv];
    [scrollview setScrollEnabled:YES];
    
    [scrollview setContentSize:CGSizeMake(768, changesize)];
    imageview.frame=CGRectMake(0.0 ,0.0, imageview.image.size.width, changesize);
    changesize=changesize+87;
}
- (IBAction)addsymptom:(id)sender
{
    if ([textview1 isFirstResponder])//check previous textview keyboard is present or not
    {
        
        if ([textview1.text length]>0)
        {
            
            [textview1 resignFirstResponder];
        }
        else
        {
            success=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Symptoms shouldnot be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
    }
    else
    {
        
        for (UIScrollView *view in [self.scrollview subviews])
        {
            if ([view isKindOfClass:[UITextView class]])
            {
                if (view.tag <= texttag)
                {
                    NSString *tempp1;
                    UITextView *textvalue = (UITextView*)[self.view viewWithTag:view.tag];
                    NSString* textString=[textvalue text];
                    tempp1 = [textString stringByReplacingOccurrencesOfString:@" " withString:@""];
                    if ([tempp1 length]>0) {
                        success=1;
                        NSLog(@"fields not empty");
                        continue;
                    }
                    else
                    {
                        success=0;//some textviews are empty
                        NSLog(@"fields  empty");
                        break;
                        
                    }
                    
                }
            }
            
        }
        for (UIScrollView *view in [self.scrollview subviews])
        {
            if ([view isKindOfClass:[UITextView class]])
            {
                if (view.tag <= texttag)
                {
                    NSString *tempp1;
                    UITextView *textvalue = (UITextView*)[self.view viewWithTag:view.tag];
                    NSString* textString=[textvalue text];
                    tempp1 = [textString stringByReplacingOccurrencesOfString:@" " withString:@""];
                    if ([tempp1 length]>0)
                    {
                        for (UIScrollView *view1 in [self.scrollview subviews])
                        {
                            if ([view1 isKindOfClass:[UITextView class]])
                            {
                                if (view1.tag != view.tag)
                                {
                                    // NSLog(@"tag view1 %@ view tag %@",view1.tag,view.tag);
                                    NSString *tempp2;
                                    UITextView *textvalue1 = (UITextView*)[self.view viewWithTag:view1.tag];
                                    NSString* textString1=[textvalue1 text];
                                    tempp2 = [textString1 stringByReplacingOccurrencesOfString:@" " withString:@""];
                                    if ([tempp2 length]>0)
                                    {
                                        if ([textString isEqualToString:textString1])
                                        {
                                            success1=0;
                                            NSLog(@"fields same");
                                            break;
                                        }
                                        else
                                        {
                                            success1=1;
                                            NSLog(@"fields not same");
                                            continue;
                                        }
                                        
                                    }
                                    
                                }
                            }
                            
                        }
                        
                    }
                    
                    
                }
            }
            
        }
        
        if ((success==1)&&(success1==1))
        {
            
            
            
            UITextView *mytv  = [[UITextView alloc] initWithFrame:CGRectMake(178, y, 328, 87)];
            //    [mytv setBackgroundColor:[UIColor grayColor]];
            [mytv.layer setBorderColor:[[[UIColor grayColor] colorWithAlphaComponent:0.5] CGColor]];
            [mytv.layer setBorderWidth:2.0];
            mytv.delegate=self;
            
            //The rounded corner part, where you specify your view's corner radius:
            mytv.layer.cornerRadius = 5;
            mytv.clipsToBounds = YES;
            mytv.tag = 11+inc;
            texttag=mytv.tag;
            @try {
                if ([symptomresult count]>1) {
                    mytv.text=[symptomresult objectAtIndex:inc];
                    
                }
                else
                {
                    
                }
            }
            @catch (NSException *e) {
                NSLog(@"index not found");
            }
            @finally {
                
            }
            
            [self createbutton]; //create button for last created textview
            [self removebutton];// delete previously created button except new one
            
            
            
            //changing next button location dynamically
            
            CGRect btFrame = reset.frame;
            btFrame.origin.x = 180;
            btFrame.origin.y = y+140;
            reset.frame = btFrame;
            
            CGRect btFrame1 = next.frame;
            btFrame1.origin.x = 425;
            btFrame1.origin.y = y+140;
            next.frame = btFrame1;
            
            
            y=y+110;
            inc++;
            
            [self.scrollview addSubview:mytv];
            [scrollview setScrollEnabled:YES];
            
            [scrollview setContentSize:CGSizeMake(768, changesize)];
            changesize=changesize+87;
            
            //    CGFloat width = self.scrollview.bounds.size.width;
            //    CGFloat height = CGRectGetMaxY(mytv.frame);
            //    self.scrollview.contentSize = CGSizeMake(width, height);
            
        }//end of success if block
        else
        {
            if (success==0)
            {
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Symptoms shouldnot be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
            else if (success1==0)
            {
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Symptoms shouldnot be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
            
        }
    }//end of else block
}
-(void)createbutton
{
    UIButton *mybut = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    
    mybut.frame = CGRectMake(593, y+32, 110, 35);
    [mybut setTitle:@"Cancel" forState:UIControlStateNormal];
    [mybut setBackgroundImage:[UIImage imageNamed:@"bgbutton.png"] forState:UIControlStateNormal];
    [mybut setTintColor:[UIColor whiteColor]];
    mybut.titleLabel.font=[UIFont fontWithName:@"Helvetica Neua" size:17.0];
    mybut.tag = 51+inc;
    buttontag=mybut.tag;
    [mybut addTarget:self  action:@selector(clearmethod) forControlEvents:UIControlEventTouchUpInside];
    [self.scrollview addSubview:mybut];
    
    
    
}
-(void)removebutton
{
    
    //    UITextView *temptv=(UITextView*)[self.scrollview viewWithTag:texttag];
    
    //    NSLog(@"button exists");
    
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UIButton class]])
        {
            if (view.tag == buttontag-1)
            {
                [view setHidden:YES];
                
                
            }
        }
        
    }
    
    
}
-(void)clearmethod
{
    
    CGRect btFrame = reset.frame;
    btFrame.origin.x = 180;
    btFrame.origin.y = y-100;
    reset.frame = btFrame;
    
    CGRect btFrame1 = next.frame;
    btFrame1.origin.x = 425;
    btFrame1.origin.y = y-100;
    next.frame = btFrame1;
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UITextView class]])
        {
            if (view.tag == texttag)
            {
                [view removeFromSuperview];
                texttag--;
                y=y-110;
                
            }
        }
        
    }
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UIButton class]])
        {
            if (view.tag == buttontag)
            {
                [view removeFromSuperview];
                buttontag--;
                
                
            }
        }
        
    }
    for (UIScrollView *view in [self.scrollview subviews])
    {
        if ([view isKindOfClass:[UIButton class]])
        {
            if ((view.tag == buttontag)&&(buttontag>=52))
            {
                [view setHidden:NO];
                
                
                
            }
        }
        
    }
    [scrollview setScrollEnabled:YES];
    
    [scrollview setContentSize:CGSizeMake(768, changesize)];
    imageview.frame=CGRectMake(0.0 ,0.0, imageview.image.size.width, changesize);
    changesize=changesize-87;
    
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    if ([segue.identifier isEqualToString:@"Patientdetailto2"])
    {
        
        
        Patient2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        destViewController.staff=staff;
        //            destViewController.delegate=self;
        
    }
    
    if ([segue.identifier isEqualToString:@"quadruple"])
    {
        
        QuadrupleVisualAnalogueScale *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in quad %@",recorddict);
        
    }
    
    
    
    
}
- (void)dealloc
{
    
    
    [super dealloc];
}
@end
