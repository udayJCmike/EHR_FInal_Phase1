//
//  dcfee1ViewController.m
//  dcfee
//
//  Created by DeemsysInc on 4/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "dcfee1ViewController.h"


#import "TWMessageBarManager.h"
#import "StringConstants.h"
#import "databaseurl.h"

@interface dcfee1ViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}

@end

@implementation dcfee1ViewController
@synthesize resultset;
@synthesize mechanical;
@synthesize unattended;
@synthesize  device;
@synthesize bath;
@synthesize microwave;
@synthesize hydrotheraphy;
@synthesize diathermy;
@synthesize infrared;
@synthesize ultraviolet;
@synthesize stim;
@synthesize iontophoresis;
@synthesize contrastbaths;
@synthesize ultrasound;
@synthesize unlisted;
@synthesize exersice;
@synthesize re;
@synthesize therapy;
@synthesize gait;
@synthesize massage;
@synthesize manualtheraphy;
@synthesize other;
@synthesize grouptheraphy;
@synthesize recorddict;
@synthesize page2;

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




-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject: number];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[/]+[0-9]{1,2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)dismissKeyboard{
      printView.hidden = YES;
    [mechanical resignFirstResponder];
    [unattended resignFirstResponder];
    [device resignFirstResponder];
    [bath resignFirstResponder];
    [microwave resignFirstResponder];
    [hydrotheraphy resignFirstResponder];
    [diathermy resignFirstResponder];
    [infrared resignFirstResponder];
    [ultraviolet resignFirstResponder];
    [iontophoresis resignFirstResponder];
    [contrastbaths resignFirstResponder];
    [ultrasound resignFirstResponder];
    [stim resignFirstResponder];
    [unlisted resignFirstResponder];
    [exersice resignFirstResponder];
    [re resignFirstResponder];
    [therapy resignFirstResponder];
    [gait resignFirstResponder];
    [massage resignFirstResponder];
    [manualtheraphy resignFirstResponder];
    [other resignFirstResponder];
    [grouptheraphy resignFirstResponder];
    
    
    
    
    
    
}
- (void)viewDidLoad
{
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
    

    [super viewDidLoad];
    for (UIView *v in [self.view subviews])
    {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self displaydata];
    // recorddict=[[NSMutableDictionary alloc]init];
	// Do any additional setup after loading the view.
}
-(void)displaydata{
    if([resultset count]>0){
        mechanical.text=[resultset objectForKey:@"tractionmechanical"];
        unattended.text=[resultset objectForKey:@"electricstim"];
        device.text=[resultset objectForKey:@"vasopneumatic"];
        bath.text=[resultset objectForKey:@"paraffin"];
        microwave.text=[resultset objectForKey:@"microwave"];
        hydrotheraphy.text=[resultset objectForKey:@"whirlpool"];
        diathermy.text=[resultset objectForKey:@"diathermy"];
        infrared.text=[resultset objectForKey:@"infrared"];
        ultraviolet.text=[resultset objectForKey:@"ultraviolet"];
        iontophoresis.text=[resultset objectForKey:@"iontophoresis"];
        contrastbaths.text=[resultset objectForKey:@"contrastbaths"];
        ultrasound.text=[resultset objectForKey:@"ultrasound"];
        stim.text=[resultset objectForKey:@"manualelectricalstim"];
        unlisted.text=[resultset objectForKey:@"unlisted"];
        exersice.text=[resultset objectForKey:@"therapeutic"];
        re.text=[resultset objectForKey:@"neuromuscular"];
        therapy.text=[resultset objectForKey:@"aquatic"];
        gait.text=[resultset objectForKey:@"gaittraining"];
        massage.text=[resultset objectForKey:@"massage"];
        manualtheraphy.text=[resultset objectForKey:@"manualtherapy"];
        other.text=[resultset objectForKey:@"unlistedother"];
        grouptheraphy.text=[resultset objectForKey:@"grouptherapy"];
        if([mechanical.text isEqualToString:@"0"]){
            mechanical.text=@"";
        }
        if([mechanical.text isEqualToString:@"0"]){
            mechanical.text=@"";
        }
        if([unattended.text isEqualToString:@"0"]){
            unattended.text=@"";
        }
        if([device.text isEqualToString:@"0"]){
            device.text=@"";
        }
        if([bath.text isEqualToString:@"0"]){
            bath.text=@"";
        }
        if([microwave.text isEqualToString:@"0"]){
            microwave.text=@"";
        }
        if([hydrotheraphy.text isEqualToString:@"0"]){
            hydrotheraphy.text=@"";
        }
        if([diathermy.text isEqualToString:@"0"]){
            diathermy.text=@"";
        }
        if([infrared.text isEqualToString:@"0"]){
            infrared.text=@"";
        }
        if([grouptheraphy.text isEqualToString:@"0"]){
            grouptheraphy.text=@"";
        }
        
        
        if([ultraviolet.text isEqualToString:@"0"]){
            
            ultraviolet.text=@"";
        }
        if([iontophoresis.text isEqualToString:@"0"]){
            
            iontophoresis.text=@"";
        }
        if([contrastbaths.text isEqualToString:@"0"]){
            
            contrastbaths.text=@"";
        }
        
        if([ultrasound.text isEqualToString:@"0"]){
            
            ultrasound.text=@"";
        }
        if([stim.text isEqualToString:@"0"]){
            
            stim.text=@"";
        }
        if([unlisted.text isEqualToString:@"0"]){
            
            unlisted.text=@"";
        }
        
        if([exersice.text isEqualToString:@"0"]){
            
            exersice.text=@"";
        }
        if([re.text isEqualToString:@"0"]){
            
            re.text=@"";
        }
        if([therapy.text isEqualToString:@"0"]){
            
            therapy.text=@"";
        }
        if([gait.text isEqualToString:@"0"]){
            
            gait.text=@"";
        }
        if([massage.text isEqualToString:@"0"]){
            
            massage.text=@"";
        }
        if([other.text isEqualToString:@"0"]){
            
            other.text=@"";
        }
        
        if([manualtheraphy.text isEqualToString:@"0"]){
            
            manualtheraphy.text=@"";
        }
        
        
        
    }
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)next:(id)sender {
    // recorddict=[[NSMutableDictionary alloc]init];
    du=[[databaseurl alloc]init];
    c=1;
    temp1 =[mechanical.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[unattended.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[device.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[bath.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[microwave.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6=[hydrotheraphy.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[diathermy.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[infrared.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[ultraviolet.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[stim.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[iontophoresis.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[contrastbaths.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[ultrasound.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[unlisted.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[exersice.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[re.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[therapy.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[gait.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[massage.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[manualtheraphy.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[other.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[grouptheraphy.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    if((([temp1 length]>0)&&([du date:temp1]==1))||([temp1 length]==0))
    {
        if((([temp2 length]>0)&&([du date:temp2]==1))||([temp2 length]==0))
        {
            if((([temp3 length]>0)&&([du date:temp3]==1))||([temp3 length]==0))
            {
                if((([temp4 length]>0)&&([du date:temp4]==1))||([temp4 length]==0))
                {
                    if((([temp5 length]>0)&&([du date:temp5]==1))||([temp5 length]==0))
                    {
                        //                        if ([self validateDate:temp23]==1)
                        //                        {
                        if((([temp6 length]>0)&&([du date:temp6]==1))||([temp6 length]==0))
                        {
                            if((([temp7 length]>0)&&([du date:temp7]==1))||([temp7 length]==0))
                            {
                                if((([temp8 length]>0)&&([du date:temp8]==1))||([temp8 length]==0))
                                {
                                    if((([temp9 length]>0)&&([du date:temp9]==1))||([temp9 length]==0))
                                    {
                                        if((([temp10 length]>0)&&([du date:temp10 ]==1))||([temp10 length]==0))
                                        {
                                            if((([temp11 length]>0)&&([du date:temp11]==1))||([temp11 length]==0))
                                            {
                                                if((([temp12 length]>0)&&([du date:temp12]==1))||([temp12 length]==0))
                                                {
                                                    if((([temp13 length]>0)&&([du date:temp13]==1))||([temp13 length]==0))
                                                    {
                                                        if((([temp14 length]>0)&&([du date:temp14]==1))||([temp14 length]==0))
                                                        {
                                                            if((([temp15 length]>0)&&([du date:temp15]==1))||([temp15 length]==0))
                                                            {
                                                                if((([temp16 length]>0)&&([du date:temp16]==1))||([temp16 length]==0))
                                                                {
                                                                    if((([temp17 length]>0)&&([du date:temp17]==1))||([temp17 length]==0))
                                                                    {
                                                                        if((([temp18 length]>0)&&([du date:temp18]==1))||([temp18 length]==0))
                                                                        {
                                                                            if((([temp19 length]>0)&&([du date:temp19]==1))||([temp19 length]==0))
                                                                            {
                                                                                if((([temp20 length]>0)&&([du date:temp20]==1))||([temp20 length]==0))
                                                                                {
                                                                                    if((([temp21 length]>0)&&([du date:temp21]==1))||([temp21 length]==0))
                                                                                    {
                                                                                        if((([temp22 length]>0)&&([du date:temp22]==1))||([temp22 length]==0))
                                                                                        {
                                                                                            calc=([unlisted.text floatValue]+[ultrasound.text floatValue]+[contrastbaths.text floatValue]+[iontophoresis.text floatValue]+[stim.text floatValue]+[hydrotheraphy.text floatValue]+[mechanical.text floatValue]+[ultraviolet.text floatValue]+[infrared.text floatValue]+[diathermy.text floatValue]+[microwave.text floatValue]+[bath.text floatValue]+[device.text floatValue]+[unattended.text floatValue]+[therapy.text floatValue]+[re.text floatValue]+[exersice.text floatValue]+[gait.text floatValue]+[massage.text floatValue]+[other.text floatValue]+[manualtheraphy.text floatValue]+[grouptheraphy.text floatValue]);
                                                                                            page2.text=[[NSString alloc] initWithFormat:@"%f",calc];
                                                                                            [recorddict setValue: page2.text forKey:@"calc2"];
                                                                                            
                                                                                            
                                                                                            [recorddict setValue:mechanical.text forKey:@"mechanical"];
                                                                                            [recorddict setValue:unattended.text forKey:@"unattended"];
                                                                                            [recorddict setValue:device.text forKey:@"device"];
                                                                                            [recorddict setValue:bath.text forKey:@"bath"];
                                                                                            [recorddict setValue:microwave.text forKey:@"microwave"];
                                                                                            [recorddict setValue:hydrotheraphy.text forKey:@"hydrotheraphy"];
                                                                                            [recorddict setValue:diathermy.text forKey:@"diathermy"];
                                                                                            [recorddict setValue:infrared.text forKey:@"infrared"];
                                                                                            [recorddict setValue:ultraviolet.text forKey:@"ultraviolet"];
                                                                                            [recorddict setValue:stim.text forKey:@"stim"];
                                                                                            [recorddict setValue:iontophoresis.text forKey:@"iontophoresis"];
                                                                                            [recorddict setValue:contrastbaths.text forKey:@"contrastbaths"];
                                                                                            
                                                                                            [recorddict setValue:ultrasound.text forKey:@"ultrasound"];
                                                                                            [recorddict setValue:unlisted.text forKey:@"unlisted"];
                                                                                            [recorddict setValue:exersice.text forKey:@"exersice"];
                                                                                            [recorddict setValue:re.text forKey:@"re"];
                                                                                            
                                                                                            [recorddict setValue:therapy.text forKey:@"theraphy"];
                                                                                            [recorddict setValue:gait.text forKey:@"gait"];
                                                                                            [recorddict setValue:massage.text forKey:@"massage"];
                                                                                            [recorddict setValue:manualtheraphy.text forKey:@"manualtheraphy"];
                                                                                            [recorddict setValue:other.text forKey:@"other"];
                                                                                            [recorddict setValue:grouptheraphy.text forKey:@"grouptheraphy"];
                                                                                            NSLog(@"success!!!recorddict %@",recorddict);
                                                                                            NSLog(@"success!!!recorddict count%d",[recorddict count]);
                                                                                            
                                                                                            
                                                                                            
                                                                                            c=1;
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            c=0;
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid consult group theraphy field."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        c=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid consult unlisted/other field."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    c=0;
                                                                                    
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid manual theraphy field."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                c=0;
                                                                                
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid massage field."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            c=0;
                                                                            
                                                                            
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid gait training field."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid aquatic theraphy field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    c=0;
                                                                    
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid neuromuscular field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                    
                                                                    
                                                                    
                                                                }
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                
                                                                
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid therapeutic exercise field."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid other/unlisted field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid ultrasound field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    c=0;
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid contrast baths field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                c=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid lontophoresis field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                                
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            c=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid manual electrical stim field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        c=0;
                                        
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid ultra violet field."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                        
                                        
                                    }
                                    
                                }
                                else
                                {
                                    c=0;
                                    
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid infrared field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                    
                                }
                                
                            }
                            else
                            {
                                c=0;
                                
                                
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid diathermy field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                            }
                            
                        }
                        else
                        {
                            c=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid whirlpool/hydrotheraphy field."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                        
                        
                        
                        
                        
                        
                        
                        //                        }
                        /*                      else{
                         c=0;
                         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid  Date."];
                         [alert setDestructiveButtonWithTitle:@"x" block:nil];
                         [alert show];
                         }*/
                        
                    }
                    
                    else
                    {
                        c=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid  microwave."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                    }
                }
                else
                {
                    c=0;
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid  paraffin bath."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                }
            }
            
            
            else
            {
                c=0;
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid  vasopneumatic device."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
            }
        }
        else
        {
            c=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid  electric stim unattended."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
        }
    }
    
    else
    {
        c=0;
        
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter valid traction mechanical field."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
    }
    
    
    
    if(c==1)
    {
        [self performSegueWithIdentifier:@"dcfee2" sender:self];
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
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"dcfee2"])
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
    
    
    if ([segue.identifier isEqualToString:@"dcfee2"])
    {
        
        
        dcfee2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        NSLog(@"recorddict in dcfeedetail1%@",recorddict);
        // destViewController.delegate=self;
        
    }
}

- (void)dealloc {
    //    [page2 release];
    [super dealloc];
}
- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
}

- (IBAction)reset:(id)sender {
    mechanical.text=@"";
    unattended.text=@"";
    device.text=@"";
    bath.text=@"";
    microwave.text=@"";
    hydrotheraphy.text=@"";
    diathermy.text=@"";
    infrared.text=@"";
    ultraviolet.text=@"";
    iontophoresis.text=@"";
    contrastbaths.text=@"";
    ultrasound.text=@"";
    stim.text=@"";
    unlisted.text=@"";
    exersice.text=@"";
    re.text=@"";
    therapy.text=@"";
    gait.text=@"";
    massage.text=@"";
    manualtheraphy.text=@"";
    other.text=@"";
    grouptheraphy.text=@"";
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


@end
