//
//  FootAnkleViewController2.m
//  FootAnkleQuestionnaire
//
//  Created by deemsys on 3/5/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "FootAnkleViewController2.h"
#import "FootAnkleViewController3.h"
#import "staffautocheckViewController.h"
@interface FootAnkleViewController2 ()
{
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation FootAnkleViewController2
@synthesize recorddict;
@synthesize resultset;
@synthesize cancel;
@synthesize staff;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (IBAction)segbut7:(id)sender {
    if(seg7.selectedSegmentIndex==0){
        texty18=@"1";
    }
    else if(seg7.selectedSegmentIndex==1){
        texty18=@"2";
    }
    else if(seg7.selectedSegmentIndex==2){
        texty18=@"3";
    }
}

- (IBAction)segbut6:(id)sender {
    if(seg6.selectedSegmentIndex==0){
        texty17=@"1";
    }
    else if(seg6.selectedSegmentIndex==1){
        texty17=@"2";
    }
    else if(seg6.selectedSegmentIndex==2){
        texty17=@"3";
    }
}


- (IBAction)segbut5:(id)sender {
    if(seg5.selectedSegmentIndex==0){
        texty16=@"1";
    }
    else if(seg5.selectedSegmentIndex==1){
        texty16=@"2";
    }
    else if(seg5.selectedSegmentIndex==2){
        texty16=@"3";
    }
}


- (IBAction)segbut4:(id)sender {
    if(seg4.selectedSegmentIndex==0){
        texty15=@"1";
    }
    else if(seg4.selectedSegmentIndex==1){
        texty15=@"2";
    }
    else if(seg4.selectedSegmentIndex==2){
        texty15=@"3";
    }
}








- (IBAction)segbut3:(id)sender {
    if(seg3.selectedSegmentIndex==0){
        texty14=@"1";
    }
    else if(seg3.selectedSegmentIndex==1){
        texty14=@"2";
    }
    else if(seg3.selectedSegmentIndex==2){
        texty14=@"3";
    }
}




- (IBAction)segbut2:(id)sender {
    if(seg2.selectedSegmentIndex==0){
        texty13=@"1";
    }
    else if(seg2.selectedSegmentIndex==1){
        texty13=@"2";
    }
    else if(seg2.selectedSegmentIndex==2){
        texty13=@"3";
    }
    else if(seg2.selectedSegmentIndex==3){
        texty13=@"4";
    }
    else if(seg2.selectedSegmentIndex==4){
        texty13=@"5";
    }
    else if(seg2.selectedSegmentIndex==5){
        texty13=@"6";
    }
    else if(seg2.selectedSegmentIndex==6){
        texty13=@"7";
    }
}



- (IBAction)segbut1:(id)sender {
    if(seg1.selectedSegmentIndex==0){
        texty12=@"1";
    }
    else if(seg1.selectedSegmentIndex==1){
        texty12=@"2";
    }
    else if(seg1.selectedSegmentIndex==2){
        texty12=@"3";
    }
    else if(seg1.selectedSegmentIndex==3){
        texty12=@"4";
    }
    else if(seg1.selectedSegmentIndex==4){
        texty12=@"5";
    }
    else if(seg1.selectedSegmentIndex==5){
        texty12=@"6";
    }
    else if(seg1.selectedSegmentIndex==6){
        texty12=@"7";
    }
}
- (void)viewDidLoad
{
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    [super viewDidLoad];
    
    texty18=@"null";
    texty17=@"null";
    texty16=@"null";
    texty15=@"null";
    texty14=@"null";
    texty13=@"null";
    texty12=@"null";
    texty1=@"null";
    
    if ([resultset count]>0)
    {
        if([[resultset objectForKey:@"stand"]isEqualToString: @"1"])
        {
            texty12=@"1";
            [seg1 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"stand"]isEqualToString: @"2"])
        {
            texty12=@"2";
            [seg1 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"stand"]isEqualToString: @"3"])
        {
            texty12=@"3";
            [seg1 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"stand"]isEqualToString: @"4"])
        {
            texty12=@"4";
            [seg1 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"stand"]isEqualToString: @"5"])
        {
            texty12=@"5";
            [seg1 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"stand"]isEqualToString: @"6"])
        {
            texty12=@"6";
            [seg1 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"stand"]isEqualToString: @"7"])
        {
            texty12=@"7";
            [seg1 setSelectedSegmentIndex:6];
        }
        if([[resultset objectForKey:@"fewminutes"]isEqualToString: @"1"])
        {
            texty13=@"1";
            [seg2 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"fewminutes"]isEqualToString: @"2"])
        {
            texty13=@"2";
            [seg2 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"fewminutes"]isEqualToString: @"3"])
        {
            texty13=@"3";
            [seg2 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"fewminutes"]isEqualToString: @"4"])
        {
            texty13=@"4";
            [seg2 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"fewminutes"]isEqualToString: @"5"])
        {
            texty13=@"5";
            [seg2 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"fewminutes"]isEqualToString: @"6"])
        {
            texty13=@"6";
            [seg2 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"fewminutes"]isEqualToString: @"7"])
        {
            texty13=@"7";
            [seg2 setSelectedSegmentIndex:6];
        }
        
        if([[resultset objectForKey:@"women"]isEqualToString: @"1"])
        {
            [seg3 setSelectedSegmentIndex:0];
            texty14=@"1";
        }
        else if([[resultset objectForKey:@"women"]isEqualToString: @"2"])
        {
            texty14=@"2";
            [seg3 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"women"]isEqualToString: @"3"])
        {
            texty14=@"3";
            [seg3 setSelectedSegmentIndex:2];
        }
        if([[resultset objectForKey:@"dress"]isEqualToString: @"1"])
        {
            texty15=@"1";
            [seg4 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"dress"]isEqualToString: @"2"])
        {
            texty15=@"2";
            [seg4 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"dress"]isEqualToString: @"3"])
        {
            texty15=@"3";
            [seg4 setSelectedSegmentIndex:2];
        }
        if([[resultset objectForKey:@"shoes"]isEqualToString: @"1"])
        {
            texty16=@"1";
            [seg5 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"shoes"]isEqualToString: @"2"])
        {
            texty16=@"2";
            [seg5 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"shoes"]isEqualToString: @"3"])
        {
            texty16=@"3";
            [seg5 setSelectedSegmentIndex:2];
        }
        if([[resultset objectForKey:@"orthopedic"]isEqualToString: @"1"])
        {
            texty17=@"1";
            [seg6 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"orthopedic"]isEqualToString: @"2"])
        {
            texty17=@"2";
            [seg6 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"orthopedic"]isEqualToString: @"3"])
        {
            texty17=@"3";
            [seg6 setSelectedSegmentIndex:2];
        }
        if([[resultset objectForKey:@"allversion"]isEqualToString: @"1"])
        {
            texty18=@"1";
            [seg7 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"allversion"]isEqualToString: @"2"])
        {
            [seg7 setSelectedSegmentIndex:1];
            texty18=@"2";
        }
        else if([[resultset objectForKey:@"allversion"]isEqualToString: @"3"])
        {
            [seg7 setSelectedSegmentIndex:2];
            texty18=@"3";
        }
        if([[resultset objectForKey:@"difficulty"]isEqualToString: @"No difficulty"])
        {
            [self rad1:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"difficulty"]isEqualToString: @"Mild difficulty"])
        {
            
            [self rad2:nil];
        }
        else if([[resultset objectForKey:@"difficulty"]isEqualToString: @"Moderate difficulty"])
        {
            [self rad3:nil];
        }
        else if([[resultset objectForKey:@"difficulty"]isEqualToString: @"Severe difficulty"])
        {
            [self rad4:nil];
        }
        else if([[resultset objectForKey:@"difficulty"]isEqualToString: @"Extreme difficulty"])
        {
            [self rad5:nil];
        }
        else if([[resultset objectForKey:@"difficulty"]isEqualToString: @"Cannot do because of foot/ankle"])
        {
            [self rad6:nil];
        }
        else if([[resultset objectForKey:@"difficulty"]isEqualToString: @"Cannot do for other reasons"])
        {
            [self rad7:nil];
        }
        else
        {
            //no value was selected for this question
        }
        
        
        
    }
    else
    {
        //no datas found in database
    }
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
    
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
//                                   initWithTarget:self
//                                   action:@selector(dismissKeyboard)];
//    
//    [self.view addGestureRecognizer:tap];
//    [self.navigationController.view addGestureRecognizer:tap];
    
	// Do any additional setup after loading the view, typically from a nib.
}

//-(void)dismissKeyboard
//{
//    printView.hidden = YES;
//}
- (IBAction)reset:(id)sender
{
    texty18=@"null";
    texty17=@"null";
    texty16=@"null";
    texty15=@"null";
    texty14=@"null";
    texty13=@"null";
    texty12=@"null";
    texty1=@"null";
    [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg5 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg6 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg7 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

-(IBAction)cancel:(id)sender
{
    
    if ([[staff objectForKey:@"staff"]isEqualToString:@"1"]) {
        
        
        for(UIViewController *controller in self.navigationController.viewControllers)
        {
            if ([controller isKindOfClass:[staffautocheckViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
    }
    else
        
    {
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
        
    }
    
    
}

- (IBAction)next:(id)sender {
    //    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict setObject:texty18 forKey:@"footankl1segment7"];
    [recorddict setObject:texty17 forKey:@"footankl1segment6"];
    [recorddict setObject:texty16 forKey:@"footankl1segment5"];
    [recorddict setObject:texty15 forKey:@"footankl1segment4"];
    [recorddict setObject:texty14 forKey:@"footankl1segment3"];
    [recorddict setObject:texty13 forKey:@"footankl1segment2"];
    [recorddict setObject:texty12 forKey:@"footankl1segment1"];
    [recorddict setObject:texty1 forKey:@"footankle1radio1"];
    
    suc=1;
    //    NSLog(@"Record dict in footanklequestionnaire form two::%@",recorddict);
    
    if(suc==1){
        [self performSegueWithIdentifier:@"footankle3" sender:self];
    }
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"footankle3"])
    {
        if (suc==1)
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
    
    
    if ([segue.identifier isEqualToString:@"footankle3"])
    {
        
        //        NSLog(@"succc value in prepre segue %i ",suc);
        FootAnkleViewController3 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        destViewController.staff=staff;
        
    }
    
    
    
}

- (IBAction)rad7:(id)sender {
    [radi7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    texty1=@"Cannot do for other reasons";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

- (IBAction)rad6:(id)sender {
    [radi6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty1=@"Cannot do because of foot/ankle";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (IBAction)rad4:(id)sender {
    [radi4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty1=@"Severe difficulty";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad2:(id)sender {
    [radi2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    texty1=@"Mild difficulty";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad1:(id)sender {
    texty1=@"No difficulty";
    
    [radi1 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad3:(id)sender {
    [radi3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty1=@"Moderate difficulty";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad5:(id)sender {
    [radi5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty1=@"Extreme difficulty";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
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
                //NSLog(@"FAILED! due to error in domain %@ with error code %u", error.domain, error.code);
            }
        };
        [printController presentFromBarButtonItem:barButton animated:YES completionHandler:completionHandler];
    }
}
- (void)dealloc {
    [super dealloc];
}
@end
