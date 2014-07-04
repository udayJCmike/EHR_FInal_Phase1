//
//  hamil4ViewController.m
//  hamil
//
//  Created by Admin on 05/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "hamil4ViewController.h"
#import "hamil5ViewController.h"
#import "TestMoreViewController.h"
@interface hamil4ViewController ()

@end

@implementation hamil4ViewController
@synthesize recorddict;
@synthesize slrl;
@synthesize slrr;
@synthesize wlrl;
@synthesize wlrr;
@synthesize allisl;
@synthesize allisr;
@synthesize moretestdict;
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

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (IBAction)next:(id)sender
{
    //recorddict=[[NSMutableDictionary alloc]init];
    
    if (b1.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Antelgiaright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Antelgiaright"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Antelgialeft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Antelgialeft"];
    }
    
    if (b5.selected)
    {
        [recorddict setValue:@"Right" forKey:@"lum_Valsalright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"lum_Valsalright"];
    }
    if (b6.selected)
    {
        [recorddict setValue:@"Left" forKey:@"lum_Valsalleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"lum_Valsalleft"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Minorsright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Minorsright"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Minorsleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Minorsleft"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Braggright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Braggright"];
    }
    if (b10.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Braggleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Braggleft"];
    }
    
    
    [recorddict setValue:segg1 forKey:@"SLRr"];
    
    
    [recorddict setValue:segg5 forKey:@"AllisRight"];
    
    [recorddict setValue:segg6 forKey:@"AllisLeft"];
    
    
    [recorddict setValue:segg2 forKey:@"SLRl"];
    
    
    
    
    [recorddict setValue:painlevel.text forKey:@"painlevellumbar"];
    
    [recorddict setValue:segg3 forKey:@"WLRr"];
    
    
    
    [recorddict setValue:segg4 forKey:@"WLRl"];
    
    
    if (b15.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Hooversright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Hooversright"];
    }
    if (b16.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Hooversleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Hooversleft"];
    }
    if (b17.selected)
    {
        [recorddict setValue:@"Right" forKey:@"dbllegright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"dbllegright"];
    }
    if (b18.selected)
    {
        [recorddict setValue:@"Left" forKey:@"dbllegleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"dbllegleft"];
    }
    if (b19.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Longright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Longright"];
    }
    if (b20.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Longleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Longleft"];
    }
    if (b21.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Anvilright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Anvilright"];
    }
    if (b22.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Anvilleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Anvilleft"];
    }
    if (b23.selected)
    {
        [recorddict setValue:@"Right" forKey:@"thomasright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"thomasright"];
    }
    if (b24.selected)
    {
        [recorddict setValue:@"Left" forKey:@"thomasleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"thomasleft"];
    }
    if (b25.selected)
    {
        [recorddict setValue:@"Right" forKey:@"milgramright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"milgramright"];
    }
    if (b26.selected)
    {
        [recorddict setValue:@"Left" forKey:@"milgramleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"milgramleft"];
    }
    if (b27.selected)
    {
        [recorddict setValue:@"Right" forKey:@"Obersright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Obersright"];
    }
    if (b28.selected)
    {
        [recorddict setValue:@"Left" forKey:@"Obersleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Obersleft"];
    }
    if (b29.selected)
    {
        [recorddict setValue:@"Right" forKey:@"lliaright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"lliaright"];
    }
    if (b30.selected)
    {
        [recorddict setValue:@"Left" forKey:@"llialeft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"llialeft"];
    }
    if (b31.selected)
    {
        [recorddict setValue:@"Right" forKey:@"yeomanright"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"yeomanright"];
    }
    if (b32.selected)
    {
        [recorddict setValue:@"Left" forKey:@"yeomanleft"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"yeomanleft"];
    }
    
    a=1;
    
    if(a==1)
    {
        [self performSegueWithIdentifier:@"hami6" sender:self];
    }
    
    // NSLog(@"succecc%@",recorddict);
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
    segg1=@"30";
    segg2=@"30";
    segg3=@"30";
    segg4=@"30";
    segg5=@"long tibia";
    segg6=@"long tibia";
    
    [super viewDidLoad];
    painlevel.text=@"1";
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
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"hami6"])
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
    else  if([identifier isEqual:@"more3"])
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
    
    if ([segue.identifier isEqualToString:@"hami6"])
    {
        
        hamil5ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in fifth %@",recorddict);
        NSLog(@"recorddict count in fifth %d",[recorddict count]);
    }
    else if ([segue.identifier isEqualToString:@"more3"])
    {
        
        TestMoreViewController*destViewController = [segue destinationViewController];
        destViewController.moretestdict=moretestdict;
        NSLog(@"moretest in third %@",moretestdict);
        NSLog(@"moretest count in third %d",[moretestdict count]);
    }
    
    
    
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
     [painlevel release];
     [slider1 release];
     [slrr release];
     [slrl release];
     [wlrr release];
     [wlrl release];
     [allisr release];
     [allisl release];*/
    [super dealloc];
}
- (IBAction)sliderchange:(id)sender {
    UISlider *MYslider = (UISlider *)sender;
    int val = (int)roundf(MYslider.value);
    painlevel.text = [NSString stringWithFormat:@"%d", val];
    if (val==10) {
        painlevel.text=@"Severe Pain";
    }
    else if(val==0)
    {
        painlevel.text=@"No Pain";
    }
    else
    {
        painlevel.text=[NSString stringWithFormat:@"%d",val];
    }
    
    
}

- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

- (IBAction)moretest:(id)sender {
    moretestdict=[[NSMutableDictionary alloc]init];
    [moretestdict setValue:@"hamil4ViewController" forKey:@"fromclass"];
    
    
    [self performSegueWithIdentifier:@"more3" sender:self];
    
}

- (IBAction)reset:(id)sender {
    [slrr setSelectedSegmentIndex:0];
    [slrl setSelectedSegmentIndex:0];
    
    [wlrl setSelectedSegmentIndex:0];
    
    [wlrr setSelectedSegmentIndex:0];
    
    [allisl setSelectedSegmentIndex:0];
    [allisr setSelectedSegmentIndex:0];
    painlevel.text=@"1";
    [slider1 setValue:1 animated:YES];
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
}
- (IBAction)seg4:(id)sender {
    if(wlrl.selectedSegmentIndex==0){
        segg4=@"30";
        
    }
    if(wlrl.selectedSegmentIndex==1){
        segg4=@"45";
        
    }
    if(wlrl.selectedSegmentIndex==2){
        segg4=@"70";
        
    }
    
}

- (IBAction)seg3:(id)sender {
    if(wlrr.selectedSegmentIndex==0){
        segg3=@"30";
        
    }
    if(wlrr.selectedSegmentIndex==1){
        segg3=@"45";
        
    }
    if(wlrr.selectedSegmentIndex==2){
        segg3=@"70";
        
    }
    
}

- (IBAction)seg2:(id)sender {
    if(slrl.selectedSegmentIndex==0){
        segg2=@"30";
        
    }
    if(slrl.selectedSegmentIndex==1){
        segg2=@"45";
        
    }
    if(slrl.selectedSegmentIndex==2){
        segg2=@"70";
        
    }
    
}

- (IBAction)seg1:(id)sender {
    if(slrr.selectedSegmentIndex==0){
        segg1=@"30";
        
    }
    if(slrr.selectedSegmentIndex==1){
        segg1=@"45";
        
    }
    if(slrr.selectedSegmentIndex==2){
        segg1=@"70";
        
    }
    
}

- (IBAction)seg5:(id)sender {
    if(allisr.selectedSegmentIndex==0){
        segg5=@"long tibia";
        
    }
    if(allisr.selectedSegmentIndex==1){
        segg5=@"femur";
        
    }
    
    
}

- (IBAction)seg6:(id)sender {
    if(allisl.selectedSegmentIndex==0){
        segg6=@"long tibia";
        
    }
    if(allisl.selectedSegmentIndex==1){
        segg6=@"femur";
        
    }
}
@end
