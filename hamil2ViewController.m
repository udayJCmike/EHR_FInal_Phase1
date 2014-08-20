//
//  hamil2ViewController.m
//  hamil
//
//  Created by Admin on 05/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "hamil2ViewController.h"
#import "hamil3ViewController.h"
#import "StringConstants.h"
#import "databaseurl.h"
#import "TWMessageBarManager.h"
#import "TestMoreViewController.h"
@interface hamil2ViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}

@end

@implementation hamil2ViewController
@synthesize slider1;
@synthesize recorddict;
@synthesize rightseg;
@synthesize leftseg;
@synthesize painlevel;
@synthesize moretestdict;


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



NSString *leftsegm,*rightsegm,*painscale;
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
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
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	//NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	//NSLog(@"begin editing");
}
- (IBAction)next:(id)sender
{
    //recorddict=[[NSMutableDictionary alloc]init];
    //temp1 = [painlevel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 = [right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 = [left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    a=1;
    if([painlevel.text isEqualToString:@""]){
        painlevel.text=@"null";
    }
    if([right.text isEqualToString:@""]){
        right.text=@"";
    }
    
    if([left.text isEqualToString:@""]){
        left.text=@"";
    }
    
    if (b1.selected)
    {
        [recorddict setValue:@"Right" forKey:@"jackright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"jackright"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Left" forKey:@"jackleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"jackleft"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"jacklocal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"jacklocal"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Foraminright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Foraminright"];
    }
    if (b5.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Foraminleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Foraminleft"];
    }
    if (b6.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"Foraminlocal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Foraminlocal"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Shoulderight"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Shoulderight"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Shoulderleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Shoulderleft"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"Shoulderlocal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Shoulderlocal"];
    }
    if (b10.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Georgeright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Georgeright"];
    }
    if (b11.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Georgeleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Georgeleft"];
    }
    if (b12.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"Georgelocal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Georgelocal"];
    }
    
    
    if (b15.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Bacodyright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Bacodyright"];
    }
    if (b16.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Bacodyleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Bacodyleft"];
    }
    if (b17.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"Bacodylocal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Bacodylocal"];
    }
    if (b18.selected)
    {
        [recorddict setValue:@"Right" forKey:@"relief"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"relief"];
    }
    if (b19.selected)
    {
        [recorddict setValue:@"Left" forKey:@"noreli"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"noreli"];
    }
    if (b20.selected)
    {
        [recorddict setValue:@"Right" forKey:@"cer_valright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"cer_valright"];
    }
    if (b21.selected)
    {
        [recorddict setValue:@"Left" forKey:@"cer_valleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"cer_valleft"];
    }
    if (b22.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"cer_vallocal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"cer_vallocal"];
    }
    if (b23.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Adsonsright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Adsonsright"];
    }
    if (b24.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Adsonsleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Adsonsleft"];
    }
    if (b25.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"Adsonslocal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Adsonslocal"];
    }
    if (b26.selected)
    {
        [recorddict setValue:@"Right" forKey:@"rustright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"rustright"];
    }
    if (b27.selected)
    {
        [recorddict setValue:@"Left" forKey:@"rustleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"rustleft"];
    }
    if (b28.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"rustlocal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"rustlocal"];
    }
    
    
    if((([temp2 length]>0)&&([du  otherfields:right.text ]==1))||([right.text length]==0))
    {
        if((([temp3 length]>0)&&([du  otherfields:left.text ]==1))||([left.text length]==0))
        {
            [recorddict setValue:[NSString stringWithFormat:@"%d",(int)roundf(slider1.value)] forKey:@"cervical_Painlevel"];
            [recorddict setValue:right.text forKey:@"Right text"];
            [recorddict setValue:left.text forKey:@"Left text"];
            [recorddict setValue:leftsegm forKey:@"Odonoleft"];
            [recorddict setValue:rightsegm forKey:@"Odonoright"];
            if(a==1)
            {
                [self performSegueWithIdentifier:@"hami4" sender:self];
            }
            
            // //NSLog(@"success%@",recorddict);
            
        }
        
        else
        {
            a=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid left text field."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
            
            
            
        }
    }
    else
    {
        a=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter valid right text field."
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
    leftsegm=@"pain on active ROM";
    rightsegm=@"pain on active ROM";
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
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
    
    du=[[databaseurl alloc]init];
    CGRect frame=CGRectMake(0.0,0.0, 200.0,10.0);
    //slider1=[[UISlider alloc]initWithFrame:frame];
    // slider1.minimumValue = 0.0;
    // slider1.maximumValue = 10.0;
    // slider1.continuous = YES;
    // [slider1 addTarget:self action:@selector(slidechange:) forControlEvents:UIControlEventValueChanged];
    painlevel.text=@"1";
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view.
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
}
-(void)dismissKeyboard{
    [right resignFirstResponder];
    [left resignFirstResponder];
    [painlevel resignFirstResponder];
    printView.hidden = YES;
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"hami4"])
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
    else  if([identifier isEqual:@"more1"])
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
    return NO;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"hami4"])
    {
        
        hamil3ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        //NSLog(@"recorddict in third %@",recorddict);
        //NSLog(@"recorddict count in third %d",[recorddict count]);
    }
    else if ([segue.identifier isEqualToString:@"more1"])
    {
        
        TestMoreViewController*destViewController = [segue destinationViewController];
        destViewController.moretestdict=moretestdict;
        //NSLog(@"moretest in third %@",moretestdict);
        //NSLog(@"moretest count in third %d",[moretestdict count]);
    }
    
}
- (void)dealloc {
    
    [painlevel release];
    [right release];
    [left release];
    [b1 release];
    [b2 release];
    [b3 release];
    [b4 release];
    [b5 release];
    [b6 release];
    [b7 release];
    [b8 release];
    [b9 release];
    [b10 release];
    [b11 release];
    [b12 release];
    [b13 release];
    [b14 release];
    [b15 release];
    [b16 release];
    [b17 release];
    [b18 release];
    [b19 release];
    [b20 release];
    [b21 release];
    [b22 release];
    [b23 release];
    [b24 release];
    [b25 release];
    [b26 release];
    [b27 release];
    [b28 release];
    [slider1 release];
    [rightseg release];
    [leftseg release];
    
    [super dealloc];
}
- (IBAction)leftsef:(id)sender {
    if(leftseg.selectedSegmentIndex==0){
        leftsegm=@"activerom";
        
    }
    else if(leftseg.selectedSegmentIndex==1){
        leftsegm=@"passiverom";
    }
}

- (IBAction)rightseg:(id)sender {
    if(rightseg.selectedSegmentIndex==0){
        rightsegm=@"activerom";
        
    }
    else if(rightseg.selectedSegmentIndex==1){
        rightsegm=@"passiverom";
    }
}

- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}
- (IBAction)moretest:(id)sender {
    moretestdict=[[NSMutableDictionary alloc]init];
    [moretestdict setValue:@"hamil2ViewController" forKey:@"fromclass"];
    
    [self performSegueWithIdentifier:@"more1" sender:self];
    // [self performSegueWithIdentifier:@"more1" sender:self];
}



- (IBAction)reset:(id)sender {
    right.text=@"";
    left.text=@"";
    
    painlevel.text=@"1";
    [slider1 setValue:1 animated:YES];
    
    leftsegm=@"pain on active ROM";
    rightsegm=@"pain on active ROM";
    b1.selected=NO;
    b2.selected=NO;
    b3.selected=NO;
    b4.selected=NO;
    b5.selected=NO;
    b6.selected=NO;
    b7.selected=NO;
    b8.selected=NO;
    b9.selected=NO;
    b10.selected=NO;
    b11.selected=NO;
    b12.selected=NO;
    b13.selected=NO;
    b14.selected=NO;
    b15.selected=NO;
    b16.selected=NO;
    b17.selected=NO;
    b18.selected=NO;
    b19.selected=NO;
    b20.selected=NO;
    b21.selected=NO;
    b22.selected=NO;
    b23.selected=NO;
    b24.selected=NO;
    b25.selected=NO;
    b26.selected=NO;
    b27.selected=NO;
    b28.selected=NO;
    [leftseg setSelectedSegmentIndex:0];
    [rightseg setSelectedSegmentIndex:0];
    [b1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b19 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b20 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b21 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b22 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b23 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b24 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b25 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b26 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b27 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b28 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
}
- (IBAction)slidechange:(id)sender {
    
    
    UISlider *MYslider = (UISlider *)sender;
    int val = (int)roundf(MYslider.value);
    
    
    //int val=(int)slider1.value ;
    
    if (val==10) {
        painlevel.text=@"Severe pain";
    }
    else if(val==0)
    {
        painlevel.text=@"No pain";
    }
    else
    {
        painlevel.text=[NSString stringWithFormat:@"%d",val];
    }
    
    
    
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
