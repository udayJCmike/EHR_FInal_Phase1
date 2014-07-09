//
//  shoulderpainscore2ViewController.m
//  shoulderpainscore
//
//  Created by DeemsysInc on 3/4/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "shoulderpainscore2ViewController.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "QuadrupleVisualAnalogueScale.h"
@interface shoulderpainscore2ViewController ()

@end

@implementation shoulderpainscore2ViewController
@synthesize firstbut;
@synthesize secondbut;
@synthesize thirdbut;
@synthesize secondf;
@synthesize seconds;
@synthesize secondt;
@synthesize firstbut3;
@synthesize secondbut3;
@synthesize thirdbut3;
@synthesize firstbut4;
@synthesize secondbut4;
@synthesize thirdbut4;
@synthesize firstbut5;
@synthesize secondbut5;
@synthesize thirdbut5;
@synthesize firstbut6;
@synthesize secondbut6;
@synthesize thirdbut6;
@synthesize firstbut7;
@synthesize secondbut7;
@synthesize thirdbut7;
@synthesize firstbut8;
@synthesize secondbut8;
@synthesize thirdbut8;
@synthesize firstbut9;
@synthesize firstbut10;
@synthesize secondbut10;
@synthesize secondbut9;
@synthesize thirdbut10;
@synthesize thirdbut9;
@synthesize firstbut11;
@synthesize firstbut12;
@synthesize firstbut13;
@synthesize firstbut14;
@synthesize firstbut15;
@synthesize secondbut11;
@synthesize secondbut12;
@synthesize secondbut13;
@synthesize secondbut14;
@synthesize secondbut15;
@synthesize thirdbut11;
@synthesize thirdbut12;
@synthesize thirdbut13;
@synthesize thirdbut14;
@synthesize thirdbut15;
@synthesize recorddict;
@synthesize resultset;
@synthesize update;
@synthesize reset1;
@synthesize reset2;
@synthesize deleteform;
@synthesize submit;
@synthesize cancel1;
@synthesize cancel2;

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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)first:(id)sender {
    
    firstrow=@"Yes";
    [firstbut setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second:(id)sender {
    firstrow=@"Sometimes";
    
    [secondbut setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third:(id)sender {
    firstrow=@"No";
    [thirdbut setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first2:(id)sender {
    
    secondrow=@"Yes";
    [secondf setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [seconds setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondt setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second2:(id)sender {
    secondrow=@"Sometimes";
    
    [seconds setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondt setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondf setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third2:(id)sender {
    secondrow=@"No";
    [secondt setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [seconds setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondf setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first3:(id)sender {
    
    thirdrow=@"Yes";
    [firstbut3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second3:(id)sender {
    thirdrow=@"Sometimes";
    
    [secondbut3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third3:(id)sender {
    thirdrow=@"No";
    [thirdbut3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first4:(id)sender {
    
    fourthrow=@"Yes";
    [firstbut4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second4:(id)sender {
    fourthrow=@"Sometimes";
    
    [secondbut4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third4:(id)sender {
    fourthrow=@"No";
    [thirdbut4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first5:(id)sender {
    
    fifthrow=@"Yes";
    [firstbut5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second5:(id)sender {
    fifthrow=@"Sometimes";
    
    [secondbut5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third5:(id)sender {
    fifthrow=@"No";
    [thirdbut5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first6:(id)sender {
    
    sixthrow=@"Yes";
    [firstbut6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second6:(id)sender {
    sixthrow=@"Sometimes";
    
    [secondbut6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third6:(id)sender {
    sixthrow=@"No";
    [thirdbut6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}

- (IBAction)first7:(id)sender {
    
    seventhrow=@"Yes";
    [firstbut7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second7:(id)sender {
    seventhrow=@"Sometimes";
    
    [secondbut7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third7:(id)sender {
    seventhrow=@"No";
    [thirdbut7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first8:(id)sender {
    
    eighthrow=@"Yes";
    [firstbut8 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second8:(id)sender {
    eighthrow=@"Sometimes";
    
    [secondbut8 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third8:(id)sender {
    eighthrow=@"No";
    [thirdbut8 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first9:(id)sender {
    
    ninethrow=@"Yes";
    [firstbut9 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second9:(id)sender {
    ninethrow=@"Sometimes";
    
    [secondbut9 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third9:(id)sender {
    ninethrow=@"No";
    [thirdbut9 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first10:(id)sender {
    
    tenthrow=@"Yes";
    [firstbut10 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second10:(id)sender {
    tenthrow=@"Sometimes";
    
    [secondbut10 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third10:(id)sender {
    tenthrow=@"No";
    [thirdbut10 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first11:(id)sender {
    
    eleventh=@"Yes";
    [firstbut11 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second11:(id)sender {
    eleventh=@"Sometimes";
    
    [secondbut11 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third11:(id)sender {
    eleventh=@"No";
    [thirdbut11 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first12:(id)sender {
    
    twelve=@"Yes";
    [firstbut12 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second12:(id)sender {
    twelve=@"Sometimes";
    
    [secondbut12 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third12:(id)sender {
    twelve=@"No";
    [thirdbut12 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first13:(id)sender {
    
    thirteern=@"Yes";
    [firstbut13 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second13:(id)sender {
    thirteern=@"Sometimes";
    
    [secondbut13 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third13:(id)sender {
    thirteern=@"No";
    [thirdbut13 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first14:(id)sender {
    
    fourteen=@"Yes";
    [firstbut14 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second14:(id)sender {
    fourteen=@"Sometimes";
    
    [secondbut14 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third14:(id)sender {
    fourteen=@"No";
    [thirdbut14 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)first15:(id)sender {
    
    fifteen=@"Yes";
    [firstbut15 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [secondbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second15:(id)sender {
    fifteen=@"Sometimes";
    
    [secondbut15 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [firstbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)third15:(id)sender {
    fifteen=@"No";
    [thirdbut15 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [firstbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)save:(id)sender
{
    suc=1;
    [recorddict setValue:firstrow forKey:@"eleven"];
    [recorddict setValue:secondrow forKey:@"twelve"];
    [recorddict setValue:thirdrow forKey:@"thirteen"];
    [recorddict setValue:fourthrow forKey:@"fourteen"];
    [recorddict setValue:fifthrow forKey:@"fifteen"];
    [recorddict setValue:sixthrow forKey:@"sixteen"];
    [recorddict setValue:seventhrow forKey:@"seventheen"];
    [recorddict setValue:eighthrow forKey:@"eighteen"];
    [recorddict setValue:ninethrow forKey:@"nineteen"];
    [recorddict setValue:tenthrow forKey:@"twenty"];
    [recorddict setValue:eleventh forKey:@"twentyone"];
    [recorddict setValue:twelve forKey:@"twentytwo"];
    [recorddict setValue:thirteern forKey:@"twentythree"];
    [recorddict setValue:fourteen forKey:@"twentyfour"];
    [recorddict setValue:fifteen forKey:@"twentyfive"];
   // NSLog(@"final result %@",recorddict);
    if (suc==1) {
        
       // NSLog(@"recorddict in hip and knee ques %@",recorddict);
        UIButton *buton=(UIButton*)sender;
        if(buton.tag==12)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            //        [self updatedata];
            if ([[self submitvalues]isEqualToString:@"success"])
            {
                [self insertdata];
            }
            
            
        }
        else  if(buton.tag==14)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            //                  [self insertdata];
            if ([[self submitvalues]isEqualToString:@"success"]) {
                [self updatedata];
                
            }
            
            
            
            
            
        }
    }
    
    else
    {
        NULL;
    }
    
    
    
    
}
-(void)displaydata
{
    if ([resultset count]>0)
    {
        update.hidden=NO;
        deleteform.hidden=NO;
        reset2.hidden=NO;
        submit.hidden=YES;
        reset1.hidden=YES;
        cancel2.hidden=NO;
        cancel1.hidden=YES;
        if([[resultset objectForKey:@"afraid"]isEqualToString: @"Yes"])
        {
            [self first:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"afraid"]isEqualToString:   @"Sometimes"])
        {
            
            [self second :nil];
        }
        else if([[resultset objectForKey:@"afraid"]isEqualToString:@"No"])
        {
            [self third:nil];
        }
        if([[resultset objectForKey:@"desperate"]isEqualToString: @"Yes"])
        {
            [self first2:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"desperate"]isEqualToString:   @"Sometimes"])
        {
            
            [self second2 :nil];
        }
        else if([[resultset objectForKey:@"desperate"]isEqualToString:@"No"])
        {
            [self third2:nil];
        }
        if([[resultset objectForKey:@"penalties"]isEqualToString: @"Yes"])
        {
            [self first3:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"penalties"]isEqualToString:   @"Sometimes"])
        {
            
            [self second3 :nil];
        }
        else if([[resultset objectForKey:@"penalties"]isEqualToString:@"No"])
        {
            [self third3:nil];
        }
        if([[resultset objectForKey:@"relationship"]isEqualToString: @"Yes"])
        {
            [self first4:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"relationship"]isEqualToString:   @"Sometimes"])
        {
            
            [self second4 :nil];
        }
        else if([[resultset objectForKey:@"relationship"]isEqualToString:@"No"])
        {
            [self third4:nil];
        }
        if([[resultset objectForKey:@"avoid"]isEqualToString: @"Yes"])
        {
            [self first5:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"avoid"]isEqualToString:   @"Sometimes"])
        {
            
            [self second5 :nil];
        }
        else if([[resultset objectForKey:@"avoid"]isEqualToString:@"No"])
        {
            [self third5:nil];
        }
        if([[resultset objectForKey:@"goals"]isEqualToString: @"Yes"])
        {
            [self first6:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"goals"]isEqualToString:   @"Sometimes"])
        {
            
            [self second6 :nil];
        }
        else if([[resultset objectForKey:@"goals"]isEqualToString:@"No"])
        {
            [self third6:nil];
        }
        if([[resultset objectForKey:@"clear"]isEqualToString: @"Yes"])
        {
            [self first7:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"clear"]isEqualToString:   @"Sometimes"])
        {
            
            [self second7 :nil];
        }
        else if([[resultset objectForKey:@"clear"]isEqualToString:@"No"])
        {
            [self third7:nil];
        }
        if([[resultset objectForKey:@"tension"]isEqualToString: @"Yes"])
        {
            [self first8:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"tension"]isEqualToString:   @"Sometimes"])
        {
            
            [self second8 :nil];
        }
        else if([[resultset objectForKey:@"tension"]isEqualToString:@"No"])
        {
            [self third8:nil];
        }
        if([[resultset objectForKey:@"gatherings"]isEqualToString: @"Yes"])
        {
            [self first9:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"gatherings"]isEqualToString:   @"Sometimes"])
        {
            
            [self second9 :nil];
        }
        else if([[resultset objectForKey:@"gatherings"]isEqualToString:@"No"])
        {
            [self third9:nil];
        }
        if([[resultset objectForKey:@"irritable"]isEqualToString: @"Yes"])
        {
            [self first10:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"irritable"]isEqualToString:   @"Sometimes"])
        {
            
            [self second10 :nil];
        }
        else if([[resultset objectForKey:@"irritable"]isEqualToString:@"No"])
        {
            [self third10:nil];
        }
        if([[resultset objectForKey:@"travelling"]isEqualToString: @"Yes"])
        {
            [self first11:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"travelling"]isEqualToString:   @"Sometimes"])
        {
            
            [self second11 :nil];
        }
        else if([[resultset objectForKey:@"travelling"]isEqualToString:@"No"])
        {
            [self third11:nil];
        }
        if([[resultset objectForKey:@"confused"]isEqualToString: @"Yes"])
        {
            [self first12:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"confused"]isEqualToString:   @"Sometimes"])
        {
            
            [self second12 :nil];
        }
        else if([[resultset objectForKey:@"confused"]isEqualToString:@"No"])
        {
            [self third12:nil];
        }
        if([[resultset objectForKey:@"frustrated"]isEqualToString: @"Yes"])
        {
            [self first13:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"frustrated"]isEqualToString:   @"Sometimes"])
        {
            
            [self second13 :nil];
        }
        else if([[resultset objectForKey:@"frustrated"]isEqualToString:@"No"])
        {
            [self third13:nil];
        }
        if([[resultset objectForKey:@"difficult"]isEqualToString: @"Yes"])
        {
            [self first14:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"difficult"]isEqualToString:   @"Sometimes"])
        {
            
            [self second14 :nil];
        }
        else if([[resultset objectForKey:@"difficult"]isEqualToString:@"No"])
        {
            [self third14:nil];
        }
        if([[resultset objectForKey:@"attention"]isEqualToString: @"Yes"])
        {
            [self first15:nil]; //calling ibaction method for setting radio button as selected one
        }
        else if([[resultset objectForKey:@"attention"]isEqualToString:   @"Sometimes"])
        {
            
            [self second15 :nil];
        }
        else if([[resultset objectForKey:@"attention"]isEqualToString:@"No"])
        {
            [self third15:nil];
        }
        
        
        
        
    }
    
}
-(void)updatedata
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1update:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    //NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        //NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"Shoulderpain Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form updation successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form updation failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                [self cancel:self];
            }
        }
    }
}

- (IBAction)deleteaction:(id)sender
{
    HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
    HUD.mode=MBProgressHUDModeIndeterminate;
    HUD.delegate = self;
    HUD.labelText = @"Deleting";
    [HUD show:YES];
    //        [self updatedata];
    if ([[self submitvalues]isEqualToString:@"success"])
    {
        NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
        NSString *response=[self HttpPostEntityFirst1delete:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
        NSError *error;
        SBJSON *json = [[SBJSON new] autorelease];
        NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
        
        //NSLog(@"%@ lucky numbers",luckyNumbers);
        if (luckyNumbers == nil)
        {
            
            //NSLog(@"luckyNumbers == nil");
            
        }
        else
        {
            
            NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
            // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"Shoulderpain Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form deletion successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                    [self cancel:self];
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form deletion failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    [self cancel:self];
                }
            }
        }
        
    }
    
}
-(NSString*)submitvalues
{
    
    
    Reachability* wifiReach = [[Reachability reachabilityWithHostName: @"www.apple.com"] retain];
	NetworkStatus netStatus = [wifiReach currentReachabilityStatus];
    
	switch (netStatus)
	{
		case NotReachable:
		{
			isConnect=NO;
			//NSLog(@"Access Not Available");
			break;
		}
            
		case ReachableViaWWAN:
		{
			isConnect=YES;
			//NSLog(@"Reachable WWAN");
			break;
		}
		case ReachableViaWiFi:
		{
			isConnect=YES;
			//NSLog(@"Reachable WiFi");
			break;
		}
	}
	
	
    
    if(isConnect)
    {
        NSString *result=@"success";
        return result;
        
    }
    //  imgName=@"Connected.png";
    else
    {
        HUD.labelText = @"Check network connection";
        HUD.customView = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]] autorelease];
        HUD.mode = MBProgressHUDModeCustomView;
        [HUD hide:YES afterDelay:1];
        return @"failure";
    }
    
    
}
-(void)insertdata
{
    
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    //NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        //NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"Shoulderpain Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form submission successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form submission sailed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                [self cancel:self];
            }
        }
    }
    
}


-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"shoulderpainscore.php?service=shoulderpaininsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&pname=%@&number=%@&date=%@&painatrest=%@&paininmotion=%@&nightlypain=%@&sleepingproblem=%@&incapability=%@&degreeofradiation=%@&painscale=%@&date1=%@&total=%@&f=%@&name123=%@&age=%@&headache=%@&myheadache=%@&handihapped=%@&restricted=%@&understand=%@&recreational=%@&angry=%@&control=%@&socialize=%@&family=%@&insane=%@&outlook=%@&afraid=%@&desperate=%@&penalties=%@&relationship=%@&avoid=%@&goals=%@&clear=%@&tension=%@&gatherings=%@&irritable=%@&travelling=%@&confused=%@&frustrated=%@&difficult=%@&attention=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"symptomtext"],[recorddict objectForKey:@"patient name"],[recorddict objectForKey:@"number"],[recorddict objectForKey:@"fdate"],[recorddict objectForKey:@"painrest"],[recorddict objectForKey:@"painmotion"],[recorddict objectForKey:@"nightlypain"],[recorddict objectForKey:@"sleeping"],[recorddict objectForKey:@"incapability"],[recorddict objectForKey:@"degree"],[recorddict objectForKey:@"painscalevalues"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"scoretotal"],[recorddict objectForKey:@"48F"],[recorddict objectForKey:@"name"],[recorddict objectForKey:@"age"],[recorddict objectForKey:@"headresult"],[recorddict objectForKey:@"painresult"],[recorddict objectForKey:@"one"],[recorddict objectForKey:@"two"],[recorddict objectForKey:@"three"],[recorddict objectForKey:@"four"],[recorddict objectForKey:@"five"],[recorddict objectForKey:@"six"],[recorddict objectForKey:@"seven"],[recorddict objectForKey:@"eight"],[recorddict objectForKey:@"nine"],[recorddict objectForKey:@"ten"],[recorddict objectForKey:@"eleven"],[recorddict objectForKey:@"twelve"],[recorddict objectForKey:@"thirteen"],[recorddict objectForKey:@"fourteen"],[recorddict objectForKey:@"fifteen"],[recorddict objectForKey:@"sixteen"],[recorddict objectForKey:@"seventheen"],[recorddict objectForKey:@"eighteen"],[recorddict objectForKey:@"nineteen"],[recorddict objectForKey:@"twenty"],[recorddict objectForKey:@"twentyone"],[recorddict objectForKey:@"twentytwo"],[recorddict objectForKey:@"twentythree"],[recorddict objectForKey:@"twentyfour"],[recorddict objectForKey:@"twentyfive"],secondEntity,value2];
    
    //    NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    //////NSLog(post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
    [request setURL:url];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    //when we user https, we need to allow any HTTPS cerificates, so add the one line code,to tell teh NSURLRequest to accept any https certificate, i'm not sure //about the security aspects
    
    
    NSError *error;
    NSURLResponse *response;
    NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    NSString *data=[[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
    //    NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"shoulderpainscore.php?service=shoulderpainedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&pname=%@&number=%@&date=%@&painatrest=%@&paininmotion=%@&nightlypain=%@&sleepingproblem=%@&incapability=%@&degreeofradiation=%@&painscale=%@&date1=%@&total=%@&f=%@&name123=%@&age=%@&headache=%@&myheadache=%@&handihapped=%@&restricted=%@&understand=%@&recreational=%@&angry=%@&control=%@&socialize=%@&family=%@&insane=%@&outlook=%@&afraid=%@&desperate=%@&penalties=%@&relationship=%@&avoid=%@&goals=%@&clear=%@&tension=%@&gatherings=%@&irritable=%@&travelling=%@&confused=%@&frustrated=%@&difficult=%@&attention=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"symptomtext"],[recorddict objectForKey:@"patient name"],[recorddict objectForKey:@"number"],[recorddict objectForKey:@"fdate"],[recorddict objectForKey:@"painrest"],[recorddict objectForKey:@"painmotion"],[recorddict objectForKey:@"nightlypain"],[recorddict objectForKey:@"sleeping"],[recorddict objectForKey:@"incapability"],[recorddict objectForKey:@"degree"],[recorddict objectForKey:@"painscalevalues"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"scoretotal"],[recorddict objectForKey:@"48F"],[recorddict objectForKey:@"name"],[recorddict objectForKey:@"age"],[recorddict objectForKey:@"headresult"],[recorddict objectForKey:@"painresult"],[recorddict objectForKey:@"one"],[recorddict objectForKey:@"two"],[recorddict objectForKey:@"three"],[recorddict objectForKey:@"four"],[recorddict objectForKey:@"five"],[recorddict objectForKey:@"six"],[recorddict objectForKey:@"seven"],[recorddict objectForKey:@"eight"],[recorddict objectForKey:@"nine"],[recorddict objectForKey:@"ten"],[recorddict objectForKey:@"eleven"],[recorddict objectForKey:@"twelve"],[recorddict objectForKey:@"thirteen"],[recorddict objectForKey:@"fourteen"],[recorddict objectForKey:@"fifteen"],[recorddict objectForKey:@"sixteen"],[recorddict objectForKey:@"seventheen"],[recorddict objectForKey:@"eighteen"],[recorddict objectForKey:@"nineteen"],[recorddict objectForKey:@"twenty"],[recorddict objectForKey:@"twentyone"],[recorddict objectForKey:@"twentytwo"],[recorddict objectForKey:@"twentythree"],[recorddict objectForKey:@"twentyfour"],[recorddict objectForKey:@"twentyfive"],secondEntity,value2];
    
    //    NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    //////NSLog(post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
    [request setURL:url];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    //when we user https, we need to allow any HTTPS cerificates, so add the one line code,to tell teh NSURLRequest to accept any https certificate, i'm not sure //about the security aspects
    
    
    NSError *error;
    NSURLResponse *response;
    NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    NSString *data=[[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
    //    NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"shoulderpainscore.php?service=shoulderpaindelete";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"symptomtext"],secondEntity,value2];
    
    //    NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    //////NSLog(post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d", [postData length]];
    NSMutableURLRequest *request = [[[NSMutableURLRequest alloc] init] autorelease];
    [request setURL:url];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    //when we user https, we need to allow any HTTPS cerificates, so add the one line code,to tell teh NSURLRequest to accept any https certificate, i'm not sure //about the security aspects
    
    
    NSError *error;
    NSURLResponse *response;
    NSData *urlData=[NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    NSString *data=[[NSString alloc]initWithData:urlData encoding:NSUTF8StringEncoding];
    //    NSLog(@"data %@",data);
    
    return data;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    firstrow=@"null";
    secondrow=@"null";
    thirdrow=@"null";
    fourthrow=@"null";
    fifthrow=@"null";
    sixthrow=@"null";
    seventhrow=@"null";
    eighthrow=@"null";
    ninethrow=@"null";
    tenthrow=@"null";
    eleventh=@"null";
    twelve=@"null";
    thirteern=@"null";
    fourteen=@"null";
    update.hidden=YES;
    deleteform.hidden=YES;
    reset2.hidden=YES;
    submit.hidden=NO;
    reset1.hidden=NO;
    cancel2.hidden=YES;
    cancel1.hidden=NO;
    
    fifteen=@"null";
    [self displaydata];
}

- (IBAction)reset:(id)sender
{
    firstrow=@"null";
    secondrow=@"null";
    thirdrow=@"null";
    fourthrow=@"null";
    fifthrow=@"null";
    sixthrow=@"null";
    seventhrow=@"null";
    eighthrow=@"null";
    ninethrow=@"null";
    tenthrow=@"null";
    eleventh=@"null";
    twelve=@"null";
    thirteern=@"null";
    fourteen=@"null";
    fifteen=@"null";
    [firstbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondf setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [seconds setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondt setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [firstbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [firstbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [firstbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [firstbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [firstbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [firstbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut8 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [firstbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut9 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [firstbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut10 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [firstbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut11 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [firstbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut12 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [firstbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut13 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [thirdbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [firstbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut14 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [firstbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [secondbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [thirdbut15 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
    
    
    
}
-(IBAction)cancel:(id)sender
{
    // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
    for (id controller in [self.navigationController viewControllers])
    {
        if ([controller isKindOfClass:[QuadrupleVisualAnalogueScale class]])
        {
            [self.navigationController popToViewController:controller animated:YES];
            break;
        }
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [cancel1 release];
    [cancel2 release];
    [super dealloc];
}
@end
