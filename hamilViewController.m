//
//  hamilViewController.m
//  hamil
//
//  Created by Admin on 03/03/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "hamilViewController.h"
#import "hami1ViewController.h"
#import "databaseurl.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"



@interface hamilViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}

@end

@implementation hamilViewController
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
        if(sender.tag==1){
            [self performSegueWithIdentifier:@"lumbocheck" sender:self];
            
        }
        
        if(sender.tag==2){
            [self performSegueWithIdentifier:@"hamiltocervical" sender:self];
            
        }
        if(sender.tag==3){
            [self performSegueWithIdentifier:@"thoraciccheck" sender:self];
            
        }
        if(sender.tag==8){
            [self performSegueWithIdentifier:@"shouldercheck" sender:self];
            
        }
        if(sender.tag==9){
            [self performSegueWithIdentifier:@"elbowcheck" sender:self];
            
        }
        if(sender.tag==10){
            [self performSegueWithIdentifier:@"wristcheck" sender:self];
            
        }
        if(sender.tag==11){
            [self performSegueWithIdentifier:@"wristcheck" sender:self];
            
        }
        if(sender.tag==13){
            [self performSegueWithIdentifier:@"hipcheck" sender:self];
            
        }
        if(sender.tag==15){
            [self performSegueWithIdentifier:@"kneecheck" sender:self];
            
        }
        if(sender.tag==16){
            [self performSegueWithIdentifier:@"footcheck" sender:self];
            
        }
        if(sender.tag==17){
            [self performSegueWithIdentifier:@"footcheck" sender:self];
            
        }
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
    
    if(b25.selected)
    {
        other1.hidden=NO;
    }
    else{
        other1.hidden=YES;
        
    }
    if(b30.selected)
    {
        other2.hidden=NO;
    }
    else{
        other2.hidden=YES;
        
    }
    if(b36.selected)
    {
        other3.hidden=NO;
    }
    else{
        other3.hidden=YES;
        
    }
    if(b48.selected)
    {
        other4.hidden=NO;
    }
    else{
        other4.hidden=YES;
        
    }
    
    
    
    
    
    
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(BOOL)validateNames1:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]+";
    
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
    recorddict=[[NSMutableDictionary alloc]init];
    
    du=[[databaseurl alloc]init];
    if (b1.selected)
    {
        
        [recorddict setValue:@"HA" forKey:@"ha"];
    }
    else
    {
        
        [recorddict setValue:@"null" forKey:@"ha"];
    }
    if (b2.selected)
    {
        [recorddict setValue:@"Wrist" forKey:@"wrist"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"wrist"];
    }
    if (b3.selected)
    {
        [recorddict setValue:@"Neck" forKey:@"neck"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"neck"];
    }
    if (b4.selected)
    {
        [recorddict setValue:@"LBP" forKey:@"lbp"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"lbp"];
    }
    if (b5.selected)
    {
        [recorddict setValue:@"MB" forKey:@"mb"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"mb"];
    }
    if (b6.selected)
    {
        [recorddict setValue:@"Hip" forKey:@"hip"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"hip"];
    }
    if (b7.selected)
    {
        [recorddict setValue:@"Ribs" forKey:@"ribs"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ribs"];
    }
    if (b8.selected)
    {
        [recorddict setValue:@"Leg" forKey:@"leg"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"leg"];
    }
    if (b9.selected)
    {
        [recorddict setValue:@"Shoulder" forKey:@"shoulder"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"shoulder"];
    }
    if (b10.selected)
    {
        [recorddict setValue:@"Knee" forKey:@"knee"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"knee"];
    }
    if (b11.selected)
    {
        [recorddict setValue:@"Elbow" forKey:@"elbow"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"elbow"];
    }
    if (b12.selected)
    {
        [recorddict setValue:@"Foot" forKey:@"foot"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"foot"];
    }
    if (b13.selected)
    {
        [recorddict setValue:@"Hand" forKey:@"hand"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"hand"];
    }
    if (b14.selected)
    {
        [recorddict setValue:@"Ankle" forKey:@"ankle"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ankle"];
    }if (b15.selected)
    {
        [recorddict setValue:@"Sudden" forKey:@"sud"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"sud"];
    }
    if (b16.selected)
    {
        [recorddict setValue:@"Gradual" forKey:@"grad"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"grad"];
    }
    
    if (b17.selected)
    {
        [recorddict setValue:@"Acute" forKey:@"acute"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"acute"];
    }
    if (b18.selected)
    {
        [recorddict setValue:@"Subacute" forKey:@"subacute"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"subacute"];
    }
    if (b19.selected)
    {
        [recorddict setValue:@"Chronic" forKey:@"chronic"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"chronic"];
    }
    if (b20.selected)
    {
        [recorddict setValue:@"Lying down" forKey:@"lying"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"lying"];
    }
    if (b21.selected)
    {
        [recorddict setValue:@"Sitting" forKey:@"sit"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"sit"];
    }
    if (b22.selected)
    {
        [recorddict setValue:@"Standing" forKey:@"stand"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"stand"];
    }
    if (b23.selected)
    {
        [recorddict setValue:@"Bending" forKey:@"bend1"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"bend1"];
    }
    if (b24.selected)
    {
        [recorddict setValue:@"Rest" forKey:@"rest"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"rest"];
    }
    if (b25.selected)
    {
        [recorddict setValue:@"other" forKey:@"feelbetterother"];
        //  [recorddict setValue:other1.text forKey:@"feel better othertext"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"feelbetterother"];
        //   [recorddict setValue:@"null" forKey:@"feel better othertext"];
    }
    if (b26.selected)
    {
        [recorddict setValue:@"Ice" forKey:@"ice"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ice"];
    }
    if (b27.selected)
    {
        [recorddict setValue:@"Heat" forKey:@"heat"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"heat"];
    }
    if (b28.selected)
    {
        [recorddict setValue:@"Massage" forKey:@"massage"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"massage"];
    }
    if (b29.selected)
    {
        [recorddict setValue:@"Aspirin" forKey:@"asprin"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"asprin"];
    }
    if (b30.selected)
    {
        [recorddict setValue:@"other" forKey:@"doneother"];
        // [recorddict setValue:other2.text forKey:@"done other text"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"doneother"];
        // [recorddict setValue:@"null" forKey:@"done other text"];
    }
    if (b31.selected)
    {
        [recorddict setValue:@"Bending" forKey:@"bending2"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"bending2"];
    }
    if (b32.selected)
    {
        [recorddict setValue:@"Twisting" forKey:@"twist"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"twist"];
    }
    if (b33.selected)
    {
        [recorddict setValue:@"Lifting" forKey:@"lift"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"lift"];
    }
    if (b34.selected)
    {
        [recorddict setValue:@"Walking" forKey:@"walk"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"walk"];
    }
    if (b35.selected)
    {
        [recorddict setValue:@"Activity" forKey:@"activity"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"activity"];
    }
    if (b36.selected)
    {
        [recorddict setValue:@"other" forKey:@"feelworseother"];
        //[recorddict setValue:other3.text forKey:@"feel worse other text"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"feelworseother"];
        // [recorddict setValue:@"null" forKey:@"feel worse other text"];
    }
    if (b37.selected)
    {
        [recorddict setValue:@"Sharp/Shooting" forKey:@"sharp"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"sharp"];
    }
    if (b38.selected)
    {
        [recorddict setValue:@"Severe" forKey:@"severeone"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"severeone"];
    }
    if (b39.selected)
    {
        [recorddict setValue:@"Dull/achy" forKey:@"dull"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"dull"];
    }
    if (b40.selected)
    {
        [recorddict setValue:@"Burning/Stinging" forKey:@"burn"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"burn"];
    }
    if (b41.selected)
    {
        [recorddict setValue:@"Deep/Nagging" forKey:@"deep"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"deep"];
    }
    if (b42.selected)
    {
        [recorddict setValue:@"Throbbing/Diffuse" forKey:@"throb"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"throb"];
    }
    if (b43.selected)
    {
        [recorddict setValue:@"Numb" forKey:@"numb"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"numb"];
    }
    if (b44.selected)
    {
        [recorddict setValue:@"Tingling" forKey:@"ting"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ting"];
    }
    if (b45.selected)
    {
        [recorddict setValue:@"Stiff" forKey:@"stiff"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"stiff"];
    }
    if (b46.selected)
    {
        [recorddict setValue:@"Stabbing" forKey:@"stab"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"stab"];
    }
    if (b47.selected)
    {
        [recorddict setValue:@"Cramping" forKey:@"cramp"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"cramp"];
    }
    if (b48.selected)
    {
        [recorddict setValue:@"other" forKey:@"painother"];
        // [recorddict setValue:other4.text forKey:@"pain other text"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"painother"];
        // [recorddict setValue:@"null" forKey:@"pain other text"];
    }
    if (but1.selected)
    {
        [recorddict setValue:@"right" forKey:@"lumbr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"lumbr"];
    }
    if (but2.selected)
    {
        [recorddict setValue:@"left" forKey:@"lumbl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"lumbl"];
    }
    if (but3.selected)
    {
        [recorddict setValue:@"right" forKey:@"cervicr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"cervicr"];
    }
    
    if (but4.selected)
    {
        [recorddict setValue:@"left" forKey:@"cervicl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"cervicl"];
    }
    
    if (but5.selected)
    {
        [recorddict setValue:@"right" forKey:@"thoracicr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"thoracicr"];
    }
    if (but6.selected)
    {
        [recorddict setValue:@"left" forKey:@"thoracicl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"thoracicl"];
    }
    if (but7.selected)
    {
        [recorddict setValue:@"right" forKey:@"har"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"har"];
    }
    if (but8.selected)
    {
        [recorddict setValue:@"left" forKey:@"hal"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"hal"];
    }
    if (but9.selected)
    {
        [recorddict setValue:@"right" forKey:@"neckr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"neckr"];
    }
    if (but10.selected)
    {
        [recorddict setValue:@"left" forKey:@"neckl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"neckl"];
    }
    if (but11.selected)
    {
        [recorddict setValue:@"right" forKey:@"mbr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"mbr"];
    }
    if (but12.selected)
    {
        [recorddict setValue:@"left" forKey:@"mbl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"mbl"];
    }if (but13.selected)
    {
        [recorddict setValue:@"right" forKey:@"ribsr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ribsr"];
    }
    if (but14.selected)
    {
        [recorddict setValue:@"left" forKey:@"ribsl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ribsl"];
    }
    if (but15.selected)
    {
        [recorddict setValue:@"right" forKey:@"shoulderr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"shoulderr"];
    }
    if (but16.selected)
    {
        [recorddict setValue:@"left" forKey:@"shoulderl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"shoulderl"];
    }
    if (but17.selected)
    {
        [recorddict setValue:@"right" forKey:@"elbr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"elbr"];
    }
    if (but18.selected)
    {
        [recorddict setValue:@"left" forKey:@"elbl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"elbl"];
    }
    if (but19.selected)
    {
        [recorddict setValue:@"right" forKey:@"handr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"handr"];
    }
    if (but20.selected)
    {
        [recorddict setValue:@"left" forKey:@"handl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"handl"];
    }if (but21.selected)
    {
        [recorddict setValue:@"right" forKey:@"wristr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"wristr"];
    }
    if (but22.selected)
    {
        [recorddict setValue:@"left" forKey:@"wristl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"wristl"];
    }
    if (but23.selected)
    {
        [recorddict setValue:@"right" forKey:@"lbpr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"lbpr"];
    }
    if (but24.selected)
    {
        [recorddict setValue:@"left" forKey:@"lbpl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"lbpl"];
    }
    if (but25.selected)
    {
        [recorddict setValue:@"right" forKey:@"hipr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"hipr"];
    }
    if (but26.selected)
    {
        [recorddict setValue:@"left" forKey:@"hipl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"hipl"];
    }
    if (but27.selected)
    {
        [recorddict setValue:@"right" forKey:@"legr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"legr"];
    }
    if (but28.selected)
    {
        [recorddict setValue:@"left" forKey:@"legl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"legl"];
    }
    if (but29.selected)
    {
        [recorddict setValue:@"right" forKey:@"kneer"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"kneer"];
    }
    if (but30.selected)
    {
        [recorddict setValue:@"left" forKey:@"kneel"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"kneel"];
    }
    if (but31.selected)
    {
        [recorddict setValue:@"right" forKey:@"footr"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"footr"];
    }
    if (but32.selected)
    {
        [recorddict setValue:@"left" forKey:@"footl"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"footl"];
    }if (but33.selected)
    {
        [recorddict setValue:@"right" forKey:@"ankler"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"ankler"];
    }
    if (but34.selected)
    {
        [recorddict setValue:@"left" forKey:@"anklel"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"anklel"];
    }
    if (lumbo.selected)
    {
        [recorddict setValue:@"Lumbopelvic" forKey:@"Lumbopelvic"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Lumbopelvic"];
    }
    if (cervical.selected)
    {
        [recorddict setValue:@"Cervical" forKey:@"Cervical"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Cervical"];
    }if (thoracic.selected)
    {
        [recorddict setValue:@"Thoracic" forKey:@"Thoracic"];
    }
    else
    {
        [recorddict setValue:@"null" forKey:@"Thoracic"];
    }
    if (b25.selected)
    {
        
    }
    else
    {
        other1.text=@"";
    }
    if (b30.selected)
    {
        
    }
    else
    {
        other2.text=@"";
    }
    if (b36.selected)
    {
        
    }
    else
    {
        other3.text=@"";
    }
    if (b48.selected)
    {
        
    }
    else
    {
        other4.text=@"";
    }
    a=1;
    temp1 =[gradualH.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[gradualD.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[injury_occur.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5 =[other1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6 =[other2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[other3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[other4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4=[[happen.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if((([temp1 length]>0)&&([self validateNames1:gradualH.text]==1))||([gradualH.text length]==0))
    {
        if((([temp2 length]>0)&&([self validateNames1:gradualD.text ]==1))||([gradualD.text  length]==0))
        {
            if((([temp3 length]>0)&&([self validateDate:temp3 ]==1))||([temp3 length]==0))
            {
                if((([temp4 length]>0)&&([du otherfields:happen.text ]==1))||([happen.text length]==0))
                {
                    if((([temp5 length]>0)&&([du otherfields:other1.text]==1))||([other1.text length]==0))
                    {
                        if((([temp6 length]>0)&&([du otherfields:other2.text]==1))||([other2.text length]==0))
                        {
                            if((([temp7 length]>0)&&([du otherfields:other3.text]==1))||([other3.text length]==0))
                            {
                                if((([temp8 length]>0)&&([du otherfields:other4.text]==1))||([other4.text length]==0))
                                {
                                    
                                    [recorddict setValue:gradualH.text forKey:@"gradual hours"];
                                    [recorddict setValue:gradualD.text forKey:@"gradual days"];
                                    [recorddict setValue:injury_occur.text forKey:@"injury date"];
                                    [recorddict setValue:other1.text forKey:@"feel better other text"];
                                    [recorddict setValue:other2.text forKey:@"done other text"];
                                    [recorddict setValue:other3.text forKey:@"feel worse other text"];
                                    [recorddict setValue:other4.text forKey:@"pain other text"];
                                    [recorddict setValue:happen.text forKey:@"happened"];
                                    
                                    
                                    if(a==1)
                                    {
                                        [self performSegueWithIdentifier:@"hami2" sender:self];
                                    }
                                    
                                    //  NSLog(@"success%@",recorddict);
                                }
                                else
                                {
                                    a=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid describe pain other."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                }
                                
                            }
                            else
                            {
                                a=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid feel worse other."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                                
                            }
                            
                        }
                        else
                        {
                            a=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid have you done other."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                            
                        }
                        
                    }
                    else
                    {
                        a=0;
                        
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid feel better other."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                        
                        
                    }
                    
                }
                else
                {
                    a=0;
                    
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid happen."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                }
                
            }
            else
            {
                a=0;
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid injury date."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
            }
            
        }
        else
        {
            a=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid gradual days."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
            
        }
        
    }
    else
    {
        a=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Please enter valid gradual hours."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
        
        
        
        
    }
    
}

-(void)dismissKeyboard{
    
    printView.hidden = YES;
    [gradualD resignFirstResponder];
    [gradualH resignFirstResponder];
    [other1 resignFirstResponder];
    [other2 resignFirstResponder];
    [other3 resignFirstResponder];
    [other4 resignFirstResponder];
    [happen resignFirstResponder];
    [injury_occur resignFirstResponder];
    
}

- (void)viewDidLoad
{
    
    
    happen.layer.borderWidth = 0.7;
    happen.layer.borderColor = [[UIColor colorWithRed:205/255.0f green:205/255.0f blue:205/255.0f alpha:1.0f] CGColor];
    //    self.layer.borderColor=[[UIColor blackColor]CGColor];
    happen.layer.cornerRadius = 6.5;
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
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

    happen.delegate = self;
    [super viewDidLoad];
    other1.hidden=YES;
    other2.hidden=YES;
    other3.hidden=YES;
    other4.hidden=YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view, typically from a nib.
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
    
    if([identifier isEqual:@"hami2"])
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
    
    if ([segue.identifier isEqualToString:@"hami2"])
    {
        
        hami1ViewController*destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in hmail first %@",recorddict);
        NSLog(@"recorddict count in hmail first %d",[recorddict count]);
    }
    
    
}
- (void)dealloc {
    [happen release];
    [b1 release];
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
    [ha release];
    [wri release];
    [nec release];
    [lbp release];
    [mb release];
    [hip release];
    [rib release];
    [leg release];
    [sho release];
    [knee release];
    [elb release];
    [foo release];
    [han release];
    [ank release];
    [but1 release];
    [but2 release];
    [but3 release];
    [but4 release];
    [but5 release];
    [super dealloc];
}
- (IBAction)MoreTest:(id)sender {
}

- (IBAction)reset:(id)sender {
    
    gradualH.text=@"";
    gradualD.text=@"";
    injury_occur.text=@"";
    other1.text=@"";
    other2.text=@"";
    other3.text=@"";
    other4.text=@"";
    happen.text=@"";
    other1.hidden=YES;
    other2.hidden=YES;
    other3.hidden=YES;
    other4.hidden=YES;
    
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
    lumbo.selected=NO;
    cervical.selected=NO;
    thoracic.selected=NO;
    but1.selected=NO;
    but2.selected=NO;
    but3.selected=NO;
    but4.selected=NO;
    but5.selected=NO;
    but6.selected=NO;
    but7.selected=NO;
    but8.selected=NO;
    but9.selected=NO;
    but10.selected=NO;
    but11.selected=NO;
    but12.selected=NO;
    but13.selected=NO;
    but14.selected=NO;
    but15.selected=NO;
    but16.selected=NO;
    but17.selected=NO;
    but18.selected=NO;
    but19.selected=NO;
    but20.selected=NO;
    but21.selected=NO;
    but22.selected=NO;
    but23.selected=NO;
    but24.selected=NO;
    but25.selected=NO;
    but26.selected=NO;
    but27.selected=NO;
    but28.selected=NO;
    but29.selected=NO;
    but30.selected=NO;
    but31.selected=NO;
    but32.selected=NO;
    but33.selected=NO;
    but34.selected=NO;
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
    [lumbo setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [cervical setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [thoracic setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but19 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but20 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but21 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but22 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but23 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but24 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but25 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but26 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but27 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but28 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but29 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but30 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but31 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but32 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but33 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [but34 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    
    
    
}

- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
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
