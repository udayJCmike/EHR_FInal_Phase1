//
//  TestMoreViewController2.m
//  TestMore
//
//  Created by deemsys on 5/12/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "TestMoreViewController2.h"

#import "TestMoreViewController3.h"
#import "hamil2ViewController.h"
#import "hamil3ViewController.h"
#import "hamil4ViewController.h"
#import "hamil5ViewController.h"

@interface TestMoreViewController2 ()
{
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation TestMoreViewController2
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
-(IBAction)next:(id)sender{
 //recorddict=[[NSMutableDictionary alloc]init];
    
    if(button1.selected){
        
        [recorddict setValue:@"Hip Scouring or Quadrant Test" forKey:@"hipscouring"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"hipscouring"];
    }
    if(button2.selected){
        
        [recorddict setValue:@"Nélaton's Line" forKey:@"nelaton"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"nelaton"];
    }
    
    if(button3.selected){
        
        [recorddict setValue:@"Craig's Test" forKey:@"craig"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"craig"];
    }
    
    if(button4.selected){
        
        [recorddict setValue:@"90-90 Straight Leg Raise Test" forKey:@"straightc"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"straightc"];
    }
    
    if(button5.selected){
        
        [recorddict setValue:@"Patrick or FABER Test" forKey:@"fabertest"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"fabertest"];
    }
    
    if(button6.selected){
        
        [recorddict setValue:@"Trendelenburg's Test" forKey:@"trendelenburgf"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"trendelenburgf"];
    }
    
    if(button7.selected){
        
        [recorddict setValue:@"Ober's Test" forKey:@"ober"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"ober"];
    }
    
    if(button8.selected){
        
        [recorddict setValue:@"Piriformis Test" forKey:@"piriformis"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"piriformis"];
    }
    
    if(button9.selected){
        
        [recorddict setValue:@"Thomas Test" forKey:@"thomasp"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"thomasp"];
    }
    if(button10.selected){
        
        [recorddict setValue:@"True Leg-Length Discrepancy Test" forKey:@"trueleg"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"trueleg"];
    }

    if(button11.selected){
        
        [recorddict setValue:@"Apparent Leg-Length Discrepancy Test" forKey:@"apparentleg"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"apparentleg"];
    }
    if(button12.selected){
        
        [recorddict setValue:@"Ely's Test" forKey:@"ely"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"ely"];
    }
    
    if(button13.selected){
        
        [recorddict setValue:@"Tripod Test" forKey:@"tripod"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"tripod"];
    }
    
    if(button14.selected){
        
        [recorddict setValue:@"Femoral Nerve Traction Test" forKey:@"femoral"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"femoral"];
    }
    
    if(button15.selected){
        
        [recorddict setValue:@" Patella Tendon/Patella Ligament Length Test" forKey:@"patella"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"patella"];
    }
    
    if(button16.selected){
        
        [recorddict setValue:@"Patellar Apprehension Test" forKey:@"patellarp"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"patellarp"];
    }
    
    if(button17.selected){
        
        [recorddict setValue:@"Ballotable Patella or Patella Tap Test" forKey:@"ballotable"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"ballotable"];
    }
    
    if(button18.selected){
        
        [recorddict setValue:@"Sweep Test" forKey:@"sweep"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"sweep"];
    }
    
    if(button19.selected){
        
        [recorddict setValue:@"Quadriceps or Q-Angle Test" forKey:@"quadriceps"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"quadriceps"];
    }
    if(button20.selected){
        
        [recorddict setValue:@"Medial-Lateral Grind Test" forKey:@"medial"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"medial"];
    }
    if(button21.selected){
        
        [recorddict setValue:@"Bounce Home Test" forKey:@"bounce"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"bounce"];
    }
    if(button22.selected){
        
        [recorddict setValue:@"Patellar Grind Test (Clarke's Sign)" forKey:@"patellar"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"patellar"];
    }
    
    if(button23.selected){
        
        [recorddict setValue:@"Renne Test" forKey:@"renne"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"renne"];
    }
    
    if(button24.selected){
        
        [recorddict setValue:@"Noble Test" forKey:@"noble"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"noble"];
    }
    
    if(button25.selected){
        
        [recorddict setValue:@"Hughston's Plica Test" forKey:@"hughston"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"hughston"];
    }
    
    if(button26.selected){
        
        [recorddict setValue:@"Godfrey 90/90 Test" forKey:@"godfrey"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"godfrey"];
    }
    
    if(button27.selected){
        
        [recorddict setValue:@"Posterior Sag Test (Gravity Drawer Test)" forKey:@"posteriorg"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"posteriorg"];
    }
    
    if(button28.selected){
        
        [recorddict setValue:@"Reverse Pivot Shift (Jakob Test)" forKey:@"reverse"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"reverse"];
    }
    
    if(button29.selected){
        
        [recorddict setValue:@"Anterior Lachman's Test" forKey:@"anteriorlt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"anteriorlt"];
    }
    if(button30.selected){
        
        [recorddict setValue:@"Anterior Drawer Test" forKey:@"anteriordt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"anteriordt"];
    }
    if(button31.selected){
        
        [recorddict setValue:@"Slocum Test With Internal Tibial Rotation" forKey:@"slocuminternal"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"slocuminternal"];
    }
    if(button32.selected){
        
        [recorddict setValue:@"Slocum Test With External Tibial Rotation" forKey:@"slocumexternal"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"slocumexternal"];
    }
    
    if(button33.selected){
        
        [recorddict setValue:@"Pivot Shift Test" forKey:@"pivot"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"pivot"];
    }
    
    if(button34.selected){
        
        [recorddict setValue:@"Jerk Test" forKey:@"jerk"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"jerk"];
    }
    
    if(button35.selected){
        
        [recorddict setValue:@"Posterior Drawer Test" forKey:@"posteriordt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"posteriordt"];
    }
    
    if(button36.selected){
        
        [recorddict setValue:@"Hughston Posteromedial Drawer Test" forKey:@"hughstonposteromedial"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"hughstonposteromedial"];
    }
    
    if(button37.selected){
        
        [recorddict setValue:@"Hughston Posterolateral Drawer Test" forKey:@"hughstonposterolateral"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"hughstonposterolateral"];
    }
    
    if(button38.selected){
        
        [recorddict setValue:@"Posterior Lachman's Test 27" forKey:@"posteriorlt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"posteriorlt"];
    }
    
    if(button39.selected){
        
        [recorddict setValue:@"External Rotation Recurvatum Test" forKey:@"externalrotation"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"externalrotation"];
    }
    if(button40.selected){
        
        [recorddict setValue:@"Valgus Stress Test" forKey:@"valgusstt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"valgusstt"];
    }
    if(button41.selected){
        
        [recorddict setValue:@"Varus Stress Test" forKey:@"varusstt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"varusstt"];
    }
    if(button42.selected){
        
        [recorddict setValue:@"McMurray Test" forKey:@"mcmurray"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"mcmurray"];
    }
    
    if(button43.selected){
        
        [recorddict setValue:@"Apley Compression Test" forKey:@"apleyct"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"apleyct"];
    }
    
    if(button44.selected){
        
        [recorddict setValue:@"Steinmann's Tenderness Displacement Test" forKey:@"steinmann"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"steinmann"];
    }
    
    if(button45.selected){
        
        [recorddict setValue:@"Rectus Femoris Contracture Test" forKey:@"rectus"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"rectus"];
    }
    



    a=1;
    
    [self performSegueWithIdentifier:@"moretest3" sender:self];
    //NSLog(@"recoed dict in third:::%@",recorddict);
    //NSLog(@"size of record dict in second:::%d",[recorddict count]);
    
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    ////NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"moretest3"])
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
    
    
    if ([segue.identifier isEqualToString:@"moretest3"])
    {
        
        
        TestMoreViewController3 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
         destViewController.moretestdict=moretestdict;
        //NSLog(@"recorddict in third %@",recorddict);
        //NSLog(@"size of recorddict:%d",[recorddict count]);
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

    // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
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
