//
//  HipKneeViewController1.m
//  HipKneeQuestionnaire
//
//  Created by deemsys on 3/4/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "HipKneeViewController1.h"
#import "HipKneeViewController2.h"
#import "staffautocheckViewController.h"
@interface HipKneeViewController1 ()
{
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation HipKneeViewController1
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

- (void)viewDidLoad
{
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    [super viewDidLoad];
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

    texty11=@"null";
    texty1=@"null";
    texty2=@"null";
    texty3=@"null";
    texty4=@"null";
    texty5=@"null";
    texty6=@"null";
    texty7=@"null";
    texty8=@"null";
    [self displaydata];
    
    
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
-(void)displaydata
{
    if ([resultset count]>0)
    {
        
        if([[resultset objectForKey:@"best"]isEqualToString:@"I did not need support or assitance at all."])
        {
            [self rad1:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"best"]isEqualToString:@"I mostly walked without support or assitance."])
        {
            
            [self rad2:nil];
        }
        else if([[resultset objectForKey:@"best"]isEqualToString:@"I mostly used one cane or crutch to help me get around."])
        {
            [self rad3:nil];
        }
        else if([[resultset objectForKey:@"best"]isEqualToString:@"I mostly used two canes, two crutches or a walker to help me get around."])
        {
            [self rad4:nil];
        }
        else if([[resultset objectForKey:@"best"]isEqualToString:@"I used a wheelchair."])
        {
            [self rad5:nil];
        }
        else if([[resultset objectForKey:@"best"]isEqualToString:@"I mostly used other supports or someone else had to help me get around."])
        {
            [self rad6:nil];
        }
        else if([[resultset objectForKey:@"best"]isEqualToString:@"I was unable to get around at all."])
        {
            [self rad7:nil];
        }
        
        else
        {
            //no value was selected for this question
        }
        
        if([[resultset objectForKey:@"stairsrighthip"]isEqualToString: @"1"])
        {
            [seg1 setSelectedSegmentIndex:0];
            texty1=@"1";
        }
        else if([[resultset objectForKey:@"stairsrighthip"]isEqualToString: @"2"])
        {
            texty1=@"2";
            [seg1 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"stairsrighthip"]isEqualToString: @"3"])
        {
            texty1=@"3";
            [seg1 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"stairsrighthip"]isEqualToString: @"4"])
        {
            texty1=@"4";
            [seg1 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"stairsrighthip"]isEqualToString: @"5"])
        {
            texty1=@"5";
            [seg1 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"stairsrighthip"]isEqualToString: @"6"])
        {
            texty1=@"6";
            [seg1 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"stairsrighthip"]isEqualToString: @"7"])
        {
            texty1=@"7";
            [seg1 setSelectedSegmentIndex:6];
        }
        if([[resultset objectForKey:@"stairslefthip"]isEqualToString: @"1"])
        {
            texty2=@"1";
            [seg2 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"stairslefthip"]isEqualToString: @"2"])
        {
            texty2=@"2";
            [seg2 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"stairslefthip"]isEqualToString: @"3"])
        {
            texty2=@"3";
            [seg2 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"stairslefthip"]isEqualToString: @"4"])
        {
            texty2=@"4";
            [seg2 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"stairslefthip"]isEqualToString: @"5"])
        {
            texty2=@"5";
            [seg2 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"stairslefthip"]isEqualToString: @"6"])
        {
            texty2=@"6";
            [seg2 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"stairslefthip"]isEqualToString: @"7"])
        {
            texty2=@"7";
            [seg2 setSelectedSegmentIndex:6];
        }
        if([[resultset objectForKey:@"stairsrightknee"]isEqualToString: @"1"])
        {
            texty3=@"1";
            [seg3 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"stairsrightknee"]isEqualToString: @"2"])
        {
            texty3=@"2";
            [seg3 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"stairsrightknee"]isEqualToString: @"3"])
        {
            texty3=@"3";
            [seg3 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"stairsrightknee"]isEqualToString: @"4"])
        {
            texty3=@"4";
            [seg3 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"stairsrightknee"]isEqualToString: @"5"])
        {
            texty3=@"5";
            [seg3 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"stairsrightknee"]isEqualToString: @"6"])
        {
            texty3=@"6";
            [seg3 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"stairsrightknee"]isEqualToString: @"7"])
        {
            texty3=@"7";
            [seg3 setSelectedSegmentIndex:6];
        }
        if([[resultset objectForKey:@"stairsleftknee"]isEqualToString: @"1"])
        {
            texty4=@"1";
            [seg4 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"stairsleftknee"]isEqualToString: @"2"])
        {
            texty4=@"2";
            [seg4 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"stairsleftknee"]isEqualToString: @"3"])
        {
            texty4=@"3";
            [seg4 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"stairsleftknee"]isEqualToString: @"4"])
        {
            texty4=@"4";
            [seg4 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"stairsleftknee"]isEqualToString: @"5"])
        {
            texty4=@"5";
            [seg4 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"stairsleftknee"]isEqualToString: @"6"])
        {
            texty4=@"6";
            [seg4 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"stairsleftknee"]isEqualToString: @"7"])
        {
            texty4=@"7";
            [seg4 setSelectedSegmentIndex:6];
        }
        if([[resultset objectForKey:@"bedrighthip"]isEqualToString: @"1"])
        {
            texty5=@"1";
            [seg5 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"bedrighthip"]isEqualToString: @"2"])
        {
            texty5=@"2";
            [seg5 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"bedrighthip"]isEqualToString: @"3"])
        {
            texty5=@"3";
            [seg5 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"bedrighthip"]isEqualToString: @"4"])
        {
            texty5=@"4";
            [seg5 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"bedrighthip"]isEqualToString: @"5"])
        {
            texty5=@"5";
            [seg5 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"bedrighthip"]isEqualToString: @"6"])
        {
            texty5=@"6";
            [seg5 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"bedrighthip"]isEqualToString: @"7"])
        {
            texty5=@"7";
            [seg5 setSelectedSegmentIndex:6];
        }
        if([[resultset objectForKey:@"bedlefthip"]isEqualToString: @"1"])
        {
            texty6=@"1";
            [seg6 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"bedlefthip"]isEqualToString: @"2"])
        {
            texty6=@"2";
            [seg6 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"bedlefthip"]isEqualToString: @"3"])
        {
            texty6=@"3";
            [seg6 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"bedlefthip"]isEqualToString: @"4"])
        {
            texty6=@"4";
            [seg6 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"bedlefthip"]isEqualToString: @"5"])
        {
            texty6=@"5";
            [seg6 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"bedlefthip"]isEqualToString: @"6"])
        {
            texty6=@"6";
            [seg6 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"bedlefthip"]isEqualToString: @"7"])
        {
            texty6=@"7";
            [seg6 setSelectedSegmentIndex:6];
        }
        if([[resultset objectForKey:@"bedrightknee"]isEqualToString: @"1"])
        {
            texty7=@"1";
            [seg7 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"bedrightknee"]isEqualToString: @"2"])
        {
            texty7=@"2";
            [seg7 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"bedrightknee"]isEqualToString: @"3"])
        {
            texty7=@"3";
            [seg7 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"bedrightknee"]isEqualToString: @"4"])
        {
            texty7=@"4";
            [seg7 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"bedrightknee"]isEqualToString: @"5"])
        {
            texty7=@"5";
            [seg7 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"bedrightknee"]isEqualToString: @"6"])
        {
            texty7=@"6";
            [seg7 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"bedrightknee"]isEqualToString: @"7"])
        {
            texty7=@"7";
            [seg7 setSelectedSegmentIndex:6];
        }
        if([[resultset objectForKey:@"bedleftknee"]isEqualToString: @"1"])
        {
            texty8=@"1";
            [seg8 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"bedleftknee"]isEqualToString: @"2"])
        {
            texty8=@"2";
            [seg8 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"bedleftknee"]isEqualToString: @"3"])
        {
            texty8=@"3";
            [seg8 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"bedleftknee"]isEqualToString: @"4"])
        {
            texty8=@"4";
            [seg8 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"bedleftknee"]isEqualToString: @"5"])
        {
            texty8=@"5";
            [seg8 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"bedleftknee"]isEqualToString: @"6"])
        {
            texty8=@"6";
            [seg8 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"bedleftknee"]isEqualToString: @"7"])
        {
            texty8=@"7";
            [seg8 setSelectedSegmentIndex:6];
        }
        
        
        
    }
    else
    {
        //no datas found in database
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segbut1:(id)sender {
    if(seg1.selectedSegmentIndex==0){
        texty1=@"1";
    }
    else if(seg1.selectedSegmentIndex==1){
        texty1=@"2";
    }
    else if(seg1.selectedSegmentIndex==2){
        texty1=@"3";
    }
    else if(seg1.selectedSegmentIndex==3){
        texty1=@"4";
    }
    else if(seg1.selectedSegmentIndex==4){
        texty1=@"5";
    }
    else if(seg1.selectedSegmentIndex==5){
        texty1=@"6";
    }
    else if(seg1.selectedSegmentIndex==6){
        texty1=@"7";
    }
    
}

- (IBAction)segbut2:(id)sender {
    if(seg2.selectedSegmentIndex==0){
        texty2=@"1";
    }
    else if(seg2.selectedSegmentIndex==1){
        texty2=@"2";
    }
    else if(seg2.selectedSegmentIndex==2){
        texty2=@"3";
    }
    else if(seg2.selectedSegmentIndex==3){
        texty2=@"4";
    }
    else if(seg2.selectedSegmentIndex==4){
        texty2=@"5";
    }
    else if(seg2.selectedSegmentIndex==5){
        texty2=@"6";
    }
    else if(seg2.selectedSegmentIndex==6){
        texty2=@"7";
    }
    
}

- (IBAction)segbut3:(id)sender {
    if(seg3.selectedSegmentIndex==0){
        texty3=@"1";
    }
    else if(seg3.selectedSegmentIndex==1){
        texty3=@"2";
    }
    else if(seg3.selectedSegmentIndex==2){
        texty3=@"3";
    }
    else if(seg3.selectedSegmentIndex==3){
        texty3=@"4";
    }
    else if(seg3.selectedSegmentIndex==4){
        texty3=@"5";
    }
    else if(seg3.selectedSegmentIndex==5){
        texty3=@"6";
    }
    else if(seg3.selectedSegmentIndex==6){
        texty3=@"7";
    }
}

- (IBAction)segbut4:(id)sender {
    if(seg4.selectedSegmentIndex==0){
        texty4=@"1";
    }
    else if(seg4.selectedSegmentIndex==1){
        texty4=@"2";
    }
    else if(seg4.selectedSegmentIndex==2){
        texty4=@"3";
    }
    else if(seg4.selectedSegmentIndex==3){
        texty4=@"4";
    }
    else if(seg4.selectedSegmentIndex==4){
        texty4=@"5";
    }
    else if(seg4.selectedSegmentIndex==5){
        texty4=@"6";
    }
    else if(seg4.selectedSegmentIndex==6){
        texty4=@"7";
    }
    
    
}

- (IBAction)segbut5:(id)sender {
    if(seg5.selectedSegmentIndex==0){
        texty5=@"1";
    }
    else if(seg5.selectedSegmentIndex==1){
        texty5=@"2";
    }
    else if(seg5.selectedSegmentIndex==2){
        texty5=@"3";
    }
    else if(seg5.selectedSegmentIndex==3){
        texty5=@"4";
    }
    else if(seg5.selectedSegmentIndex==4){
        texty5=@"5";
    }
    else if(seg5.selectedSegmentIndex==5){
        texty5=@"6";
    }
    else if(seg5.selectedSegmentIndex==6){
        texty5=@"7";
    }
    
}

- (IBAction)segbut6:(id)sender {
    if(seg6.selectedSegmentIndex==0){
        texty6=@"1";
    }
    else if(seg6.selectedSegmentIndex==1){
        texty6=@"2";
    }
    else if(seg6.selectedSegmentIndex==2){
        texty6=@"3";
    }
    else if(seg6.selectedSegmentIndex==3){
        texty6=@"4";
    }
    else if(seg6.selectedSegmentIndex==4){
        texty6=@"5";
    }
    else if(seg6.selectedSegmentIndex==5){
        texty6=@"6";
    }
    else if(seg6.selectedSegmentIndex==6){
        texty6=@"7";
    }
    
}

- (IBAction)segbut8:(id)sender {
    if(seg8.selectedSegmentIndex==0){
        texty8=@"1";
    }
    else if(seg8.selectedSegmentIndex==1){
        texty8=@"2";
    }
    else if(seg8.selectedSegmentIndex==2){
        texty8=@"3";
    }
    else if(seg8.selectedSegmentIndex==3){
        texty8=@"4";
    }
    else if(seg8.selectedSegmentIndex==4){
        texty8=@"5";
    }
    else if(seg8.selectedSegmentIndex==5){
        texty8=@"6";
    }
    else if(seg8.selectedSegmentIndex==6){
        texty8=@"7";
    }
    
}
- (IBAction)segbut7:(id)sender {
    if(seg7.selectedSegmentIndex==0){
        texty7=@"1";
    }
    else if(seg7.selectedSegmentIndex==1){
        texty7=@"2";
    }
    else if(seg7.selectedSegmentIndex==2){
        texty7=@"3";
    }
    else if(seg7.selectedSegmentIndex==3){
        texty7=@"4";
    }
    else if(seg7.selectedSegmentIndex==4){
        texty7=@"5";
    }
    else if(seg7.selectedSegmentIndex==5){
        texty7=@"6";
    }
    else if(seg7.selectedSegmentIndex==6){
        texty7=@"7";
    }
    
}
- (IBAction)rad7:(id)sender {
    [radi7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    texty11=@"I was unable to get around at all.";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

- (IBAction)rad6:(id)sender {
    [radi6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty11=@"I mostly used other supports or someone else had to help me get around.";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad5:(id)sender {
    [radi5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty11=@"I used a wheelchair.";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)next:(id)sender {
    
    
    [recorddict setObject:texty11 forKey:@"radioselected"];
    [recorddict setObject:texty1 forKey:@"seghip1"];
    [recorddict setObject:texty2 forKey:@"seghip2"];
    [recorddict setObject:texty3 forKey:@"seghip3"];
    [recorddict setObject:texty4 forKey:@"seghip4"];
    [recorddict setObject:texty5 forKey:@"seghip5"];
    [recorddict setObject:texty6 forKey:@"seghip6"];
    [recorddict setObject:texty7 forKey:@"seghip7"];
    [recorddict setObject:texty8 forKey:@"seghip8"];
    suc=1;
//    NSLog(@"Record dict in hipkneequestionnaire form two::%@",recorddict);
//    NSLog(@"texty 11 value::%@",texty11);
    if(suc==1){
        [self performSegueWithIdentifier:@"hipknee2" sender:self];
    }
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
   // NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"hipknee2"])
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
    
    
    if ([segue.identifier isEqualToString:@"hipknee2"])
    {
        
       // NSLog(@"succc value in prepre segue %i ",suc);
        HipKneeViewController2 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        destViewController.staff=staff;
        
    }
    
    
    
}


- (IBAction)rad4:(id)sender {
    [radi4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty11=@"I mostly used two canes, two crutches or a walker to help me get around.";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad2:(id)sender {
    [radi2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    texty11=@"I mostly walked without support or assitance.";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad1:(id)sender {
    texty11=@"I did not need support or assitance at all.";
    
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
    texty11=@"I mostly used one cane or crutch to help me get around.";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (IBAction)reset:(id)sender
{
    texty11=@"null";
    texty1=@"null";
    texty2=@"null";
    texty3=@"null";
    texty4=@"null";
    texty5=@"null";
    texty6=@"null";
    texty7=@"null";
    texty8=@"null";
    [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg5 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg6 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg7 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg8 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    radi1.selected=NO;
    radi2.selected=NO;
    radi3.selected=NO;
    radi4.selected=NO;
    radi5.selected=NO;
    radi6.selected=NO;
    radi7.selected=NO;
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
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

