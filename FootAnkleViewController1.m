//
//  FootAnkleViewController1.m
//  FootAnkleQuestionnaire
//
//  Created by deemsys on 3/5/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "FootAnkleViewController1.h"
#import "staffautocheckViewController.h"
#import "FootAnkleViewController2.h"
#import "ViewAppAppDelegate.h"
@interface FootAnkleViewController1 ()
{
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
    ViewAppAppDelegate *appDelegate;

}
@end

@implementation FootAnkleViewController1
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
     appDelegate = (ViewAppAppDelegate*)[[UIApplication sharedApplication] delegate];
     self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    [super viewDidLoad];
   
    texty12=@"null";
    texty13=@"null";
    texty14=@"null";
    texty11=@"null";
    texty2=@"null";
    texty3=@"null";
    [self displaydata];
    
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
        
        if([[resultset objectForKey:@"trouble"]isEqualToString: @"No trouble at all"])
        {
            [self radii1:nil]; //calling ibaction method for setting radiiio button as selected one
        }
        else if([[resultset objectForKey:@"trouble"]isEqualToString:@"A little bit of trouble"])
        {
            
            [self radii2:nil];
        }
        else if([[resultset objectForKey:@"trouble"]isEqualToString:@"A moderate amount of trouble"])
        {
            [self radii3:nil];
        }
        else if([[resultset objectForKey:@"trouble"]isEqualToString:@"Quite a bit of trouble"])
        {
            [self radii4:nil];
        }
        else if([[resultset objectForKey:@"trouble"]isEqualToString:@"A great amount of trouble"])
        {
            [self radii5:nil];
        }
        else if([[resultset objectForKey:@"trouble"]isEqualToString:@"I cannot balance on my feet all"])
        {
            [self radii6:nil];
        }
        
        else
        {
            //no value was selected for this question
        }
        
        if([[resultset objectForKey:@"socks"]isEqualToString: @"Not at all difficult"])
        {
            [self radiii1:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"socks"]isEqualToString: @"Slightly difficult"])
        {
            
            [self radiii2:nil];
        }
        else if([[resultset objectForKey:@"socks"]isEqualToString: @"Moderately difficult"])
        {
            [self radiii3:nil];
        }
        else if([[resultset objectForKey:@"socks"]isEqualToString: @"Very difficult"])
        {
            [self radiii4:nil];
        }
        else if([[resultset objectForKey:@"socks"]isEqualToString: @"Extremely difficult"])
        {
            [self radiii5:nil];
        }
        else if([[resultset objectForKey:@"socks"]isEqualToString: @"Cannot do it all"])
        {
            [self radiii6:nil];
        }
        else
        {
            //no value was selected for this question
        }
        if([[resultset objectForKey:@"heavywork"]isEqualToString: @"1"])
        {
            [seg1 setSelectedSegmentIndex:0];
            texty12=@"1";
        }
        else if([[resultset objectForKey:@"heavywork"]isEqualToString: @"2"])
        {
            texty12=@"2";
            [seg1 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"heavywork"]isEqualToString: @"3"])
        {
            texty12=@"3";
            [seg1 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"heavywork"]isEqualToString: @"4"])
        {
            texty12=@"4";
            [seg1 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"heavywork"]isEqualToString: @"5"])
        {
            texty12=@"5";
            [seg1 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"heavywork"]isEqualToString: @"6"])
        {
            texty12=@"6";
            [seg1 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"heavywork"]isEqualToString: @"7"])
        {
            texty12=@"7";
            [seg1 setSelectedSegmentIndex:6];
        }
        if([[resultset objectForKey:@"jogging"]isEqualToString: @"1"])
        {
            texty13=@"1";
            [seg2 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"jogging"]isEqualToString: @"2"])
        {
            texty13=@"2";
            [seg2 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"jogging"]isEqualToString: @"3"])
        {
            texty13=@"3";
            [seg2 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"jogging"]isEqualToString: @"4"])
        {
            texty13=@"4";
            [seg2 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"jogging"]isEqualToString: @"5"])
        {
            texty13=@"5";
            [seg2 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"jogging"]isEqualToString: @"6"])
        {
            texty13=@"6";
            [seg2 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"jogging"]isEqualToString: @"7"])
        {
            texty13=@"7";
            [seg2 setSelectedSegmentIndex:6];
        }
        if([[resultset objectForKey:@"walking"]isEqualToString: @"1"])
        {
            texty14=@"1";
            [seg3 setSelectedSegmentIndex:0];
        }
        else if([[resultset objectForKey:@"walking"]isEqualToString: @"2"])
        {
            texty14=@"2";
            [seg3 setSelectedSegmentIndex:1];
        }
        else if([[resultset objectForKey:@"walking"]isEqualToString: @"3"])
        {
            texty14=@"3";
            [seg3 setSelectedSegmentIndex:2];
        }
        else if([[resultset objectForKey:@"walking"]isEqualToString: @"4"])
        {
            texty14=@"4";
            [seg3 setSelectedSegmentIndex:3];
        }
        else if([[resultset objectForKey:@"walking"]isEqualToString: @"5"])
        {
            texty14=@"5";
            [seg3 setSelectedSegmentIndex:4];
        }
        else if([[resultset objectForKey:@"walking"]isEqualToString: @"6"])
        {
            texty14=@"6";
            [seg3 setSelectedSegmentIndex:5];
        }
        else if([[resultset objectForKey:@"walking"]isEqualToString: @"7"])
        {
            texty14=@"7";
            [seg3 setSelectedSegmentIndex:6];
        }
        
        
        
    }
    else
    {
        //no datas found in database
    }
}
- (IBAction)next:(id)sender {
    //    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict setObject:texty12 forKey:@"footankleseg1"];
    [recorddict setObject:texty13 forKey:@"footankleseg2"];
    [recorddict setObject:texty14 forKey:@"footankleseg3"];
    [recorddict setObject:texty11 forKey:@"footankleradio1"];
    [recorddict setObject:texty2 forKey:@"footankleradio2"];
    [recorddict setObject:texty3 forKey:@"footankleradio3"];
    
    suc=1;
    //    NSLog(@"Record dict in footanklequestionnaire form two::%@",recorddict);
    
    if(suc==1){
        [self performSegueWithIdentifier:@"footankle2" sender:self];
    }
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"footankle2"])
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
    
    
    if ([segue.identifier isEqualToString:@"footankle2"])
    {
        
        //        NSLog(@"succc value in prepre segue %i ",suc);
        FootAnkleViewController2 *destViewController1 = [segue destinationViewController];
        destViewController1.recorddict=recorddict;
        destViewController1.resultset=resultset;
        destViewController1.staff=staff;
        
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
    else if(seg3.selectedSegmentIndex==3){
        texty14=@"4";
    }
    else if(seg3.selectedSegmentIndex==4){
        texty14=@"5";
    }
    else if(seg3.selectedSegmentIndex==5){
        texty14=@"6";
    }
    else if(seg3.selectedSegmentIndex==6){
        texty14=@"7";
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

- (IBAction)radii6:(id)sender {
    
    
    texty2=@"I cannot balance on my feet all";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radii5:(id)sender {
    
    
    texty2=@"A great amount of trouble";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radii4:(id)sender {
    
    
    texty2=@"Quite a bit of trouble";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radii3:(id)sender {
    
    
    texty2=@"A moderate amount of trouble";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

- (IBAction)radii2:(id)sender {
    
    
    texty2=@"A little bit of trouble";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radii1:(id)sender {
    
    
    texty2=@"No trouble at all";
    
    [radii1 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
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

- (IBAction)radiii6:(id)sender {
    
    
    texty3=@"Cannot do it all";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radiii5:(id)sender {
    
    
    texty3=@"Extremely difficult";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radiii4:(id)sender {
    
    
    texty3=@"Very difficult";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radiii3:(id)sender {
    
    
    texty3=@"Moderately difficult";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

- (IBAction)radiii2:(id)sender {
    
    
    texty3=@"Slightly difficult";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radiii1:(id)sender {
    
    
    texty3=@"Not at all difficult";
    
    [radiii1 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)reser:(id)sender
{
    texty12=@"null";
    texty13=@"null";
    texty14=@"null";
    texty11=@"null";
    texty2=@"null";
    texty3=@"null";
    radi1.selected=NO;
    radi2.selected=NO;
    radi3.selected=NO;
    radi4.selected=NO;
    radi5.selected=NO;
    radi6.selected=NO;
    radi7.selected=NO;
    radii1.selected=NO;
    radii2.selected=NO;
    radii3.selected=NO;
    radii4.selected=NO;
    radii5.selected=NO;
    radii6.selected=NO;
    radiii1.selected=NO;
    radiii2.selected=NO;
    radiii3.selected=NO;
    radiii4.selected=NO;
    radiii5.selected=NO;
    radiii6.selected=NO;
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)cancel:(id)sender
{
    
    NSString *res=appDelegate.staff;
    if ([res isEqualToString:@"1"]) {
        
        
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
