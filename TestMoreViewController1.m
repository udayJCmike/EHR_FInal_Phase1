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
	// Do any additional setup after loading the view.
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
        
        [recorddict setValue:@"Tap or Percussion Test" forKey:@"percussion"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"percussion"];
    }
    if(button2.selected){
        
        [recorddict setValue:@"Compression Test" forKey:@"compression"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"compression"];
    }
    
    if(button3.selected){
        
        [recorddict setValue:@"Long Finger Flexion Test" forKey:@"longfinger"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"longfinger"];
    }
    
    if(button4.selected){
        
        [recorddict setValue:@"Finkelstein Test" forKey:@"finkelstein"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"finkelstein"];
    }
    
    if(button5.selected){
        
        [recorddict setValue:@"Phalen Test" forKey:@"phalen"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"phalen"];
    }
    
    if(button6.selected){
        
        [recorddict setValue:@"Tinel's Sign" forKey:@"tinelp"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"tinelp"];
    }
    
    if(button7.selected){
        
        [recorddict setValue:@"Froment's Sign" forKey:@"froment"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"froment"];
    }
    
    if(button8.selected){
        
        [recorddict setValue:@"Wrinkle Test (Shrivel Test)" forKey:@"wrinkle"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"wrinkle"];
    }
    
    if(button9.selected){
        
        [recorddict setValue:@"Digital Allen's Test" forKey:@"digital"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"digital"];
    }
    if(button10.selected){
        
        [recorddict setValue:@"Bunnel Littler Test" forKey:@"bunnel"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"bunnel"];
    }
    
    if(button11.selected){
        
        [recorddict setValue:@"Murphy's Sign" forKey:@"murphy"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"murphy"];
    }
    if(button12.selected){
        
        [recorddict setValue:@"Watson Test" forKey:@"watson"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"watson"];
    }
    
    if(button13.selected){
        
        [recorddict setValue:@"Valgus Stress Test" forKey:@"valgusst"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"valgusst"];
    }
    
    if(button14.selected){
        
        [recorddict setValue:@"Varus Stress Test" forKey:@"varusst"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"varusst"];
    }
    
    if(button15.selected){
        
        [recorddict setValue:@"Section VI: Thoracic Spine" forKey:@"selectionvi"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"selectionvi"];
    }
    
    if(button16.selected){
        
        [recorddict setValue:@"Kernig/Brudzinski Signs" forKey:@"kernig"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"kernig"];
    }
    
    if(button17.selected){
        
        [recorddict setValue:@"Lateral Rib Compression Test" forKey:@"lateral"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"lateral"];
    }
    
    if(button18.selected){
        
        [recorddict setValue:@"Anterior/Posterior Rib Compression Test" forKey:@"anteriorl"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"anteriorl"];
    }
    
    if(button19.selected){
        
        [recorddict setValue:@"Inspiration/Expiration Breathing Test" forKey:@"inspiration"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"inspiration"];
    }
    if(button20.selected){
        
        [recorddict setValue:@"Kernig/Brudzinski Signs" forKey:@"kernigt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"kernigt"];
    }
    if(button21.selected){
        
        [recorddict setValue:@"Lateral Rib Compression Test" forKey:@"lateralt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"lateralt"];
    }
    if(button22.selected){
        
        [recorddict setValue:@"Anterior/Posterior Rib Compression Test" forKey:@"anteriort"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"anteriort"];
    }
    
    if(button23.selected){
        
        [recorddict setValue:@"Inspiration/Expiration Breathing Test" forKey:@"inspirationt"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"inspirationt"];
    }
    
    if(button24.selected){
        
        [recorddict setValue:@"Valsalva's Maneuver" forKey:@"valsalvat"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"valsalvat"];
    }
    
    if(button25.selected){
        
        [recorddict setValue:@"Stoop Test" forKey:@"stoop"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"stoop"];
    }
    
    if(button26.selected){
        
        [recorddict setValue:@"Hoover Test" forKey:@"hoover"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"hoover"];
    }
    
    if(button27.selected){
        
        [recorddict setValue:@"Kernig/Brudzinski Signs" forKey:@"kernigl"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"kernigl"];
    }
    
    if(button28.selected){
        
        [recorddict setValue:@"90-90 Straight Leg Raise Test" forKey:@"straight"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"straight"];
    }
    
    if(button29.selected){
        
        [recorddict setValue:@"Bowstring Test (Cram Test)" forKey:@"bowstring"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"bowstring"];
    }
    if(button30.selected){
        
        [recorddict setValue:@"Sitting Root Test" forKey:@"sitting"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"sitting"];
    }
    
    
    if(button31.selected){
        
        [recorddict setValue:@"Unilateral Straight Leg Raise Test (Lasegue Test)" forKey:@"unilateral"];
    }
    else{
        [recorddict setValue:@"null" forKey:@""];
    }
    if(button32.selected){
        
        [recorddict setValue:@"Bilateral Straight Leg Raise Test" forKey:@"bilateral"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"bilateral"];
    }
    
    if(button33.selected){
        
        [recorddict setValue:@"Well Straight Leg Raise Test" forKey:@"wellstraight"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"wellstraight"];
    }
    
    if(button34.selected){
        
        [recorddict setValue:@"Slump Test" forKey:@"slump"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"slump"];
    }
    
    if(button35.selected){
        
        [recorddict setValue:@"Thomas Test" forKey:@"thomas"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"thomas"];
    }
    
    if(button36.selected){
        
        [recorddict setValue:@"Spring Test" forKey:@"spring"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"spring"];
    }
    
    if(button37.selected){
        
        [recorddict setValue:@"Trendelenburg's Test" forKey:@"trendelenburg"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"trendelenburg"];
    }
    
    if(button38.selected){
        
        [recorddict setValue:@"Stork Standing Test" forKey:@"stork"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"stork"];
    }
    
    if(button39.selected){
        
        [recorddict setValue:@"Sacroiliac (SI) Joint Fixation Test" forKey:@"sijft"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"sijft"];
    }
    if(button40.selected){
        
        [recorddict setValue:@"Gillet Test" forKey:@"gillet"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"gillet"];
    }
    if(button41.selected){
        
        [recorddict setValue:@"Sacroiliac (SI) Joint Stress Tes" forKey:@"sijst"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"sijst"];
    }
    if(button42.selected){
        
        [recorddict setValue:@"Squish Test" forKey:@"squish"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"squish"];
    }
    
    if(button43.selected){
        
        [recorddict setValue:@"Yeoman's Test" forKey:@"yeoman"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"yeoman"];
    }
    
    if(button44.selected){
        
        [recorddict setValue:@"Gaenslen's Test" forKey:@"gaenslen"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"gaenslen"];
    }
    
    if(button45.selected){
        
        [recorddict setValue:@"Patrick or FABER Test" forKey:@"patrick"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"patrick"];
    }
    
    if(button46.selected){
        
        [recorddict setValue:@"Long-Sitting Test" forKey:@"longsitting"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"longsitting"];
    }

    a=1;

    [self performSegueWithIdentifier:@"moretest2" sender:self];
    NSLog(@"recoed dict in second:::%@",recorddict);
    NSLog(@"size of record dict in second:::%d",[recorddict count]);
    
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
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
        NSLog(@"recorddict in radio second %@",recorddict);
        NSLog(@"size of recorddict:%d",[recorddict count]);
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
@end
