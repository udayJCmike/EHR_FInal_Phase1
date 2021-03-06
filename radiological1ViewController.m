//
//  radiological1ViewController.m
//  radiological
//
//  Created by deemsys on 3/3/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "radiological1ViewController.h"
#import "radiological2ViewController.h"
#import "radiologicalViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"
#import "radiological3ViewController.h"
#import "databaseurl.h"

@interface radiological1ViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation radiological1ViewController
@synthesize views;
@synthesize neg;





@synthesize  hypo;
@synthesize nor;
@synthesize hyper;
@synthesize  hyposeg;
@synthesize  norseg;
@synthesize  hyperseg;
@synthesize deg;
@synthesize degtext;
@synthesize  mild;
@synthesize moderate;
@synthesize severe;
@synthesize narrow;
@synthesize narrowtext;
@synthesize  anterior;
@synthesize  anteriortext;
@synthesize  sub;
@synthesize subtext;
@synthesize  sch;
@synthesize schtext;
@synthesize  foraminal;
@synthesize  foraminaltext;
@synthesize oster;
@synthesize osterseg;
@synthesize dlt;
@synthesize mi;
@synthesize mo;
@synthesize se;
@synthesize apex;
@synthesize apextext;
@synthesize soft;
@synthesize softtext;
@synthesize other;
@synthesize  othertext;
@synthesize recorddict;
@synthesize cancel;

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
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
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
- (IBAction)views:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        viewl=@"A-P";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        viewl=@"rlf";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        viewl=@"llf";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        viewl=@"rpo";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        viewl=@"lpo";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        viewl=@"P-A Chest";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        viewl=@"Lateral Chest";
    }
    
}
- (IBAction)hyper:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        hypersegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        hypersegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        hypersegl=@"Severe";
    }
    
}

- (IBAction)nor:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        norsegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        norsegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        norsegl=@"Severe";
    }
}
- (IBAction)hypo:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        hyposegl=@"Mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        hyposegl=@"Moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        hyposegl=@"Severe";
    }
    
}
- (IBAction)oster:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        ostersegl=@"mild";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        ostersegl=@"moderate";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        ostersegl=@"severe";
    }
    
}
- (IBAction)dlt:(id)sender {
    if ([sender selectedSegmentIndex]==0)
    {
        dltsegl=@"Dextro";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        dltsegl=@"Levo Scoliosis";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        dltsegl=@"Towering";
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
    if(nor.selected)
    {
        norseg. hidden=NO;
    }
    else{
        norseg.hidden=YES;
        
    }
    
    if(hypo.selected)
    {
        hyposeg. hidden=NO;
    }
    else{
        hyposeg.hidden=YES;
        
    }
    if(hyper.selected)
    {
        hyperseg. hidden=NO;
    }
    else{
        hyperseg.hidden=YES;
        
    }
    if(narrow.selected)
    {
        narrowtext. hidden=NO;
    }
    else{
        narrowtext.hidden=YES;
        
    }
    
    if(anterior.selected)
    {
        anteriortext. hidden=NO;
    }
    else{
        anteriortext.hidden=YES;
        
    }
    if(sub.selected)
    {
        subtext. hidden=NO;
    }
    else{
        subtext.hidden=YES;
        
    }
    
    if(sch.selected)
    {
        schtext. hidden=NO;
    }
    else{
        schtext.hidden=YES;
        
    }
    if(foraminal.selected)
    {
        foraminaltext. hidden=NO;
    }
    else{
        foraminaltext.hidden=YES;
        
    }
    
    if(oster.selected)
    {
        osterseg. hidden=NO;
    }
    else{
        osterseg.hidden=YES;
        
    }
    
    if(apex.selected)
    {
        apextext. hidden=NO;
    }
    else{
        apextext.hidden=YES;
        
    }
    
    if(soft.selected)
    {
        softtext. hidden=NO;
    }
    else{
        softtext.hidden=YES;
        
    }
    
    if(other.selected)
    {
        othertext. hidden=NO;
    }
    else{
        othertext.hidden=YES;
        
    }
    if(deg.selected)
    {
        degtext. hidden=NO;
    }
    else{
        degtext.hidden=YES;
        
    }
    
    
}


- (IBAction)next:(id)sender {
    //recorddict=[[NSMutableDictionary alloc]init];
    
    
    
    if(!deg.selected){
        degtext.text=@"";
    }
    if(!foraminal.selected){
        foraminaltext.text=@"";
    }
    if(!narrow.selected){
        narrowtext.text=@"";
    }
    if(!anterior.selected){
        anteriortext.text=@"";
    }
    if(!sub.selected){
        subtext.text=@"";
    }
    if(!sch.selected){
        schtext.text=@"";
    }
    if(!apex.selected){
        apextext.text=@"";
    }
    if(!soft.selected){
        softtext.text=@"";
    }
    
    if(!other.selected){
        othertext.text=@"";
    }
    
    if(neg.selected)
    {
        
        [recorddict setValue:@"Negative for Osteopathology"forKey:@"T_negative1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_negative1"];
    }
    
    
    if(hypo.selected)
    {
        
        
        [recorddict  setValue:@"Hypokyphosis" forKey:@"T_hypo1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_hypo1"];
    }
    
    
    if(nor.selected)
    {
        
        
        [recorddict setValue:@"Normal kyphosis" forKey:@"T_normal1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_normal1"];
        
    }
    if(hyper.selected)
    {
        
        
        [recorddict  setValue:@"Hyperkyphosis" forKey:@"T_hyper1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_hyper1"];
    }
    
    if(deg.selected)
    {
        
        
        [recorddict setValue:@"Degenerative joint disease at:" forKey:@"T_degen1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_degen1"];
        
    }
    if(mild.selected)
    {
        
        
        [recorddict  setValue:@"Mild" forKey:@"T_mild1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_mild1"];
    }
    if(moderate.selected)
    {
        
        
        [recorddict  setValue:@"Moderate" forKey:@"T_moderate1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_moderate1"];
        
    }
    if(severe.selected)
    {
        
        [recorddict setValue:@"Severe" forKey:@"T_severe1"];
    }
    else
    {
        [recorddict  setValue:@"null" forKey:@"T_severe1"];
    }
    if(narrow.selected)
    {
        
        
        [recorddict setValue:@"Narrowed disc space at:" forKey:@"T_narrow11"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_narrow11"];
        
    }
    if(anterior.selected)
    {
        
        
        [recorddict  setValue:@"Anterior body osteophytes at:"forKey:@"T_anterior11"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_anterior11"];
    }
    if(sub.selected)
    {
        
        
        [recorddict  setValue:@"Subchondral sclerosis of" forKey:@"T_sub11"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_sub11"];
        
    }
    if(sch.selected)
    {
        
        [recorddict setValue:@"Schmorls nodes at:"
                      forKey:@"T_sch11"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_sch11"];
    }
    if(oster.selected)
    {
        
        
        [recorddict  setValue:@"Osteoporosis" forKey:@"T_oster11"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_oster11"];
    }
    
    if(mi.selected)
    {
        
        
        [recorddict setValue:@"Mild" forKey:@"T_mild11T"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_mild11T"];
        
    }
    if(mo.selected)
    {
        
        
        [recorddict  setValue:@"Moderate" forKey:@"T_moderate11T"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_moderate11T"];
    }
    if(se.selected)
    {
        
        
        [recorddict  setValue:@"Severe" forKey:@"T_severe11T"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_severe11T"];
        
    }
    
    if(apex.selected)
    {
        
        
        [recorddict setValue:@"Apex at:" forKey:@"T_apex11"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_apex11"];
        
    }
    if(soft.selected)
    {
        
        
        [recorddict  setValue:@"Soft tissue edema of" forKey:@"T_soft11"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_soft11"];
    }
    if(other.selected)
    {
        
        
        [recorddict  setValue:@"Other" forKey:@"T_other11"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_other11"];
        
    }
    if(foraminal.selected)
    {
        
        
        [recorddict  setValue:@"Foraminal enchroachment b/w:" forKey:@"T_foraminal1"];
    }
    else
    {
        
        [recorddict  setValue:@"null" forKey:@"T_foraminal1"];
        
    }
    
    
    
    a=1;
    temp1 = degtext.text;
    temp2 = foraminaltext.text;
    temp3 = schtext.text;
    temp4 = apextext.text;
    temp5 = softtext.text;
    temp6=othertext.text;
    temp7=narrowtext.text;
    temp8=anteriortext.text;
    temp9=subtext.text;
    
    if((([temp1 length]>0)&&([du otherfields:temp1]==1))||([temp1 length]==0))
    {
        if((([temp7 length]>0)&&([du otherfields:temp7 ]==1))||([temp7 length]==0))
        {
            if((([temp3 length]>0)&&([du otherfields:temp3 ]==1))||([temp3 length]==0))
            {
                if((([temp8 length]>0)&&([du otherfields:temp8 ]==1))||([temp8 length]==0))
                {
                    if((([temp2 length]>0)&&([du otherfields:temp2 ]==1))||([temp2 length]==0))
                    {
                        if((([temp9 length]>0)&&([du otherfields:temp9]==1))||([temp9 length]==0))
                        {
                            if((([temp4 length]>0)&&([du otherfields:temp4]==1))||([temp4 length]==0))
                            {
                                if((([temp5 length]>0)&&([du otherfields:temp5]==1))||([temp5 length]==0))
                                {
                                    if((([temp6 length]>0)&&([du otherfields:temp6]==1))||([temp6 length]==0))
                                    {
                                        
                                        
                                        
                                        if([degtext.text isEqualToString:@""]){
                                            degtext.text=@"";
                                        }
                                        if([foraminaltext.text isEqualToString:@""]){
                                            foraminaltext.text=@"";
                                        }
                                        if([narrowtext.text isEqualToString:@""]){
                                            narrowtext.text=@"";
                                        }
                                        if([anteriortext.text isEqualToString:@""]){
                                            anteriortext.text=@"";
                                        }
                                        if([subtext.text isEqualToString:@""]){
                                            subtext.text=@"";
                                        }
                                        if([schtext.text isEqualToString:@""]){
                                            schtext.text=@"";
                                        }
                                        if([apextext.text isEqualToString:@""]){
                                            apextext.text=@"";
                                        }
                                        if([softtext.text isEqualToString:@""]){
                                            softtext.text=@"";
                                        } if([othertext.text isEqualToString:@""]){
                                            othertext.text=@"";
                                        }
                                        
                                        [recorddict setValue:ostersegl forKey:@"T_oster"];
                                        [recorddict setValue:subtext.text forKey:@"T_sub"];
                                        [recorddict setValue:schtext.text forKey:@"T_sch"];
                                        [recorddict setValue:apextext.text forKey:@"T_apex"];
                                        [recorddict setValue:softtext.text forKey:@"T_soft"];
                                        [recorddict setValue:othertext.text forKey:@"T_other"];
                                        [recorddict setValue:narrowtext.text forKey:@"T_narrow"];
                                        
                                        [recorddict setValue:anteriortext.text forKey:@"T_anterior"];
                                        [recorddict setValue:viewl forKey:@"T_views"];
                                        [recorddict setValue:hyposegl forKey:@"T_hypo"];
                                        [recorddict setValue:norsegl forKey:@"T_normal"];
                                        [recorddict setValue:hypersegl forKey:@"T_hyper"];
                                        [recorddict setValue:foraminaltext.text forKey:@"T_foraminal"];
                                        [recorddict setValue:dltsegl forKey:@"T_dlt"];
                                        ;
                                        [recorddict setValue:degtext.text forKey:@"T_Degenerative joint disease"];
                                        
                                        [recorddict setValue:degsegl forKey:@"T_deg"];
                                        
                                        
                                        
                                        if(a==1)
                                        {
                                            [self performSegueWithIdentifier:@"radio2" sender:self];
                                        }
                                        
                                    }
                                    else
                                    {
                                        a=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid  other text."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                        
                                    }
                                }
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid soft text."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                }
                            }
                            else
                            {
                                a=0;
                                
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid apex."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                                
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid subchondral sclerosis of text."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid  foraminal text."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                        
                        
                        
                    }
                    
                }
                else
                {
                    a=0;
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid anterior vertebral body osteophytes at text."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                    
                    
                }
                
                
            }
            else
            {
                a=0;
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid sch text."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
                
                
            }
        }
        else
        {
            a=0;
            
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid narrowed disc space at text."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
            
            
        }
    }
    else
    {
        a=0;
        
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter valid deg text."
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



- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    ////NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"radio2"])
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
    
    
    if ([segue.identifier isEqualToString:@"radio2"])
    {
        
        
        radiological2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        //NSLog(@"recorddict in radio second %@",recorddict);
        //NSLog(@"size of recorddict:%d",[recorddict count]);
        
    }
    
    
    
}

- (void)viewDidLoad

{
    [super viewDidLoad];
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
    
    
    //recorddict=[[NSMutableDictionary alloc]init];
    hyposeg.hidden=YES;
    norseg.hidden=YES;
    hyperseg.hidden=YES;
    degtext.hidden=YES;
    narrowtext .hidden=YES;
    anteriortext .hidden=YES;
    subtext .hidden=YES;
    schtext .hidden=YES;
    foraminaltext.hidden=YES;
    osterseg.hidden=YES;
    apextext .hidden=YES;
    softtext .hidden=YES;
    othertext .hidden=YES;
    viewl=@"A-P";
    hyposegl=@"Mild";
    hypersegl=@"Mild";
    norsegl=@"Mild";
    ostersegl=@"mild";
    dltsegl=@"Dextro";
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    
	// Do any additional setup after loading the view.
}
-(void)dismissKeyboard{
    [degtext resignFirstResponder];
    [foraminaltext resignFirstResponder];
    [schtext resignFirstResponder];
    [apextext resignFirstResponder];
    [softtext resignFirstResponder];
    [othertext resignFirstResponder];
    [narrowtext resignFirstResponder];
    [anteriortext resignFirstResponder];
    [subtext resignFirstResponder];
    printView.hidden = YES;
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

- (IBAction)reset:(id)sender {
    [views setSelectedSegmentIndex:0];
    [hyperseg setSelectedSegmentIndex:0];
    [norseg setSelectedSegmentIndex:0];
    [hyposeg setSelectedSegmentIndex:0];
    [osterseg setSelectedSegmentIndex:0];
    [dlt setSelectedSegmentIndex:0];
    
    degtext.text=@"";
    foraminaltext.text=@"";
    schtext.text=@"";
    apextext.text=@"";
    softtext.text=@"";
    othertext.text=@"";
    narrowtext.text=@"";
    anteriortext.text=@"";
    subtext.text=@"";
    hyposeg.hidden=YES;
    norseg.hidden=YES;
    hyperseg.hidden=YES;
    degtext.hidden=YES;
    narrowtext .hidden=YES;
    anteriortext .hidden=YES;
    subtext .hidden=YES;
    schtext .hidden=YES;
    foraminaltext.hidden=YES;
    osterseg.hidden=YES;
    apextext .hidden=YES;
    softtext .hidden=YES;
    othertext .hidden=YES;
    viewl=@"A-P";
    hyposegl=@"Mild";
    hypersegl=@"Mild";
    norsegl=@"Mild";
    ostersegl=@"mild";
    dltsegl=@"Dextro";
    
    nor.selected=NO;
    hypo.selected=NO;
    hyper.selected=NO;
    narrow.selected=NO;
    anterior.selected=NO;
    sub.selected=NO;
    sch.selected=NO;
    foraminal.selected=NO;
    oster.selected=NO;
    apex.selected=NO;
    soft.selected=NO;
    other.selected=NO;
    deg.selected=NO;
    neg.selected=NO;
    mild.selected=NO;
    moderate.selected=NO;
    severe.selected=NO;
    mi.selected=NO;
    mo.selected=NO;
    se.selected=NO;
    [views setSelectedSegmentIndex:0];
    [hyperseg setSelectedSegmentIndex:0];
    [norseg setSelectedSegmentIndex:0];
    [hyposeg setSelectedSegmentIndex:0];
    [osterseg setSelectedSegmentIndex:0];
    [dlt setSelectedSegmentIndex:0];
    [mi setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [neg setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [mo setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [severe setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [mild setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [moderate setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [se setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [nor setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [hypo setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [hyper setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [narrow setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [anterior setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [sub setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [sch setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [foraminal setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [oster setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [apex setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [soft setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [other setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [deg setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
}
- (void)dealloc {
    [cancel release];
    [super dealloc];
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

@end
