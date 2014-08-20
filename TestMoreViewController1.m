//
//  TestMoreViewController1.m
//  TestMore
//
//  Created by deemsys on 5/12/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "TestMoreViewController1.h"
#import "TestMoreViewController2.h"
#import "hamil2ViewController.h"
#import "hamil3ViewController.h"
#import "hamil4ViewController.h"
#import "hamil5ViewController.h"
@interface TestMoreViewController1 ()
{
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation TestMoreViewController1
@synthesize recorddict;
@synthesize moretestdict;
NSString *classfname;
int a;

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
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)checkchange:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
}

- (IBAction)cancel:(id)sender {
    classfname=[moretestdict objectForKey:@"fromclass"];
    if([classfname isEqualToString:@"hamil2ViewController"])
    {
        for (id controller in [self.navigationController viewControllers])
        {
            if ([controller isKindOfClass:[hamil2ViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
        
        
    }
    if([classfname isEqualToString:@"hamil3ViewController"])
    {
        for (id controller in [self.navigationController viewControllers])
        {
            if ([controller isKindOfClass:[hamil3ViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
        
        
    }
    if([classfname isEqualToString:@"hamil4ViewController"])
    {
        for (id controller in [self.navigationController viewControllers])
        {
            if ([controller isKindOfClass:[hamil4ViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
        
        
    }
    if([classfname isEqualToString:@"hamil5ViewController"])
    {
        for (id controller in [self.navigationController viewControllers])
        {
            if ([controller isKindOfClass:[hamil5ViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
        
        
    }
    
    //  [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}


- (IBAction)next:(id)sender {
    // recorddict=[[NSMutableDictionary alloc]init];
    
    
    
    if(button1.selected){
        
        [recorddict setValue:@"tap" forKey:@"percussion"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"percussion"];
    }
    if(button2.selected){
        
        [recorddict setValue:@"compression" forKey:@"compression"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"compression"];
    }
    
    if(button3.selected){
        
        [recorddict setValue:@"longfinger" forKey:@"longfinger"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"longfinger"];
    }
    
    if(button4.selected){
        
        [recorddict setValue:@"finkelstein" forKey:@"finkelstein"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"finkelstein"];
    }
    
    if(button5.selected){
        
        [recorddict setValue:@"phalen" forKey:@"phalen"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"phalen"];
    }
    
    if(button6.selected){
        
        [recorddict setValue:@"tinel" forKey:@"tinelp"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"tinelp"];
    }
    
    if(button7.selected){
        
        [recorddict setValue:@"froment" forKey:@"froment"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"froment"];
    }
    
    if(button8.selected){
        
        [recorddict setValue:@"wrinkle" forKey:@"wrinkle"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"wrinkle"];
    }
    
    if(button9.selected){
        
        [recorddict setValue:@"digital" forKey:@"digital"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"digital"];
    }
    if(button10.selected){
        
        [recorddict setValue:@"bunnel" forKey:@"bunnel"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"bunnel"];
    }
    
    if(button11.selected){
        
        [recorddict setValue:@"murphy" forKey:@"murphy"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"murphy"];
    }
    if(button12.selected){
        
        [recorddict setValue:@"watson" forKey:@"watson"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"watson"];
    }
    
    if(button13.selected){
        
        [recorddict setValue:@"valgusst" forKey:@"valgusst"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"valgusst"];
    }
    
    if(button14.selected){
        
        [recorddict setValue:@"varusst" forKey:@"varusst"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"varusst"];
    }
    
    if(button15.selected){
        
        [recorddict setValue:@"selectionvi" forKey:@"selectionvi"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"selectionvi"];
    }
    
    if(button16.selected){
        
        [recorddict setValue:@"kernig" forKey:@"kernig"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"kernig"];
    }
    
    if(button17.selected){
        
        [recorddict setValue:@"lateral" forKey:@"lateral"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"lateral"];
    }
    
    if(button18.selected){
        
        [recorddict setValue:@"anteriorl" forKey:@"anteriorl"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"anteriorl"];
    }
    
    if(button19.selected){
        
        [recorddict setValue:@"inspiration" forKey:@"inspiration"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"inspiration"];
    }
    if(button20.selected){
        
        [recorddict setValue:@"kernigt" forKey:@"kernigt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"kernigt"];
    }
    if(button21.selected){
        
        [recorddict setValue:@"lateralt" forKey:@"lateralt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"lateralt"];
    }
    if(button22.selected){
        
        [recorddict setValue:@"anteriort" forKey:@"anteriort"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"anteriort"];
    }
    
    if(button23.selected){
        
        [recorddict setValue:@"inspirationt" forKey:@"inspirationt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"inspirationt"];
    }
    
    if(button24.selected){
        
        [recorddict setValue:@"valsalvat" forKey:@"valsalvat"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"valsalvat"];
    }
    
    if(button25.selected){
        
        [recorddict setValue:@"stoop" forKey:@"stoop"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"stoop"];
    }
    
    if(button26.selected){
        
        [recorddict setValue:@"hoover" forKey:@"hoover"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"hoover"];
    }
    
    if(button27.selected){
        
        [recorddict setValue:@"kernigl" forKey:@"kernigl"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"kernigl"];
    }
    
    if(button28.selected){
        
        [recorddict setValue:@"straight" forKey:@"straight"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"straight"];
    }
    
    if(button29.selected){
        
        [recorddict setValue:@"bowstring" forKey:@"bowstring"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"bowstring"];
    }
    if(button30.selected){
        
        [recorddict setValue:@"sitting" forKey:@"sitting"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"sitting"];
    }
    
    
    if(button31.selected){
        
        [recorddict setValue:@"unilateral" forKey:@"unilateral"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"unilateral"];
    }
    if(button32.selected){
        
        [recorddict setValue:@"bilateral" forKey:@"bilateral"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"bilateral"];
    }
    
    if(button33.selected){
        
        [recorddict setValue:@"wellstraight" forKey:@"wellstraight"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"wellstraight"];
    }
    
    if(button34.selected){
        
        [recorddict setValue:@"slump" forKey:@"slump"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"slump"];
    }
    
    if(button35.selected){
        
        [recorddict setValue:@"thomas" forKey:@"thomas"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"thomas"];
    }
    
    if(button36.selected){
        
        [recorddict setValue:@"spring" forKey:@"spring"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"spring"];
    }
    
    if(button37.selected){
        
        [recorddict setValue:@"trendelenburg" forKey:@"trendelenburg"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"trendelenburg"];
    }
    
    if(button38.selected){
        
        [recorddict setValue:@"stork" forKey:@"stork"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"stork"];
    }
    
    if(button39.selected){
        
        [recorddict setValue:@"sijft" forKey:@"sijft"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"sijft"];
    }
    if(button40.selected){
        
        [recorddict setValue:@"gillet" forKey:@"gillet"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"gillet"];
    }
    if(button41.selected){
        
        [recorddict setValue:@"sijst" forKey:@"sijst"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"sijst"];
    }
    if(button42.selected){
        
        [recorddict setValue:@"squish" forKey:@"squish"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"squish"];
    }
    
    if(button43.selected){
        
        [recorddict setValue:@"yeoman" forKey:@"yeoman"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"yeoman"];
    }
    
    if(button44.selected){
        
        [recorddict setValue:@"gaenslen" forKey:@"gaenslen"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"gaenslen"];
    }
    
    if(button45.selected){
        
        [recorddict setValue:@"patrick" forKey:@"patrick"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"patrick"];
    }
    
    if(button46.selected){
        
        [recorddict setValue:@"longsitting" forKey:@"longsitting"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"longsitting"];
    }
    
    a=1;
    
    [self performSegueWithIdentifier:@"moretest2" sender:self];
    //NSLog(@"recoed dict in second:::%@",recorddict);
    //NSLog(@"size of record dict in second:::%d",[recorddict count]);
    
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    ////NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"moretest2"])
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
    
    
    if ([segue.identifier isEqualToString:@"moretest2"])
    {
        
        
        TestMoreViewController2 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.moretestdict=moretestdict;
        //NSLog(@"recorddict in radio second %@",recorddict);
        //NSLog(@"size of recorddict:%d",[recorddict count]);
    }
    
    
    
}









- (IBAction)reset:(id)sender {
    
    button1.selected=NO;
    button2.selected=NO;
    button3.selected=NO;
    button4.selected=NO;
    button5.selected=NO;
    button6.selected=NO;
    button7.selected=NO;
    button8.selected=NO;
    button9.selected=NO;
    button10.selected=NO;
    button11.selected=NO;
    button12.selected=NO;
    button13.selected=NO;
    button14.selected=NO;
    button15.selected=NO;
    button16.selected=NO;
    button17.selected=NO;
    button18.selected=NO;
    button19.selected=NO;
    button20.selected=NO;
    button21.selected=NO;
    button22.selected=NO;
    button23.selected=NO;
    button24.selected=NO;
    button25.selected=NO;
    button26.selected=NO;
    button27.selected=NO;
    button28.selected=NO;
    button29.selected=NO;
    button30.selected=NO;
    button31.selected=NO;
    button32.selected=NO;
    button33.selected=NO;
    button34.selected=NO;
    button35.selected=NO;
    button36.selected=NO;
    button37.selected=NO;
    button38.selected=NO;
    button39.selected=NO;
    button40.selected=NO;
    button41.selected=NO;
    button42.selected=NO;
    button43.selected=NO;
    button44.selected=NO;
    button45.selected=NO;
    button46.selected=NO;
    
    
    [button1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button19 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button20 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button21 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button22 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button23 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button24 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button25 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button26 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button27 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button28 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button29 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button30 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button31 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button32 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button33 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button34 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button35 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button36 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button37 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button38 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button39 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button40 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button41 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button42 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button43 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button44 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button45 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button46 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
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
