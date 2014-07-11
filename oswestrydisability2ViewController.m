//
//  oswestrydisability4ViewController.m
//  oswestrydisability
//
//  Created by DeemsysInc on 3/8/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "oswestrydisability2ViewController.h"
#import "oswestrydisability3ViewController.h"
#import "QuadrupleVisualAnalogueScale.h"
#import "databaseurl.h"
@interface oswestrydisability2ViewController ()
{
    databaseurl *du;
}
@end

@implementation oswestrydisability2ViewController
@synthesize date;
@synthesize sec101;
@synthesize sec102;
@synthesize sec103;
@synthesize sec104;
@synthesize sec105;
@synthesize sec106;
@synthesize seg1;
@synthesize seg2;
@synthesize seg3;
@synthesize seg4;
@synthesize name;
@synthesize recorddict;
@synthesize rightlabel;
@synthesize rightslider;
@synthesize workmodbut;
@synthesize workmodtv;
@synthesize worselabel;
@synthesize worseslider;
@synthesize comments;
@synthesize resultset;
@synthesize score;
@synthesize cancel;
@synthesize label1,label2,label3,label4,label5,label6,label7,label8,label9,label10,label11,lineImage;


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

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    seg1val=@"null";
    seg2val=@"null";
    seg3val=@"null";
    rightlabel.text=@"No Pain";
    worselabel.text=@"No Pain";
    val10=@"null";
    name.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    score.text=[NSString stringWithFormat:@" %d ",result];
    
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]])
        {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
   
    [self displaydata];// Do any additional setup after loading the view.
}
-(void)dismissKeyboard
{
    [name resignFirstResponder];
    [date resignFirstResponder];
    [comments resignFirstResponder];
    [workmodtv resignFirstResponder];
    
}
-(void)displaydata
{
    
    if ([resultset count]>0)
    {
        
        if ([[resultset objectForKey:@"traveling"]isEqualToString:@"0"])
        {
            [self first:nil];
        }
        else if ([[resultset objectForKey:@"traveling"]isEqualToString:@"1"])
        {
            [self second:nil];
        }
        else if ([[resultset objectForKey:@"traveling"]isEqualToString:@"2"])
        {
            [self third:nil];
        }
        else if ([[resultset objectForKey:@"traveling"]isEqualToString:@"3"])
        {
            [self fourth:nil];
        }
        else if ([[resultset objectForKey:@"traveling"]isEqualToString:@"4"])
        {
            [self fifth:nil];
        }
        else if ([[resultset objectForKey:@"traveling"]isEqualToString:@"5"])
        {
            [self sixth:nil];
        }
        comments.text=[resultset objectForKey:@"comments"];
        name.text=[resultset objectForKey:@"name"];
        date.text=[resultset objectForKey:@"date"];
        rightlabel.text=[resultset objectForKey:@"painscale"];
        worselabel.text=[resultset objectForKey:@"painscale1"];
        [rightslider setValue:[rightlabel.text floatValue] animated:YES];
        [worseslider setValue:[worselabel.text floatValue] animated:YES];
        score.text=[resultset objectForKey:@"scores"];
        workmodtv.text=[resultset objectForKey:@"job"];
        
        if ([rightlabel.text isEqualToString:@"Severe Pain"])
        {
            [rightslider setValue:10 animated:YES];
        }
        else if ([rightlabel.text isEqualToString:@"No Pain"])
        {
            [rightslider setValue:0 animated:YES];
        }
        else
        {
            [rightslider setValue:[rightlabel.text floatValue] animated:YES];
        }
        
        rightlabel.text=[NSString stringWithFormat:@"%@",rightlabel.text];
        
        
        
        if ([worselabel.text isEqualToString:@"Severe Pain"])
        {
            [worseslider setValue:10 animated:YES];
        }
        else if ([worselabel.text isEqualToString:@"No Pain"])
        {
            [worseslider setValue:0 animated:YES];
        }
        else
        {
            [worseslider setValue:[worselabel.text floatValue] animated:YES];
        }
        
        worselabel.text=[NSString stringWithFormat:@"%@",worselabel.text];
        
        
        if ([[resultset objectForKey:@"joboptional"]isEqualToString:@"I do not work"])
        {
            workmodbut.selected=YES;
            [workmodbut setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
            
            label1.hidden = YES;
            label2.hidden = YES;
            label3.hidden = YES;
            label4.hidden = YES;
            label5.hidden = YES;
            label6.hidden = YES;
            label7.hidden = YES;
            label8.hidden = YES;
            label9.hidden = YES;
            label10.hidden = YES;
            label11.hidden = YES;
            lineImage.hidden = YES;
            seg1.hidden = YES;
            seg2.hidden = YES;
            seg3.hidden = YES;
            seg4.hidden = YES;
        }
        else
        {
            workmodbut.selected=NO;
            [workmodbut setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
            
            label1.hidden = NO;
            label2.hidden = NO;
            label3.hidden = NO;
            label4.hidden = NO;
            label5.hidden = NO;
            label6.hidden = NO;
            label7.hidden = NO;
            label8.hidden = NO;
            label9.hidden = NO;
            label10.hidden = NO;
            label11.hidden = NO;
            lineImage.hidden = NO;
            seg1.hidden = NO;
            seg2.hidden = NO;
            seg3.hidden = NO;
            seg4.hidden = NO;
            
            
        }
        if ([[resultset objectForKey:@"work"]isEqualToString:@"1"])
        {
            seg1val=@"1";
            [seg1 setSelectedSegmentIndex:0];
            
        }
        else if ([[resultset objectForKey:@"work"]isEqualToString:@"2"])
        {
            seg1val=@"2";
            [seg1 setSelectedSegmentIndex:1];
            
            
        }
        else if ([[resultset objectForKey:@"work"]isEqualToString:@"3"])
        {
            seg1val=@"3";
            [seg1 setSelectedSegmentIndex:2];
            
        }
        else if ([[resultset objectForKey:@"work"]isEqualToString:@"4"])
        {
            seg1val=@"4";
            [seg1 setSelectedSegmentIndex:3];
            
        }
        else if ([[resultset objectForKey:@"work"]isEqualToString:@"5"])
        {
            seg1val=@"5";
            [seg1 setSelectedSegmentIndex:4];
        }
        else
        {
            seg1val=@"null";
            [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        }
        if ([[resultset objectForKey:@"worka"]isEqualToString:@"1"])
        {
            seg2val=@"1";
            [seg2 setSelectedSegmentIndex:0];
            
        }
        else if ([[resultset objectForKey:@"worka"]isEqualToString:@"2"])
        {
            seg2val=@"2";
            [seg2 setSelectedSegmentIndex:1];
            
            
        }
        else if ([[resultset objectForKey:@"worka"]isEqualToString:@"3"])
        {
            seg2val=@"3";
            [seg2 setSelectedSegmentIndex:2];
            
        }
        else if ([[resultset objectForKey:@"worka"]isEqualToString:@"4"])
        {
            seg2val=@"4";
            [seg2 setSelectedSegmentIndex:3];
            
        }
        else if ([[resultset objectForKey:@"worka"]isEqualToString:@"5"])
        {
            seg2val=@"5";
            [seg2 setSelectedSegmentIndex:4];
        }
        else
        {
            seg2val=@"null";
            [seg2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        }
        if ([[resultset objectForKey:@"workb"]isEqualToString:@"1"])
        {
            seg3val=@"1";
            [seg3 setSelectedSegmentIndex:0];
            
        }
        else if ([[resultset objectForKey:@"workb"]isEqualToString:@"2"])
        {
            seg3val=@"2";
            [seg3 setSelectedSegmentIndex:1];
            
            
        }
        else if ([[resultset objectForKey:@"workb"]isEqualToString:@"3"])
        {
            seg3val=@"3";
            [seg3 setSelectedSegmentIndex:2];
            
        }
        else if ([[resultset objectForKey:@"workb"]isEqualToString:@"4"])
        {
            seg3val=@"4";
            [seg3 setSelectedSegmentIndex:3];
            
        }
        else if ([[resultset objectForKey:@"workb"]isEqualToString:@"5"])
        {
            seg3val=@"5";
            [seg3 setSelectedSegmentIndex:4];
        }
        else
        {
            seg3val=@"null";
            [seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        }
        if ([[resultset objectForKey:@"workc"]isEqualToString:@"1"])
        {
            seg4val=@"1";
            [seg4 setSelectedSegmentIndex:0];
            
        }
        else if ([[resultset objectForKey:@"workc"]isEqualToString:@"2"])
        {
            seg4val=@"2";
            [seg4 setSelectedSegmentIndex:1];
            
            
        }
        else if ([[resultset objectForKey:@"workc"]isEqualToString:@"3"])
        {
            seg4val=@"3";
            [seg4 setSelectedSegmentIndex:2];
            
        }
        else if ([[resultset objectForKey:@"workc"]isEqualToString:@"4"])
        {
            seg4val=@"4";
            [seg4 setSelectedSegmentIndex:3];
            
        }
        else if ([[resultset objectForKey:@"workc"]isEqualToString:@"5"])
        {
            seg4val=@"5";
            [seg4 setSelectedSegmentIndex:4];
        }
        else
        {
            seg4val=@"null";
            [seg4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        }
        
        
        
        
    }
}
- (IBAction)reset:(id)sender
{
    val10=@"null";
    [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    seg1val=@"null";
    seg2val=@"null";
    seg3val=@"null";
    rightlabel.text=@"No Pain";
    worselabel.text=@"No Pain";
    [rightslider setValue:0 animated:YES];
    [worseslider setValue:0 animated:YES];
    [workmodbut setSelected:NO];
    [workmodbut setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    name.text=@"";
    date.text=@"";
    comments.text=@"";
    workmodtv.text=@"";
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    score.text=[NSString stringWithFormat:@" %d ",result];
    label1.hidden = NO;
    label2.hidden = NO;
    label3.hidden = NO;
    label4.hidden = NO;
    label5.hidden = NO;
    label6.hidden = NO;
    label7.hidden = NO;
    label8.hidden = NO;
    label9.hidden = NO;
    label10.hidden = NO;
    label11.hidden = NO;
    lineImage.hidden = NO;
    seg1.hidden = NO;
    seg2.hidden = NO;
    seg3.hidden = NO;
    seg4.hidden = NO;

}

-(IBAction)cancel:(id)sender
{
    //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
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
- (IBAction)first:(id)sender {
    
    val10=@"0";
    [sec101 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    score.text=[NSString stringWithFormat:@" %d ",result];
    
    
}
- (IBAction)second:(id)sender {
    val10=@"1";
    
    [sec102 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    score.text=[NSString stringWithFormat:@" %d ",result];
}
- (IBAction)third:(id)sender {
    val10=@"2";
    [sec103 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    score.text=[NSString stringWithFormat:@" %d ",result];
    
    
    
}
- (IBAction)fourth:(id)sender {
    val10=@"3";
    [sec104 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    score.text=[NSString stringWithFormat:@" %d ",result];
    
    
}
- (IBAction)fifth:(id)sender {
    val10=@"4";
    [sec105 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    score.text=[NSString stringWithFormat:@" %d ",result];
    
    
}
-(IBAction)sixth:(id)sender {
    val10=@"5";
    [sec106 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber *b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    score.text=[NSString stringWithFormat:@" %d ",result];
    
    
    
}
- (IBAction)checkboxselected:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
        
        label1.hidden = YES;
        label2.hidden = YES;
        label3.hidden = YES;
        label4.hidden = YES;
        label5.hidden = YES;
        label6.hidden = YES;
        label7.hidden = YES;
        label8.hidden = YES;
        label9.hidden = YES;
        label10.hidden = YES;
        label11.hidden = YES;
        lineImage.hidden = YES;
        seg1.hidden = YES;
        seg2.hidden = YES;
        seg3.hidden = YES;
        seg4.hidden = YES;
        //[seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        //[seg2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        //[seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        //[seg4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        
        
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
        
        label1.hidden = NO;
        label2.hidden = NO;
        label3.hidden = NO;
        label4.hidden = NO;
        label5.hidden = NO;
        label6.hidden = NO;
        label7.hidden = NO;
        label8.hidden = NO;
        label9.hidden = NO;
        label10.hidden = NO;
        label11.hidden = NO;
        lineImage.hidden = NO;
        seg1.hidden = NO;
        seg2.hidden = NO;
        seg3.hidden = NO;
        seg4.hidden = NO;
        //        [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        //        [seg2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        //        [seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        //        [seg4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
        
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"oswestry3"])
    {
        
        oswestrydisability3ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
      //  NSLog(@"recorddict in oswestry third %@",recorddict);
    }
    
    
}
- (IBAction)rightnow:(id)sender {
    int val=(int)rightslider.value;
    if (val==10) {
        rightlabel.text=@"Severe Pain";
    }
    else if(val==0)
    {
        rightlabel.text=@"No Pain";
    }
    else
    {
        rightlabel.text=[NSString stringWithFormat:@"%d",val];
    }
}
- (IBAction)painworse:(id)sender
{
    int val=(int)worseslider.value;
    if (val==10) {
        worselabel.text=@"Severe Pain";
    }
    else if(val==0)
    {
        worselabel.text=@"No Pain";
    }
    else
    {
        worselabel.text=[NSString stringWithFormat:@"%d",val];
    }
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)validatePNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9@_]+";
    
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
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (IBAction)save:(id)sender {
    int c;
    du=[[databaseurl alloc]init];
    
    NSString *temp11=[[comments.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[[temp11 stringByReplacingOccurrencesOfString:@"\t" withString:@" "]stringByReplacingOccurrencesOfString:@"\r" withString:@""];
   
    NSString *temp1 = [name.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *temp2 = [date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if (([temp1 length]>0)&&([temp2 length]>0))
    {
        
        if ([du patname:name.text]==1)
        {
            if ([du dateexpress:date.text]==1)
            {
                if((([temp11 length]>0)&&([du comments:temp11]==1))||([temp11 length]==0))
                {
                    if((([workmodtv.text length]>0)&&([du otherfields:workmodtv.text]==1))||([workmodtv.text length]==0))
                    {
                c=1;
                    [recorddict setValue:comments.text forKey:@"comment"];
                    [recorddict setValue:workmodtv.text  forKey:@"jobwork"];
                    [recorddict setValue:val10 forKey:@"sec10"];
                    [recorddict setValue:name.text forKey:@"patientname"];
                    [recorddict setValue:date.text forKey:@"date"];
                    [recorddict setValue:worselabel.text forKey:@"painlevel1"];
                    [recorddict setValue:rightlabel.text forKey:@"painlevel"];
                    
                    [recorddict setValue:score.text forKey:@"score"];
                    
                    if (workmodbut.selected) {
                        [recorddict setValue:@"I do not work" forKey:@"dontwork"];
                        [recorddict setValue:@"null" forKey:@"seg1"];
                        [recorddict setValue:@"null" forKey:@"seg2"];
                        [recorddict setValue:@"null" forKey:@"seg3"];
                        [recorddict setValue:@"null" forKey:@"seg4"];
                    }
                    else{
                        [recorddict setValue:@"null" forKey:@"dontwork"];
                        [recorddict setValue:seg1val forKey:@"seg1"];
                        [recorddict setValue:seg2val forKey:@"seg2"];
                        [recorddict setValue:seg3val forKey:@"seg3"];
                        [recorddict setValue:seg4val forKey:@"seg4"];
                    }
                    
                    
                }
                    else
                    {
                        c =0;
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid work field." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    }
                    
                    
                    //                    NSLog(@"recorddict %@",recorddict);
                    
                }
                else
                {
                    c =0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid comment." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }

                
            }
            else
            {
                c =0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid date." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
        }
        else
        {
            c =0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid patient name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
    }
    else{
        c =0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Required fields should not be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    
    
    
    if (c==1) {
        [self performSegueWithIdentifier:@"oswestry3" sender:self];
    }
}
- (IBAction)seg1selected:(id)sender
{
    if (seg1.selectedSegmentIndex==0) {
        seg1val=@"1";
    }
    else if (seg1.selectedSegmentIndex==1) {
        seg1val=@"2";
    }
    
    else if (seg1.selectedSegmentIndex==2) {
        seg1val=@"3";
    }
    
    else if (seg1.selectedSegmentIndex==3) {
        seg1val=@"4";
    }
    else  if (seg1.selectedSegmentIndex==4) {
        seg1val=@"5";
    }
    //    else
    //    {
    //        [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    //        seg1val=@"";
    //    }
    
    
}
- (IBAction)seg2selected:(id)sender
{
    if (seg2.selectedSegmentIndex==0) {
        seg2val=@"1";
    }
    else if (seg2.selectedSegmentIndex==1) {
        seg2val=@"2";
    }
    
    else if (seg2.selectedSegmentIndex==2) {
        seg2val=@"3";
    }
    
    else if (seg2.selectedSegmentIndex==3) {
        seg2val=@"4";
    }
    else  if (seg2.selectedSegmentIndex==4) {
        seg2val=@"5";
    }
    
}
- (IBAction)seg3selected:(id)sender
{
    if (seg3.selectedSegmentIndex==0) {
        seg3val=@"1";
    }
    else if (seg3.selectedSegmentIndex==1) {
        seg3val=@"2";
    }
    
    else if (seg3.selectedSegmentIndex==2) {
        seg3val=@"3";
    }
    
    else if (seg3.selectedSegmentIndex==3) {
        seg3val=@"4";
    }
    else  if (seg3.selectedSegmentIndex==4) {
        seg3val=@"5";
    }
    
}
- (IBAction)seg4selected:(id)sender
{
    if (seg4.selectedSegmentIndex==0) {
        seg4val=@"1";
    }
    else if (seg4.selectedSegmentIndex==1) {
        seg4val=@"2";
    }
    
    else if (seg4.selectedSegmentIndex==2) {
        seg4val=@"3";
    }
    
    else if (seg4.selectedSegmentIndex==3) {
        seg4val=@"4";
    }
    else  if (seg4.selectedSegmentIndex==4) {
        seg4val=@"5";
    }
    
    
}


- (void)dealloc {
    
    
    [cancel release];
    [label1 release];
    [label2 release];
    [label3 release];
    [label4 release];
    [label5 release];
    [label6 release];
    [label7 release];
    [lineImage release];
    [label8 release];
    [label9 release];
    [label10 release];
    [label11 release];
    [super dealloc];
}
@end
