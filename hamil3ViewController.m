//
//  hamil3ViewController.m
//  hamil
//
//  Created by Admin on 05/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "hamil3ViewController.h"
#import "hamil4ViewController.h"
#import "databaseurl.h"
#import "TestMoreViewController.h"
@interface hamil3ViewController (){
    
    
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}

@end

@implementation hamil3ViewController
@synthesize painlevel;
@synthesize  recorddict;
@synthesize slider1;
@synthesize moretestdict;
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    
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
- (IBAction)next:(id)sender {
    
    
    //recorddict=[[NSMutableDictionary alloc]init];
    temp = [painlevel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    a=1;
    if (b1.selected)
    {
        [recorddict setValue:@"Hump Remains" forKey:@"humpre"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"humpre"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Hump Dissap" forKey:@"humpdis"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"humpdis"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Pain When Bending towards Throatic Lession" forKey:@"shep_pain1"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"shep_pain1"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"Pain When Bending away from Throatic Lession" forKey:@"shep_pain2"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"shep_pain2"];
    }
    if (b5.selected)
    {
        [recorddict setValue:@"C/S Pain" forKey:@"c/s"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"c/s"];
    }
    if (b6.selected)
    {
        [recorddict setValue:@"T/S Pain" forKey:@"t/s"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"t/s"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Right" forKey:@"compright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"compright"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"Left" forKey:@"compleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"compleft"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"Localized" forKey:@"complocal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"complocal"];
    }
    
    
    [recorddict setValue:painlevel.text forKey:@"Thoracic painlevel"];
    
    if(a==1)
    {
        [self performSegueWithIdentifier:@"hami5" sender:self];
    }
    
    //  //NSLog(@"success%@",recorddict);
    
    
    
    
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
	// Do any additional setup after loading the view.
    painlevel.text=@"1";
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

    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"hami5"])
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
    else  if([identifier isEqual:@"more2"])
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
    
    if ([segue.identifier isEqualToString:@"hami5"])
    {
        
        hamil4ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        //NSLog(@"recorddict in fourth %@",recorddict);
        //NSLog(@"recorddict count in fourth %d",[recorddict count]);
    }
    else if ([segue.identifier isEqualToString:@"more2"])
    {
        
        TestMoreViewController*destViewController = [segue destinationViewController];
        destViewController.moretestdict=moretestdict;
        //NSLog(@"moretest in four %@",moretestdict);
        // //NSLog(@"moretest count in third %d",[moretestdict count]);
    }
    
    
}
- (void)dealloc {
    /* [painlevel release];
     [b1 release];
     [b2 release];
     [b3 release];
     [b4 release];
     [b5 release];
     [b6 release];
     [b7 release];
     [b8 release];
     [b9 release];
     [painlevel release];
     [slider1 release];*/
    [super dealloc];
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

- (IBAction)reset:(id)sender {
    b1.selected=NO;
    b2.selected=NO;
    b3.selected=NO;
    b4.selected=NO;
    b5.selected=NO;
    b6.selected=NO;
    b7.selected=NO;
    b8.selected=NO;
    b9.selected=NO;
    painlevel.text=@"1";
    [slider1 setValue:1 animated:YES];
    [b1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
}

- (IBAction)moretest:(id)sender {
    moretestdict=[[NSMutableDictionary alloc]init];
    [moretestdict setValue:@"hamil3ViewController" forKey:@"fromclass"];
    
    
    [self performSegueWithIdentifier:@"more2" sender:self];
}
- (IBAction)slidechange:(id)sender {
    UISlider *MYslider = (UISlider *)sender;
    int val = (int)roundf(MYslider.value);
    painlevel.text = [NSString stringWithFormat:@"%d", val];
    if (val==10) {
        painlevel.text=@"Severe Pain";
    }
    else if(val==0)
    {
        painlevel.text=@"No Pain";
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
