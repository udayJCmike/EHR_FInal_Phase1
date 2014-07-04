//
//  CervicalSpineViewController1.m
//  physicalexam
//
//  Created by deemsys on 2/27/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "CervicalSpineViewController1.h"
#import "ThoracicSpineViewController.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"


@interface CervicalSpineViewController1 ()

@end

@implementation CervicalSpineViewController1
@synthesize recorddict;
@synthesize seg11;
@synthesize textbox;

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



int suc;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty42,*texty43,*texty44,*texty45,*texty46,*texty47;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)reset:(id)sender {
    
    textbox.text=@"";
    [seg11 setSelectedSegmentIndex:0];
    [seg1 setSelectedSegmentIndex:0];
    [seg2 setSelectedSegmentIndex:0];
    [seg3 setSelectedSegmentIndex:0];
    [seg4 setSelectedSegmentIndex:0];
    [seg5 setSelectedSegmentIndex:0];
    [seg6 setSelectedSegmentIndex:0];
    [seg7 setSelectedSegmentIndex:0];
    [seg8 setSelectedSegmentIndex:0];
    [seg9 setSelectedSegmentIndex:0];
    [seg10 setSelectedSegmentIndex:0];
    [seg13 setSelectedSegmentIndex:0];
    [seg14 setSelectedSegmentIndex:0];
    [seg15 setSelectedSegmentIndex:0];
    [seg16 setSelectedSegmentIndex:0];
    [seg17 setSelectedSegmentIndex:0];
    [seg18 setSelectedSegmentIndex:0];
    
    texty1=@"0";
    texty2=@"0";
    texty3=@"0";
    texty4=@"0";
    texty5=@"0";
    texty6=@"0";
    texty7=@"0";
    texty8=@"0";
    texty9=@"0";
    texty10=@"0";
    texty11=@"Right";
    
    texty13=@"0";
    texty14=@"0";
    texty15=@"0";
    texty16=@"0";
    texty17=@"0";
    texty18=@"0";
    
    [check1 setSelected:NO];
    [check2 setSelected:NO];
    [check3 setSelected:NO];
    [check4 setSelected:NO];
    [check5 setSelected:NO];
    [check6 setSelected:NO];
    [check7 setSelected:NO];
    [check8 setSelected:NO];
    [check9 setSelected:NO];
    [check10 setSelected:NO];
    [check11 setSelected:NO];
    [check12 setSelected:NO];
    [check13 setSelected:NO];
    [check14 setSelected:NO];
    [check15 setSelected:NO];
    [check16 setSelected:NO];
    [check17 setSelected:NO];
    [check18 setSelected:NO];
    [check1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    
    texty27=@"null";
    texty28=@"null";
    texty29=@"null";
    texty30=@"null";
    texty31=@"null";
    texty32=@"null";
    texty33=@"null";
    texty34=@"null";
    texty35=@"null";
    texty36=@"null";
    texty37=@"null";
    texty38=@"null";
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    texty1=@"0";
    texty2=@"0";
    texty3=@"0";
    texty4=@"0";
    texty5=@"0";
    texty6=@"0";
    texty7=@"0";
    texty8=@"0";
    texty9=@"0";
    texty10=@"0";
    texty11=@"Right";
    
    texty13=@"0";
    texty14=@"0";
    texty15=@"0";
    texty16=@"0";
    texty17=@"0";
    texty18=@"0";
    
    
    
    texty27=@"null";
    texty28=@"null";
    texty29=@"null";
    texty30=@"null";
    texty31=@"null";
    texty32=@"null";
    texty33=@"null";
    texty34=@"null";
    texty35=@"null";
    texty36=@"null";
    texty37=@"null";
    texty38=@"null";
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view.
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
}

-(BOOL)validateString:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
    
    [super dealloc];
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}
-(void)dismissKeyboard {
    [textbox resignFirstResponder];
}

- (IBAction)save:(id)sender {
    
    texty12=[textbox.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if(check1.selected){
        texty27=@"Right";
    }
    else{
        texty27=@"null";
    }
    if(check2.selected){
        texty28=@"Left";
    }
    else{
        texty28=@"null";
    }
    if(check3.selected){
        texty29=@"Right";
    }
    else{
        texty29=@"null";
    }
    if(check4.selected){
        texty30=@"Left";
    }
    else{
        texty30=@"null";
    }
    if(check5.selected){
        texty31=@"Right";
    }
    else{
        texty31=@"null";
    }
    if(check6.selected){
        texty32=@"Left";
    }
    else{
        texty32=@"null";
    }
    
    if(check7.selected){
        texty33=@"Right";
    }
    else{
        texty33=@"null";
    }
    if(check8.selected){
        texty34=@"Left";
    }
    else{
        texty34=@"null";
    }
    if(check9.selected){
        texty35=@"Right";
    }
    else{
        texty35=@"null";
    }
    if(check10.selected){
        texty36=@"Left";
    }
    else{
        texty36=@"null";
    }
    if(check11.selected){
        texty37=@"Right";
    }
    else{
        texty37=@"null";
    }
    if(check12.selected){
        texty38=@"Left";
    }
    else{
        texty38=@"null";
    }
    if(check13.selected){
        texty40=@"Normal";
    }
    else{
        texty40=@"null";
    }
    if(check14.selected){
        texty41=@"Normal";
    }
    else{
        texty41=@"null";
    }
    if(check15.selected){
        texty42=@"Normal";
    }
    else{
        texty42=@"null";
    }
    if(check16.selected){
        texty43=@"Normal";
    }
    else{
        texty43=@"null";
    }
    if(check17.selected){
        texty44=@"Normal";
    }
    else{
        texty44=@"null";
    }
    if(check18.selected){
        texty45=@"Normal";
    }
    else{
        texty45=@"null";
    }
    
    
    
    if([texty12 length]==0||([self validateString:texty12]==1))
    {
        suc=1;
        
        
        [recorddict setObject:texty1 forKey:@"myotomesneuroexamright1"];
        [recorddict setObject:texty2 forKey:@"myotomesneuroexamleft1"];
        [recorddict setObject:texty3 forKey:@"myotomesneuroexamright2"];
        [recorddict setObject:texty4 forKey:@"myotomesneuroexamleft2"];
        [recorddict setObject:texty5 forKey:@"myotomesneuroexamright3"];
        [recorddict setObject:texty6 forKey:@"myotomesneuroexamleft3"];
        [recorddict setObject:texty7 forKey:@"myotomesneuroexamright4"];
        [recorddict setObject:texty8 forKey:@"myotomesneuroexamleft4"];
        [recorddict setObject:texty9 forKey:@"myotomesneuroexamright5"];
        [recorddict setObject:texty10 forKey:@"myotomesneuroexamleft5"];
        [recorddict setObject:texty11 forKey:@"visual"];
        
        
        [recorddict setObject:texty13 forKey:@"deeptendonneuroexamright1"];
        [recorddict setObject:texty14 forKey:@"deeptendonneuroexamleft1"];
        [recorddict setObject:texty15 forKey:@"deeptendonneuroexamright2"];
        [recorddict setObject:texty16 forKey:@"deeptendonneuroexamleft2"];
        [recorddict setObject:texty17 forKey:@"deeptendonneuroexamright3"];
        [recorddict setObject:texty18 forKey:@"deeptendonneuroexamleft3"];
        [recorddict setObject:texty40 forKey:@"normal1"];
        [recorddict setObject:texty41 forKey:@"normal2"];
        [recorddict setObject:texty42 forKey:@"normal3"];
        [recorddict setObject:texty43 forKey:@"normal4"];
        [recorddict setObject:texty44 forKey:@"normal5"];
        [recorddict setObject:texty45 forKey:@"normal6"];
        
        [recorddict setObject:texty27 forKey:@"abnormalright1"];
        [recorddict setObject:texty28 forKey:@"abnormalleft1"];
        [recorddict setObject:texty29 forKey:@"abnormalright2"];
        [recorddict setObject:texty30 forKey:@"abnormalleft2"];
        [recorddict setObject:texty31 forKey:@"abnormalright3"];
        [recorddict setObject:texty32 forKey:@"abnormalleft3"];
        [recorddict setObject:texty33 forKey:@"abnormalright4"];
        [recorddict setObject:texty34 forKey:@"abnormalleft4"];
        [recorddict setObject:texty35 forKey:@"abnormalright5"];
        [recorddict setObject:texty36 forKey:@"abnormalleft5"];
        [recorddict setObject:texty37 forKey:@"abnormalright6"];
        [recorddict setObject:texty38 forKey:@"abnormalleft6"];
        
        [recorddict setObject:textbox.text forKey:@"visualrl"];
        
        // NSLog(@"Record dict in cervical form two::%@",recorddict);
        suc=1;
    } else
    {
        suc=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter valid perform eye exam & auscultate carotid arteries value."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
    }
    
    if(suc==1){
        [self performSegueWithIdentifier:@"physic3" sender:self];
    }
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
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    // NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"physic3"])
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
    
    
    if ([segue.identifier isEqualToString:@"physic3"])
    {
        
        // NSLog(@"succc value in prepre segue %i ",suc);
        ThoracicSpineViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        /// NSLog(@"recorddict in cervical 2 controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}

- (IBAction)segbut1:(id)sender {
    if(seg1.selectedSegmentIndex==0){
        texty1=@"0";
    }
    else if(seg1.selectedSegmentIndex==1){
        texty1=@"1";
    }
    else if(seg1.selectedSegmentIndex==2){
        texty1=@"2";
    }
    else if(seg1.selectedSegmentIndex==3){
        texty1=@"3";
    }
    else if(seg1.selectedSegmentIndex==4){
        texty1=@"4";
    }
    else if(seg1.selectedSegmentIndex==5){
        texty1=@"5";
    }
    
}
- (IBAction)segbut2:(id)sender {
    if(seg2.selectedSegmentIndex==0){
        texty2=@"0";
    }
    else if(seg2.selectedSegmentIndex==1){
        texty2=@"1";
    }
    else if(seg2.selectedSegmentIndex==2){
        texty2=@"2";
    }
    else if(seg2.selectedSegmentIndex==3){
        texty2=@"3";
    }
    else if(seg2.selectedSegmentIndex==4){
        texty2=@"4";
    }
    else if(seg2.selectedSegmentIndex==5){
        texty2=@"5";
    }
    
}
- (IBAction)segbut3:(id)sender {
    if(seg3.selectedSegmentIndex==0){
        texty3=@"0";
    }
    else if(seg3.selectedSegmentIndex==1){
        texty3=@"1";
    }
    else if(seg3.selectedSegmentIndex==2){
        texty3=@"2";
    }
    else if(seg3.selectedSegmentIndex==3){
        texty3=@"3";
    }
    else if(seg3.selectedSegmentIndex==4){
        texty3=@"4";
    }
    else if(seg3.selectedSegmentIndex==5){
        texty3=@"5";
    }
    
}
- (IBAction)segbut4:(id)sender {
    if(seg4.selectedSegmentIndex==0){
        texty4=@"0";
    }
    else if(seg4.selectedSegmentIndex==1){
        texty4=@"1";
    }
    else if(seg4.selectedSegmentIndex==2){
        texty4=@"2";
    }
    else if(seg4.selectedSegmentIndex==3){
        texty4=@"3";
    }
    else if(seg4.selectedSegmentIndex==4){
        texty4=@"4";
    }
    else if(seg4.selectedSegmentIndex==5){
        texty4=@"5";
    }
    
}
- (IBAction)segbut5:(id)sender {
    if(seg5.selectedSegmentIndex==0){
        texty5=@"0";
    }
    else if(seg5.selectedSegmentIndex==1){
        texty5=@"1";
    }
    else if(seg5.selectedSegmentIndex==2){
        texty5=@"2";
    }
    else if(seg5.selectedSegmentIndex==3){
        texty5=@"3";
    }
    else if(seg5.selectedSegmentIndex==4){
        texty5=@"4";
    }
    else if(seg5.selectedSegmentIndex==5){
        texty5=@"5";
    }
    
}
- (IBAction)segbut6:(id)sender {
    if(seg6.selectedSegmentIndex==0){
        texty6=@"0";
    }
    else if(seg6.selectedSegmentIndex==1){
        texty6=@"1";
    }
    else if(seg6.selectedSegmentIndex==2){
        texty6=@"2";
    }
    else if(seg6.selectedSegmentIndex==3){
        texty6=@"3";
    }
    else if(seg6.selectedSegmentIndex==4){
        texty6=@"4";
    }
    else if(seg6.selectedSegmentIndex==5){
        texty6=@"5";
    }
    
}
- (IBAction)segbut7:(id)sender {
    if(seg7.selectedSegmentIndex==0){
        texty7=@"0";
    }
    else if(seg7.selectedSegmentIndex==1){
        texty7=@"1";
    }
    else if(seg7.selectedSegmentIndex==2){
        texty7=@"2";
    }
    else if(seg7.selectedSegmentIndex==3){
        texty7=@"3";
    }
    else if(seg7.selectedSegmentIndex==4){
        texty7=@"4";
    }
    else if(seg7.selectedSegmentIndex==5){
        texty7=@"5";
    }
    
}
- (IBAction)segbut8:(id)sender {
    if(seg8.selectedSegmentIndex==0){
        texty8=@"0";
    }
    else if(seg8.selectedSegmentIndex==1){
        texty8=@"1";
    }
    else if(seg8.selectedSegmentIndex==2){
        texty8=@"2";
    }
    else if(seg8.selectedSegmentIndex==3){
        texty8=@"3";
    }
    else if(seg8.selectedSegmentIndex==4){
        texty8=@"4";
    }
    else if(seg8.selectedSegmentIndex==5){
        texty8=@"5";
    }
    
}
- (IBAction)segbut9:(id)sender {
    if(seg9.selectedSegmentIndex==0){
        texty9=@"0";
    }
    else if(seg9.selectedSegmentIndex==1){
        texty9=@"1";
    }
    else if(seg9.selectedSegmentIndex==2){
        texty9=@"2";
    }
    else if(seg9.selectedSegmentIndex==3){
        texty9=@"3";
    }
    else if(seg9.selectedSegmentIndex==4){
        texty9=@"4";
    }
    else if(seg9.selectedSegmentIndex==5){
        texty9=@"5";
    }
    
}
- (IBAction)segbut10:(id)sender {
    if(seg10.selectedSegmentIndex==0){
        texty10=@"0";
    }
    else if(seg10.selectedSegmentIndex==1){
        texty10=@"1";
    }
    else if(seg10.selectedSegmentIndex==2){
        texty10=@"2";
    }
    else if(seg10.selectedSegmentIndex==3){
        texty10=@"3";
    }
    else if(seg10.selectedSegmentIndex==4){
        texty10=@"4";
    }
    else if(seg10.selectedSegmentIndex==5){
        texty10=@"5";
    }
    
}
- (IBAction)segbut11:(id)sender {
    if(seg11.selectedSegmentIndex==0){
        texty11=@"R";
    }
    else if(seg11.selectedSegmentIndex==1){
        texty11=@"L";
    }
}

- (IBAction)segbut13:(id)sender {
    if(seg13.selectedSegmentIndex==0){
        texty13=@"0";
    }
    else if(seg13.selectedSegmentIndex==1){
        texty13=@"1";
    }
    else if(seg13.selectedSegmentIndex==2){
        texty13=@"2";
    }
    else if(seg13.selectedSegmentIndex==3){
        texty13=@"3";
    }
    else if(seg13.selectedSegmentIndex==4){
        texty13=@"4";
    }
    
}
- (IBAction)segbut14:(id)sender {
    if(seg14.selectedSegmentIndex==0){
        texty14=@"0";
    }
    else if(seg14.selectedSegmentIndex==1){
        texty14=@"1";
    }
    else if(seg14.selectedSegmentIndex==2){
        texty14=@"2";
    }
    else if(seg14.selectedSegmentIndex==3){
        texty14=@"3";
    }
    else if(seg14.selectedSegmentIndex==4){
        texty14=@"4";
    }
    
}
- (IBAction)segbut15:(id)sender {
    if(seg15.selectedSegmentIndex==0){
        texty15=@"0";
    }
    else if(seg15.selectedSegmentIndex==1){
        texty15=@"1";
    }
    else if(seg15.selectedSegmentIndex==2){
        texty15=@"2";
    }
    else if(seg15.selectedSegmentIndex==3){
        texty15=@"3";
    }
    else if(seg15.selectedSegmentIndex==4){
        texty15=@"4";
    }
    
}
- (IBAction)segbut16:(id)sender {
    if(seg16.selectedSegmentIndex==0){
        texty16=@"0";
    }
    else if(seg16.selectedSegmentIndex==1){
        texty16=@"1";
    }
    else if(seg16.selectedSegmentIndex==2){
        texty16=@"2";
    }
    else if(seg16.selectedSegmentIndex==3){
        texty16=@"3";
    }
    else if(seg16.selectedSegmentIndex==4){
        texty16=@"4";
    }
    
}
- (IBAction)segbut17:(id)sender {
    if(seg17.selectedSegmentIndex==0){
        texty17=@"0";
    }
    else if(seg17.selectedSegmentIndex==1){
        texty17=@"1";
    }
    else if(seg17.selectedSegmentIndex==2){
        texty17=@"2";
    }
    else if(seg17.selectedSegmentIndex==3){
        texty17=@"3";
    }
    else if(seg17.selectedSegmentIndex==4){
        texty17=@"4";
    }
    
}
- (IBAction)segbut18:(id)sender {
    if(seg18.selectedSegmentIndex==0){
        texty18=@"0";
    }
    else if(seg18.selectedSegmentIndex==1){
        texty18=@"1";
    }
    else if(seg18.selectedSegmentIndex==2){
        texty18=@"2";
    }
    else if(seg18.selectedSegmentIndex==3){
        texty18=@"3";
    }
    else if(seg18.selectedSegmentIndex==4){
        texty18=@"4";
    }
    
}
@end
