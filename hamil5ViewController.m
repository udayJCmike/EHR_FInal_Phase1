//
//  hamil5ViewController.m
//  hamil
//
//  Created by Admin on 06/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "hamil5ViewController.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "TestMoreViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"


@interface hamil5ViewController ()

@end

@implementation hamil5ViewController
@synthesize recorddict;
@synthesize valgleft;
@synthesize valgright;
@synthesize valvarleft;
@synthesize valvarright;
@synthesize allenleft;
@synthesize allenright;
@synthesize apleysleft;
@synthesize apleysright;
@synthesize drawaer1left;
@synthesize drawer1right;
@synthesize drawer2left;
@synthesize drawer2right;
@synthesize ligsegl;
@synthesize ligsegr;
@synthesize moretestdict;

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



NSString *seg1,*seg2,*seg3,*seg4,*seg5,*seg5,*seg6,*seg7,*seg8,*seg9,*seg10,*seg11,*seg12,*seg13,*seg14,*seg15,*seg16,*seg17,*seg18;
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
    //	NSLog(@"%@", date);
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if([identifier isEqual:@"more1"])
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
    return NO;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"more4"])
    {
        
        TestMoreViewController*destViewController = [segue destinationViewController];
        destViewController.moretestdict=moretestdict;
        NSLog(@"moretest in third %@",moretestdict);
        NSLog(@"moretest count in third %d",[moretestdict count]);
    }
    
}
- (IBAction)moreteset:(id)sender {
    moretestdict=[[NSMutableDictionary alloc]init];
    [moretestdict setValue:@"hamil5ViewController" forKey:@"fromclass"];
    
    
    [self performSegueWithIdentifier:@"more4" sender:self];
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (IBAction)save:(id)sender
{
    //recorddict=[[NSMutableDictionary alloc]init];
    a=1;
    if (b1.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Dugasright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Dugasright"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Dugasleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Dugasleft"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Suprasright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Suprasright"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Suprasleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Suprasleft"];
    }
    if (b5.selected)
    {
        [recorddict setValue:@"Right" forKey:@"codright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"codright"];
    }
    if (b6.selected)
    {
        [recorddict setValue:@"Left" forKey:@"codleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"codleft"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Right" forKey:@"speedright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"speedright"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"Left" forKey:@"speedleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"speedleft"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"Right" forKey:@"yerright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"yerright"];
    }
    if (b10.selected)
    {
        [recorddict setValue:@"Left" forKey:@"yerleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"yerleft"];
    }
    if (b11.selected)
    {
        [recorddict setValue:@"Right" forKey:@"el_tinright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"el_tinright"];
    }
    if (b12.selected)
    {
        [recorddict setValue:@"Left" forKey:@"el_tinleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"el_tinleft"];
    }
    
    if (b15.selected)
    {
        [recorddict setValue:@"Right" forKey:@"golfersright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"golfersright"];
    }
    if (b16.selected)
    {
        [recorddict setValue:@"Left" forKey:@"golfersleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"golfersleft"];
    }
    if (b17.selected)
    {
        [recorddict setValue:@"Right" forKey:@"tennisright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"tennisright"];
    }
    if (b18.selected)
    {
        [recorddict setValue:@"Left" forKey:@"tennisleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"tennisleft"];
    }
    if (b19.selected)
    {
        [recorddict setValue:@"Right" forKey:@"wr_tinright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"wr_tinright"];
    }
    if (b20.selected)
    {
        [recorddict setValue:@"Left" forKey:@"wr_tinleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"wr_tinleft"];
    }
    if (b21.selected)
    {
        [recorddict setValue:@"Right" forKey:@"phalright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"phallright"];
    }
    if (b22.selected)
    {
        [recorddict setValue:@"Left" forKey:@"phalleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"phalleft"];
    }
    if (b23.selected)
    {
        [recorddict setValue:@"Right" forKey:@"finkright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"finkright"];
    }
    if (b24.selected)
    {
        [recorddict setValue:@"Left" forKey:@"finkleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"finkleft"];
    }
    if (b25.selected)
    {
        [recorddict setValue:@"Right" forKey:@"braceright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"braceright"];
    }
    if (b26.selected)
    {
        [recorddict setValue:@"Left" forKey:@"braceleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"braceleft"];
    }
    
    
    if (b31.selected)
    {
        [recorddict setValue:@"Right" forKey:@"patright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"patright"];
    }
    if (b32.selected)
    {
        [recorddict setValue:@"Left" forKey:@"patleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"patleft"];
    }
    
    if (b41.selected)
    {
        [recorddict setValue:@"Right" forKey:@"an_thomright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"an_thomright"];
    }
    if (b42.selected)
    {
        [recorddict setValue:@"Left" forKey:@"an_thomleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"an_thomleft"];
    }
    if (b43.selected)
    {
        [recorddict setValue:@"Right" forKey:@"an_tinright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"an_tinright"];
    }
    if (b44.selected)
    {
        [recorddict setValue:@"Left" forKey:@"an_tinleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"an_tinleft"];
    }
    if (b45.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Strunright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Strunright"];
    }
    if (b46.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Strunleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Strunleft"];
    }
    if (b47.selected)
    {
        [recorddict setValue:@"Right" forKey:@"homright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"homright"];
    }
    if (b48.selected)
    {
        [recorddict setValue:@"Left" forKey:@"homleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"homleft"];
    }
    if (b49.selected)
    {
        [recorddict setValue:@"Right" forKey:@"an_cluright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"an_cluright"];
    }
    if (b50.selected)
    {
        [recorddict setValue:@"Left" forKey:@"an_cluleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"an_cluleft"];
    }
    
    [recorddict setValue:seg1 forKey:@"ligainstright"];
    [recorddict setValue:seg2 forKey:@"ligainstleft"];
    [recorddict setValue:seg3 forKey:@"allenright"];
    [recorddict setValue:seg4 forKey:@"allenleft"];
    [recorddict setValue:seg5 forKey:@"valgusright"];
    [recorddict setValue:seg6 forKey:@"valgusleft"];
    [recorddict setValue:seg7 forKey:@"drawer1right"];
    [recorddict setValue:seg8 forKey:@"drawer1left"];
    [recorddict setValue:seg9 forKey:@"valvarusright"];
    [recorddict setValue:seg10 forKey:@"valvarusleft"];
    [recorddict setValue:seg11 forKey:@"apleysright"];
    [recorddict setValue:seg12 forKey:@"apleysleft"];
    [recorddict setValue:seg11 forKey:@"drawer2right"];
    [recorddict setValue:seg12 forKey:@"drawer2left"];
    
    NSLog(@"count in record dict:%d",[recorddict count]);
    HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
    HUD.mode=MBProgressHUDModeIndeterminate;
    HUD.delegate = self;
    HUD.labelText = @"Submitting";
    [HUD show:YES];
    
    if ([[self submitvalues]isEqualToString:@"success"])
    {
        [self insertdata];
    }
    
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
    seg1=@"MCL";
    seg2=@"MCL";
    seg3=@"slow radial refill";
    seg4=@"slow radial refill";
    seg5=@"MCL";
    seg6=@"MCL";
    seg7=@"ACL";
    seg8=@"ACL";
    seg9=@"MCL";
    seg10=@"MCL";
    seg11=@"MM";
    seg12=@"MM";
    seg13=@"ACL";
    seg14=@"ACL";
	// Do any additional setup after loading the view.
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

- (void)dealloc {
    /* [b1 release];
     [b2 release];
     [b3 release];
     [b4 release];
     [b5 release];
     [b6 release];
     [b7 release];
     [b8 release];
     [b9 release];
     [b10 release];
     [b11 release];
     [b12 release];
     [b13 release];
     [b14 release];
     [b15 release];
     [b16 release];
     [b17 release];
     [b18 release];
     [b19 release];
     [b20 release];
     [b21 release];
     [b22 release];
     [b23 release];
     [b24 release];
     [b25 release];
     [b26 release];
     [b27 release];
     [b28 release];
     [b29 release];
     [b30 release];
     [b31 release];
     [b32 release];
     [b33 release];
     [b34 release];
     [b35 release];
     [b36 release];
     [b37 release];
     [b38 release];
     [b39 release];
     [b40 release];
     [b41 release];
     [b42 release];
     [b43 release];
     [b44 release];
     [b45 release];
     [b46 release];
     [b47 release];
     [b48 release];
     [b49 release];
     [b50 release];
     [ligsegr release];
     [ligsegl release];
     [allenright release];
     [allenleft release];
     [valgright release];
     [valgleft release];
     [drawer1right release];
     [drawaer1left release];
     [valvarright release];
     [valvarleft release];
     [apleysright release];
     [apleysleft release];
     [drawer2right release];
     [drawer2left release];
     */
    [super dealloc];
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}



- (IBAction)reset:(id)sender {
    
    seg1=@"MCL";
    seg2=@"MCL";
    seg3=@"slow radial refill";
    seg4=@"slow radial refill";
    seg5=@"MCL";
    seg6=@"MCL";
    seg7=@"ACL";
    seg8=@"ACL";
    seg9=@"MCL";
    seg10=@"MCL";
    seg11=@"MM";
    seg12=@"MM";
    seg13=@"ACL";
    seg14=@"ACL";
    [ligsegr setSelectedSegmentIndex:0];
    [ligsegl setSelectedSegmentIndex:0];
    [apleysleft setSelectedSegmentIndex:0];
    [apleysright setSelectedSegmentIndex:0];
    [allenright setSelectedSegmentIndex:0];
    [allenleft setSelectedSegmentIndex:0];
    [drawer1right setSelectedSegmentIndex:0];
    [drawer2left setSelectedSegmentIndex:0];
    
    [valvarleft setSelectedSegmentIndex:0];
    [valvarright setSelectedSegmentIndex:0];
    [valgleft setSelectedSegmentIndex:0];
    [valgright setSelectedSegmentIndex:0];
    [drawaer1left setSelectedSegmentIndex:0];
    [drawer2right setSelectedSegmentIndex:0];
    
    b1.selected=NO;
    b2.selected=NO;
    b3.selected=NO;
    b4.selected=NO;
    b5.selected=NO;
    b6.selected=NO;
    b7.selected=NO;
    b8.selected=NO;
    b9.selected=NO;
    b10.selected=NO;
    b11.selected=NO;
    b12.selected=NO;
    b13.selected=NO;
    b14.selected=NO;
    b15.selected=NO;
    b16.selected=NO;
    b17.selected=NO;
    b18.selected=NO;
    b19.selected=NO;
    b20.selected=NO;
    b21.selected=NO;
    b22.selected=NO;
    b23.selected=NO;
    b24.selected=NO;
    b25.selected=NO;
    b26.selected=NO;
    b27.selected=NO;
    b28.selected=NO;
    b29.selected=NO;
    b30.selected=NO;
    b31.selected=NO;
    b32.selected=NO;
    b33.selected=NO;
    b34.selected=NO;
    b35.selected=NO;
    b36.selected=NO;
    b37.selected=NO;
    b38.selected=NO;
    b39.selected=NO;
    b40.selected=NO;
    b41.selected=NO;
    b42.selected=NO;
    b43.selected=NO;
    b44.selected=NO;
    b45.selected=NO;
    b46.selected=NO;
    b47.selected=NO;
    b48.selected=NO;
    b49.selected=NO;
    b50.selected=NO;
    [b1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b19 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b20 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b21 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b22 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b23 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b24 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b25 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b26 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b27 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b28 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b29 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b30 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b31 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b32 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b33 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b34 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b35 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b36 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b37 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b38 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b39 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b40 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b41 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b42 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b43 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b44 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b45 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b46 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b47 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b48 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b49 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [b50 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
}
- (IBAction)allenleft:(id)sender {
    if(allenleft.selectedSegmentIndex==0){
        seg4=@"slow radial refill";
    }
    else if(allenleft.selectedSegmentIndex==1){
        seg4=@"slow ulnar refill";
    }
}

- (IBAction)alenright:(id)sender {
    if(allenright.selectedSegmentIndex==0){
        seg3=@"slow radial refill";
    }
    else if(allenright.selectedSegmentIndex==1){
        seg3=@"slow ulnar refill";
    }
}

- (IBAction)ligl:(id)sender {
    if(ligsegl.selectedSegmentIndex==0){
        
        
        seg2=@"MCL";
    }
    else if(ligsegl.selectedSegmentIndex==1){
        
        
        seg2=@"LCL";
    }
}

- (IBAction)ligr:(id)sender {
    if(ligsegr.selectedSegmentIndex==0){
        
        
        seg1=@"MCL";
    }
    else if(ligsegr.selectedSegmentIndex==1){
        
        
        seg1=@"LCL";
    }
    
}




- (IBAction)drawer1right:(id)sender {
    
    if(drawer1right.selectedSegmentIndex==0){
        
        
        seg7=@"ACL";
    }
    else if(drawer1right.selectedSegmentIndex==1){
        
        
        seg7=@"PCL";
    }
}

- (IBAction)drawer1left:(id)sender {
    if(drawaer1left.selectedSegmentIndex==0){
        
        
        seg8=@"ACL";
    }
    else if(drawaer1left.selectedSegmentIndex==1){
        
        
        seg8=@"PCL";
    }
}

- (IBAction)valvararight:(id)sender {
    if(valvarright.selectedSegmentIndex==0){
        
        
        seg9=@"MCL";
    }
    else if(valvarright.selectedSegmentIndex==1){
        
        
        seg9=@"LCL";
    }
    
    
}

- (IBAction)valvaraleft:(id)sender {
    if(valvarleft.selectedSegmentIndex==0){
        
        
        seg10=@"MCL";
    }
    else if(valvarleft.selectedSegmentIndex==1){
        
        
        seg10=@"LCL";
    }
}

- (IBAction)apleysright:(id)sender {
    
    
    if(apleysright.selectedSegmentIndex==0){
        
        
        seg11=@"MM";
    }
    else if(apleysright.selectedSegmentIndex==1){
        
        
        seg11=@"LM";
    }
    
    else if(apleysright.selectedSegmentIndex==2){
        
        
        seg11=@"MCL";
    }
    else if(apleysright.selectedSegmentIndex==3){
        
        
        seg11=@"LCL";
    }
    
}

- (IBAction)apleysleft:(id)sender {
    
    if(apleysleft.selectedSegmentIndex==0){
        
        
        seg12=@"MM";
    }
    else if(apleysleft.selectedSegmentIndex==1){
        
        
        seg12=@"LM";
    }
    
    else if(apleysleft.selectedSegmentIndex==2){
        
        
        seg12=@"MCL";
    }
    else if(apleysleft.selectedSegmentIndex==3){
        
        
        seg12=@"LCL";
    }
}

- (IBAction)draer2right:(id)sender {
    if(drawer2right.selectedSegmentIndex==0){
        
        
        seg13=@"ACL";
    }
    else if(drawer2right.selectedSegmentIndex==1){
        
        
        seg13=@"PCL";
    }
}

- (IBAction)drawer2left:(id)sender {
    if(drawer2left.selectedSegmentIndex==0){
        
        
        seg14=@"ACL";
    }
    else if(drawer2left.selectedSegmentIndex==1){
        
        
        seg14=@"PCL";
    }
}

- (IBAction)vallrightty:(id)sender {
    if(valgright.selectedSegmentIndex==0){
        
        
        seg5=@"MCL";
    }
    else if(valgright.selectedSegmentIndex==1){
        
        
        seg5=@"LCL";
    }
}

- (IBAction)valgright:(id)sender {
    if(valgleft.selectedSegmentIndex==0){
        
        
        seg6=@"MCL";
    }
    else if(valgleft.selectedSegmentIndex==1){
        
        
        seg6=@"LCL";
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
    
    
}-(void)insertdata
{
    
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1:@"patient_id" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"hamiltonchiropractic Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
                
                [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
                
                [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
        }
    }
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"HamiltonChiropractic.php?service=hamiltonchiropracticinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    NSLog(@"values in record dictionaries::%@",recorddict);
    // NSLog(@"recorddict values::%@",recorddict);
    //NSLog(@"value of reflesxes si:%@",[recorddict objectForKey:@"reflexes SI left"]);
    //  NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&lumbopelvic=%@&lumboright=%@&lumboleft=%@&cervical=%@&cervicalright=%@&cervicalleft=%@&thoracic=%@&thoracicright=%@&thoracicleft=%@&hacheck=%@&ha=%@&haa=%@&neckcheck=%@&neck=%@&necka=%@&mbcheck=%@&mb=%@&mba=%@&ribscheck=%@&ribs=%@&ribsa=%@&shouldercheck=%@&shoulder=%@&shouldera=%@&elbowcheck=%@&elbow=%@&elbowa=%@&handcheck=%@&hand=%@&handa=%@&wristcheck=%@&wrist=%@&wrista=%@&lbpcheck=%@&lbp=%@&lbpa=%@&hipcheck=%@&hip=%@&hipa=%@&legcheck=%@&leg=%@&lega=%@&kneecheck=%@&knee=%@&kneea=%@&footcheck=%@&foot=%@&foota=%@&anklecheck=%@&ankle=%@&anklea=%@&suddenly=%@&gradually=%@&hours=%@&days=%@&date=%@&reason=%@&acute=%@&subacute=%@&chronic=%@&lyingdown=%@&sitting=%@&standing=%@&bending=%@&rest=%@&otherb=%@&othere=%@&ice=%@&heat=%@&massage=%@&aspirin=%@&otherdone=%@&otherit=%@&bendingworse=%@&twisting=%@&lifting=%@&walking=%@&activity=%@&otherworse=%@&otherfeel=%@&sharp=%@&severe=%@&dull=%@&burning=%@&nagging=%@&throbbing=%@&numb=%@&tingling=%@&stiff=%@&stabbing=%@&cramping=%@&otherdescribe=%@&otherpain=%@&constant=%@&intermittent=%@&local=%@&diffuse=%@&radiates=%@&otherradiates=%@&mild=%@&moderate=%@&severepain=%@&crippling=%@&am=%@&pm=%@&othertime=%@&otherdn=%@&better=%@&same=%@&worse=%@&yes=%@&no=%@&day=%@&work=%@&sleep=%@&otherdaily=%@&othercondition=%@&sameass=%@&improved=%@&worseass=%@&plateau=%@&preinjury=%@&slight=%@&moderatly=%@&great=%@&chiropractic=%@&ems=%@&iceplan=%@&heatplan=%@&nimmo=%@&ultrasound=%@&manualtraction=%@&massageplan=%@&neuromuscular=%@&stretching=%@&strengthening=%@&remobilization=%@&improvesubluxations=%@&rehab=%@&modificat=%@&care=%@&refer=%@&decreasepain=%@&decreasespam=%@&increaserom=%@&improveadl=%@&fullactivity=%@&returntowork=%@&renewsports=%@&jacksonsr=%@&jacksonsl=%@&jacksonslo=%@&foramin_compr=%@&foramin_compl=%@&foramin_complo=%@&shoulder_deprr=%@&shoulder_deprl=%@&shoulder_deprlo=%@&georgesr=%@&georgesl=%@&georgeslo=%@&odonor=%@&odonol=%@&bakody_signr=%@&bakody_signl=%@&bakody_signlo=%@&distraction_testr=%@&distraction_testl=%@&valsalvar=%@&valsalval=%@&valsalvalo=%@&spinal_percuss=%@&gripdynamomright=%@&gripdynamomleft=%@&adsonsr=%@&adsonsl=%@&adsonslo=%@&rustsignr=%@&rustsignl=%@&rustsignlo=%@&spinal_percusst=%@&adams_testr=%@&adams_testl=%@&sheppal_signr=%@&sheppal_signl=%@&soto_hallr=%@&soto_halll=%@&compression_testr=%@&compression_testl=%@&compression_testlo=%@&antalgiar=%@&antalgial=%@&spinal_percusslr=%@&valsalvalr=%@&valsalvall=%@&minors_signr=%@&minors_signl=%@&braggards_testr=%@&braggards_testl=%@&slrr=%@&slrl=%@&wlrr=%@&wlrl=%@&hooversr=%@&hooversl=%@&dbl_leg_raiser=%@&dbl_leg_raisel=%@&long_leg_testr=%@&long_leg_testl=%@&anvil_testr=%@&anvil_testl=%@&thomasr=%@&thomasl=%@&milgrams_testr=%@&milgrams_testl=%@&obersr=%@&obersl=%@&illiaccompr=%@&illiaccompl=%@&yeomansr=%@&yeomansl=%@&allis_signr=%@&allis_signl=%@&dugasr=%@&dugasl=%@&supraspinatusr=%@&supraspinatusl=%@&codmansr=%@&codmansl=%@&speeds_testr=%@&speeds_testl=%@&yergasonsr=%@&yergasonsl=%@&tinelser=%@&tinelsel=%@&lingaminstabr=%@&lingaminstabl=%@&golfers_elbowr=%@&golfers_elbowl=%@&tennis_elbowr=%@&tennis_elbowl=%@&tinelsr=%@&tinelsl=%@&phalensr=%@&phalensl=%@&finkelsteins_testr=%@&finkelsteins_testl=%@&braceletr=%@&braceletl=%@&allensr=%@&allensl=%@&valgus_varusr=%@&valgus_varusl=%@&pat_ballr=%@&pat_balll=%@&drawerr=%@&drawerl=%@&val_varusr=%@&val_varusl=%@&apleysr=%@&apleysl=%@&ankdrawr=%@&ankdrawl=%@&ankthomr=%@&ankthoml=%@&anktinelr=%@&anktinell=%@&ankstrunkr=%@&ankstrunkl=%@&ankhomanr=%@&ankhomanl=%@&ankclaudicr=%@&ankclaudicl=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"patname"],[recorddict objectForKey:@"datey"],[recorddict objectForKey:@"text2"],[recorddict objectForKey:@"text3"],[recorddict objectForKey:@"firstseg"],[recorddict objectForKey:@"secondseg"],[recorddict objectForKey:@"thirdseg"],[recorddict objectForKey:@"fourthseg"],[recorddict objectForKey:@"firstcheck"],[recorddict objectForKey:@"fifthseg"],[recorddict objectForKey:@"sixthseg"],[recorddict objectForKey:@"seventhseg"],[recorddict objectForKey:@"eigthseg"],[recorddict objectForKey:@"ninthseg"],[recorddict objectForKey:@"tenthseg"],[recorddict objectForKey:@"eleventhseg"],[recorddict objectForKey:@"twelthseg"],[recorddict objectForKey:@"thirteenthseg"],[recorddict objectForKey:@"othernotes"],[recorddict objectForKey:@"secondcheck"],[recorddict objectForKey:@"thirdcheck"],[recorddict objectForKey:@"fourthcheck"],[recorddict objectForKey:@"flex"],[recorddict objectForKey:@"t1"],[recorddict objectForKey:@"t2"],[recorddict objectForKey:@"adl"],[recorddict objectForKey:@"adr"],[recorddict objectForKey:@"extens"],[recorddict objectForKey:@"t3"],[recorddict objectForKey:@"t4"],[recorddict objectForKey:@"sl"],[recorddict objectForKey:@"sr"],[recorddict objectForKey:@"latflex"],[recorddict objectForKey:@"latflexr"],[recorddict objectForKey:@"t5"],[recorddict objectForKey:@"t6"],[recorddict objectForKey:@"vl"],[recorddict objectForKey:@"vr"],[recorddict objectForKey:@"rotl"],[recorddict objectForKey:@"rotr"],[recorddict objectForKey:@"t7"],[recorddict objectForKey:@"t8"],[recorddict objectForKey:@"dl"],[recorddict objectForKey:@"dr"],[recorddict objectForKey:@"t9"],[recorddict objectForKey:@"t10"],[recorddict objectForKey:@"sol"],[recorddict objectForKey:@"sor"],[recorddict objectForKey:@"t11"],[recorddict objectForKey:@"t12"],[recorddict objectForKey:@"stl"],[recorddict objectForKey:@"str"],[recorddict objectForKey:@"bl"],[recorddict objectForKey:@"br"],[recorddict objectForKey:@"checkstringone"],[recorddict objectForKey:@"textstringone"],[recorddict objectForKey:@"picker one"],[recorddict objectForKey:@"checkstringtwo"],[recorddict objectForKey:@"checkstringthree"],[recorddict objectForKey:@"checkstringfour"],[recorddict objectForKey:@"checkstringfive"],[recorddict objectForKey:@"otherstringggooo"],[recorddict objectForKey:@"textstringtwo"],[recorddict objectForKey:@"seg for pat ccare"],[recorddict objectForKey:@"firstdiagnosis"],[recorddict objectForKey:@"seconddiagnosis"],[recorddict objectForKey:@"thirddiagnosis"],[recorddict objectForKey:@"fourthdiagnosis"],[recorddict objectForKey:@"fifthdiagnosis"],[recorddict objectForKey:@"sixthdiagnosis"],[recorddict objectForKey:@"day"],[recorddict objectForKey:@"week"],[recorddict objectForKey:@"checkselected1"],[recorddict objectForKey:@"checkselected2"],[recorddict objectForKey:@"checkselected3"],[recorddict objectForKey:@"checkselected4"],[recorddict objectForKey:@"checkselected5"],[recorddict objectForKey:@"checkselected6"],[recorddict objectForKey:@"checkselected7"],[recorddict objectForKey:@"checkselected8"],[recorddict objectForKey:@"checkselected9"],[recorddict objectForKey:@"checkselected10"],[recorddict objectForKey:@"checkselected11"],[recorddict objectForKey:@"checkselected12"],[recorddict objectForKey:@"checkselected13"],[recorddict objectForKey:@"checkselected14"],[recorddict objectForKey:@"checkselected15"],[recorddict objectForKey:@"othercheck"],[recorddict objectForKey:@"signature"],secondEntity,value2];
    
    
    NSString *post=[[NSString alloc] initWithFormat:@"%@=%@&lumbopelvic=%@&lumboright=%@&lumboleft=%@&cervical=%@&cervicalright=%@&cervicalleft=%@&thoracic=%@&thoracicright=%@&thoracicleft=%@&hacheck=%@&ha=%@&haa=%@&neckcheck=%@&neck=%@&necka=%@&mbcheck=%@&mb=%@&mba=%@&ribscheck=%@&ribs=%@&ribsa=%@&shouldercheck=%@&shoulder=%@&shouldera=%@&elbowcheck=%@&elbow=%@&elbowa=%@&handcheck=%@&hand=%@&handa=%@&wristcheck=%@&wrist=%@&wrista=%@&lbpcheck=%@&lbp=%@&lbpa=%@&hipcheck=%@&hip=%@&hipa=%@&legcheck=%@&leg=%@&lega=%@&kneecheck=%@&knee=%@&kneea=%@&footcheck=%@&foot=%@&foota=%@&anklecheck=%@&ankle=%@&anklea=%@&suddenly=%@&gradually=%@&hours=%@&days=%@&date=%@&reason=%@&acute=%@&subacute=%@&chronic=%@&lyingdown=%@&sitting=%@&standing=%@&bending=%@&rest=%@&otherb=%@&othere=%@&ice=%@&heat=%@&massage=%@&aspirin=%@&otherdone=%@&otherit=%@&bendingworse=%@&twisting=%@&lifting=%@&walking=%@&activity=%@&otherworse=%@&otherfeel=%@&sharp=%@&severe=%@&dull=%@&burning=%@&nagging=%@&throbbing=%@&numb=%@&tingling=%@&stiff=%@&stabbing=%@&cramping=%@&otherdescribe=%@&otherpain=%@&",firstEntity,value1,[recorddict objectForKey:@"Lumbopelvic"],[recorddict objectForKey:@"lumbr"],[recorddict objectForKey:@"lumbl"],[recorddict objectForKey:@"Cervical"],[recorddict objectForKey:@"cervicr"],[recorddict objectForKey:@"cervicl"],[recorddict objectForKey:@"Thoracic"],[recorddict objectForKey:@"thoracicr"],[recorddict objectForKey:@"thoracicl"],[recorddict objectForKey:@"ha"],[recorddict objectForKey:@"har"],[recorddict objectForKey:@"hal"],[recorddict objectForKey:@"neck"],[recorddict objectForKey:@"neckr"],[recorddict objectForKey:@"neckl"],[recorddict objectForKey:@"mb"],[recorddict objectForKey:@"mbr"],[recorddict objectForKey:@"mbl"],[recorddict objectForKey:@"ribs"],[recorddict objectForKey:@"ribsr"],[recorddict objectForKey:@"ribsl"],[recorddict objectForKey:@"shoulder"],[recorddict objectForKey:@"shoulderr"],[recorddict objectForKey:@"shoulderl"],[recorddict objectForKey:@"elbow"],[recorddict objectForKey:@"elbr"],[recorddict objectForKey:@"elbl"],[recorddict objectForKey:@"hand"],[recorddict objectForKey:@"handr"],[recorddict objectForKey:@"handl"],[recorddict objectForKey:@"wrist"],[recorddict objectForKey:@"wristr"],[recorddict objectForKey:@"wristl"],[recorddict objectForKey:@"lbp"],[recorddict objectForKey:@"lbpr"],[recorddict objectForKey:@"lbpl"],[recorddict objectForKey:@"hip"],[recorddict objectForKey:@"hipr"],[recorddict objectForKey:@"hipl"],[recorddict objectForKey:@"leg"],[recorddict objectForKey:@"legr"],[recorddict objectForKey:@"legl"],[recorddict objectForKey:@"knee"],[recorddict objectForKey:@"kneer"],[recorddict objectForKey:@"kneel"],[recorddict objectForKey:@"foot"],[recorddict objectForKey:@"footr"],[recorddict objectForKey:@"footl"],[recorddict objectForKey:@"ankle"],[recorddict objectForKey:@"ankler"],[recorddict objectForKey:@"anklel"],[recorddict objectForKey:@"sud"],[recorddict objectForKey:@"grad"],[recorddict objectForKey:@"gradual hours"],[recorddict objectForKey:@"gradual days"],[recorddict objectForKey:@"injury date"],[recorddict objectForKey:@"happened"],[recorddict objectForKey:@"acute"],[recorddict objectForKey:@"subacute"],[recorddict objectForKey:@"chronic"],[recorddict objectForKey:@"lying"],[recorddict objectForKey:@"sit"],[recorddict objectForKey:@"stand"],[recorddict objectForKey:@"bend1"],[recorddict objectForKey:@"rest"],[recorddict objectForKey:@"feelbetterother"],[recorddict objectForKey:@"feel better other text"],[recorddict objectForKey:@"ice"],[recorddict objectForKey:@"heat"],[recorddict objectForKey:@"massage"],[recorddict objectForKey:@"asprin"],[recorddict objectForKey:@"doneother"],[recorddict objectForKey:@"done other text"],[recorddict objectForKey:@"bending2"],[recorddict objectForKey:@"twist"],[recorddict objectForKey:@"lift"],[recorddict objectForKey:@"walk"],[recorddict objectForKey:@"activity"],[recorddict objectForKey:@"feelworseother"],[recorddict objectForKey:@"feel worse other text"],[recorddict objectForKey:@"sharp"],[recorddict objectForKey:@"severeone"],[recorddict objectForKey:@"dull"],[recorddict objectForKey:@"burn"],[recorddict objectForKey:@"deep"],[recorddict objectForKey:@"throb"],[recorddict objectForKey:@"numb"],[recorddict objectForKey:@"ting"],[recorddict objectForKey:@"stiff"],[recorddict objectForKey:@"stab"],[recorddict objectForKey:@"cramp"],[recorddict objectForKey:@"painother"],[recorddict objectForKey:@"pain other text"]];
    
    NSString *post1=[[NSString alloc] initWithFormat:@"constant=%@&intermittent=%@&local=%@&diffuse=%@&radiates=%@&otherradiates=%@&mild=%@&moderate=%@&severepain=%@&crippling=%@&am=%@&pm=%@&othertime=%@&otherdn=%@&better=%@&same=%@&worse=%@&yes=%@&no=%@&day=%@&work=%@&sleep=%@&otherdaily=%@&othercondition=%@&sameass=%@&improved=%@&worseass=%@&plateau=%@&preinjury=%@&slight=%@&moderatly=%@&great=%@&chiropractic=%@&ems=%@&iceplan=%@&heatplan=%@&nimmo=%@&ultrasound=%@&manualtraction=%@&massageplan=%@&neuromuscular=%@&stretching=%@&strengthening=%@&remobilization=%@&improvesubluxations=%@&rehab=%@&modificat=%@&care=%@&refer=%@&decreasepain=%@&decreasespam=%@&increaserom=%@&improveadl=%@&fullactivity=%@&returntowork=%@&renewsports=%@&jacksonsr=%@&jacksonsl=%@&jacksonslo=%@&foramin_compr=%@&foramin_compl=%@&foramin_complo=%@&shoulder_deprr=%@&shoulder_deprl=%@&shoulder_deprlo=%@&georgesr=%@&georgesl=%@&georgeslo=%@&odonor=%@&odonol=%@&bakody_signr=%@&bakody_signl=%@&bakody_signlo=%@&distraction_testr=%@&distraction_testl=%@&valsalvar=%@&valsalval=%@&valsalvalo=%@&spinal_percuss=%@&gripdynamomright=%@&gripdynamomleft=%@&adsonsr=%@&adsonsl=%@&adsonslo=%@&rustsignr=%@&rustsignl=%@&rustsignlo=%@&spinal_percusst=%@&adams_testr=%@&adams_testl=%@&sheppal_signr=%@&sheppal_signl=%@&soto_hallr=%@&soto_halll=%@&compression_testr=%@&compression_testl=%@&compression_testlo=%@&",[recorddict objectForKey:@"const"],[recorddict objectForKey:@"intermit"],[recorddict objectForKey:@"local"],[recorddict objectForKey:@"diffuse"],[recorddict objectForKey:@"radiate"],[recorddict objectForKey:@"radiates text"],[recorddict objectForKey:@"mild"],[recorddict objectForKey:@"moder"],[recorddict objectForKey:@"severe"],[recorddict objectForKey:@"crip"],[recorddict objectForKey:@"am"],[recorddict objectForKey:@"pm"],[recorddict objectForKey:@"morning other"],[recorddict objectForKey:@"morning other text"],[recorddict objectForKey:@"better"],[recorddict objectForKey:@"same"],[recorddict objectForKey:@"progressively"],[recorddict objectForKey:@"yes"],[recorddict objectForKey:@"no"],[recorddict objectForKey:@"last day"],[recorddict objectForKey:@"work"],[recorddict objectForKey:@"sleep"],[recorddict objectForKey:@"condition affected other"],[recorddict objectForKey:@"condition affected text"],[recorddict objectForKey:@"same diag"],[recorddict objectForKey:@"improved"],[recorddict objectForKey:@"worse"],[recorddict objectForKey:@"plateau"],[recorddict objectForKey:@"AT pre"],[recorddict objectForKey:@"slightly"],[recorddict objectForKey:@"moderately"],[recorddict objectForKey:@"greatly"],[recorddict objectForKey:@"skilled"],[recorddict objectForKey:@"ems"],[recorddict objectForKey:@"treatment_ice"],[recorddict objectForKey:@"treatment_heat"],[recorddict objectForKey:@"nimmo"],[recorddict objectForKey:@"ultra"],[recorddict objectForKey:@"manual"],[recorddict objectForKey:@"treatment_massage"],[recorddict objectForKey:@"Neuro"],[recorddict objectForKey:@"treat_stretch"],[recorddict objectForKey:@"treat_strength"],[recorddict objectForKey:@"remo"],[recorddict objectForKey:@"imp sub"],[recorddict objectForKey:@"rehab"],[recorddict objectForKey:@"modificate"],[recorddict objectForKey:@"release"],[recorddict objectForKey:@"refer"],[recorddict objectForKey:@"decrease pain"],[recorddict objectForKey:@"decrease spam"],[recorddict objectForKey:@"inc rom"],[recorddict objectForKey:@"imp adl"],[recorddict objectForKey:@"full acti"],[recorddict objectForKey:@"return to"],[recorddict objectForKey:@"renew sport"],[recorddict objectForKey:@"jackright"],[recorddict objectForKey:@"jackleft"],[recorddict objectForKey:@"jacklocal"],[recorddict objectForKey:@"Foraminright"],[recorddict objectForKey:@"Foraminleft"],[recorddict objectForKey:@"Foraminlocal"],[recorddict objectForKey:@"Shoulderight"],[recorddict objectForKey:@"Shoulderleft"],[recorddict objectForKey:@"Shoulderlocal"],[recorddict objectForKey:@"Georgeright"],[recorddict objectForKey:@"Georgeleft"],[recorddict objectForKey:@"Georgelocal"],[recorddict objectForKey:@"Odonoright"],[recorddict objectForKey:@"Odonoleft"],[recorddict objectForKey:@"Bacodyright"],[recorddict objectForKey:@"Bacodyleft"],[recorddict objectForKey:@"Bacodylocal"],[recorddict objectForKey:@"relief"],[recorddict objectForKey:@"noreli"],[recorddict objectForKey:@"cer_valright"],[recorddict objectForKey:@"cer_valleft"],[recorddict objectForKey:@"cer_vallocal"],[recorddict objectForKey:@"cervical_Painlevel"],[recorddict objectForKey:@"Right text"],[recorddict objectForKey:@"Left text"],[recorddict objectForKey:@"Adsonsright"],[recorddict objectForKey:@"Adsonsleft"],[recorddict objectForKey:@"Adsonslocal"],[recorddict objectForKey:@"rustright"],[recorddict objectForKey:@"rustleft"],[recorddict objectForKey:@"rustlocal"],[recorddict objectForKey:@"Thoracic painlevel"],[recorddict objectForKey:@"humpre"],[recorddict objectForKey:@"humpdis"],[recorddict objectForKey:@"shep_pain1"],[recorddict objectForKey:@"shep_pain2"],[recorddict objectForKey:@"c/s"],[recorddict objectForKey:@"t/s"],[recorddict objectForKey:@"compright"],[recorddict objectForKey:@"compleft"],[recorddict objectForKey:@"complocal"]];
    
    
    NSString *post2=[[NSString alloc]initWithFormat:@"antalgiar=%@&antalgial=%@&spinal_percusslr=%@&valsalvalr=%@&valsalvall=%@&minors_signr=%@&minors_signl=%@&braggards_testr=%@&braggards_testl=%@&slrr=%@&slrl=%@&wlrr=%@&wlrl=%@&hooversr=%@&hooversl=%@&dbl_leg_raiser=%@&dbl_leg_raisel=%@&long_leg_testr=%@&long_leg_testl=%@&anvil_testr=%@&anvil_testl=%@&thomasr=%@&thomasl=%@&milgrams_testr=%@&milgrams_testl=%@&obersr=%@&obersl=%@&illiaccompr=%@&illiaccompl=%@&yeomansr=%@&yeomansl=%@&allis_signr=%@&allis_signl=%@&",[recorddict objectForKey:@"Antelgiaright"],[recorddict objectForKey:@"Antelgialeft"],[recorddict objectForKey:@"painlevellumbar"],[recorddict objectForKey:@"lum_Valsalright"],[recorddict objectForKey:@"lum_Valsalleft"],[recorddict objectForKey:@"Minorsright"],[recorddict objectForKey:@"Minorsleft"],[recorddict objectForKey:@"Braggright"],[recorddict objectForKey:@"Braggleft"],[recorddict objectForKey:@"SLRr"],[recorddict objectForKey:@"SLRl"],[recorddict objectForKey:@"WLRr"],[recorddict objectForKey:@"WLRl"],[recorddict objectForKey:@"Hooversright"],[recorddict objectForKey:@"Hooversleft"],[recorddict objectForKey:@"dbllegright"],[recorddict objectForKey:@"dbllegleft"],[recorddict objectForKey:@"Longright"],[recorddict objectForKey:@"Longleft"],[recorddict objectForKey:@"Anvilright"],[recorddict objectForKey:@"Anvilleft"],[recorddict objectForKey:@"thomasright"],[recorddict objectForKey:@"thomasleft"],[recorddict objectForKey:@"milgramright"],[recorddict objectForKey:@"milgramleft"],[recorddict objectForKey:@"Obersright"],[recorddict objectForKey:@"Obersleft"],[recorddict objectForKey:@"lliaright"],[recorddict objectForKey:@"llialeft"],[recorddict objectForKey:@"yeomanright"],[recorddict objectForKey:@"yeomanleft"],[recorddict objectForKey:@"AllisRight"],[recorddict objectForKey:@"AllisLeft"]];
    
    NSString *post3=[[NSString alloc]initWithFormat:@"dugasr=%@&dugasl=%@&supraspinatusr=%@&supraspinatusl=%@&codmansr=%@&codmansl=%@&speeds_testr=%@&speeds_testl=%@&yergasonsr=%@&yergasonsl=%@&tinelser=%@&tinelsel=%@&lingaminstabr=%@&lingaminstabl=%@&golfers_elbowr=%@&golfers_elbowl=%@&tennis_elbowr=%@&tennis_elbowl=%@&tinelsr=%@&tinelsl=%@&phalensr=%@&phalensl=%@&finkelsteins_testr=%@&finkelsteins_testl=%@&braceletr=%@&braceletl=%@&allensr=%@&allensl=%@&valgus_varusr=%@&valgus_varusl=%@&pat_ballr=%@&pat_balll=%@&drawerr=%@&drawerl=%@&val_varusr=%@&val_varusl=%@&apleysr=%@&apleysl=%@&ankdrawr=%@&ankdrawl=%@&ankthomr=%@&ankthoml=%@&anktinelr=%@&anktinell=%@&ankstrunkr=%@&ankstrunkl=%@&ankhomanr=%@&ankhomanl=%@&ankclaudicr=%@&ankclaudicl=%@&%@=%@",[recorddict objectForKey:@"Dugasright"],[recorddict objectForKey:@"Dugasleft"],[recorddict objectForKey:@"Suprasright"],[recorddict objectForKey:@"Suprasleft"],[recorddict objectForKey:@"codright"],[recorddict objectForKey:@"codleft"],[recorddict objectForKey:@"speedright"],[recorddict objectForKey:@"speedleft"],[recorddict objectForKey:@"yerright"],[recorddict objectForKey:@"yerleft"],[recorddict objectForKey:@"el_tinright"],[recorddict objectForKey:@"el_tinleft"],[recorddict objectForKey:@"ligainstright"],[recorddict objectForKey:@"ligainstleft"],[recorddict objectForKey:@"golfersright"],[recorddict objectForKey:@"golfersleft"],[recorddict objectForKey:@"tennisright"],[recorddict objectForKey:@"tennisleft"],[recorddict objectForKey:@"wr_tinright"],[recorddict objectForKey:@"wr_tinleft"],[recorddict objectForKey:@"phallright"],[recorddict objectForKey:@"phalleft"],[recorddict objectForKey:@"finkright"],[recorddict objectForKey:@"finkleft"],[recorddict objectForKey:@"braceright"],[recorddict objectForKey:@"braceleft"],[recorddict objectForKey:@"allenright"],[recorddict objectForKey:@"allenleft"],[recorddict objectForKey:@"valgusright"],[recorddict objectForKey:@"valgusleft"],[recorddict objectForKey:@"patright"],[recorddict objectForKey:@"patleft"],[recorddict objectForKey:@"drawer1right"],[recorddict objectForKey:@"drawer1left"],[recorddict objectForKey:@"valvarusright"],[recorddict objectForKey:@"valvarusleft"],[recorddict objectForKey:@"apleysright"],[recorddict objectForKey:@"apleysleft"],[recorddict objectForKey:@"drawer2right"],[recorddict objectForKey:@"drawer2left"],[recorddict objectForKey:@"an_thomright"],[recorddict objectForKey:@"an_thomleft"],[recorddict objectForKey:@"an_tinright"],[recorddict objectForKey:@"an_tinleft"],[recorddict objectForKey:@"Strunright"],[recorddict objectForKey:@"Strunleft"],[recorddict objectForKey:@"homright"],[recorddict objectForKey:@"homleft"],[recorddict objectForKey:@"an_cluright"],[recorddict objectForKey:@"an_cluleft"],secondEntity,value2];
    
    //[recorddict objectForKey:@"ml4left"],[recorddict objectForKey:@"Physician signature"]
    NSURL *url = [NSURL URLWithString:url2];
    
    //NSLog(post);
    
    NSString *wholepost=[NSString stringWithFormat:@"%@%@%@%@",post,post1,post2,post3];
    
    //NSLog(@"POST:%@",wholepost);
    NSData *postData = [wholepost dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
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
    
    // NSLog(@"data %@",data);
    
    return data;
    
}



@end
