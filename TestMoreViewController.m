//
//  TestMoreViewController.m
//  TestMore
//
//  Created by deemsys on 5/12/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "TestMoreViewController1.h"
#import "TestMoreViewController.h"
#import "hamil2ViewController.h"
#import "hamil3ViewController.h"
#import "hamil4ViewController.h"
#import "hamil5ViewController.h"
@interface TestMoreViewController ()
{
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation TestMoreViewController
@synthesize recorddict;
@synthesize moretestdict;
int a=1;
NSString *classfname;
- (void)viewDidLoad
{
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
    
    
    //NSLog(@"class name::%@",classfname);
    //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
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
    button47.selected=NO;
    button48.selected=NO;
    button49.selected=NO;
    button50.selected=NO;
    
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
    [button47 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button48 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button49 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button50 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
}

- (IBAction)next:(id)sender {
    recorddict=[[NSMutableDictionary alloc]init];
    if(button1.selected){
        
        [recorddict setValue:@"emptycan" forKey:@"emptycan"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"emptycan"];
    }
    
    if(button2.selected){
        
        [recorddict setValue:@"yergason" forKey:@"yergason"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"yergason"];
    }
    if(button3.selected){
        
        [recorddict setValue:@"speed" forKey:@"speed"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"speed"];
    }  if(button4.selected){
        
        [recorddict setValue:@"ludington" forKey:@"ludington"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"ludington"];
    }
    if(button5.selected){
        
        [recorddict setValue:@"droparm" forKey:@"droparm"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"droparm"];
    }
    if(button6.selected){
        
        [recorddict setValue:@"apley" forKey:@"apley"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"apley"];
    }
    if(button7.selected){
        
        [recorddict setValue:@"crossover" forKey:@"crossover"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"crossover"];
    }
    if(button8.selected){
        
        [recorddict setValue:@"neerimpingement" forKey:@"neerimpingement"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"neerimpingement"];
    }
    if(button9.selected){
        
        [recorddict setValue:@"hawkinskennedy" forKey:@"hawkinskennedy"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"hawkinskennedy"];
    }
    if(button10.selected){
        
        [recorddict setValue:@"sternoclavicular" forKey:@"sternoclavicular"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"sternoclavicular"];
    }
    if(button11.selected){
        
        [recorddict setValue:@"acjdtest" forKey:@"acjdtest"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"acjdtest"];
    }
    if(button12.selected){
        
        [recorddict setValue:@"acjctest" forKey:@"acjctest"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"acjctest"];
    }
    
    if(button13.selected){
        
        [recorddict setValue:@"piano" forKey:@"piano"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"piano"];
    }
    
    if(button14.selected){
        
        [recorddict setValue:@"apprehensiona" forKey:@"apprehensiona"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"apprehensiona"];
    }
    
    if(button15.selected){
        
        [recorddict setValue:@"apprehensionp" forKey:@"apprehensionp"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"apprehensionp"];
    }
    
    if(button16.selected){
        
        [recorddict setValue:@"sulcus" forKey:@"sulcus"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"sulcus"];
    }
    
    if(button17.selected){
        
        [recorddict setValue:@"anterior" forKey:@"anterior"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"anterior"];
    }
    
    if(button18.selected){
        
        [recorddict setValue:@"posterior" forKey:@"posterior"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"posterior"];
    }
    
    if(button19.selected){
        
        [recorddict setValue:@"jobe" forKey:@"jobe"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"jobe"];
    }
    if(button20.selected){
        
        [recorddict setValue:@"feagin" forKey:@"feagin"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"feagin"];
    }
    if(button21.selected){
        
        [recorddict setValue:@"loadshift" forKey:@"loadshift"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"loadshift"];
    }
    if(button22.selected){
        
        [recorddict setValue:@"grind" forKey:@"grind"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"grind"];
    }
    
    if(button23.selected){
        
        [recorddict setValue:@"clunk" forKey:@"clunk"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"clunk"];
    }
    
    if(button24.selected){
        
        [recorddict setValue:@"obrien" forKey:@"obrien"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"obrien"];
    }
    
    if(button25.selected){
        
        [recorddict setValue:@"brachial" forKey:@"brachial"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"brachial"];
    }
    
    if(button26.selected){
        
        [recorddict setValue:@"shoulder" forKey:@"shoulder"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"shoulder"];
    }
    
    if(button27.selected){
        
        [recorddict setValue:@"adson" forKey:@"adson"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"adson"];
    }
    
    if(button28.selected){
        
        [recorddict setValue:@"allen" forKey:@"allen"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"allen"];
    }
    
    if(button29.selected){
        
        [recorddict setValue:@"roos" forKey:@"roos"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"roos"];
    }
    if(button30.selected){
        
        [recorddict setValue:@"military" forKey:@"military"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"military"];
    }
    if(button31.selected){
        
        [recorddict setValue:@"pectoralis" forKey:@"pectoralis"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"pectoralis"];
    }
    if(button32.selected){
        
        [recorddict setValue:@"chvostek" forKey:@"chvostek"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"chvostek"];
    }
    
    if(button33.selected){
        
        [recorddict setValue:@"loadingtest" forKey:@"loadingtest"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"loadingtest"];
    }
    
    if(button34.selected){
        
        [recorddict setValue:@"palpation" forKey:@"palpation"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"palpation"];
    }
    
    if(button35.selected){
        
        [recorddict setValue:@"vertebral" forKey:@"vertebral"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"vertebral"];
    }
    
    if(button36.selected){
        
        [recorddict setValue:@"foraminalct" forKey:@"foraminalct"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"foraminalct"];
    }
    
    if(button37.selected){
        
        [recorddict setValue:@"foraminaldt" forKey:@"foraminaldt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"foraminaldt"];
    }
    
    if(button38.selected){
        
        [recorddict setValue:@"valsalva" forKey:@"valsalva"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"valsalva"];
    }
    
    if(button39.selected){
        
        [recorddict setValue:@"swallowing" forKey:@"swallowing"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"swallowing"];
    }
    if(button40.selected){
        
        [recorddict setValue:@"tinelsign" forKey:@"tinelsign"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"tinelsign"];
    }
    
    if(button41.selected){
        
        [recorddict setValue:@"cozen" forKey:@"cozen"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"cozen"];
    }
    if(button42.selected){
        
        [recorddict setValue:@"resistive" forKey:@"resistive"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"resistive"];
    }
    
    if(button43.selected){
        
        [recorddict setValue:@"passive" forKey:@"passive"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"passive"];
    }
    
    if(button44.selected){
        
        [recorddict setValue:@"golfer" forKey:@"golfer"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"golfer"];
    }
    
    if(button45.selected){
        
        [recorddict setValue:@"hyperextension" forKey:@"hyperextension"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"hyperextension"];
    }
    
    if(button46.selected){
        
        [recorddict setValue:@"elbowflexion" forKey:@"elbowflexion"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"elbowflexion"];
    }
    
    if(button47.selected){
        
        [recorddict setValue:@"varus" forKey:@"varus"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"varus"];
    }
    
    if(button48.selected){
        
        [recorddict setValue:@"valgus" forKey:@"valgus"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"valgus"];
    }
    
    if(button49.selected){
        
        [recorddict setValue:@"tinel" forKey:@"tinel"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"tinel"];
    }
    if(button50.selected){
        
        [recorddict setValue:@"pinchgrip" forKey:@"pinchgrip"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"pinchgrip"];
    }
    
    [self performSegueWithIdentifier:@"moretest1" sender:self];
    //NSLog(@"recoed dict in first:::%@",recorddict);
    //NSLog(@"size of record dict in first:::%d",[recorddict count]);
    
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    ////NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"moretest1"])
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
    
    
    if ([segue.identifier isEqualToString:@"moretest1"])
    {
        
        
        TestMoreViewController1 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.moretestdict=moretestdict;
        //NSLog(@"recorddict in radio first %@",recorddict);
        //NSLog(@"size of recorddict:%d",[recorddict count]);
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
