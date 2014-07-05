//
//  hami1ViewController.m
//  hamil
//
//  Created by Admin on 06/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "hami1ViewController.h"
#import "hamil2ViewController.h"
#import "databaseurl.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"


@interface hami1ViewController (){
    
    databaseurl *du;
    
}

@end

@implementation hami1ViewController
@synthesize recorddict;



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

-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if (b5.selected)
    {
        radiates.hidden=NO;
        
    }
    else
    {
        
        radiates.hidden=YES;
        
    }
    if (b12.selected)
    {
        mo_ni_oth.hidden=NO;
        
    }
    else
    {
        
        mo_ni_oth.hidden=YES;
        
    }
    if (b20.selected)
    {
        cond_aff_oth.hidden=NO;
        
    }
    else
    {
        
        cond_aff_oth.hidden=YES;
        
    }
    if (b12.selected)
    {
        mo_ni_oth.hidden=NO;
        
    }
    else
    {
        
        mo_ni_oth.hidden=YES;
        
    }
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
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
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}


- (IBAction)next:(id)sender

{
    du=[[databaseurl alloc]init];
    
    //recorddict=[[NSMutableDictionary alloc]init];
    if (b1.selected)
    {
        [recorddict setValue:@"Constant" forKey:@"const"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"const"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Intermittent" forKey:@"intermit"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"intermit"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Local" forKey:@"local"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"local"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"Diffuse" forKey:@"diffuse"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"diffuse"];
    }
    if (b5.selected)
    {
        
        [recorddict setValue:@"Radiates to" forKey:@"radiate"];
        
    }
    else
    {
        
        [recorddict setValue:@"null" forKey:@"radiate"];
        
    }
    if (b6.selected)
    {
        [recorddict setValue:@"Mild" forKey:@"mild"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"mild"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Moderate" forKey:@"moder"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"moder"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"Severe" forKey:@"severe"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"severe"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"Crippling" forKey:@"crip"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"crip"];
    }
    if (b10.selected)
    {
        [recorddict setValue:@"AM" forKey:@"am"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"am"];
    }
    if (b11.selected)
    {
        [recorddict setValue:@"PM" forKey:@"pm"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"pm"];
    }
    if (b12.selected)
    {
        
        [recorddict setValue:@"other" forKey:@"morning other"];
        
        
    }
    else
    {
        
        [recorddict setValue:@"null" forKey:@"morning other"];
        
    }
    if (b13.selected)
    {
        [recorddict setValue:@"Better" forKey:@"better"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"better"];
    }
    if (b14.selected)
    {
        [recorddict setValue:@"Same" forKey:@"same"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"same"];
    }
    if (b15.selected)
    {
        [recorddict setValue:@"Progressively Worse" forKey:@"progressively"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"progressively"];
    }
    if (b16.selected)
    {
        [recorddict setValue:@"Yes" forKey:@"yes"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"yes"];
    }
    if (b17.selected)
    {
        [recorddict setValue:@"No" forKey:@"no"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"no"];
    }
    if (b18.selected)
    {
        [recorddict setValue:@"Work" forKey:@"work"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"work"];
    }
    if (b19.selected)
    {
        [recorddict setValue:@"Sleep" forKey:@"sleep"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"sleep"];
    }
    if (b20.selected)
    {
        
        [recorddict setValue:@"other" forKey:@"condition affected other"];
        
    }
    else
    {
        
        [recorddict setValue:@"null" forKey:@"condition affected other"];
        
    }
    if (b21.selected)
    {
        [recorddict setValue:@"Same" forKey:@"same diag"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"same diag"];
    }
    if (b22.selected)
    {
        [recorddict setValue:@"Improved" forKey:@"improved"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"improved"];
    }
    if (b23.selected)
    {
        [recorddict setValue:@"Worse" forKey:@"worse"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"worse"];
    }
    if (b24.selected)
    {
        [recorddict setValue:@"Plateau" forKey:@"plateau"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"plateau"];
    }
    if (b25.selected)
    {
        [recorddict setValue:@"At pre-injury status" forKey:@"AT pre"];
    }
    else
    {
        
        [recorddict setValue:@"null" forKey:@"AT pre"];
    }
    if (b26.selected)
    {
        [recorddict setValue:@"Skilled Chiropractic Spinal Manipulation" forKey:@"skilled"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"skilled"];
    }
    if (b27.selected)
    {
        [recorddict setValue:@"EMS" forKey:@"ems"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ems"];
    }
    if (b28.selected)
    {
        [recorddict setValue:@"Ice" forKey:@"treatment_ice"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"treatment_ice"];
    }
    if (b29.selected)
    {
        [recorddict setValue:@"Heat" forKey:@"treatment_heat"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"treatment_heat"];
    }
    if (b30.selected)
    {
        [recorddict setValue:@"Nimmo" forKey:@"nimmo"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"nimmo"];
    }
    if (b31.selected)
    {
        [recorddict setValue:@"Ultrasound" forKey:@"ultra"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ultra"];
    }
    if (b32.selected)
    {
        [recorddict setValue:@"Manual Traction" forKey:@"manual"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"manual"];
    }
    if (b33.selected)
    {
        [recorddict setValue:@"Massage" forKey:@"treatment_massage"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"treatment_massage"];
    }
    if (b34.selected)
    {
        [recorddict setValue:@"Neuromuscular Re-education" forKey:@"Neuro"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Neuro"];
    }
    if (b35.selected)
    {
        [recorddict setValue:@"Stretching" forKey:@"treat_stretch"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"treat_stretch"];
    }
    if (b36.selected)
    {
        [recorddict setValue:@"Strenthening" forKey:@"treat_strength"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"treat_strength"];
    }
    if (b37.selected)
    {
        [recorddict setValue:@"Remobilization" forKey:@"remo"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"remo"];
    }
    if (b38.selected)
    {
        [recorddict setValue:@"Rehab" forKey:@"rehab"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"rehab"];
    }
    if (b39.selected)
    {
        [recorddict setValue:@"Modificat" forKey:@"modificate"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"modificate"];
    }
    if (b40.selected)
    {
        [recorddict setValue:@"Release from care" forKey:@"release"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"release"];
    }
    if (b41.selected)
    {
        [recorddict setValue:@"Refer" forKey:@"refer"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"refer"];
    }
    if (b42.selected)
    {
        [recorddict setValue:@"Decrease Pain" forKey:@"decrease pain"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"decrease pain"];
    }
    if (b43.selected)
    {
        [recorddict setValue:@"Decrease Spam" forKey:@"decrease spam"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"decrease spam"];
    }
    if (b44.selected)
    {
        [recorddict setValue:@"Increase ROM" forKey:@"inc rom"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"inc rom"];
    }
    if (b45.selected)
    {
        [recorddict setValue:@"Improve ADL" forKey:@"imp adl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"imp adl"];
    }
    if (b46.selected)
    {
        [recorddict setValue:@"Improve Subluxations" forKey:@"imp sub"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"imp sub"];
    }
    if (b47.selected)
    {
        [recorddict setValue:@"Full Activity" forKey:@"full acti"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"full acti"];
    }
    if (b48.selected)
    {
        [recorddict setValue:@"Return to Work" forKey:@"return to"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"return to"];
    }
    if (b49.selected)
    {
        [recorddict setValue:@"Renew sports" forKey:@"renew sport"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"renew sport"];
    }
    if (slighty.selected)
    {
        [recorddict setValue:@"Slightly" forKey:@"slightly"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"slightly"];
    }
    if (moderately.selected)
    {
        [recorddict setValue:@"Moderately" forKey:@"moderately"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"moderately"];
    }
    if (greatly.selected)
    {
        [recorddict setValue:@"Greatly" forKey:@"greatly"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"greatly"];
    }
    if(b5.selected)
    {
        
    }
    else
    {
        radiates.text=@"";
        
    }
    if(b12.selected)
    {
        
    }
    else
    {
        mo_ni_oth.text=@"";
        
    }
    if(b20.selected)
    {
        
    }
    else
    {
        cond_aff_oth.text=@"";
        
    }
    
    temp1 = [radiates.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 = [mo_ni_oth.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 = [last_day.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 = [cond_aff_oth.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    a=1;
    if((([temp1 length]>0)&&([du otherfields:radiates.text]==1))||([radiates.text length]==0))
    {
        if((([temp2 length]>0)&&([du otherfields:mo_ni_oth.text ]==1))||([mo_ni_oth.text  length]==0))
        {
            if((([temp3 length]>0)&&([self validateDate:temp3 ]==1))||([temp3 length]==0))
            {
                if((([temp4 length]>0)&&([du otherfields:cond_aff_oth.text ]==1))||([cond_aff_oth.text length]==0))
                {
                    
                    [recorddict setValue:radiates.text forKey:@"radiates text"];
                    [recorddict setValue:mo_ni_oth.text forKey:@"morning other text"];
                    [recorddict setValue:last_day.text forKey:@"last day"];
                    [recorddict setValue:cond_aff_oth.text forKey:@"condition affected text"];
                    
                    
                    if(a==1)
                    {
                        [self performSegueWithIdentifier:@"hami3" sender:self];
                    }
                    
                    //  NSLog(@"success%@",recorddict);
                }
                else
                {
                    a=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid condition affected."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                    
                }
                
            }
            else
            {
                a=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid last day."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
            }
            
        }
        else
        {
            a=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid morning or night other field."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
            
        }
        
    }
    else
    {
        a=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter valid radiates to field."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
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
    //recorddict=[[NSMutableDictionary alloc]init];
    [super viewDidLoad];
    radiates.hidden=YES;
    mo_ni_oth.hidden=YES;
    cond_aff_oth.hidden=YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
	// Do any additional setup after loading the view.
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
    
}
-(void)dismissKeyboard{
    
    [radiates resignFirstResponder];
    [mo_ni_oth resignFirstResponder];
    [last_day resignFirstResponder];
    [cond_aff_oth resignFirstResponder];
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"hami3"])
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
    
    if ([segue.identifier isEqualToString:@"hami3"])
    {
        
        hamil2ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in hmail second %@",recorddict);
        NSLog(@"recorddict count in hmail second %d",[recorddict count]);
    }
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)moretest:(id)sender {
}

- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

- (IBAction)reset:(id)sender {
    radiates.text=@"";
    mo_ni_oth.text=@"";
    last_day.text=@"";
    cond_aff_oth.text=@"";
    
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
    slighty.selected=NO;
    moderately.selected=NO;
    greatly.selected=NO;
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
    [slighty setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [moderately setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [greatly setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
}
@end
