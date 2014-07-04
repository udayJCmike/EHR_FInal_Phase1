//
//  wristandhanddisability1ViewController.m
//  wristandhanddisability
//
//  Created by DeemsysInc on 3/5/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "wristandhanddisability1ViewController.h"
#import "wristandhanddisability2ViewController.h"
#import "QuadrupleVisualAnalogueScale.h"

@interface wristandhanddisability1ViewController ()

@end

@implementation wristandhanddisability1ViewController
@synthesize recorddict;
@synthesize resultset;
@synthesize next;
@synthesize sec51;
@synthesize sec52;
@synthesize sec53;
@synthesize sec54;
@synthesize sec55;
@synthesize sec56;
@synthesize sec61;
@synthesize sec62;
@synthesize sec63;
@synthesize sec64;
@synthesize sec65;
@synthesize sec66;
@synthesize sec71;
@synthesize sec72;
@synthesize sec73;
@synthesize sec74;
@synthesize sec75;
@synthesize sec76;
@synthesize sec81;
@synthesize sec82;
@synthesize sec83;
@synthesize sec84;
@synthesize sec85;
@synthesize sec86;
@synthesize sec91;
@synthesize sec92;
@synthesize sec93;
@synthesize sec94;
@synthesize sec95;
@synthesize sec96;
@synthesize cancel;

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
    val5=@"null";
    val6=@"null";
    val7=@"null";
    val8=@"null";
    val9=@"null";
    //    NSLog(@"result ser %@",resultset);
    [self displaydata];
    
	// Do a additional setup after loading the view.
}
-(void)displaydata
{
    if ([resultset count]>0)
    {
        if ([[resultset objectForKey:@"personal"]isEqualToString:@"0"])
        {
            [self first:nil];
        }
        else if ([[resultset objectForKey:@"personal"]isEqualToString:@"1"])
        {
            [self second:nil];
        }
        else if ([[resultset objectForKey:@"personal"]isEqualToString:@"2"])
        {
            [self third:nil];
            
        }
        else if ([[resultset objectForKey:@"personal"]isEqualToString:@"3"])
        {
            [self fourth:nil];
        }
        else if ([[resultset objectForKey:@"personal"]isEqualToString:@"4"])
        {
            [self fifth:nil];
        }
        else if ([[resultset objectForKey:@"personal"]isEqualToString:@"5"])
        {
            [self sixth:nil];
        }
        
        if ([[resultset objectForKey:@"sleeping"]isEqualToString:@"0"])
        {
            [self first2:nil];
        }
        else if ([[resultset objectForKey:@"sleeping"]isEqualToString:@"1"])
        {
            [self second2:nil];
        }
        else if ([[resultset objectForKey:@"sleeping"]isEqualToString:@"2"])
        {
            [self third2:nil];
            
        }
        else if ([[resultset objectForKey:@"sleeping"]isEqualToString:@"3"])
        {
            [self fourth2:nil];
        }
        else if ([[resultset objectForKey:@"sleeping"]isEqualToString:@"4"])
        {
            [self fifth2:nil];
        }
        else if ([[resultset objectForKey:@"sleeping"]isEqualToString:@"5"])
        {
            [self sixth2:nil];
        }
        
        if ([[resultset objectForKey:@"strength"]isEqualToString:@"0"])
        {
            [self first3:nil];
        }
        else if ([[resultset objectForKey:@"strength"]isEqualToString:@"1"])
        {
            [self second3:nil];
        }
        else if ([[resultset objectForKey:@"strength"]isEqualToString:@"2"])
        {
            [self third3:nil];
            
        }
        else if ([[resultset objectForKey:@"strength"]isEqualToString:@"3"])
        {
            [self fourth3:nil];
        }
        else if ([[resultset objectForKey:@"strength"]isEqualToString:@"4"])
        {
            [self fifth3:nil];
        }
        else if ([[resultset objectForKey:@"strength"]isEqualToString:@"5"])
        {
            [self sixth3:nil];
        }
        if ([[resultset objectForKey:@"house"]isEqualToString:@"0"])
        {
            [self first4:nil];
        }
        else if ([[resultset objectForKey:@"house"]isEqualToString:@"1"])
        {
            [self second4:nil];
        }
        else if ([[resultset objectForKey:@"house"]isEqualToString:@"2"])
        {
            [self third4:nil];
            
        }
        else if ([[resultset objectForKey:@"house"]isEqualToString:@"3"])
        {
            [self fourth4:nil];
        }
        else if ([[resultset objectForKey:@"house"]isEqualToString:@"4"])
        {
            [self fifth4:nil];
        }
        else if ([[resultset objectForKey:@"house"]isEqualToString:@"5"])
        {
            [self sixth4:nil];
        }
        if ([[resultset objectForKey:@"writing"]isEqualToString:@"0"])
        {
            [self first5:nil];
        }
        else if ([[resultset objectForKey:@"writing"]isEqualToString:@"1"])
        {
            [self second5:nil];
        }
        else if ([[resultset objectForKey:@"writing"]isEqualToString:@"2"])
        {
            [self third5:nil];
            
        }
        else if ([[resultset objectForKey:@"writing"]isEqualToString:@"3"])
        {
            [self fourth5:nil];
        }
        else if ([[resultset objectForKey:@"writing"]isEqualToString:@"4"])
        {
            [self fifth5:nil];
        }
        else if ([[resultset objectForKey:@"writing"]isEqualToString:@"5"])
        {
            [self sixth5:nil];
        }
        
    }
}
- (IBAction)reset:(id)sender
{
    val5=@"null";
    val6=@"null";
    val7=@"null";
    val8=@"null";
    val9=@"null";
    
    [sec51 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec52 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec53 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec54 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec55 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec56 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [sec61 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec62 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec63 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec64 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec65 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec66 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [sec71 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec72 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec73 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec74 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec75 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec76 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [sec81 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec82 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec83 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec84 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec85 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec86 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [sec91 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec92 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec93 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec94 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec95 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec96 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
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

- (IBAction)first:(id)sender {
    
    val5=@"0";
    [sec51 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec52 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec53 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec54 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec55 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec56 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second:(id)sender {
    val5=@"1";
    
    [sec52 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec51 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec53 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec54 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec55 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec56 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (IBAction)third:(id)sender {
    val5=@"2";
    [sec53 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec51 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec52 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec54 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec55 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec56 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fourth:(id)sender {
    val5=@"3";
    [sec54 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec51 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec52 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec53 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec55 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec56 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fifth:(id)sender {
    val5=@"4";
    [sec55 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec51 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec52 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec54 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec53 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec56 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
-(IBAction)sixth:(id)sender {
    val5=@"5";
    [sec56 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec51 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec52 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec54 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec53 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec55 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)first2:(id)sender {
    
    val6=@"0";
    [sec61 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec62 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec63 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec64 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec65 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec66 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second2:(id)sender {
    val6=@"1";
    
    [sec62 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec61 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec63 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec64 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec65 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec66 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (IBAction)third2:(id)sender {
    val6=@"2";
    [sec63 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec61 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec62 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec64 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec65 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec66 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fourth2:(id)sender {
    val6=@"3";
    [sec64 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec61 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec62 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec63 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec65 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec66 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fifth2:(id)sender {
    val6=@"4";
    [sec65 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec61 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec62 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec64 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec63 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec66 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
-(IBAction)sixth2:(id)sender {
    val6=@"5";
    [sec66 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec61 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec62 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec64 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec63 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec65 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)first3:(id)sender {
    
    val7=@"0";
    [sec71 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec72 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec73 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec74 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec75 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec76 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second3:(id)sender {
    val7=@"1";
    
    [sec72 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec71 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec73 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec74 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec75 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec76 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (IBAction)third3:(id)sender {
    val7=@"2";
    [sec73 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec71 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec72 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec74 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec75 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec76 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fourth3:(id)sender {
    val7=@"3";
    [sec74 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec71 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec72 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec73 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec75 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec76 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fifth3:(id)sender {
    val7=@"4";
    [sec75 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec71 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec72 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec74 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec73 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec76 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
-(IBAction)sixth3:(id)sender {
    val7=@"5";
    [sec76 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec71 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec72 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec74 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec73 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec75 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)first4:(id)sender {
    
    val8=@"0";
    [sec81 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec82 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec83 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec84 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec85 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec86 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second4:(id)sender {
    val8=@"1";
    
    [sec82 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec81 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec83 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec84 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec85 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec86 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (IBAction)third4:(id)sender {
    val8=@"2";
    [sec83 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec81 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec82 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec84 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec85 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec86 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fourth4:(id)sender {
    val8=@"3";
    [sec84 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec81 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec82 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec83 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec85 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec86 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fifth4:(id)sender {
    val8=@"4";
    [sec85 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec81 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec82 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec84 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec83 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec86 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)sixth4:(id)sender {
    val8=@"5";
    [sec86 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec81 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec82 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec84 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec83 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec85 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)first5:(id)sender {
    
    val9=@"0";
    [sec91 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec92 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec93 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec94 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec95 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec96 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)second5:(id)sender {
    val9=@"1";
    
    [sec92 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec91 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec93 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec94 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec95 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec96 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (IBAction)third5:(id)sender {
    val9=@"2";
    [sec93 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec91 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec92 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec94 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec95 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec96 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fourth5:(id)sender {
    val9=@"3";
    [sec94 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec91 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec92 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec93 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec95 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec96 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
- (IBAction)fifth5:(id)sender {
    val9=@"4";
    [sec95 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec91 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec92 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec94 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec93 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec96 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}

-(IBAction)sixth5:(id)sender {
    val9=@"5";
    [sec96 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec91 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec92 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec94 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec93 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec95 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)next:(id)sender {
    c=1;
    NSInteger a = [val5 integerValue];
    NSInteger a1=[val6 integerValue];
    NSInteger a2 = [val7 integerValue];
    NSInteger a3=[val8 integerValue];
    NSInteger a4=[val9 integerValue];
    NSInteger result=a+a1+a2+a3+a4;
    [recorddict setValue:[NSNumber numberWithInteger:result] forKey:@"total2"];
    [recorddict setValue:[NSNumber numberWithInteger:a] forKey:@"sec5"];
    [recorddict setValue:[NSNumber numberWithInteger:a1] forKey:@"sec6"];
    [recorddict setValue:[NSNumber numberWithInteger:a2] forKey:@"sec7"];
    [recorddict setValue:[NSNumber numberWithInteger:a3] forKey:@"sec8"];
    [recorddict setValue:[NSNumber numberWithInteger:a4] forKey:@"sec9"];
    if (c==1) {
        [self performSegueWithIdentifier:@"wh2" sender:self];
        
    }
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"wh2"])
    {
        if (c==1)
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
    
    if ([segue.identifier isEqualToString:@"wh2"])
    {
        
        wristandhanddisability2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        //        NSLog(@"recorddict in cervical first %@",recorddict);
    }
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    
    [super dealloc];
}
@end
