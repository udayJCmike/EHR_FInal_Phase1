//
//  dcfee3ViewController.m
//  dcfee
//
//  Created by DeemsysInc on 4/12/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "dcfee3ViewController.h"

#import "dcfee4ViewController.h"


#import "TWMessageBarManager.h"
#import "StringConstants.h"

@interface dcfee3ViewController ()

@end

@implementation dcfee3ViewController
@synthesize resultset;
@synthesize supplies;
@synthesize materials;
@synthesize testimony;
@synthesize insurance;
@synthesize conference;
@synthesize spine;
@synthesize cervicalview1;
@synthesize cervicalview2;
@synthesize cervicalview3;
@synthesize thoracic;
@synthesize thoracicview;
@synthesize scoliosis;
@synthesize lumbview1;
@synthesize lumbview2;
@synthesize pelvis;
@synthesize lumbar;
@synthesize elbow;
@synthesize wrist;
@synthesize hand;
@synthesize knee;
@synthesize ankle;
@synthesize foot;
@synthesize readother;
@synthesize recorddict;
@synthesize page4;





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
    return [mobileTest1 evaluateWithObject:number];
    
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
    [supplies resignFirstResponder];
    [materials resignFirstResponder];
    [testimony resignFirstResponder];
    [insurance resignFirstResponder];
    [conference resignFirstResponder];
    [spine resignFirstResponder];
    [cervicalview1 resignFirstResponder];
    [cervicalview2 resignFirstResponder];
    [cervicalview3 resignFirstResponder];
    [thoracic resignFirstResponder];
    [thoracicview resignFirstResponder];
    [scoliosis resignFirstResponder];
    [lumbar resignFirstResponder];
    [lumbview1 resignFirstResponder];
    [lumbview2 resignFirstResponder];
    [pelvis resignFirstResponder];
    [elbow resignFirstResponder];
    [wrist resignFirstResponder];
    [hand resignFirstResponder];
    [knee resignFirstResponder];
    [ankle resignFirstResponder];
    [foot resignFirstResponder];
    
    [readother resignFirstResponder];
    
    
    
}
- (void)viewDidLoad
{
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
        
        supplies.text=[resultset objectForKey:@"supplies"];
        materials.text=[resultset objectForKey:@"patienteducation"];
        testimony.text=[resultset objectForKey:@"medicaltestimony"];
        insurance.text=[resultset objectForKey:@"insuranceform"];
        conference.text=[resultset objectForKey:@"teamconference"];
        spine.text=[resultset objectForKey:@"completespine"];
        cervicalview1.text=[resultset objectForKey:@"cervical23"];
        cervicalview2.text=[resultset objectForKey:@"cervical4"];
        cervicalview3.text=[resultset objectForKey:@"cervical67"];
        thoracic.text=[resultset objectForKey:@"thoracic4"];
        thoracicview.text=[resultset objectForKey:@"thoracic2"];
        scoliosis.text=[resultset objectForKey:@"scoliosis"];
        lumbar.text=[resultset objectForKey:@"lumbosacral"];
        lumbview1.text=[resultset objectForKey:@"lumbosacral4"];
        lumbview2.text=[resultset objectForKey:@"pelvis2"];
        pelvis.text=[resultset objectForKey:@"lumbarcomplete"];
        elbow.text=[resultset objectForKey:@"elbow2"];
        wrist.text=[resultset objectForKey:@"wrist2"];
        hand.text=[resultset objectForKey:@"hand2"];
        knee.text=[resultset objectForKey:@"knee2"];
        ankle.text=[resultset objectForKey:@"ankle2"];
        foot.text=[resultset objectForKey:@"foot2"];
        
        readother.text=[resultset objectForKey:@"readotherfilms"];
        if([supplies.text isEqualToString:@"0"]){
            
            supplies.text=@"";
        }
        if([materials.text isEqualToString:@"0"]){
            
            materials.text=@"";
        }
        if([testimony.text isEqualToString:@"0"]){
            
            testimony.text=@"";
        }
        if([insurance.text isEqualToString:@"0"]){
            
            insurance.text=@"";
        }
        if([conference.text isEqualToString:@"0"]){
            
            conference.text=@"";
        }
        if([spine.text isEqualToString:@"0"]){
            
            spine.text=@"";
        }
        if([cervicalview1.text isEqualToString:@"0"]){
            
            cervicalview1.text=@"";
        }
        if([cervicalview2.text isEqualToString:@"0"]){
            
            cervicalview2.text=@"";
        }
        if([cervicalview3.text isEqualToString:@"0"]){
            
            cervicalview3.text=@"";
        }
        if([thoracic.text isEqualToString:@"0"]){
            
            thoracic.text=@"";
        }
        if([thoracicview.text isEqualToString:@"0"]){
            
            thoracicview.text=@"";
        }
        if([scoliosis.text isEqualToString:@"0"]){
            
            scoliosis.text=@"";
        }
        if([lumbar.text isEqualToString:@"0"]){
            
            lumbar.text=@"";
        }
        if([lumbview1.text isEqualToString:@"0"]){
            
            lumbview1.text=@"";
        }
        if([lumbview2.text isEqualToString:@"0"]){
            
            lumbview2.text=@"";
        }
        if([pelvis.text isEqualToString:@"0"]){
            
            pelvis.text=@"";
        }
        if([elbow.text isEqualToString:@"0"]){
            
            elbow.text=@"";
        }
        if([wrist.text isEqualToString:@"0"]){
            
            wrist.text=@"";
        }
        if([hand.text isEqualToString:@"0"]){
            
            hand.text=@"";
        }
        if([knee.text isEqualToString:@"0"]){
            
            knee.text=@"";
        }
        if([ankle.text isEqualToString:@"0"]){
            
            ankle.text=@"";
        }
        if([foot.text isEqualToString:@"0"]){
            
            foot.text=@"";
        }
        if([readother.text isEqualToString:@"0"]){
            
            readother.text=@"";
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
    //recorddict=[[NSMutableDictionary alloc]init];
    temp1 =[supplies.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp2 =[materials.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp3 =[testimony.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp4 =[insurance.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp5=[conference.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp6 =[spine.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp7=[cervicalview1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp8=[cervicalview2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp9=[cervicalview3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp10=[thoracic.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp11=[thoracicview.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp12=[scoliosis.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp13=[lumbview1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp14=[lumbview2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp15=[pelvis.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp16=[lumbar.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp17=[elbow.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp18=[wrist.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp19=[hand.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp20=[knee.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp21=[ankle.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp22=[foot.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    temp23=[readother.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if((([temp1 length]>0)&&([self validateNumbers:temp1]==1))||([temp1 length]==0))
    {
        if((([temp2 length]>0)&&([self validateNumbers:temp2]==1))||([temp2 length]==0))
        {
            if((([temp3 length]>0)&&([self validateNumbers:temp3]==1))||([temp3 length]==0))
            {
                if((([temp4 length]>0)&&([self validateNumbers:temp4]==1))||([temp4 length]==0))
                {
                    if((([temp5 length]>0)&&([self validateNumbers:temp5]==1))||([temp5 length]==0))
                    {
                        //                        if ([self validateDate:temp23]==1)
                        //                        {
                        if((([temp6 length]>0)&&([self validateNumbers:temp6]==1))||([temp6 length]==0))
                        {
                            if((([temp7 length]>0)&&([self validateNumbers:temp7]==1))||([temp7 length]==0))
                            {
                                if((([temp8 length]>0)&&([self validateNumbers:temp8]==1))||([temp8 length]==0))
                                {
                                    if((([temp9 length]>0)&&([self validateNumbers:temp9]==1))||([temp9 length]==0))
                                    {
                                        if((([temp10 length]>0)&&([self validateNumbers:temp10 ]==1))||([temp10 length]==0))
                                        {
                                            if((([temp11 length]>0)&&([self validateNumbers:temp11]==1))||([temp11 length]==0))
                                            {
                                                if((([temp12 length]>0)&&([self validateNumbers:temp12]==1))||([temp12 length]==0))
                                                {
                                                    if((([temp13 length]>0)&&([self validateNumbers:temp13]==1))||([temp13 length]==0))
                                                    {
                                                        if((([temp14 length]>0)&&([self validateNumbers:temp14]==1))||([temp14 length]==0))
                                                        {
                                                            if((([temp15 length]>0)&&([self validateNumbers:temp15]==1))||([temp15 length]==0))
                                                            {
                                                                if((([temp16 length]>0)&&([self validateNumbers:temp16]==1))||([temp16 length]==0))
                                                                {
                                                                    if((([temp17 length]>0)&&([self validateNumbers:temp17]==1))||([temp17 length]==0))
                                                                    {
                                                                        if((([temp18 length]>0)&&([self validateNumbers:temp18]==1))||([temp18 length]==0))
                                                                        {
                                                                            if((([temp19 length]>0)&&([self validateNumbers:temp19]==1))||([temp19 length]==0))
                                                                            {
                                                                                if((([temp20 length]>0)&&([self validateNumbers:temp20]==1))||([temp20 length]==0))
                                                                                {
                                                                                    if((([temp21 length]>0)&&([self validateNumbers:temp21]==1))||([temp21 length]==0))
                                                                                    {
                                                                                        if((([temp22 length]>0)&&([self validateNumbers:temp22]==1))||([temp22 length]==0))
                                                                                        {
                                                                                            if((([temp23 length]>0)&&([self validateNumbers:temp23]==1))||([temp23 length]==0))
                                                                                            {
                                                                                                calc4=([supplies.text floatValue]+[materials.text floatValue]+[testimony.text floatValue]+[insurance.text floatValue]+[conference.text floatValue]+[spine.text floatValue]+[cervicalview1.text floatValue]+[cervicalview2.text floatValue]+[cervicalview3.text floatValue]+[thoracic.text floatValue]+[thoracicview.text floatValue]+[scoliosis.text floatValue]+[lumbview1.text floatValue]+[lumbview2.text floatValue]+[pelvis.text floatValue]+[lumbar.text floatValue]+[elbow.text floatValue]+[wrist.text floatValue]+[hand.text floatValue]+[knee.text floatValue]+[ankle.text floatValue]+[foot.text floatValue]+[readother.text floatValue]);
                                                                                                page4.text=[[NSString alloc] initWithFormat:@"%f",calc4];
                                                                                                [recorddict setValue: page4.text forKey:@"calc4"];
                                                                                                [recorddict setValue:supplies.text forKey:@"supplies"];
                                                                                                [recorddict setValue:materials.text forKey:@"materials"];
                                                                                                [recorddict setValue:testimony.text forKey:@"testimony"];
                                                                                                [recorddict setValue:insurance.text forKey:@"insurance"];
                                                                                                [recorddict setValue:conference.text forKey:@"conference"];
                                                                                                [recorddict setValue:spine.text forKey:@"spine"];
                                                                                                [recorddict setValue:cervicalview1.text forKey:@"cervicalview1"];
                                                                                                [recorddict setValue:cervicalview2.text forKey:@"cervicalview2"];
                                                                                                [recorddict setValue:cervicalview3.text forKey:@"cervicalview3"];
                                                                                                [recorddict setValue:thoracic.text forKey:@"thoracic"];
                                                                                                [recorddict setValue:thoracicview.text forKey:@"thoracicview"];
                                                                                                [recorddict setValue:scoliosis.text forKey:@"scoliosis"];
                                                                                                
                                                                                                [recorddict setValue:lumbview1.text forKey:@"lumbview1"];
                                                                                                [recorddict setValue:lumbview2.text forKey:@"lumbview2"];
                                                                                                [recorddict setValue:pelvis.text forKey:@"pelvis"];
                                                                                                [recorddict setValue:lumbar.text forKey:@"lumbar"];
                                                                                                
                                                                                                [recorddict setValue:elbow.text forKey:@"elbow"];
                                                                                                [recorddict setValue:wrist.text forKey:@"wrist"];
                                                                                                [recorddict setValue:hand.text forKey:@"hand"];
                                                                                                [recorddict setValue:knee.text forKey:@"knee"];
                                                                                                [recorddict setValue:ankle.text forKey:@"ankle"];
                                                                                                [recorddict setValue:foot.text forKey:@"foot"];
                                                                                                [recorddict setValue:readother.text forKey:@"readother"];
                                                                                                NSLog(@"success!!!recorddict in dcfee3%@",recorddict);
                                                                                                NSLog(@"success!!!recorddict in dcfee3%d",[recorddict count]);
                                                                                                
                                                                                                
                                                                                                c=1;
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                            
                                                                                            else
                                                                                            {
                                                                                                c=0;
                                                                                                
                                                                                                
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Enter valid read other films field."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                             
                                                                                                
                                                                                            }
                                                                                            
                                                                                            
                                                                                        }                                                                                          else
                                                                                        {
                                                                                            c=0;
                                                                                            
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Enter valid foot:2 views field."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                           
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        c=0;
                                                                                        
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Enter valid ankle:2 views field."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        

                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    c=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Enter valid knee:2 views field."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                  
                                                                                    
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                c=0;
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Enter valid hand:2 views field."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                               
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            c=0;
                                                                          
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Enter valid wrist:2 views field."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                         
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        c=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Enter valid elbow:2 views field."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        

                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    c=0;
                                                                    
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Enter valid lumbar complete incl blending field."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                 
                                                                }
                                                            }
                                                            else
                                                            {
                                                                c=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Enter valid range of pelvis 2 views field."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                              
                                                            }
                                                        }
                                                        else
                                                        {
                                                            c=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Enter valid lumbosacral 4 views field."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                           
                                                            
                                                        }
                                                    }
                                                    else
                                                    {
                                                        c=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Enter valid lumbosacral 2-3 views field."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                       
                                                    }
                                                }
                                                else
                                                {
                                                    c=0;
                                                    
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Enter valid scoliosis study field."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                   
                                                    
                                                }
                                                
                                            }
                                            else
                                            {
                                                c=0;
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Enter valid thoracic 2 views field."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                               
                                                
                                            }
                                            
                                        }
                                        else
                                        {
                                            c=0;
                                            
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Enter valid thoaracic 4 views field."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                           
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        c=0;
                                        
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Enter valid cervical 6-7 views field."                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                      
                                        
                                    }
                                    
                                }
                                else
                                {
                                    c=0;
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Enter valid cervical 4 views field."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                  
                                }
                                
                            }
                            else
                            {
                                c=0;
                                
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Enter valid cervical 2-3 views field."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                               
                                
                            }
                            
                        }
                        else
                        {
                            c=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Enter valid complete spine field."
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
                                                                       description:@"Enter valid team conference field."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        

                    }
                }
                else
                {
                    c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Enter valid insurance form/report field."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                   
                    
                }
            }
            
            
            else
            {
                c=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Enter valid medical testimony field."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
               
                
            }
        }
        else
        {
            c=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Enter valid  patient education materials field."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
         
            
        }
    }
    
    else
    {
        c=0;
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Enter valid supplies field."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
       
        
    }
    
    
    if (c==1) {
        [self performSegueWithIdentifier:@"dcfee4" sender:self];
    }
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"dcfee4"])
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
    
    
    if ([segue.identifier isEqualToString:@"dcfee4"])
    {
        
        
        dcfee4ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        NSLog(@"recorddict in dcfeedetail3%@",recorddict);
        // destViewController.delegate=self;
        
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

- (void)dealloc {
    /*[supplies release];
     [materials release];
     [testimony release];
     [insurance release];
     [conference release];
     [spine release];
     [cervicalview1 release];
     [cervicalview2 release];
     [cervicalview3 release];
     [thoracic release];
     [thoracicview release];
     [scoliosis release];
     [lumbview1 release];
     [lumbview2 release];
     [pelvis release];
     [lumbar release];
     [elbow release];
     [wrist release];
     [hand release];
     [knee release];
     [ankle release];
     [foot release];
     [readother release];
     [page4 release];
     */
    
    [super dealloc];
}
- (IBAction)reset:(id)sender {
    
    supplies.text=@"";
    materials.text=@"";
    testimony.text=@"";
    insurance.text=@"";
    conference.text=@"";
    spine.text=@"";
    cervicalview1.text=@"";
    cervicalview2.text=@"";
    cervicalview3.text=@"";
    thoracic.text=@"";
    thoracicview.text=@"";
    scoliosis.text=@"";
    lumbar.text=@"";
    lumbview1.text=@"";
    lumbview2.text=@"";
    pelvis.text=@"";
    elbow.text=@"";
    wrist.text=@"";
    hand.text=@"";
    knee.text=@"";
    ankle.text=@"";
    foot.text=@"";
    
    readother.text=@"";
}

- (IBAction)cancel:(id)sender {
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];}
@end
