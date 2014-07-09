//
//  KneeExamViewController1.m
//  EHR
//
//  Created by deemsys on 2/21/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "KneeExamViewController1.h"
#import "KneeExamViewController2.h"
#import "hamilViewController.h"
#import "databaseurl.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

@interface KneeExamViewController1 ()

{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}


@end


@implementation KneeExamViewController1
@synthesize resultset;
@synthesize  check2;
@synthesize check1;
@synthesize check3;
@synthesize check4;
@synthesize recorddict;
@synthesize check5;
@synthesize other1;

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

NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39;
NSString *checkstring1,*checkstring2,*checkstring3,*checkstring4,*segva,*checkstring5;
#pragma mark - UIPickerView DataSource
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
    
    checkstring1=@"null";
    checkstring2=@"null";
    checkstring3=@"null";
    checkstring4=@"null";
    checkstring5=@"null";
    segva=@"Excellent";
    other1.hidden=YES;
    du=[[databaseurl alloc]init];
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

    
    temp=[[NSMutableDictionary alloc]init];
    temp=recorddict;
    
    //  UITapGestureRecognizer *tapGR1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerViewTapped1)];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self getdata];
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
}

-(void)getdata
{
    if ([resultset count]>0) {
        
        
        
        if([[resultset objectForKey:@"l1l"] isEqualToString:@"null"])
        {
            sensleft.text=@"";
            
            
        }else{
            sensleft.text=[resultset objectForKey:@"l1l"];
            
        }
        if([[resultset objectForKey:@"l1r"] isEqualToString:@"null"]
           ){
            sensright.text=@"";
            
        }else{
            sensright.text=[resultset objectForKey:@"l1r"];
        }
        if([[resultset objectForKey:@"l15l"] isEqualToString:@"null"]){
            motorleft.text=@"";
        }else{
            motorleft.text=[resultset objectForKey:@"l15l"];
        }
        if([[resultset objectForKey:@"l15r"] isEqualToString:@"null"]){
            motorright.text=@"";
        }else{
            motorright.text=[resultset objectForKey:@"l15r"];
        }
        if([[resultset objectForKey:@"l2l"] isEqualToString:@"null"]){
            sensel2left.text=@"";
        }else{
            
            sensel2left.text=[resultset objectForKey:@"l2l"];
        }
        if([[resultset objectForKey:@"l2r"] isEqualToString:@"null"]){
            sensl2right.text=@"";
        }else{
            sensl2right.text=[resultset objectForKey:@"l2r"];
        }
        if([[resultset objectForKey:@"l25l"] isEqualToString:@"null"]){
            motorl2left.text=@"";
        }else{
            motorl2left.text=[resultset objectForKey:@"l25l"];
        }
        if([[resultset objectForKey:@"l25r"] isEqualToString:@"null"] ){
            motorl2right.text=@"";
        }
        else{
            motorl2right.text=[resultset objectForKey:@"l25r"];
        }
        if([[resultset objectForKey:@"l3l"] isEqualToString:@"null"]){
            sensl3left.text=@"";
        }else{
            sensl3left.text=[resultset objectForKey:@"l3l"];
        }
        if([[resultset objectForKey:@"l3r"] isEqualToString:@"null"]){
            sensl3right.text=@"";
        }else{
            sensl3right.text=[resultset objectForKey:@"l3r"];
        }
        if([[resultset objectForKey:@"l35l"] isEqualToString:@"null"]){
            motorl3left.text=@"";
        }else{
            motorl3left.text=[resultset objectForKey:@"l35l"];
        }
        if([[resultset objectForKey:@"l35r"] isEqualToString:@"null"]){
            motorl3right.text=@"";
        }else{
            motorl3right.text=[resultset objectForKey:@"l35r"];
        }
        if([[resultset objectForKey:@"l4l"] isEqualToString:@"null"]){
            sensl4left.text=@"";
        }else{
            sensl4left.text=[resultset objectForKey:@"l4l"] ;
        }
        if([[resultset objectForKey:@"l4r"] isEqualToString:@"null"]){
            sensl4right.text=@"";
        }else{
            sensl4right.text=[resultset objectForKey:@"l4r"];
        }
        if([[resultset objectForKey:@"l45l"] isEqualToString:@"null"]){
            motorl4left.text=@"";
        }else{
            motorl4left.text=[resultset objectForKey:@"l45l"] ;
        }
        if([[resultset objectForKey:@"l45r"] isEqualToString:@"null"]){
            motorl4right.text=@"";
        }else{
            motorl4right.text=[resultset objectForKey:@"l45r"];
        }
        if([[resultset objectForKey:@"l4l3"] isEqualToString:@"null"]){
            refl4left.text=@"";
        }else{
            refl4left.text=[resultset objectForKey:@"l4l3"];
        }
        if([[resultset objectForKey:@"l4r3"] isEqualToString:@"null"]){
            refl4right.text=@"";
        }else{
            refl4right.text=[resultset objectForKey:@"l4r3"];
        }
        if([[resultset objectForKey:@"l5l"] isEqualToString:@"null"]){
            sensel5left.text=@"";
        }else{
            sensel5left.text=[resultset objectForKey:@"l5l"];
        }
        if([[resultset objectForKey:@"l5r"] isEqualToString:@"null"]){
            sensel5right.text=@"";
        }else{
            sensel5right.text=[resultset objectForKey:@"l5r"];
        }
        if([[resultset objectForKey:@"l55l"] isEqualToString:@"null"]){
            motorl5left.text=@"";
        }else{
            motorl5left.text=[resultset objectForKey:@"l55l"];
        }
        if([[resultset objectForKey:@"l55r"] isEqualToString:@"null"]){
            motorl5right.text=@"";
        }else{
            motorl5right.text=[resultset objectForKey:@"l55r"];
        }
        if([[resultset objectForKey:@"l5l3"] isEqualToString:@"null"]){
            refl5left.text=@"";
        }else{
            refl5left.text=[resultset objectForKey:@"l5l3"];
        }
        if([[resultset objectForKey:@"l5r3"] isEqualToString:@"null"]
           ){
            refl5right.text=@"";
        }else{
            refl5right.text=[resultset objectForKey:@"l5r3"];
        }
        if([[resultset objectForKey:@"sl"] isEqualToString:@"null"]){
            sensileft.text=@"";
        }
        else{
            sensileft.text=[resultset objectForKey:@"sl"];
        }
        if([[resultset objectForKey:@"sr"] isEqualToString:@"null"]){
            sensiright.text=@"";
        }else{
            sensiright.text=[resultset objectForKey:@"sr"];
        }
        if([[resultset objectForKey:@"s5l"] isEqualToString:@"null"]){
            motorsileft.text=@"";
        }else{
            motorsileft.text=[resultset objectForKey:@"s5l"];
        }
        if([[resultset objectForKey:@"s5r"] isEqualToString:@"null"]){
            motorsiright.text=@"";
        }else{
            motorsiright.text=[resultset objectForKey:@"s5r"];
        }
        if([[resultset objectForKey:@"sil"] isEqualToString:@"null"]){
            refsileft.text=@"";
        }else{
            refsileft.text=[resultset objectForKey:@"sil"];
        }
        if([[resultset objectForKey:@"sir"] isEqualToString:@"null"]){
            refsiright.text=@"";
        }else{
            refsiright.text=[resultset objectForKey:@"sir"];
        }
        if([[resultset objectForKey:@"neurologicaltest"] isEqualToString:@"null"]){
            
            check1.selected=NO;
            [check1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"checkstring1"];
            
            
        }else{
            
            check1.selected=YES;
            [check1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Neurological Testing Unremarkable" forKey:@"checkstring1"];
        }
        
        
        
        if([[resultset objectForKey:@"walking"] isEqualToString:@"null"]){
            
            check2.selected=NO;
            [check2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"checkstring2"];
            
            
        }else{
            
            check2.selected=YES;
            [check2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Walking" forKey:@"checkstring2"];
        }
        if([[resultset objectForKey:@"standing"] isEqualToString:@"null"]){
            check3.selected=NO;
            [check3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"checkstring3"];
        }else{
            check3.selected=YES;
            [check3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Standing" forKey:@"checkstring3"];
        }
        if([[resultset objectForKey:@"stairs"] isEqualToString:@"null"]){
            check4.selected=NO;
            [check4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"checkstring4"];
            
        }else{
            check4.selected=YES;
            [check4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Stairs" forKey:@"checkstring4"];
        }
        if([[resultset objectForKey:@"otherfunctional"] isEqualToString:@"null"]){
            check5.selected=NO;
            other1.hidden=YES;
            other1.text=@"";
            [check5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"null" forKey:@"checkstring5"];
            
        }else{
            check5.selected=YES;
            other1.hidden=NO;
            [check5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            [recorddict setValue:@"Other" forKey:@"checkstring5"];
        }
        if([[resultset objectForKey:@"break_text3"] isEqualToString:@"null"]){
            other1.text=@"";
        }else{
            other1.text=[resultset objectForKey:@"break_text3"];
        }
        if([[resultset objectForKey:@"assessment"] isEqualToString:@"null"]){
            addcomments.text=@"";
        }else{
            addcomments.text=[resultset objectForKey:@"assessment"];
            
        }
        if([[resultset objectForKey:@"patientstatus"] isEqualToString:@"Excellent"])
        {
            [segpat setSelectedSegmentIndex:0];
            segva=@"Excellent";
        }
        else if([[resultset objectForKey:@"patientstatus"] isEqualToString:@"Good"])
        {
            [segpat setSelectedSegmentIndex:1];
            segva=@"Good";
        }
        else if([[resultset objectForKey:@"patientstatus"] isEqualToString:@"Fair"])
        {
            [segpat setSelectedSegmentIndex:2];
            segva=@"Fair";
        }
        else if([[resultset objectForKey:@"patientstatus"] isEqualToString:@"Poor"])
        {
            [segpat setSelectedSegmentIndex:3];
            segva=@"Poor";
        }
        
        
        
        
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)check1:(UIButton *)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(check1.selected)
    {
        other1.hidden=YES;
        checkstring1=@"Neurological Testing Unremarkable";
    }
    else
        checkstring1=@"null";
    if(check2.selected)
    {
        other1.hidden=YES;
        checkstring2=@"Walking";
    }
    else
        checkstring2=@"null";
    if(check3.selected)
    {
        other1.hidden=YES;
        checkstring3=@"Standing";
    }
    else
        checkstring3=@"null";
    if(check4.selected)
    {
        other1.hidden=YES;
        checkstring4=@"Stairs";
    }
    else
        checkstring4=@"null";
    if(check5.selected)
    {
        checkstring5=@"Other";
        other1.hidden=NO;
    }
    else{
        checkstring5=@"null";
        other1.hidden=YES;
    }
    
}


- (void)dealloc {
    /*   [sensleft release];
     [sensright release];
     [motorleft release];
     [motorright release];
     [sensel2left release];
     [sensl2right release];
     [motorl2left release];
     [motorl2right release];
     [sensl3left release];
     [sensl3right release];
     [motorl3left release];
     [motorl3right release];
     [sensl4left release];
     [sensl4right release];
     [motorl4left release];
     [motorl4right release];
     [refl4left release];
     [refl4right release];
     [refl5left release];
     [refl5right release];
     
     [refsiright release];
     [motorl5left release];
     
     
     
     [pickylable release];
     
     [addcomments release];
     [neuro release];
     [walklab release];
     [standlab release];
     [stairslab release];
     [check2 release];
     */
    [segpat release];
    [other1 release];
    [check5 release];
    [super dealloc];
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	//NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	//NSLog(@"begin editing");
}
-(void)dismissKeyboard {
       printView.hidden = YES;
    [sensleft resignFirstResponder];
    [sensright resignFirstResponder];
    [motorleft resignFirstResponder];
    [motorright resignFirstResponder];
    [sensel2left resignFirstResponder];
    [sensl2right resignFirstResponder];
    [motorl2left resignFirstResponder];
    [motorl2right resignFirstResponder];
    [sensl3left resignFirstResponder];
    [sensl3right resignFirstResponder];
    [motorl3left resignFirstResponder];
    [motorl3right resignFirstResponder];
    [sensl4left resignFirstResponder];
    [sensl4right resignFirstResponder];
    [motorl4left resignFirstResponder];
    [motorl4right resignFirstResponder];
    [refl4left resignFirstResponder];
    [refl4right resignFirstResponder];
    [sensel5left resignFirstResponder];
    [sensel5right resignFirstResponder];
    [motorl5left resignFirstResponder];
    [motorl5right resignFirstResponder];
    [refsileft resignFirstResponder];
    [refsiright resignFirstResponder];
    [refl5left resignFirstResponder];
    [refl5right resignFirstResponder];
    [sensileft resignFirstResponder];
    [sensiright resignFirstResponder];
    [motorsiright resignFirstResponder];
    [motorsileft resignFirstResponder];
    [other1 resignFirstResponder];
    [addcomments resignFirstResponder];
    
}


-(BOOL)validateNumberLessFive:(NSString *)user

{
    //  NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    NSString *userFormat1 =@"[0-5]{1}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateNumberLessFive1:(NSString *)user

{
    //  NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    NSString *userFormat1 =@"[A-Za-z0-9._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateString:(NSString *)user

{
    NSString *userFormat1 =@"[0-9]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}


- (IBAction)nextact:(id)sender {
    if(!check5.selected){
        other1.text=@"";
    }
    texty1=sensleft.text;
    texty2=sensright.text;
    texty3=motorleft.text;
    texty4=motorright.text;
    texty5=sensel2left.text;
    texty6=sensl2right.text;
    texty7=motorl2left.text;
    texty8=motorl2right.text;
    texty9=sensl3left.text;
    texty10=sensl3right.text;
    texty11=motorl3left.text;
    texty12=motorl3right.text;
    texty13=sensl4left.text;
    texty14=sensl4right.text;
    texty15=motorl4left.text;
    texty16=motorl4right.text;
    texty17=refl4left.text;
    texty18=refl4right.text;
    texty19=sensel5left.text;
    texty20=sensel5right.text;
    texty21=motorl5left.text;
    texty22=motorl5right.text;
    texty23=refl5left.text;
    texty24=refl5right.text;
    texty25=sensileft.text;
    texty26=sensiright.text;
    texty27=motorsileft.text;
    texty28=motorsiright.text;
    texty29=refsileft.text;
    texty30=refsiright.text;
    // texty31=right1.text;
    texty32=addcomments.text;
    texty39=other1.text;
    texty32=[texty32 stringByReplacingOccurrencesOfString:@"\r" withString:@""];
    texty32=[texty32 stringByReplacingOccurrencesOfString:@"\t" withString:@""];
    
    if([sensleft.text length]==0||([du date:texty1]==1))
    {
        if([sensright.text length]==0||([du date:texty2]==1))
        {
            if([motorleft.text length]==0||([du byfive:texty3]==1))
            {
                if([motorright.text length]==0||([du byfive:texty4]==1))
                {
                    if([sensel2left.text length]==0||([du date:texty5]==1))
                    {
                        if([sensl2right.text length]==0||([du date:texty6]==1))
                        {
                            if([motorl2left.text length]==0||([du byfive:texty7]==1))
                            {
                                if([motorl2right.text length]==0||([du byfive:texty8]==1))
                                {
                                    if([sensl3left.text length]==0||([du date:texty9]==1))
                                    {
                                        if([sensl3right.text length]==0||([du date:texty10]==1))
                                        {
                                            if([motorl3left.text length]==0||([du byfive:texty11]==1))
                                            {
                                                if([motorl3right.text length]==0||([du byfive:texty12]==1))
                                                {
                                                    if([sensl4left.text length]==0||([du date:texty13]==1))
                                                    {
                                                        if([sensl4right.text length]==0||([du date:texty14]==1))
                                                        {
                                                            if([motorl4left.text length]==0||([du byfive:texty15]==1))
                                                            {
                                                                if([motorl4right.text length]==0||([du byfive:texty16]==1))
                                                                {
                                                                    if([refl4left.text length]==0||([du byfive:texty17]==1))
                                                                    {
                                                                        
                                                                        if([refl4right.text length]==0||([du byfive:texty18]==1))
                                                                        {
                                                                            
                                                                            if([sensel5left.text length]==0||([du date:texty19]==1))
                                                                            {
                                                                                if([sensel5right.text length]==0||([du date:texty20]==1))
                                                                                {
                                                                                    if([motorl5left.text length]==0||([du byfive:texty21]==1))
                                                                                    {
                                                                                        if([motorl5right.text length]==0||([du byfive:texty21]==1))
                                                                                        {
                                                                                            if([refl5left.text length]==0||([du byfive:texty23]==1))
                                                                                            {
                                                                                                if([refl5right.text length]==0||([du byfive:texty24]==1))
                                                                                                {
                                                                                                    if([sensileft.text length]==0||([du date:texty25]==1))
                                                                                                    {
                                                                                                        if([sensiright.text length]==0||([du date:texty26]==1))
                                                                                                        {
                                                                                                            if([motorsileft.text length]==0||([du byfive:texty27]==1))
                                                                                                            {
                                                                                                                if([motorsiright.text length]==0||([du byfive:texty28]==1))
                                                                                                                {
                                                                                                                    if([refsileft.text length]==0||([du byfive:texty29]==1))
                                                                                                                    {
                                                                                                                        if([refsiright.text length]==0||([du byfive:texty30]==1))
                                                                                                                        {
                                                                                                                            if([other1.text length]==0||([du otherfields:texty39]==1)){
                                                                                                                                
                                                                                                                                if([addcomments.text length]==0||([du comments:texty32]==1))
                                                                                                                                {
                                                                                                                                    suc=1;
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    [recorddict addEntriesFromDictionary:temp];
                                                                                                                                    [recorddict setObject:sensleft.text forKey:@"sensel1left"];
                                                                                                                                    [recorddict setObject:sensl3left.text forKey:@"sensel3left"];
                                                                                                                                    [recorddict setObject:sensel2left.text forKey:@"sensel2left"];
                                                                                                                                    [recorddict setObject:sensl4left.text forKey:@"sensel4left"];
                                                                                                                                    [recorddict setObject:sensel5left.text forKey:@"sensel5left"];
                                                                                                                                    [recorddict setObject:sensileft.text forKey:@"sensesileft"];
                                                                                                                                    [recorddict setObject:sensright.text forKey:@"sensel1right"];
                                                                                                                                    [recorddict setObject:sensl3right.text forKey:@"sensel3right"];
                                                                                                                                    [recorddict setObject:sensl2right.text forKey:@"sensel2right"];
                                                                                                                                    [recorddict setObject:sensl4right.text forKey:@"sensel4right"];
                                                                                                                                    [recorddict setObject:sensel5right.text forKey:@"sensel5right"];
                                                                                                                                    [recorddict setObject:sensiright.text forKey:@"sensesiright"];
                                                                                                                                    [recorddict setObject:motorleft.text forKey:@"motorl1left"];
                                                                                                                                    [recorddict setObject:motorl3left.text forKey:@"motorl3left"];
                                                                                                                                    [recorddict setObject:motorl2left.text forKey:@"motorl2left"];
                                                                                                                                    [recorddict setObject:motorl4left.text forKey:@"motorl4left"];
                                                                                                                                    [recorddict setObject:motorl5left.text forKey:@"motorl5left"];
                                                                                                                                    [recorddict setObject:motorsileft.text forKey:@"motrorsileft"];
                                                                                                                                    [recorddict setObject:motorright.text forKey:@"motorl1right"];
                                                                                                                                    [recorddict setObject:motorl3right.text forKey:@"motorl3right"];
                                                                                                                                    [recorddict setObject:motorl2right.text forKey:@"motorl2right"];
                                                                                                                                    [recorddict setObject:motorl4right.text forKey:@"motorl4right"];
                                                                                                                                    [recorddict setObject:motorl5right.text forKey:@"motorl5right"];
                                                                                                                                    [recorddict setObject:motorsiright.text forKey:@"motrorsiright"];
                                                                                                                                    [recorddict setObject:motorleft.text forKey:@"motorl1left"];
                                                                                                                                    [recorddict setObject:refl4left.text forKey:@"refl3left"];
                                                                                                                                    [recorddict setObject:refl5left.text forKey:@"refl5left"];
                                                                                                                                    [recorddict setObject:refsileft.text forKey:@"refsileft"];
                                                                                                                                    [recorddict setObject:refl4right.text forKey:@"refl3right"];
                                                                                                                                    [recorddict setObject:refl5right.text forKey:@"refl5right"];
                                                                                                                                    [recorddict setObject:refsiright.text forKey:@"refsiright"];
                                                                                                                                    [recorddict setObject:checkstring1 forKey:@"checkstring1"];
                                                                                                                                    [recorddict setObject:checkstring2 forKey:@"checkstring2"];
                                                                                                                                    [recorddict setObject:checkstring3 forKey:@"checkstring3"];
                                                                                                                                    [recorddict setObject:checkstring4 forKey:@"checkstring4"];
                                                                                                                                    [recorddict setObject:checkstring5 forKey:@"checkstring5"];
                                                                                                                                    [recorddict setObject:other1.text forKey:@"otherone"];[recorddict setObject:addcomments.text forKey:@"addcomments"];
                                                                                                                                    [recorddict setObject:segva forKey:@"pickervalue"];
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    //NSLog(@"Dicionary in knee form two::%@",recorddict);
                                                                                                                                    
                                                                                                                                }
                                                                                                                                else{
                                                                                                                                    suc=0;
                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                   description:@"Please enter valid assessment."
                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                      callback:nil];
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                            }
                                                                                                                            else{
                                                                                                                                suc=0;
                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                               description:@"Please enter valid other text field."
                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                  callback:nil];
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                        }
                                                                                                                        
                                                                                                                        else{
                                                                                                                            suc=0;
                                                                                                                            
                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                           description:@"Please enter valid ref si right value."
                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                              callback:nil];
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                    }
                                                                                                                    else{
                                                                                                                        suc=0;
                                                                                                                        
                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                       description:@"Please enter valid ref si Left value."
                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                          callback:nil];
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                else{
                                                                                                                    suc=0;
                                                                                                                    
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please enter valid motor si right value."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                            }
                                                                                                            else{
                                                                                                                suc=0;
                                                                                                                
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please enter valid motor si left value."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                        else{
                                                                                                            suc=0;
                                                                                                            
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please enter valid sensory si right value."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                    }
                                                                                                    else{
                                                                                                        suc=0;
                                                                                                        
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please enter valid sensory si left value."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                else{
                                                                                                    suc=0;
                                                                                                    
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid ref l5 right value."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                            }
                                                                                            else{
                                                                                                suc=0;
                                                                                                
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid ref l5 left value."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else{
                                                                                            suc=0;
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid motor L5 right value."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else{
                                                                                        suc=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid motor l5 left value."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                    
                                                                                }
                                                                                else{
                                                                                    suc=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid sensory l5 right value."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            else{
                                                                                suc=0;
                                                                                
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid sensory l5 left value."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                        else{
                                                                            suc=0;
                                                                            
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid ref l4 right value."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else{
                                                                        suc=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid ref l4 left value."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                else{
                                                                    suc=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid motor l4 right value."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                }
                                                            }
                                                            else{
                                                                suc=0;
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid motor l4 left value."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                        }
                                                        else{
                                                            suc=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid sensory l4 left value."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                    }
                                                    else{
                                                        suc=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid sensory l4 left value."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                    }
                                                }
                                                else{
                                                    suc=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid motor l3 right value."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                }
                                            }
                                            else{
                                                suc=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid motor l3 left value."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                            }
                                        }
                                        else{
                                            suc=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid sensory l3 right Value."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                        }
                                    }
                                    else{
                                        suc=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid sensory l3 left value."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                    }
                                }
                                else{
                                    suc=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid motor l2 right value."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                }
                            }
                            else{
                                suc=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid motor l2 left value."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                            }
                            
                        }
                        else{
                            suc=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid sensory l2 right value."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                        }
                    }
                    else{
                        suc=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid sensory l2 Left value."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                    }
                }
                else{
                    suc=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid motor l1 right value."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                }
            }
            else{
                suc=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid motor l1 left value."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
            }
        }
        else{
            suc=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid sensory l1 right value."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
        }
    }
    else{
        suc=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter valid sensory l1 left value."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
    }
    if(suc==1){
        [self performSegueWithIdentifier:@"kneeexam1" sender:self];
    }
    
    
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    //NSLog(@"succc value in perform segue %i",suc);
    ////NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"kneeexam1"])
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
    
    
    if ([segue.identifier isEqualToString:@"kneeexam1"])
    {
        
        //NSLog(@"succc value in prepre segue %i ",suc);
        KneeExamViewController2 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        //NSLog(@"recorddict in knee exam controller 2nd page %@",recorddict);
        //NSLog(@"count of recorddict::%d",[recorddict count]);
        // destViewController.delegate=self;
        
    }
    
    
    
}

- (IBAction)pickselect:(id)sender {
    if(segpat.selectedSegmentIndex==0){
        segva=@"Excellent";
    }
    else  if(segpat.selectedSegmentIndex==1){
        segva=@"Good";
        
    }
    
    else  if(segpat.selectedSegmentIndex==2){
        segva=@"Fair";
    }
    else  if(segpat.selectedSegmentIndex==3){
        segva=@"Poor";
    }
}
- (IBAction)cancel:(id)sender {
    for (id controller in [self.navigationController viewControllers])
    {
        if ([controller isKindOfClass:[hamilViewController class]])
        {
            [self.navigationController popToViewController:controller animated:YES];
            break;
        }
    }
    
    //   [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

- (IBAction)reset:(id)sender {
    segpat.selectedSegmentIndex=0;
    check1.selected=NO;
    check2.selected=NO;
    check3.selected=NO;
    check4.selected=NO;
    check5.selected=NO;
    [check1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    other1.hidden=YES;
    other1.text=@"";
    checkstring1=@"null";
    checkstring2=@"null";
    checkstring3=@"null";
    checkstring4=@"null";
    checkstring5=@"null";
    segva=@"Excellent";
    sensleft.text=@"";
    sensright.text=@"";
    motorleft.text=@"";
    motorright.text=@"";
    sensel2left.text=@"";
    sensl2right.text=@"";
    motorl2left.text=@"";
    motorl2right.text=@"";
    sensl3left.text=@"";
    sensl3right.text=@"";
    motorl3left.text=@"";
    motorl3right.text=@"";
    sensl4left.text=@"";
    sensl4right.text=@"";
    motorl4left.text=@"";
    motorl4right.text=@"";
    refl4left.text=@"";
    refl4right.text=@"";
    sensel5left.text=@"";
    sensel5right.text=@"";
    motorl5left.text=@"";
    motorl5right.text=@"";
    refsileft.text=@"";
    refsiright.text=@"";
    refl5left.text=@"";
    refl5right.text=@"";
    sensileft.text=@"";
    sensiright.text=@"";
    motorsiright.text=@"";
    motorsileft.text=@"";
    other1.text=@"";
    addcomments.text=@"";
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
