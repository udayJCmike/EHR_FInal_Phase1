//
//  duties2ViewController.m
//  duties2
//
//  Created by Admin on 04/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "duties2ViewController.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"

@interface duties2ViewController ()


@end

@implementation duties2ViewController

@synthesize patientname;
@synthesize date;
@synthesize jobdescription;
@synthesize other;
@synthesize other1;
@synthesize other2;
@synthesize other3;
@synthesize other4;
@synthesize other5;
@synthesize other6;
@synthesize other7;
@synthesize recorddict;
@synthesize delete;
@synthesize update;
@synthesize reset1;
@synthesize reset;
@synthesize submit;
@synthesize cancel1;
@synthesize cancel2;

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


NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13;

- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (IBAction)dismiss:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =@"[A-Z0-9a-z._/-]+";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
-(BOOL)validateDate:(NSString *)dates
{
    NSString *DateFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *datesTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", DateFormat1];
    return [datesTest1 evaluateWithObject:dates];
    
}
-(IBAction)checkboxSelected:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    
}
- (IBAction)cancel:(id)sender {
    for (UIView *subview in [self.view subviews])
        if([subview isKindOfClass:[UITextField class]])
            [(UITextField*)subview setText:@""];
    
    
}



- (IBAction)save:(id)sender

{
    c=1;
    
    recorddict=[[NSMutableDictionary alloc]init];
    //[recorddict addEntriesFromDictionary:recorddict];
    selectedcheckbox=[[NSMutableArray alloc]init];
    //  UIButton *button=(UIButton*)sender;
    UIImage *img=[UIImage imageNamed:@"checkBox.png"];
    
    if(button1.currentImage!=img)
    {
        //NSLog(@"INSIDE BUTTON ONE CLICK");
        _1=@"Lifting";
    }
    else
    {
        _1=@"null";
    }
    
    if(button2.currentImage!=img)
    {
        _2=@"Bending";
        
    }
    
    else
    {
        _2=@"null";
    }
    if(button3.currentImage!=img)
    {
        _3=@"Sitting";
        
        
    }
    else
    {
        _3=@"null";
    }
    
    if(button4.currentImage!=img)
    {
        _4=@"Walking";
    }
    else
    {
        _4=@"null";
    }
    
    if(button5.currentImage!=img)
    {
        _5=@"Computer duties";
        
    }
    
    
    else
    {
        _5=@"null";
    }
    if(button6.currentImage!=img)
    {
        _6=@"Increased pain";
        
        
    }
    else
    {
        _6=@"null";
    }
    if(button7.currentImage!=img)
    {
        _7=@"Increased pain";
    }
    else
    {
        _7=@"null";
    }
    
    if(button8.currentImage!=img)
    {
        _8=@"Increased pain";
        
    }
    
    
    else
    {
        _8=@"null";
    }
    if(button9.currentImage!=img)
    {
        _9=@"Increased pain";
        
        
    }
    else
    {
        _9=@"null";
    }
    
    if(button10.currentImage!=img)
    {
        _10=@"Increased pain";
    }
    else
    {
        _10=@"null";
    }
    
    if(button11.currentImage!=img)
    {
        _11=@"Increased pain";
        
    }
    
    
    else
    {
        _11=@"null";
    }
    if(button12.currentImage!=img)
    {
        _12=@"Increased pain";
        
        
    }
    else
    {
        _12=@"null";
    }
    
    if(button13.currentImage!=img)
    {
        _13=@"Restricted movement";
    }
    else
    {
        _13=@"null";
    }
    
    if(button14.currentImage!=img)
    {
        _14=@"Restricted movement";
        
    }
    
    
    else
    {
        _14=@"null";
    }
    if(button15.currentImage!=img)
    {
        _15=@"Restricted movement";
        
        
    }
    else
    {
        _15=@"null";
    }
    
    if(button16.currentImage!=img)
    {
        _16=@"Restricted movement";
    }
    else
    {
        _16=@"null";
    }
    
    if(button17.currentImage!=img)
    {
        _17=@"Restricted movement";
        
    }
    
    
    else
    {
        _17=@"null";
    }
    if(button18.currentImage!=img)
    {
        _18=@"Restricted movement";
        
        
    }
    else
    {
        _18=@"null";
    }
    
    if(button19.currentImage!=img)
    {
        _19=@"Restricted movement";
    }
    else
    {
        _19=@"null";
    }
    
    if(button20.currentImage!=img)
    {
        _20=@"Weakness";
        
    }
    
    
    else
    {
        _20=@"null";
    }
    if(button21.currentImage!=img)
    {
        _21=@"Weakness";
        
        
    }
    else
    {
        _21=@"null";
    }
    
    if(button22.currentImage!=img)
    {
        _22=@"Weakness";
    }
    else
    {
        _22=@"null";
    }
    
    if(button23.currentImage!=img)
    {
        _23=@"Weakness";
        
    }
    
    
    else
    {
        _23=@"null";
    }
    if(button24.currentImage!=img)
    {
        _24=@"Fatigue";
        
        
    }
    else
    {
        _24=@"null";
    }
    
    if(button25.currentImage!=img)
    {
        _25=@"Weakness";
    }
    else
    {
        _25=@"null";
    }
    
    if(button26.currentImage!=img)
    {
        _26=@"Weakness";
        
    }
    
    
    else
    {
        _26=@"null";
    }
    if(button27.currentImage!=img)
    {
        _27=@"since MVA";
        
        
    }
    else
    {
        _27=@"null";
    }
    
    if(button28.currentImage!=img)
    {
        _28=@"since MVA";
    }
    else
    {
        _28=@"null";
    }
    
    if(button29.currentImage!=img)
    {
        _29=@"since MVA";
        
    }
    
    
    else
    {
        _29=@"null";
    }
    if(button30.currentImage!=img)
    {
        _30=@"since MVA";
        
        
    }
    else
    {
        _30=@"null";
    }
    
    if(button31.currentImage!=img)
    {
        _31=@"since MVA";
        
        
    }
    else
    {
        _31=@"null";
    }
    
    if(button32.currentImage!=img)
    {
        _32=@"since MVA";
    }
    else
    {
        _32=@"null";
    }
    
    if(button33.currentImage!=img)
    {
        _33=@"since MVA";
        
    }
    
    
    else
    {
        _33=@"null";
    }
    if(button34.currentImage!=img)
    {
        _34=@"ongoing";
        
        
    }
    else
    {
        _34=@"null";
    }
    
    if(button35.currentImage!=img)
    {
        _35=@"ongoing";
    }
    else
    {
        _35=@"null";
    }
    
    if(button36.currentImage!=img)
    {
        _36=@"ongoing";
        
    }
    
    
    else
    {
        _36=@"null";
    }
    if(button37.currentImage!=img)
    {
        _37=@"ongoing";
        
        
    }
    else
    {
        _37=@"null";
    }
    
    if(button38.currentImage!=img)
    {
        _38=@"ongoing";
    }
    else
    {
        _38=@"null";
    }
    
    if(button39.currentImage!=img)
    {
        _39=@"ongoing";
        
    }
    
    
    else
    {
        _39=@"null";
    }
    if(button40.currentImage!=img)
    {
        _40=@"ongoing";
        
        
    }
    else
    {
        _40=@"null";
    }
    if(button41.currentImage!=img)
    {
        _41=@"Lifting";
        
        
    }
    else
    {
        _41=@"null";
    }
    
    if(button42.currentImage!=img)
    {
        _42=@"Bending";
    }
    else
    {
        _42=@"null";
    }
    
    if(button43.currentImage!=img)
    {
        _43=@"Sitting";
        
    }
    
    
    else
    {
        _43=@"null";
    }
    if(button44.currentImage!=img)
    {
        _44=@"Walking";
        
        
    }
    else
    {
        _44=@"null";
    }
    
    if(button45.currentImage!=img)
    {
        _45=@"Computer duties";
    }
    else
    {
        _45=@"null";
    }
    
    if(button46.currentImage!=img)
    {
        _46=@"Studying";
        
    }
    
    
    else
    {
        _46=@"null";
    }
    if(button47.currentImage!=img)
    {
        _47=@"Concentrating";
        
        
    }
    else
    {
        _47=@"null";
    }
    
    if(button48.currentImage!=img)
    {
        _48=@"Increased pain";
    }
    else
    {
        _48=@"null";
    }
    
    if(button49.currentImage!=img)
    {
        _49=@"Increased pain";
        
    }
    
    
    else
    {
        _49=@"null";
    }
    if(button50.currentImage!=img)
    {
        _50=@"Increased pain";
        
        
    }
    else
    {
        _50=@"null";
    }
    
    if(button51.currentImage!=img)
    {
        _51=@"Increased pain";
    }
    else
    {
        _51=@"null";
    }
    
    if(button52.currentImage!=img)
    {
        _52=@"Increased pain";
        
    }
    
    
    else
    {
        _52=@"null";
    }
    if(button53.currentImage!=img)
    {
        _53=@"Increased pain";
        
        
    }
    else
    {
        _53=@"null";
    }
    
    if(button54.currentImage!=img)
    {
        _54=@"Increased pain";
    }
    else
    {
        _54=@"null";
    }
    
    if(button55.currentImage!=img)
    {
        _55=@"Increased pain";
        
    }
    
    
    else
    {
        _55=@"null";
    }
    if(button56.currentImage!=img)
    {
        _56=@"Increased pain";
        
        
    }
    else
    {
        _56=@"null";
    }
    if(button57.currentImage!=img)
    {
        _57=@"Restricted movement";
    }
    else
    {
        _57=@"null";
    }
    
    if(button58.currentImage!=img)
    {
        _58=@"Restricted movement";
        
    }
    
    
    else
    {
        _58=@"null";
    }
    
    if(button59.currentImage!=img)
    {
        _59=@"Restricted movement";
        
        
    }
    else
    {
        _59=@"null";
    }
    
    if(button60.currentImage!=img)
    {
        _60=@"Restricted movement";
    }
    else
    {
        _60=@"null";
    }
    
    if(button61.currentImage!=img)
    {
        _61=@"Restricted movement";
    }
    else
    {
        _61=@"null";
    }
    
    if(button62.currentImage!=img)
    {
        _62=@"Restricted movement";
        
    }
    
    
    else
    {
        _62=@"null";
    }
    if(button63.currentImage!=img)
    {
        _63=@"Restricted movement";
        
        
    }
    else
    {
        _63=@"null";
    }
    
    if(button64.currentImage!=img)
    {
        _64=@"Restricted movement";
    }
    else
    {
        _64=@"null";
    }
    
    if(button65.currentImage!=img)
    {
        _65=@"Restricted movement";
        
    }
    
    
    else
    {
        _65=@"null";
    }
    if(button66.currentImage!=img)
    {
        _66=@"Weakness";
        
        
    }
    else
    {
        _66=@"null";
    }
    if(button67.currentImage!=img)
    {
        _67=@"Weakness";
    }
    else
    {
        _67=@"null";
    }
    
    if(button68.currentImage!=img)
    {
        _68=@"Weakness";
        
    }
    
    
    else
    {
        _68=@"null";
    }
    if(button69.currentImage!=img)
    {
        _69=@"Weakness";
        
        
    }
    else
    {
        _69=@"null";
    }
    
    if(button70.currentImage!=img)
    {
        _70=@"Fatigue";
    }
    else
    {
        _70=@"null";
    }
    
    if(button71.currentImage!=img)
    {
        _71=@"Fatigue";
    }
    else
    {
        _71=@"null";
    }
    
    if(button72.currentImage!=img)
    {
        _72=@"Fatigue";
        
    }
    
    
    else
    {
        _72=@"null";
    }
    if(button73.currentImage!=img)
    {
        _73=@"Weakness";
        
        
    }
    else
    {
        _73=@"null";
    }
    
    if(button74.currentImage!=img)
    {
        _74=@"Weakness";
    }
    else
    {
        _74=@"null";
    }
    
    if(button75.currentImage!=img)
    {
        _75=@"since MVA";
        
    }
    
    
    else
    {
        _75=@"null";
    }
    if(button76.currentImage!=img)
    {
        _76=@"since MVA";
        
        
    }
    else
    {
        _76=@"null";
    }
    if(button77.currentImage!=img)
    {
        _77=@"since MVA";
    }
    else
    {
        _77=@"null";
    }
    
    if(button78.currentImage!=img)
    {
        _78=@"since MVA";
        
    }
    
    
    else
    {
        _78=@"null";
    }
    if(button79.currentImage!=img)
    {
        _79=@"since MVA";
        
        
    }
    else
    {
        _79=@"null";
    }
    
    if(button80.currentImage!=img)
    {
        _80=@"since MVA";
    }
    else
    {
        _80=@"null";
    }
    if(button81.currentImage!=img)
    {
        _81=@"since MVA";
    }
    else
    {
        _81=@"null";
    }
    
    if(button82.currentImage!=img)
    {
        _82=@"since MVA";
        
    }
    
    
    else
    {
        _82=@"null";
    }
    if(button83.currentImage!=img)
    {
        _83=@"since MVA";
        
        
    }
    else
    {
        _83=@"null";
    }
    
    if(button84.currentImage!=img)
    {
        _84=@"ongoing";
    }
    else
    {
        _84=@"null";
    }
    
    if(button85.currentImage!=img)
    {
        _85=@"ongoing";
        
    }
    
    
    else
    {
        _85=@"null";
    }
    if(button86.currentImage!=img)
    {
        _86=@"ongoing";
        
        
    }
    else
    {
        _86=@"null";
    }
    if(button87.currentImage!=img)
    {
        _87=@"ongoing";
    }
    else
    {
        _87=@"null";
    }
    
    if(button88.currentImage!=img)
    {
        _88=@"ongoing";
        
    }
    
    
    else
    {
        _88=@"null";
    }
    if(button89.currentImage!=img)
    {
        _89=@"ongoing";
        
        
    }
    else
    {
        _89=@"null";
    }
    
    if(button90.currentImage!=img)
    {
        _90=@"ongoing";
    }
    else
    {
        _90=@"null";
    }
    
    if(button91.currentImage!=img)
    {
        _91=@"ongoing";
    }
    else
    {
        _91=@"null";
    }
    
    if(button92.currentImage!=img)
    {
        _92=@"ongoing";
        
    }
    
    
    else
    {
        _92=@"null";
    }
    if(button93.currentImage!=img)
    {
        _93=@"Vacumming";
        
        
    }
    else
    {
        _93=@"null";
    }
    
    if(button94.currentImage!=img)
    {
        _94=@"Taking care of kids";
    }
    else
    {
        _94=@"null";
    }
    
    if(button95.currentImage!=img)
    {
        _95=@"Cleaning";
        
    }
    
    
    else
    {
        _95=@"null";
    }
    if(button96.currentImage!=img)
    {
        _96=@"Preparing meals";
        
        
    }
    else
    {
        _96=@"null";
    }
    if(button97.currentImage!=img)
    {
        _97=@"Increased pain";
    }
    else
    {
        _97=@"null";
    }
    
    if(button98.currentImage!=img)
    {
        _98=@"Increased pain/Anxiety";
        
    }
    
    
    else
    {
        _98=@"null";
    }
    if(button99.currentImage!=img)
    {
        _99=@"Increased pain";
        
        
    }
    else
    {
        _99=@"null";
    }
    
    if(button100.currentImage!=img)
    {
        _100=@"Increased pain";
    }
    else
    {
        _100=@"null";
    }
    
    if(button101.currentImage!=img)
        
    {
        // NSLog(@"button 101 selected");
        _101=@"Increased pain/Anxiety";
    }
    else
    {
        _101=@"null";
    }
    
    if(button102.currentImage!=img)
    {
        // NSLog(@"button 101 selected");
        _102=@"Increased pain/Anxiety";
        
    }
    
    
    else
    {
        _102=@"null";
    }
    if(button103.currentImage!=img)
    {
        _103=@"Restricted movement";
        
        
    }
    else
    {
        _103=@"null";
    }
    
    if(button104.currentImage!=img)
    {
        _104=@"Restricted movement";
    }
    else
    {
        _104=@"null";
    }
    
    if(button105.currentImage!=img)
    {
        _105=@"Restricted movement";
        
    }
    
    
    else
    {
        _105=@"null";
    }
    if(button106.currentImage!=img)
    {
        _106=@"Restricted movement";
        
        
    }
    else
    {
        _106=@"null";
    }
    if(button107.currentImage!=img)
    {
        _107=@"Restricted movement";
    }
    else
    {
        _107=@"null";
    }
    
    if(button108.currentImage!=img)
    {
        _108=@"Restricted movement";
        
    }
    
    
    else
    {
        _108=@"null";
    }
    if(button109.currentImage!=img)
    {
        _109=@"Fatigue";
        
        
    }
    else
    {
        _109=@"null";
    }
    
    if(button110.currentImage!=img)
    {
        _110=@"Fatigue";
    }
    else
    {
        _110=@"null";
    }
    if(button111.currentImage!=img)
    {
        _111=@"Fatigue";
    }
    else
    {
        _111=@"null";
    }
    
    if(button112.currentImage!=img)
    {
        _112=@"Fatigue";
        
    }
    
    
    else
    {
        _112=@"null";
    }
    if(button113.currentImage!=img)
    {
        _113=@"Fatigue";
        
        
    }
    else
    {
        _113=@"null";
    }
    
    if(button114.currentImage!=img)
    {
        _114=@"Fatigue";
    }
    else
    {
        _114=@"null";
    }
    
    if(button115.currentImage!=img)
    {
        _115=@"since MVA";
        
    }
    
    
    else
    {
        _115=@"null";
    }
    if(button116.currentImage!=img)
    {
        _116=@"since MVA";
        
        
    }
    else
    {
        _116=@"null";
    }
    if(button117.currentImage!=img)
    {
        _117=@"since MVA";
    }
    else
    {
        _117=@"null";
    }
    
    if(button118.currentImage!=img)
    {
        _118=@"since MVA";
        
    }
    
    
    else
    {
        _118=@"null";
    }
    if(button119.currentImage!=img)
    {
        _119=@"since MVA";
        
        
    }
    else
    {
        _119=@"null";
    }
    
    if(button120.currentImage!=img)
    {
        _120=@"since MVA";
    }
    else
    {
        _120=@"null";
    }
    
    if(button121.currentImage!=img)
    {
        _121=@"ongoing";
    }
    else
    {
        _121=@"null";
    }
    
    if(button122.currentImage!=img)
    {
        _122=@"ongoing";
        
    }
    
    
    else
    {
        _122=@"null";
    }
    if(button123.currentImage!=img)
    {
        _123=@"ongoing";
        
        
    }
    else
    {
        _123=@"null";
    }
    
    if(button124.currentImage!=img)
    {
        _124=@"ongoing";
    }
    else
    {
        _124=@"null";
    }
    
    if(button125.currentImage!=img)
    {
        _125=@"ongoing";
        
    }
    
    
    else
    {
        _125=@"null";
    }
    if(button126.currentImage!=img)
    {
        _126=@"ongoing";
        
        
    }
    else
    {
        _126=@"null";
    }
    if(button127.currentImage!=img)
    {
        _127=@"Yard work";
    }
    else
    {
        _127=@"null";
    }
    
    if(button128.currentImage!=img)
    {
        _128=@"Transportation";
        
    }
    
    
    else
    {
        _128=@"null";
    }
    if(button129.currentImage!=img)
    {
        _129=@"Shopping";
        
        
    }
    else
    {
        _129=@"null";
    }
    
    if(button130.currentImage!=img)
    {
        _130=@"Taking out trash";
    }
    else
    {
        _130=@"null";
    }
    
    if(button131.currentImage!=img)
    {
        _131=@"Increased pain";
    }
    else
    {
        _131=@"null";
    }
    
    if(button132.currentImage!=img)
    {
        _132=@"Increased pain/Anxiety";
        
    }
    
    
    else
    {
        _132=@"null";
    }
    if(button133.currentImage!=img)
    {
        _133=@"Increased pain/Anxiety";
        
        
    }
    else
    {
        _133=@"null";
    }
    
    if(button134.currentImage!=img)
    {
        _134=@"Increased pain";
    }
    else
    {
        _134=@"null";
    }
    
    if(button135.currentImage!=img)
    {
        _135=@"Increased pain/Anxiety";
        
    }
    
    
    else
    {
        _135=@"null";
    }
    if(button136.currentImage!=img)
    {
        _136=@"Increased pain";
        
        
    }
    else
    {
        _136=@"null";
    }
    if(button137.currentImage!=img)
    {
        _137=@"Restricted movement";
    }
    else
    {
        _137=@"null";
    }
    
    if(button138.currentImage!=img)
    {
        _138=@"Restricted movement";
        
    }
    
    
    else
    {
        _138=@"null";
    }
    if(button139.currentImage!=img)
    {
        _139=@"Restricted movement";
        
        
    }
    else
    {
        _139=@"null";
    }
    
    if(button140.currentImage!=img)
    {
        _140=@"Restricted movement";
    }
    else
    {
        _140=@"null";
    }
    if(button141.currentImage!=img)
    {
        _141=@"Restricted movement";
    }
    else
    {
        _141=@"null";
    }
    
    if(button142.currentImage!=img)
    {
        _142=@"Restricted movement";
        
    }
    
    
    else
    {
        _142=@"null";
    }
    if(button143.currentImage!=img)
    {
        _143=@"Fatigue";
        
        
    }
    else
    {
        _143=@"null";
    }
    
    if(button144.currentImage!=img)
    {
        _144=@"Fatigue";
    }
    else
    {
        _144=@"null";
    }
    
    if(button145.currentImage!=img)
    {
        _145=@"Fatigue";
        
    }
    
    
    else
    {
        _145=@"null";
    }
    if(button146.currentImage!=img)
    {
        _146=@"Weakness";
        
        
    }
    else
    {
        _146=@"null";
    }
    if(button147.currentImage!=img)
    {
        _147=@"Fatigue";
    }
    else
    {
        _147=@"null";
    }
    
    if(button148.currentImage!=img)
    {
        _148=@"Fatigue";
        
    }
    
    
    else
    {
        _148=@"null";
    }
    if(button149.currentImage!=img)
    {
        _149=@"since MVA";
        
        
    }
    else
    {
        _149=@"null";
    }
    
    if(button150.currentImage!=img)
    {
        _150=@"since MVA";
    }
    else
    {
        _150=@"null";
    }
    if(button151.currentImage!=img)
    {
        _151=@"since MVA";
    }
    else
    {
        _151=@"null";
    }
    
    if(button152.currentImage!=img)
    {
        _152=@"since MVA";
        
    }
    
    
    else
    {
        _152=@"null";
    }
    if(button153.currentImage!=img)
    {
        _153=@"since MVA";
        
        
    }
    else
    {
        _153=@"null";
    }
    
    if(button154.currentImage!=img)
    {
        _154=@"since MVA";
    }
    else
    {
        _154=@"null";
    }
    
    if(button155.currentImage!=img)
    {
        _155=@"ongoing";
        
    }
    
    
    else
    {
        _155=@"null";
    }
    if(button156.currentImage!=img)
    {
        _156=@"ongoing";
        
        
    }
    else
    {
        _156=@"null";
    }
    if(button157.currentImage!=img)
    {
        _157=@"ongoing";
    }
    else
    {
        _157=@"null";
    }
    
    if(button158.currentImage!=img)
    {
        _158=@"ongoing";
        
    }
    
    
    else
    {
        _158=@"null";
    }
    if(button159.currentImage!=img)
    {
        _159=@"ongoing";
        
        
    }
    else
    {
        _159=@"null";
    }
    
    if(button160.currentImage!=img)
    {
        _160=@"ongoing";
    }
    else
    {
        _160=@"null";
    }
    
    /*  if(button1.currentImage!=img)
     {
     NSLog(@"INSIDE BUTTON ONE CLICK");
     _1=@"Lifting";
     }
     else
     {
     _1=@"null";
     }
     
     if(button2.selected)
     {
     _2=@"Bending";
     
     }
     
     else
     {
     _2=@"null";
     }
     if(button3.selected)
     {
     _3=@"Sitting";
     
     
     }
     else
     {
     _3=@"null";
     }
     
     if(button4.selected)
     {
     _4=@"Walking";
     }
     else
     {
     _4=@"null";
     }
     
     if(button5.selected)
     {
     _5=@"Computer duties";
     
     }
     
     
     else
     {
     _5=@"null";
     }
     if(button6.selected)
     {
     _6=@"Increased pain";
     
     
     }
     else
     {
     _6=@"null";
     }
     if(button7.selected)
     {
     _7=@"Increased pain";
     }
     else
     {
     _7=@"null";
     }
     
     if(button8.selected)
     {
     _8=@"Increased pain";
     
     }
     
     
     else
     {
     _8=@"null";
     }
     if(button9.selected)
     {
     _9=@"Increased pain";
     
     
     }
     else
     {
     _9=@"null";
     }
     
     if(button10.selected)
     {
     _10=@"Increased pain";
     }
     else
     {
     _10=@"null";
     }
     
     if(button11.selected)
     {
     _11=@"Increased pain";
     
     }
     
     
     else
     {
     _11=@"null";
     }
     if(button12.selected)
     {
     _12=@"Increased pain";
     
     
     }
     else
     {
     _12=@"null";
     }
     
     if(button13.selected)
     {
     _13=@"Restricted movement";
     }
     else
     {
     _13=@"null";
     }
     
     if(button14.selected)
     {
     _14=@"Restricted movement";
     
     }
     
     
     else
     {
     _14=@"null";
     }
     if(button15.selected)
     {
     _15=@"Restricted movement";
     
     
     }
     else
     {
     _15=@"null";
     }
     
     if(button16.selected)
     {
     _16=@"Restricted movement";
     }
     else
     {
     _16=@"null";
     }
     
     if(button17.selected)
     {
     _17=@"Restricted movement";
     
     }
     
     
     else
     {
     _17=@"null";
     }
     if(button18.selected)
     {
     _18=@"Restricted movement";
     
     
     }
     else
     {
     _18=@"null";
     }
     
     if(button19.selected)
     {
     _19=@"Restricted movement";
     }
     else
     {
     _19=@"null";
     }
     
     if(button20.selected)
     {
     _20=@"Weakness";
     
     }
     
     
     else
     {
     _20=@"null";
     }
     if(button21.selected)
     {
     _21=@"Weakness";
     
     
     }
     else
     {
     _21=@"null";
     }
     
     if(button22.selected)
     {
     _22=@"Weakness";
     }
     else
     {
     _22=@"null";
     }
     
     if(button23.selected)
     {
     _23=@"Weakness";
     
     }
     
     
     else
     {
     _23=@"null";
     }
     if(button24.selected)
     {
     _24=@"Fatigue";
     
     
     }
     else
     {
     _24=@"null";
     }
     
     if(button25.selected)
     {
     _25=@"Weakness";
     }
     else
     {
     _25=@"null";
     }
     
     if(button26.selected)
     {
     _26=@"Weakness";
     
     }
     
     
     else
     {
     _26=@"null";
     }
     if(button27.selected)
     {
     _27=@"since MVA";
     
     
     }
     else
     {
     _27=@"null";
     }
     
     if(button28.selected)
     {
     _28=@"since MVA";
     }
     else
     {
     _28=@"null";
     }
     
     if(button29.selected)
     {
     _29=@"since MVA";
     
     }
     
     
     else
     {
     _29=@"null";
     }
     if(button30.selected)
     {
     _30=@"since MVA";
     
     
     }
     else
     {
     _30=@"null";
     }
     
     if(button31.selected)
     {
     _31=@"since MVA";
     
     
     }
     else
     {
     _31=@"null";
     }
     
     if(button32.selected)
     {
     _32=@"since MVA";
     }
     else
     {
     _32=@"null";
     }
     
     if(button33.selected)
     {
     _33=@"since MVA";
     
     }
     
     
     else
     {
     _33=@"null";
     }
     if(button34.selected)
     {
     _34=@"ongoing";
     
     
     }
     else
     {
     _34=@"null";
     }
     
     if(button35.selected)
     {
     _35=@"ongoing";
     }
     else
     {
     _35=@"null";
     }
     
     if(button36.selected)
     {
     _36=@"ongoing";
     
     }
     
     
     else
     {
     _36=@"null";
     }
     if(button37.selected)
     {
     _37=@"ongoing";
     
     
     }
     else
     {
     _37=@"null";
     }
     
     if(button38.selected)
     {
     _38=@"ongoing";
     }
     else
     {
     _38=@"null";
     }
     
     if(button39.selected)
     {
     _39=@"ongoing";
     
     }
     
     
     else
     {
     _39=@"null";
     }
     if(button40.selected)
     {
     _40=@"ongoing";
     
     
     }
     else
     {
     _40=@"null";
     }
     if(button41.selected)
     {
     _41=@"Lifting";
     
     
     }
     else
     {
     _41=@"null";
     }
     
     if(button42.selected)
     {
     _42=@"Bending";
     }
     else
     {
     _42=@"null";
     }
     
     if(button43.selected)
     {
     _43=@"Sitting";
     
     }
     
     
     else
     {
     _43=@"null";
     }
     if(button44.selected)
     {
     _44=@"Walking";
     
     
     }
     else
     {
     _44=@"null";
     }
     
     if(button45.selected)
     {
     _45=@"Computer duties";
     }
     else
     {
     _45=@"null";
     }
     
     if(button46.selected)
     {
     _46=@"Studying";
     
     }
     
     
     else
     {
     _46=@"null";
     }
     if(button47.selected)
     {
     _47=@"Concentrating";
     
     
     }
     else
     {
     _47=@"null";
     }
     
     if(button48.selected)
     {
     _48=@"Increased pain";
     }
     else
     {
     _48=@"null";
     }
     
     if(button49.selected)
     {
     _49=@"Increased pain";
     
     }
     
     
     else
     {
     _49=@"null";
     }
     if(button50.selected)
     {
     _50=@"Increased pain";
     
     
     }
     else
     {
     _50=@"null";
     }
     
     if(button51.selected)
     {
     _51=@"Increased pain";
     }
     else
     {
     _51=@"null";
     }
     
     if(button52.selected)
     {
     _52=@"Increased pain";
     
     }
     
     
     else
     {
     _52=@"null";
     }
     if(button53.selected)
     {
     _53=@"Increased pain";
     
     
     }
     else
     {
     _53=@"null";
     }
     
     if(button54.selected)
     {
     _54=@"Increased pain";
     }
     else
     {
     _54=@"null";
     }
     
     if(button55.selected)
     {
     _55=@"Increased pain";
     
     }
     
     
     else
     {
     _55=@"null";
     }
     if(button56.selected)
     {
     _56=@"Increased pain";
     
     
     }
     else
     {
     _56=@"null";
     }
     if(button57.selected)
     {
     _57=@"Restricted movement";
     }
     else
     {
     _57=@"null";
     }
     
     if(button58.selected)
     {
     _58=@"Restricted movement";
     
     }
     
     
     else
     {
     _58=@"null";
     }
     
     if(button59.selected)
     {
     _59=@"Restricted movement";
     
     
     }
     else
     {
     _59=@"null";
     }
     
     if(button60.selected)
     {
     _60=@"Restricted movement";
     }
     else
     {
     _60=@"null";
     }
     
     if(button61.selected)
     {
     _61=@"Restricted movement";
     }
     else
     {
     _61=@"null";
     }
     
     if(button62.selected)
     {
     _62=@"Restricted movement";
     
     }
     
     
     else
     {
     _62=@"null";
     }
     if(button63.selected)
     {
     _63=@"Restricted movement";
     
     
     }
     else
     {
     _63=@"null";
     }
     
     if(button64.selected)
     {
     _64=@"Restricted movement";
     }
     else
     {
     _64=@"null";
     }
     
     if(button65.selected)
     {
     _65=@"Restricted movement";
     
     }
     
     
     else
     {
     _65=@"null";
     }
     if(button66.selected)
     {
     _66=@"Weakness";
     
     
     }
     else
     {
     _66=@"null";
     }
     if(button67.selected)
     {
     _67=@"Weakness";
     }
     else
     {
     _67=@"null";
     }
     
     if(button68.selected)
     {
     _68=@"Weakness";
     
     }
     
     
     else
     {
     _68=@"null";
     }
     if(button69.selected)
     {
     _69=@"Weakness";
     
     
     }
     else
     {
     _69=@"null";
     }
     
     if(button70.selected)
     {
     _70=@"Fatigue";
     }
     else
     {
     _70=@"null";
     }
     
     if(button71.selected)
     {
     _71=@"Fatigue";
     }
     else
     {
     _71=@"null";
     }
     
     if(button72.selected)
     {
     _72=@"Fatigue";
     
     }
     
     
     else
     {
     _72=@"null";
     }
     if(button73.selected)
     {
     _73=@"Weakness";
     
     
     }
     else
     {
     _73=@"null";
     }
     
     if(button74.selected)
     {
     _74=@"Weakness";
     }
     else
     {
     _74=@"null";
     }
     
     if(button75.selected)
     {
     _75=@"since MVA";
     
     }
     
     
     else
     {
     _75=@"null";
     }
     if(button76.selected)
     {
     _76=@"since MVA";
     
     
     }
     else
     {
     _76=@"null";
     }
     if(button77.selected)
     {
     _77=@"since MVA";
     }
     else
     {
     _77=@"null";
     }
     
     if(button78.selected)
     {
     _78=@"since MVA";
     
     }
     
     
     else
     {
     _78=@"null";
     }
     if(button79.selected)
     {
     _79=@"since MVA";
     
     
     }
     else
     {
     _79=@"null";
     }
     
     if(button80.selected)
     {
     _80=@"since MVA";
     }
     else
     {
     _80=@"null";
     }
     if(button81.selected)
     {
     _81=@"since MVA";
     }
     else
     {
     _81=@"null";
     }
     
     if(button82.selected)
     {
     _82=@"since MVA";
     
     }
     
     
     else
     {
     _82=@"null";
     }
     if(button83.selected)
     {
     _83=@"since MVA";
     
     
     }
     else
     {
     _83=@"null";
     }
     
     if(button84.selected)
     {
     _84=@"ongoing";
     }
     else
     {
     _84=@"null";
     }
     
     if(button85.selected)
     {
     _85=@"ongoing";
     
     }
     
     
     else
     {
     _85=@"null";
     }
     if(button86.selected)
     {
     _86=@"ongoing";
     
     
     }
     else
     {
     _86=@"null";
     }
     if(button87.selected)
     {
     _87=@"ongoing";
     }
     else
     {
     _87=@"null";
     }
     
     if(button88.selected)
     {
     _88=@"ongoing";
     
     }
     
     
     else
     {
     _88=@"null";
     }
     if(button89.selected)
     {
     _89=@"ongoing";
     
     
     }
     else
     {
     _89=@"null";
     }
     
     if(button90.selected)
     {
     _90=@"ongoing";
     }
     else
     {
     _90=@"null";
     }
     
     if(button91.selected)
     {
     _91=@"ongoing";
     }
     else
     {
     _91=@"null";
     }
     
     if(button92.selected)
     {
     _92=@"ongoing";
     
     }
     
     
     else
     {
     _92=@"null";
     }
     if(button93.selected)
     {
     _93=@"Vacumming";
     
     
     }
     else
     {
     _93=@"null";
     }
     
     if(button94.selected)
     {
     _94=@"Taking care of kids";
     }
     else
     {
     _94=@"null";
     }
     
     if(button95.selected)
     {
     _95=@"Cleaning";
     
     }
     
     
     else
     {
     _95=@"null";
     }
     if(button96.selected)
     {
     _96=@"Preparing meals";
     
     
     }
     else
     {
     _96=@"null";
     }
     if(button97.selected)
     {
     _97=@"Increased pain";
     }
     else
     {
     _97=@"null";
     }
     
     if(button98.selected)
     {
     _98=@"Increased pain/Anxiety";
     
     }
     
     
     else
     {
     _98=@"null";
     }
     if(button99.selected)
     {
     _99=@"Increased pain";
     
     
     }
     else
     {
     _99=@"null";
     }
     
     if(button100.selected)
     {
     _100=@"Increased pain";
     }
     else
     {
     _100=@"null";
     }
     
     if(button101.selected)
     
     {
     NSLog(@"button 101 selected");
     _101=@"Increased pain/Anxiety";
     }
     else
     {
     _101=@"null";
     }
     
     if(button102.selected)
     {
     NSLog(@"button 101 selected");
     _102=@"Increased pain/Anxiety";
     
     }
     
     
     else
     {
     _102=@"null";
     }
     if(button103.selected)
     {
     _103=@"Restricted movement";
     
     
     }
     else
     {
     _103=@"null";
     }
     
     if(button104.selected)
     {
     _104=@"Restricted movement";
     }
     else
     {
     _104=@"null";
     }
     
     if(button105.selected)
     {
     _105=@"Restricted movement";
     
     }
     
     
     else
     {
     _105=@"null";
     }
     if(button106.selected)
     {
     _106=@"Restricted movement";
     
     
     }
     else
     {
     _106=@"null";
     }
     if(button107.selected)
     {
     _107=@"Restricted movement";
     }
     else
     {
     _107=@"null";
     }
     
     if(button108.selected)
     {
     _108=@"Restricted movement";
     
     }
     
     
     else
     {
     _108=@"null";
     }
     if(button109.selected)
     {
     _109=@"Fatigue";
     
     
     }
     else
     {
     _109=@"null";
     }
     
     if(button110.selected)
     {
     _110=@"Fatigue";
     }
     else
     {
     _110=@"null";
     }
     if(button111.selected)
     {
     _111=@"Fatigue";
     }
     else
     {
     _111=@"null";
     }
     
     if(button112.selected)
     {
     _112=@"Fatigue";
     
     }
     
     
     else
     {
     _112=@"null";
     }
     if(button113.selected)
     {
     _113=@"Fatigue";
     
     
     }
     else
     {
     _113=@"null";
     }
     
     if(button114.selected)
     {
     _114=@"Fatigue";
     }
     else
     {
     _114=@"null";
     }
     
     if(button115.selected)
     {
     _115=@"since MVA";
     
     }
     
     
     else
     {
     _115=@"null";
     }
     if(button116.selected)
     {
     _116=@"since MVA";
     
     
     }
     else
     {
     _116=@"null";
     }
     if(button117.selected)
     {
     _117=@"since MVA";
     }
     else
     {
     _117=@"null";
     }
     
     if(button118.selected)
     {
     _118=@"since MVA";
     
     }
     
     
     else
     {
     _118=@"null";
     }
     if(button119.selected)
     {
     _119=@"since MVA";
     
     
     }
     else
     {
     _119=@"null";
     }
     
     if(button120.selected)
     {
     _120=@"since MVA";
     }
     else
     {
     _120=@"null";
     }
     
     if(button121.selected)
     {
     _121=@"ongoing";
     }
     else
     {
     _121=@"null";
     }
     
     if(button122.selected)
     {
     _122=@"ongoing";
     
     }
     
     
     else
     {
     _122=@"null";
     }
     if(button123.selected)
     {
     _123=@"ongoing";
     
     
     }
     else
     {
     _123=@"null";
     }
     
     if(button124.selected)
     {
     _124=@"ongoing";
     }
     else
     {
     _124=@"null";
     }
     
     if(button125.selected)
     {
     _125=@"ongoing";
     
     }
     
     
     else
     {
     _125=@"null";
     }
     if(button126.selected)
     {
     _126=@"ongoing";
     
     
     }
     else
     {
     _126=@"null";
     }
     if(button127.selected)
     {
     _127=@"Yard work";
     }
     else
     {
     _127=@"null";
     }
     
     if(button128.selected)
     {
     _128=@"Transportation";
     
     }
     
     
     else
     {
     _128=@"null";
     }
     if(button129.selected)
     {
     _129=@"Shopping";
     
     
     }
     else
     {
     _129=@"null";
     }
     
     if(button130.selected)
     {
     _130=@"Taking out trash";
     }
     else
     {
     _130=@"null";
     }
     
     if(button131.selected)
     {
     _131=@"Increased pain";
     }
     else
     {
     _131=@"null";
     }
     
     if(button132.selected)
     {
     _132=@"Increased pain/Anxiety";
     
     }
     
     
     else
     {
     _132=@"null";
     }
     if(button133.selected)
     {
     _133=@"Increased pain/Anxiety";
     
     
     }
     else
     {
     _133=@"null";
     }
     
     if(button134.selected)
     {
     _134=@"Increased pain";
     }
     else
     {
     _134=@"null";
     }
     
     if(button135.selected)
     {
     _135=@"Increased pain/Anxiety";
     
     }
     
     
     else
     {
     _135=@"null";
     }
     if(button136.selected)
     {
     _136=@"Increased pain";
     
     
     }
     else
     {
     _136=@"null";
     }
     if(button137.selected)
     {
     _137=@"Restricted movement";
     }
     else
     {
     _137=@"null";
     }
     
     if(button138.selected)
     {
     _138=@"Restricted movement";
     
     }
     
     
     else
     {
     _138=@"null";
     }
     if(button139.selected)
     {
     _139=@"Restricted movement";
     
     
     }
     else
     {
     _139=@"null";
     }
     
     if(button140.selected)
     {
     _140=@"Restricted movement";
     }
     else
     {
     _140=@"null";
     }
     if(button141.selected)
     {
     _141=@"Restricted movement";
     }
     else
     {
     _141=@"null";
     }
     
     if(button142.selected)
     {
     _142=@"Restricted movement";
     
     }
     
     
     else
     {
     _142=@"null";
     }
     if(button143.selected)
     {
     _143=@"Fatigue";
     
     
     }
     else
     {
     _143=@"null";
     }
     
     if(button144.selected)
     {
     _144=@"Fatigue";
     }
     else
     {
     _144=@"null";
     }
     
     if(button145.selected)
     {
     _145=@"Fatigue";
     
     }
     
     
     else
     {
     _145=@"null";
     }
     if(button146.selected)
     {
     _146=@"Weakness";
     
     
     }
     else
     {
     _146=@"null";
     }
     if(button147.selected)
     {
     _147=@"Fatigue";
     }
     else
     {
     _147=@"null";
     }
     
     if(button148.selected)
     {
     _148=@"Fatigue";
     
     }
     
     
     else
     {
     _148=@"null";
     }
     if(button149.selected)
     {
     _149=@"since MVA";
     
     
     }
     else
     {
     _149=@"null";
     }
     
     if(button150.selected)
     {
     _150=@"since MVA";
     }
     else
     {
     _150=@"null";
     }
     if(button151.selected)
     {
     _151=@"since MVA";
     }
     else
     {
     _151=@"null";
     }
     
     if(button152.selected)
     {
     _152=@"since MVA";
     
     }
     
     
     else
     {
     _152=@"null";
     }
     if(button153.selected)
     {
     _153=@"since MVA";
     
     
     }
     else
     {
     _153=@"null";
     }
     
     if(button154.selected)
     {
     _154=@"since MVA";
     }
     else
     {
     _154=@"null";
     }
     
     if(button155.selected)
     {
     _155=@"ongoing";
     
     }
     
     
     else
     {
     _155=@"null";
     }
     if(button156.selected)
     {
     _156=@"ongoing";
     
     
     }
     else
     {
     _156=@"null";
     }
     if(button157.selected)
     {
     _157=@"ongoing";
     }
     else
     {
     _157=@"null";
     }
     
     if(button158.selected)
     {
     _158=@"ongoing";
     
     }
     
     
     else
     {
     _158=@"null";
     }
     if(button159.selected)
     {
     _159=@"ongoing";
     
     
     }
     else
     {
     _159=@"null";
     }
     
     if(button160.selected)
     {
     _160=@"ongoing";
     }
     else
     {
     _160=@"null";
     }
     */
    
    [selectedcheckbox addObject:_1];
    [selectedcheckbox addObject:_2];
    [selectedcheckbox addObject:_3];
    [selectedcheckbox addObject:_4];
    [selectedcheckbox addObject:_5];
    [selectedcheckbox addObject:_6];
    [selectedcheckbox addObject:_7];
    [selectedcheckbox addObject:_8];
    [selectedcheckbox addObject:_9];
    [selectedcheckbox addObject:_10];
    [selectedcheckbox addObject:_11];
    [selectedcheckbox addObject:_12];
    [selectedcheckbox addObject:_13];
    [selectedcheckbox addObject:_14];
    [selectedcheckbox addObject:_15];
    [selectedcheckbox addObject:_16];
    [selectedcheckbox addObject:_17];
    [selectedcheckbox addObject:_18];
    [selectedcheckbox addObject:_19];
    [selectedcheckbox addObject:_20];
    [selectedcheckbox addObject:_21];
    [selectedcheckbox addObject:_22];
    [selectedcheckbox addObject:_23];
    [selectedcheckbox addObject:_24];
    [selectedcheckbox addObject:_25];
    [selectedcheckbox addObject:_26];
    [selectedcheckbox addObject:_27];
    [selectedcheckbox addObject:_28];
    [selectedcheckbox addObject:_29];
    [selectedcheckbox addObject:_30];
    [selectedcheckbox addObject:_31];
    [selectedcheckbox addObject:_32];
    [selectedcheckbox addObject:_33];
    [selectedcheckbox addObject:_34];
    [selectedcheckbox addObject:_35];
    [selectedcheckbox addObject:_36];
    [selectedcheckbox addObject:_37];
    [selectedcheckbox addObject:_38];
    [selectedcheckbox addObject:_39];
    [selectedcheckbox addObject:_40];
    [selectedcheckbox addObject:_41];
    [selectedcheckbox addObject:_42];
    [selectedcheckbox addObject:_43];
    [selectedcheckbox addObject:_44];
    [selectedcheckbox addObject:_45];
    [selectedcheckbox addObject:_46];
    [selectedcheckbox addObject:_47];
    [selectedcheckbox addObject:_48];
    [selectedcheckbox addObject:_49];
    [selectedcheckbox addObject:_50];
    [selectedcheckbox addObject:_51];
    [selectedcheckbox addObject:_52];
    [selectedcheckbox addObject:_53];
    [selectedcheckbox addObject:_54];
    [selectedcheckbox addObject:_55];
    [selectedcheckbox addObject:_56];
    [selectedcheckbox addObject:_57];
    [selectedcheckbox addObject:_58];
    [selectedcheckbox addObject:_59];
    [selectedcheckbox addObject:_60];
    [selectedcheckbox addObject:_61];
    [selectedcheckbox addObject:_62];
    [selectedcheckbox addObject:_63];
    [selectedcheckbox addObject:_64];
    [selectedcheckbox addObject:_65];
    [selectedcheckbox addObject:_66];
    [selectedcheckbox addObject:_67];
    [selectedcheckbox addObject:_68];
    [selectedcheckbox addObject:_69];
    [selectedcheckbox addObject:_70];
    [selectedcheckbox addObject:_71];
    [selectedcheckbox addObject:_72];
    [selectedcheckbox addObject:_73];
    [selectedcheckbox addObject:_74];
    [selectedcheckbox addObject:_75];
    [selectedcheckbox addObject:_76];
    [selectedcheckbox addObject:_77];
    [selectedcheckbox addObject:_78];
    [selectedcheckbox addObject:_79];
    [selectedcheckbox addObject:_80];
    [selectedcheckbox addObject:_81];
    [selectedcheckbox addObject:_82];
    [selectedcheckbox addObject:_83];
    [selectedcheckbox addObject:_84];
    [selectedcheckbox addObject:_85];
    [selectedcheckbox addObject:_86];
    [selectedcheckbox addObject:_87];
    [selectedcheckbox addObject:_88];
    [selectedcheckbox addObject:_89];
    [selectedcheckbox addObject:_90];
    [selectedcheckbox addObject:_91];
    [selectedcheckbox addObject:_92];
    [selectedcheckbox addObject:_93];
    [selectedcheckbox addObject:_94];
    [selectedcheckbox addObject:_95];
    [selectedcheckbox addObject:_96];
    [selectedcheckbox addObject:_97];
    [selectedcheckbox addObject:_98];
    [selectedcheckbox addObject:_99];
    [selectedcheckbox addObject:_100];
    [selectedcheckbox addObject:_101];
    [selectedcheckbox addObject:_102];
    [selectedcheckbox addObject:_103];
    [selectedcheckbox addObject:_104];
    [selectedcheckbox addObject:_105];
    [selectedcheckbox addObject:_106];
    [selectedcheckbox addObject:_107];
    [selectedcheckbox addObject:_108];
    [selectedcheckbox addObject:_109];
    [selectedcheckbox addObject:_110];
    [selectedcheckbox addObject:_111];
    [selectedcheckbox addObject:_112];
    [selectedcheckbox addObject:_113];
    [selectedcheckbox addObject:_114];
    [selectedcheckbox addObject:_115];
    [selectedcheckbox addObject:_116];
    [selectedcheckbox addObject:_117];
    [selectedcheckbox addObject:_118];
    [selectedcheckbox addObject:_119];
    [selectedcheckbox addObject:_120];
    [selectedcheckbox addObject:_121];
    [selectedcheckbox addObject:_122];
    [selectedcheckbox addObject:_123];
    [selectedcheckbox addObject:_124];
    [selectedcheckbox addObject:_125];
    [selectedcheckbox addObject:_126];
    [selectedcheckbox addObject:_127];
    [selectedcheckbox addObject:_128];
    [selectedcheckbox addObject:_129];
    [selectedcheckbox addObject:_130];
    [selectedcheckbox addObject:_131];
    [selectedcheckbox addObject:_132];
    [selectedcheckbox addObject:_133];
    [selectedcheckbox addObject:_134];
    [selectedcheckbox addObject:_135];
    [selectedcheckbox addObject:_136];
    [selectedcheckbox addObject:_137];
    [selectedcheckbox addObject:_138];
    [selectedcheckbox addObject:_139];
    [selectedcheckbox addObject:_140];
    [selectedcheckbox addObject:_141];
    [selectedcheckbox addObject:_142];
    [selectedcheckbox addObject:_143];
    [selectedcheckbox addObject:_144];
    [selectedcheckbox addObject:_145];
    [selectedcheckbox addObject:_146];
    [selectedcheckbox addObject:_147];
    [selectedcheckbox addObject:_148];
    [selectedcheckbox addObject:_149];
    [selectedcheckbox addObject:_150];
    [selectedcheckbox addObject:_151];
    [selectedcheckbox addObject:_152];
    [selectedcheckbox addObject:_153];
    [selectedcheckbox addObject:_154];
    [selectedcheckbox addObject:_155];
    [selectedcheckbox addObject:_156];
    [selectedcheckbox addObject:_157];
    [selectedcheckbox addObject:_158];
    [selectedcheckbox addObject:_159];
    [selectedcheckbox addObject:_160];
    
    
    
    
    
    
    
    [recorddict setObject:selectedcheckbox forKey:@"selectedcheckbox"];
    // NSLog(@"success!!!check box array %@",selectedcheckbox);
    
    texty1=[patientname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[jobdescription.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[other.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[other1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[other2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[other3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[other4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty9=[other5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty10=[other6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty11=[other7.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //texty12=[other8.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if(([patientname.text length]!=0)&&
       //([jobdescription.text length]!=0)&&
       ([date.text length]!=0)
       //&&
       //([other.text length]!=0)&&
       //([other1.text length]!=0)&&
       //         ([other2.text length]!=0)&&
       //         ([other3.text length]!=0)&&
       //         ([other4.text length]!=0)&&
       //         ([other5.text length]!=0)&&
       //         ([other6.text length]!=0)&&
       //         ([other7.text length]!=0)
       )
    {
        c=0;
        if([self validatePNames:texty1]==1)
        {
            //if([self validateNames:texty3]==1)
            {
                if([self validateDate:texty2]==1)
                {
                    //if([self validateNames:texty4]==1)
                    {
                        //if([self validateNames:texty5]==1)
                        {
                            //if([self validateNames:texty6]==1)
                            {
                                //if([self validateNames:texty7]==1)
                                {
                                    //if([self validateNames:texty8]==1)
                                    {
                                        //if([self validateNames:texty9]==1)
                                        {
                                            //if([self validateNames:texty10]==1)
                                            {
                                                //if([self validateNames:texty11]==1)
                                                {
                                                    c=1;
                                                    
                                                    [recorddict setValue:patientname.text forKey:@"patientname"];
                                                    [recorddict setValue:jobdescription.text forKey:@"jobdescription"];
                                                    [recorddict setValue:date.text forKey:@"date"];
                                                    [recorddict setValue:other.text forKey:@"other"];
                                                    [recorddict setValue:other1.text forKey:@"other1"];
                                                    [recorddict setValue:other2.text forKey:@"other2"];
                                                    [recorddict setValue:other3.text forKey:@"other3"];
                                                    [recorddict setValue:other4.text forKey:@"other4"];
                                                    [recorddict setValue:other5.text forKey:@"other5"];
                                                    [recorddict setValue:other6.text forKey:@"other6"];
                                                    [recorddict setValue:other7.text forKey:@"other7"];
                                                    // NSLog(@"success!!!recorddict %@",recorddict);
                                                }
                                                
                                                //                                                               else
                                                //                                                                     {
                                                //                                                                         c=0;
                                                //                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other7."];
                                                //                                                                      [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                //                                                                      [alert show];
                                                //                                                                     }
                                            }
                                            
                                            //                                                            else
                                            //                                                          {
                                            //                                                              c=0;
                                            //                                                               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other6."];
                                            //                                                               [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            //                                                               [alert show];
                                            //                                                          }
                                        }
                                        
                                        
                                        //                                             else
                                        //                                             {
                                        //                                                 c=0;
                                        //                                                 BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other5."];
                                        //                                                 [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        //                                                 [alert show];
                                        //                                             }
                                    }
                                    
                                    //                                         else
                                    //                                         {
                                    //                                             c=0;
                                    //                                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other4."];
                                    //                                             [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    //                                             [alert show];
                                    //                                         }
                                }
                                
                                
                                //                                     else
                                //                                     {
                                //                                         c=0;
                                //                                         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other3."];
                                //                                         [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                //                                         [alert show];
                                //                                     }
                            }
                            
                            //                                 else
                            //                                 {
                            //                                     c=0;
                            //                                     BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other2."];
                            //                                     [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            //                                     [alert show];
                            //                                 }
                        }
                        
                        //                             else
                        //                             {
                        //                                 c=0;
                        //                                 BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other1."];
                        //                                 [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        //                                 [alert show];
                        //                             }
                    }
                    
                    //                         else
                    //                         {
                    //                             c=0;
                    //                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"enter valid other."];
                    //                             [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    //                             [alert show];
                    //                         }
                }
                
                else
                {
                    c=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid date." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
            }
            //                         else
            //                    {
            //                        c=0;
            //                           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid job description ."];
            //                           [alert setDestructiveButtonWithTitle:@"x" block:nil];
            //                         [alert show];
            //                    }
        }
        else
        {
            c=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter valid patient name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
    }
    
    else
    {
        c=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Enter all the required fields." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    if (c==1) {
        // NSLog(@"recorddict in authro %@",recorddict);
        UIButton *buton=(UIButton*)sender;
        if(buton.tag==11)
        {
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
        else  if(buton.tag==12)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            
            if ([[self submitvalues]isEqualToString:@"success"]) {
                [self updatedata];
            }
            
            
        }
        
        // NSLog(@"recorddict in autorization consent treat %@",recorddict);
        // [self performSegueWithIdentifier:@"consenttotreattowelcome" sender:self];
    }
    else
    {
        NULL;
    }
}
-(void)insertdata
{
    
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    // NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        // NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"dutiesunderduress Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form submission successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                [self dismissModalViewControllerAnimated:YES];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form Submission Failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                [self dismissModalViewControllerAnimated:YES];
            }
        }
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
    
    
}


- (void)viewDidLoad
{
    
    
    [super viewDidLoad];
    
    
    _1=@"null";
    _2=@"null";
    _3=@"null";
    _4=@"null";
    _5=@"null";
    _6=@"null";
    _7=@"null";
    _8=@"null";
    _9=@"null";
    _10=@"null";
    _11=@"null";
    _12=@"null";
    _13=@"null";
    _14=@"null";
    _15=@"null";
    _16=@"null";
    _17=@"null";
    _18=@"null";
    _19=@"null";
    _20=@"null";
    _21=@"null";
    _22=@"null";
    _23=@"null";
    _24=@"null";
    _25=@"null";
    _26=@"null";
    _27=@"null";
    _28=@"null";
    _29=@"null";
    _30=@"null";
    _31=@"null";
    _32=@"null";
    _33=@"null";
    _34=@"null";
    _35=@"null";
    _36=@"null";
    _37=@"null";
    _38=@"null";
    _39=@"null";
    _40=@"null";
    _41=@"null";
    _42=@"null";
    _43=@"null";
    _44=@"null";
    _45=@"null";
    _46=@"null";
    _47=@"null";
    _48=@"null";
    _49=@"null";
    _50=@"null";
    _51=@"null";
    _52=@"null";
    _53=@"null";
    _54=@"null";
    _55=@"null";
    _56=@"null";
    _57=@"null";
    _58=@"null";
    _59=@"null";
    _60=@"null";
    _61=@"null";
    _62=@"null";
    _63=@"null";
    _64=@"null";
    _65=@"null";
    _66=@"null";
    _67=@"null";
    _68=@"null";
    _69=@"null";
    _70=@"null";
    _71=@"null";
    _72=@"null";
    _73=@"null";
    _74=@"null";
    _75=@"null";
    _76=@"null";
    _77=@"null";
    _78=@"null";
    _79=@"null";
    _80=@"null";
    _81=@"null";
    _82=@"null";
    _83=@"null";
    _84=@"null";
    _85=@"null";
    _86=@"null";
    _87=@"null";
    _88=@"null";
    _89=@"null";
    _90=@"null";
    _91=@"null";
    _92=@"null";
    _93=@"null";
    _94=@"null";
    _95=@"null";
    _96=@"null";
    _97=@"null";
    _98=@"null";
    _99=@"null";
    _100=@"null";
    _101=@"null";
    _102=@"null";
    _103=@"null";
    _104=@"null";
    _105=@"null";
    _106=@"null";
    _107=@"null";
    _108=@"null";
    _109=@"null";
    _110=@"null";
    _111=@"null";
    _112=@"null";
    _113=@"null";
    _114=@"null";
    _115=@"null";
    _116=@"null";
    _117=@"null";
    _118=@"null";
    _119=@"null";
    _120=@"null";
    _121=@"null";
    _122=@"null";
    _123=@"null";
    _124=@"null";
    _125=@"null";
    _126=@"null";
    _127=@"null";
    _128=@"null";
    _129=@"null";
    _130=@"null";
    _131=@"null";
    _132=@"null";
    _133=@"null";
    _134=@"null";
    _135=@"null";
    _136=@"null";
    _137=@"null";
    _138=@"null";
    _139=@"null";
    _140=@"null";
    _141=@"null";
    _142=@"null";
    _143=@"null";
    _144=@"null";
    _145=@"null";
    _146=@"null";
    _147=@"null";
    _148=@"null";
    _149=@"null";
    _150=@"null";
    _151=@"null";
    _152=@"null";
    _153=@"null";
    _154=@"null";
    _155=@"null";
    _156=@"null";
    _157=@"null";
    _158=@"null";
    _159=@"null";
    _160=@"null";
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
    [self Getdata];
    patientname.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
   	// Do any additional setup after loading the view, typically from a nib.
}
-(void)dismissKeyboard
{
    
    
    [button1 resignFirstResponder];
    [button2 resignFirstResponder];
    [button3 resignFirstResponder];
    [button4 resignFirstResponder];
    [button5 resignFirstResponder];
    [button6 resignFirstResponder];
    [button7 resignFirstResponder];
    [button8 resignFirstResponder];
    [button9 resignFirstResponder];
    [button10 resignFirstResponder];
    [button11 resignFirstResponder];
    [button12 resignFirstResponder];
    [button13 resignFirstResponder];
    [button14 resignFirstResponder];
    [button15 resignFirstResponder];
    [button16 resignFirstResponder];
    [button17 resignFirstResponder];
    [button18 resignFirstResponder];
    [button19 resignFirstResponder];
    [button20 resignFirstResponder];
    [button21 resignFirstResponder];
    [button22 resignFirstResponder];
    [button23 resignFirstResponder];
    [button24 resignFirstResponder];
    [button25 resignFirstResponder];
    [button26 resignFirstResponder];
    [button27 resignFirstResponder];
    [button28 resignFirstResponder];
    [button29 resignFirstResponder];
    [button30 resignFirstResponder];
    [button31 resignFirstResponder];
    [button32 resignFirstResponder];
    [button33 resignFirstResponder];
    [button34 resignFirstResponder];
    [button35 resignFirstResponder];
    [button36 resignFirstResponder];
    [button37 resignFirstResponder];
    [button38 resignFirstResponder];
    [button39 resignFirstResponder];
    [button40 resignFirstResponder];
    [button41 resignFirstResponder];
    [button42 resignFirstResponder];
    [button43 resignFirstResponder];
    [button44 resignFirstResponder];
    [button45 resignFirstResponder];
    [button46 resignFirstResponder];
    [button47 resignFirstResponder];
    [button48 resignFirstResponder];
    [button49 resignFirstResponder];
    [button50 resignFirstResponder];
    [button51 resignFirstResponder];
    [button52 resignFirstResponder];
    [button53 resignFirstResponder];
    [button54 resignFirstResponder];
    [button55 resignFirstResponder];
    [button56 resignFirstResponder];
    [button57 resignFirstResponder];
    [button58 resignFirstResponder];
    [button59 resignFirstResponder];
    [button60 resignFirstResponder];
    [button61 resignFirstResponder];
    [button62 resignFirstResponder];
    [button63 resignFirstResponder];
    [button64 resignFirstResponder];
    [button65 resignFirstResponder];
    [button66 resignFirstResponder];
    [button67 resignFirstResponder];
    [button68 resignFirstResponder];
    [button69 resignFirstResponder];
    [button70 resignFirstResponder];
    [button71 resignFirstResponder];
    [button72 resignFirstResponder];
    [button73 resignFirstResponder];
    [button74 resignFirstResponder];
    [button75 resignFirstResponder];
    [button76 resignFirstResponder];
    [button77 resignFirstResponder];
    [button78 resignFirstResponder];
    [button79 resignFirstResponder];
    [button80 resignFirstResponder];
    [button81 resignFirstResponder];
    [button82 resignFirstResponder];
    [button83 resignFirstResponder];
    [button84 resignFirstResponder];
    [button85 resignFirstResponder];
    [button86 resignFirstResponder];
    [button87 resignFirstResponder];
    [button88 resignFirstResponder];
    [button89 resignFirstResponder];
    [button90 resignFirstResponder];
    [button91 resignFirstResponder];
    [button92 resignFirstResponder];
    [button93 resignFirstResponder];
    [button94 resignFirstResponder];
    [button95 resignFirstResponder];
    [button96 resignFirstResponder];
    [button97 resignFirstResponder];
    [button98 resignFirstResponder];
    [button99 resignFirstResponder];
    [button100 resignFirstResponder];
    [button101 resignFirstResponder];
    [button102 resignFirstResponder];
    [button103 resignFirstResponder];
    [button104 resignFirstResponder];
    [button105 resignFirstResponder];
    [button106 resignFirstResponder];
    [button107 resignFirstResponder];
    [button108 resignFirstResponder];
    [button109 resignFirstResponder];
    [button110 resignFirstResponder];
    [button111 resignFirstResponder];
    [button112 resignFirstResponder];
    [button113 resignFirstResponder];
    [button114 resignFirstResponder];
    [button115 resignFirstResponder];
    [button116 resignFirstResponder];
    [button117 resignFirstResponder];
    [button118 resignFirstResponder];
    [button119 resignFirstResponder];
    [button120 resignFirstResponder];
    [button121 resignFirstResponder];
    [button122 resignFirstResponder];
    [button123 resignFirstResponder];
    [button124 resignFirstResponder];
    [button125 resignFirstResponder];
    [button126 resignFirstResponder];
    [button127 resignFirstResponder];
    [button128 resignFirstResponder];
    [button129 resignFirstResponder];
    [button130 resignFirstResponder];
    [button131 resignFirstResponder];
    [button132 resignFirstResponder];
    [button133 resignFirstResponder];
    [button134 resignFirstResponder];
    [button135 resignFirstResponder];
    [button136 resignFirstResponder];
    [button137 resignFirstResponder];
    [button138 resignFirstResponder];
    [button139 resignFirstResponder];
    [button140 resignFirstResponder];
    [button141 resignFirstResponder];
    [button142 resignFirstResponder];
    [button143 resignFirstResponder];
    [button144 resignFirstResponder];
    [button145 resignFirstResponder];
    [button146 resignFirstResponder];
    [button147 resignFirstResponder];
    [button148 resignFirstResponder];
    [button149 resignFirstResponder];
    [button150 resignFirstResponder];
    [button151 resignFirstResponder];
    [button152 resignFirstResponder];
    [button153 resignFirstResponder];
    [button154 resignFirstResponder];
    [button155 resignFirstResponder];
    [button156 resignFirstResponder];
    [button157 resignFirstResponder];
    [button158 resignFirstResponder];
    [button159 resignFirstResponder];
    [button160 resignFirstResponder];
    [other resignFirstResponder];
    [other1 resignFirstResponder];
    [other2 resignFirstResponder];
    [other3 resignFirstResponder];
    [other4 resignFirstResponder];
    [other5 resignFirstResponder];
    [other6 resignFirstResponder];
    [other7 resignFirstResponder];
    [jobdescription resignFirstResponder];
    [date resignFirstResponder];
    [patientname resignFirstResponder];
    
}
-(void)Getdata
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    //NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"dutiesunderduressuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            //  NSLog(@"arrayList1::%@",arrayList1);
            // NSLog(@"arraylist count %d",[arrayList1 count]);
            temp=[arrayList1 objectForKey:@"duties_no"];
            temp1 =[arrayList1 objectForKey:@"username"];
            temp2 =[arrayList1 objectForKey:@"pname"];
            temp3 =[arrayList1 objectForKey:@"date"];
            temp4 =[arrayList1 objectForKey:@"jobdescription"];
            temp5 =[arrayList1 objectForKey:@"lifting1"];
            temp6=[arrayList1 objectForKey:@"incresedpain1"];
            temp7=[arrayList1 objectForKey:@"restrictedmovement1"];
            temp8=[arrayList1 objectForKey:@"weekness1"];
            temp9=[arrayList1 objectForKey:@"sincemva1"];
            temp10=[arrayList1 objectForKey:@"ongoing1"];
            temp11=[arrayList1 objectForKey:@"bending1"];
            temp12=[arrayList1 objectForKey:@"incresedpain2"];
            temp13=[arrayList1 objectForKey:@"restrictedmovement2"];
            temp14=[arrayList1 objectForKey:@"weekness2"];
            temp15=[arrayList1 objectForKey:@"sincemva2"];
            temp16=[arrayList1 objectForKey:@"ongoing2"];
            temp17=[arrayList1 objectForKey:@"sitting1"];
            temp18=[arrayList1 objectForKey:@"incresedpain3"];
            temp19=[arrayList1 objectForKey:@"restrictedmovement3"];
            temp20=[arrayList1 objectForKey:@"weekness3"];
            temp21=[arrayList1 objectForKey:@"sincemva3"];
            temp22=[arrayList1 objectForKey:@"ongoing3"];
            temp23=[arrayList1 objectForKey:@"walking1"];
            temp24=[arrayList1 objectForKey:@"incresedpain4"];
            temp25=[arrayList1 objectForKey:@"restrictedmovement4"];
            temp26=[arrayList1 objectForKey:@"weekness4"];
            temp27=[arrayList1 objectForKey:@"sincemva4"];
            temp28=[arrayList1 objectForKey:@"ongoing4"];
            temp29=[arrayList1 objectForKey:@"computerduties1"];
            temp30=[arrayList1 objectForKey:@"incresedpain5"];
            temp31=[arrayList1 objectForKey:@"restrictedmovement5"];
            temp32=[arrayList1 objectForKey:@"weekness5"];
            temp33=[arrayList1 objectForKey:@"sincemva5"];
            temp34=[arrayList1 objectForKey:@"ongoing5"];
            temp35=[arrayList1 objectForKey:@"other1"];
            temp36=[arrayList1 objectForKey:@"incresedpain6"];
            temp37=[arrayList1 objectForKey:@"restrictedmovement6"];
            temp38=[arrayList1 objectForKey:@"weekness6"];
            temp39=[arrayList1 objectForKey:@"sincemva6"];
            temp40=[arrayList1 objectForKey:@"ongoing6"];
            temp41=[arrayList1 objectForKey:@"other2"];
            temp42=[arrayList1 objectForKey:@"incresedpain7"];
            temp43=[arrayList1 objectForKey:@"restrictedmovement7"];
            temp44=[arrayList1 objectForKey:@"weekness7"];
            temp45=[arrayList1 objectForKey:@"sincemva7"];
            temp46=[arrayList1 objectForKey:@"ongoing7"];
            temp47=[arrayList1 objectForKey:@"lifting2"];
            temp48=[arrayList1 objectForKey:@"incresedpain8"];
            temp49=[arrayList1 objectForKey:@"restrictedmovement8"];
            temp50=[arrayList1 objectForKey:@"weekness8"];
            temp51=[arrayList1 objectForKey:@"sincemva8"];
            temp52=[arrayList1 objectForKey:@"ongoing8"];
            temp53=[arrayList1 objectForKey:@"bending2"];
            temp54=[arrayList1 objectForKey:@"incresedpain9"];
            temp55=[arrayList1 objectForKey:@"restrictedmovement9"];
            temp56=[arrayList1 objectForKey:@"weekness9"];
            temp57=[arrayList1 objectForKey:@"sincemva9"];
            temp58=[arrayList1 objectForKey:@"ongoing9"];
            temp59=[arrayList1 objectForKey:@"sitting2"];
            temp60=[arrayList1 objectForKey:@"incresedpain10"];
            temp61=[arrayList1 objectForKey:@"restrictedmovement10"];
            temp62=[arrayList1 objectForKey:@"weekness10"];
            temp63=[arrayList1 objectForKey:@"sincemva10"];
            temp64=[arrayList1 objectForKey:@"ongoing10"];
            temp65=[arrayList1 objectForKey:@"walking2"];
            temp66=[arrayList1 objectForKey:@"incresedpain11"];
            temp67=[arrayList1 objectForKey:@"restrictedmovement11"];
            temp68=[arrayList1 objectForKey:@"weekness11"];
            temp69=[arrayList1 objectForKey:@"sincemva11"];
            temp70=[arrayList1 objectForKey:@"ongoing11"];
            temp71=[arrayList1 objectForKey:@"computerduties2"];
            temp72=[arrayList1 objectForKey:@"incresedpain12"];
            temp73=[arrayList1 objectForKey:@"restrictedmovement12"];
            temp74=[arrayList1 objectForKey:@"weekness12"];
            temp75=[arrayList1 objectForKey:@"sincemva12"];
            temp76=[arrayList1 objectForKey:@"ongoing12"];
            temp77=[arrayList1 objectForKey:@"studying"];
            temp78=[arrayList1 objectForKey:@"incresedpainstudy"];
            temp79=[arrayList1 objectForKey:@"restrictedmovementstudy"];
            temp80=[arrayList1 objectForKey:@"weeknessstudy"];
            temp81=[arrayList1 objectForKey:@"sincemvastudy"];
            temp82=[arrayList1 objectForKey:@"ongoingstudy"];
            temp83=[arrayList1 objectForKey:@"concentrating"];
            temp84=[arrayList1 objectForKey:@"incresedpainconcentrate"];
            temp85=[arrayList1 objectForKey:@"restrictedmovementconcentrate"];
            temp86=[arrayList1 objectForKey:@"weeknessconcentrate"];
            temp87=[arrayList1 objectForKey:@"sincemvaconcentrate"];
            temp88=[arrayList1 objectForKey:@"ongoingconcentrate"];
            temp89=[arrayList1 objectForKey:@"other3"];
            temp90=[arrayList1 objectForKey:@"incresedpain13"];
            temp91=[arrayList1 objectForKey:@"restrictedmovement13"];
            temp92=[arrayList1 objectForKey:@"weekness13"];
            temp93=[arrayList1 objectForKey:@"sincemva13"];
            temp94=[arrayList1 objectForKey:@"ongoing13"];
            temp95=[arrayList1 objectForKey:@"other4"];
            temp96=[arrayList1 objectForKey:@"incresedpain14"];
            temp97=[arrayList1 objectForKey:@"restrictedmovement14"];
            temp98=[arrayList1 objectForKey:@"weekness14"];
            temp99=[arrayList1 objectForKey:@"sincemva14"];
            temp100=[arrayList1 objectForKey:@"ongoing14"];
            temp101 =[arrayList1 objectForKey:@"vacumming"];
            temp102 =[arrayList1 objectForKey:@"incresedpain15"];
            temp103 =[arrayList1 objectForKey:@"restrictedmovement15"];
            temp104 =[arrayList1 objectForKey:@"weekness15"];
            temp105 =[arrayList1 objectForKey:@"sincemva15"];
            temp106=[arrayList1 objectForKey:@"ongoing15"];
            temp107=[arrayList1 objectForKey:@"takingcareofkids"];
            temp108=[arrayList1 objectForKey:@"incresedpain16"];
            temp109=[arrayList1 objectForKey:@"restrictedmovement16"];
            temp110=[arrayList1 objectForKey:@"weekness16"];
            temp111=[arrayList1 objectForKey:@"sincemva16"];
            temp112=[arrayList1 objectForKey:@"ongoing16"];
            temp113=[arrayList1 objectForKey:@"cleaning"];
            temp114=[arrayList1 objectForKey:@"incresedpain17"];
            temp115=[arrayList1 objectForKey:@"restrictedmovement17"];
            temp116=[arrayList1 objectForKey:@"weekness17"];
            temp117=[arrayList1 objectForKey:@"sincemva17"];
            temp118=[arrayList1 objectForKey:@"ongoing17"];
            temp119=[arrayList1 objectForKey:@"preparingmeals"];
            temp120=[arrayList1 objectForKey:@"incresedpain18"];
            temp121=[arrayList1 objectForKey:@"restrictedmovement18"];
            temp122=[arrayList1 objectForKey:@"weekness18"];
            temp123=[arrayList1 objectForKey:@"sincemva18"];
            temp124=[arrayList1 objectForKey:@"ongoing18"];
            temp125=[arrayList1 objectForKey:@"other5"];
            temp126=[arrayList1 objectForKey:@"incresedpain20"];
            temp127=[arrayList1 objectForKey:@"restrictedmovement20"];
            temp128=[arrayList1 objectForKey:@"weekness20"];
            temp129=[arrayList1 objectForKey:@"sincemva20"];
            temp130=[arrayList1 objectForKey:@"ongoing20"];
            temp131=[arrayList1 objectForKey:@"other6"];
            temp132=[arrayList1 objectForKey:@"incresedpain21"];
            temp133=[arrayList1 objectForKey:@"restrictedmovement21"];
            temp134=[arrayList1 objectForKey:@"weekness21"];
            temp135=[arrayList1 objectForKey:@"sincemva21"];
            temp136=[arrayList1 objectForKey:@"ongoing21"];
            temp137=[arrayList1 objectForKey:@"yardwork"];
            temp138=[arrayList1 objectForKey:@"incresedpain22"];
            temp139=[arrayList1 objectForKey:@"restrictedmovement22"];
            temp140=[arrayList1 objectForKey:@"weekness22"];
            temp141=[arrayList1 objectForKey:@"sincemva22"];
            temp142=[arrayList1 objectForKey:@"ongoing22"];
            temp143=[arrayList1 objectForKey:@"transportation"];
            temp144=[arrayList1 objectForKey:@"incresedpain23"];
            temp145=[arrayList1 objectForKey:@"restrictedmovement23"];
            temp146=[arrayList1 objectForKey:@"weekness23"];
            temp147=[arrayList1 objectForKey:@"sincemva23"];
            temp148=[arrayList1 objectForKey:@"ongoing23"];
            temp149=[arrayList1 objectForKey:@"shopping"];
            temp150=[arrayList1 objectForKey:@"incresedpain24"];
            temp151=[arrayList1 objectForKey:@"restrictedmovement24"];
            temp152=[arrayList1 objectForKey:@"weekness24"];
            temp153=[arrayList1 objectForKey:@"sincemva24"];
            temp154=[arrayList1 objectForKey:@"ongoing24"];
            temp155=[arrayList1 objectForKey:@"takingouttrash"];
            temp156=[arrayList1 objectForKey:@"incresedpain25"];
            temp157=[arrayList1 objectForKey:@"restrictedmovement25"];
            temp158=[arrayList1 objectForKey:@"weekness25"];
            temp159=[arrayList1 objectForKey:@"sincemva25"];
            temp160=[arrayList1 objectForKey:@"ongoing25"];
            temp161=[arrayList1 objectForKey:@"other7"];
            temp162=[arrayList1 objectForKey:@"incresedpain27"];
            temp163=[arrayList1 objectForKey:@"restrictedmovement27"];
            temp164=[arrayList1 objectForKey:@"weekness27"];
            temp165=[arrayList1 objectForKey:@"sincemva27"];
            temp166=[arrayList1 objectForKey:@"ongoing27"];
            temp167=[arrayList1 objectForKey:@"other8"];
            temp168=[arrayList1 objectForKey:@"incresedpain28"];
            temp169=[arrayList1 objectForKey:@"restrictedmovement28"];
            temp170=[arrayList1 objectForKey:@"weekness28"];
            temp171=[arrayList1 objectForKey:@"sincemva28"];
            temp172=[arrayList1 objectForKey:@"ongoing28"];
            /*temp173=[arrayList1 objectForKey:@""];
             temp174=[arrayList1 objectForKey:@""];
             temp175=[arrayList1 objectForKey:@""];
             temp176=[arrayList1 objectForKey:@""];
             temp177=[arrayList1 objectForKey:@""];
             temp178=[arrayList1 objectForKey:@""];
             temp179=[arrayList1 objectForKey:@""];
             temp180=[arrayList1 objectForKey:@""];*/
            
            
            
            
            
            date.text=temp3;
            jobdescription.text=temp4;
            patientname.text=temp2;
            other.text=temp35;
            other1.text=temp41;
            other2.text=temp89;
            other3.text=temp95;
            other4.text=temp125;
            other5.text=temp131;
            other6.text=temp161;
            other7.text=temp167;
            //            NSLog(@"value of temp5:%@",temp5);
            //              NSLog(@"value of temp6:%@",temp6);
            //              NSLog(@"value of temp7:%@",temp7);
            //              NSLog(@"value of temp8:%@",temp8);
            //              NSLog(@"value of temp9:%@",temp9);
            //
            //
            //
            //            NSLog(@"value of temp67:%@",temp67);
            //            NSLog(@"value of temp68:%@",temp68);
            //            NSLog(@"value of temp69:%@",temp69);
            //            NSLog(@"value of temp70:%@",temp70);
            
            
            if([temp5 isEqualToString:@"null"]){
                [button1 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button1 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp6 isEqualToString:@"null"]){
                [button6 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button6 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp7 isEqualToString:@"null"]){
                [button13 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button13 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp8 isEqualToString:@"null"]){
                [button20 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button20 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp9 isEqualToString:@"null"]){
                [button27 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button27 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp10 isEqualToString:@"null"]){
                [button34 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button34 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp11 isEqualToString:@"null"]){
                [button2 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button2 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp12 isEqualToString:@"null"]){
                [button7 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button7 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp13 isEqualToString:@"null"]){
                [button14 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button14 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp14 isEqualToString:@"null"]){
                [button21 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button21 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp15 isEqualToString:@"null"]){
                [button28 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button28 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp16 isEqualToString:@"null"]){
                [button35 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button35 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp17 isEqualToString:@"null"]){
                [button3 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button3 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp18 isEqualToString:@"null"]){
                [button8 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button8 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp19 isEqualToString:@"null"]){
                [button15 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button15 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp20 isEqualToString:@"null"]){
                [button22 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button22 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp21 isEqualToString:@"null"]){
                [button29 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button29 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp22 isEqualToString:@"null"]){
                [button36 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button36 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp23 isEqualToString:@"null"]){
                [button4 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button4 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp24 isEqualToString:@"null"]){
                [button9 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button9 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp25 isEqualToString:@"null"]){
                [button16 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button16 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp26 isEqualToString:@"null"]){
                [button23 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button23 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp27 isEqualToString:@"null"]){
                [button30 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button30 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp28 isEqualToString:@"null"]){
                [button37 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button37 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp29 isEqualToString:@"null"]){
                [button5 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button5 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp30 isEqualToString:@"null"]){
                [button10 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button10 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp31 isEqualToString:@"null"]){
                [button17 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button17 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp32 isEqualToString:@"null"]){
                [button24 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button24 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp33 isEqualToString:@"null"]){
                [button31 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button31 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp34 isEqualToString:@"null"]){
                [button38 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button38 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp36 isEqualToString:@"null"]){
                [button11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button11 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp37 isEqualToString:@"null"]){
                [button18 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button18 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp38 isEqualToString:@"null"]){
                [button25 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button25 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp39 isEqualToString:@"null"]){
                [button32 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button32 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp40 isEqualToString:@"null"]){
                [button39 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button39 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp42 isEqualToString:@"null"]){
                [button12 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button12 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp43 isEqualToString:@"null"]){
                [button19 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button19 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp44 isEqualToString:@"null"]){
                [button26 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button26 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp45 isEqualToString:@"null"]){
                [button33 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button33 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp46 isEqualToString:@"null"]){
                [button40 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button40 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp47 isEqualToString:@"null"]){
                [button41 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button41 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp48 isEqualToString:@"null"]){
                [button48 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button48 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp49 isEqualToString:@"null"]){
                [button57 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button57 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp50 isEqualToString:@"null"]){
                [button66 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button66 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp51 isEqualToString:@"null"]){
                [button75 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button75 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp52 isEqualToString:@"null"]){
                [button84 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button84 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp53 isEqualToString:@"null"]){
                [button42 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button42 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp54 isEqualToString:@"null"]){
                [button49 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button49 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp55 isEqualToString:@"null"]){
                [button58 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button58 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp56 isEqualToString:@"null"]){
                [button67 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button67 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp57 isEqualToString:@"null"]){
                [button76 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button76 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp58 isEqualToString:@"null"]){
                [button85 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button85 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp59 isEqualToString:@"null"]){
                [button43 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button43 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp60 isEqualToString:@"null"]){
                [button50 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button50 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp61 isEqualToString:@"null"]){
                [button59 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button59 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp62 isEqualToString:@"null"]){
                [button68 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button68 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp63 isEqualToString:@"null"]){
                [button77 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button77 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp64 isEqualToString:@"null"]){
                [button86 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button86 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp65 isEqualToString:@"null"]){
                [button44 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button44 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp66 isEqualToString:@"null"]){
                [button51 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button51 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp67 isEqualToString:@"null"]){
                [button60 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button60 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp68 isEqualToString:@"null"]){
                [button69 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button69 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp69 isEqualToString:@"null"]){
                [button78 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button78 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp70 isEqualToString:@"null"]){
                [button87 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button87 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp71 isEqualToString:@"null"]){
                [button45 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button45 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp72 isEqualToString:@"null"]){
                [button52 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button52 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp73 isEqualToString:@"null"]){
                [button61 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button61 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp74 isEqualToString:@"null"]){
                [button70 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button70 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp75 isEqualToString:@"null"]){
                [button79 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button79 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp76 isEqualToString:@"null"]){
                [button88 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button88 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp77 isEqualToString:@"null"]){
                [button46 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button46 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp78 isEqualToString:@"null"]){
                [button53 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button53 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp79 isEqualToString:@"null"]){
                [button62 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button62 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp80 isEqualToString:@"null"]){
                [button71 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button71 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp81 isEqualToString:@"null"]){
                [button80 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button80 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp82 isEqualToString:@"null"]){
                [button89 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button89 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp83 isEqualToString:@"null"]){
                [button47 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button47 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp84 isEqualToString:@"null"]){
                [button54 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button54 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp85 isEqualToString:@"null"]){
                [button63 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button63 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp86 isEqualToString:@"null"]){
                [button72 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button72 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp87 isEqualToString:@"null"]){
                [button81 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button81 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp88 isEqualToString:@"null"]){
                [button90 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button90 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp90 isEqualToString:@"null"]){
                [button55 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button55 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp91 isEqualToString:@"null"]){
                [button64 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button64 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp92 isEqualToString:@"null"]){
                [button73 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button73 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp93 isEqualToString:@"null"]){
                [button82 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button82 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp94 isEqualToString:@"null"]){
                [button91 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button91 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp96 isEqualToString:@"null"]){
                [button56 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button56 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp97 isEqualToString:@"null"]){
                [button65 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button65 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp98 isEqualToString:@"null"]){
                [button74 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button74 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp99 isEqualToString:@"null"]){
                [button83 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button83 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp100 isEqualToString:@"null"]){
                [button92 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button92 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp101 isEqualToString:@"null"]){
                [button93 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button93 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp102 isEqualToString:@"null"]){
                [button97 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button97 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp103 isEqualToString:@"null"]){
                [button103 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button103 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp104 isEqualToString:@"null"]){
                [button109 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button109 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp105 isEqualToString:@"null"]){
                [button115 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button115 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp106 isEqualToString:@"null"]){
                [button121 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button121 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp107 isEqualToString:@"null"]){
                [button94 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button94 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp108 isEqualToString:@"null"]){
                [button98 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button98 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp109 isEqualToString:@"null"]){
                [button104 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button104 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp110 isEqualToString:@"null"]){
                [button110 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button110 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp111 isEqualToString:@"null"]){
                [button116 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button116 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp112 isEqualToString:@"null"]){
                [button122 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button122 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp113 isEqualToString:@"null"]){
                [button95 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button95 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp114 isEqualToString:@"null"]){
                [button99 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button99 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp115 isEqualToString:@"null"]){
                [button105 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button105 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp116 isEqualToString:@"null"]){
                [button111 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button111 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp117 isEqualToString:@"null"]){
                [button117 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button117 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp118 isEqualToString:@"null"]){
                [button123 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button123 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp119 isEqualToString:@"null"]){
                [button96 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button96 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp120 isEqualToString:@"null"]){
                [button100 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button100 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp121 isEqualToString:@"null"]){
                [button106 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button106 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp122 isEqualToString:@"null"]){
                [button112 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button112 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp123 isEqualToString:@"null"]){
                [button118 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button118 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp124 isEqualToString:@"null"]){
                [button124 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button124 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp126 isEqualToString:@"null"]){
                [button101 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button101 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp127 isEqualToString:@"null"]){
                [button107 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button107 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp128 isEqualToString:@"null"]){
                [button113 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button113 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp129 isEqualToString:@"null"]){
                [button119 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button119 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp130 isEqualToString:@"null"]){
                [button125 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button125 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp132 isEqualToString:@"null"]){
                [button102 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button102 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp133 isEqualToString:@"null"]){
                [button108 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button108 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp134 isEqualToString:@"null"]){
                [button114 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button114 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp135 isEqualToString:@"null"]){
                [button120 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button120 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp136 isEqualToString:@"null"]){
                [button126 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button126 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp137 isEqualToString:@"null"]){
                [button127 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button127 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp138 isEqualToString:@"null"]){
                [button131 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button131 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp139 isEqualToString:@"null"]){
                [button137 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button137 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp140 isEqualToString:@"null"]){
                [button143 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button143 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp141 isEqualToString:@"null"]){
                [button149 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button149 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp142 isEqualToString:@"null"]){
                [button155 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button155 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp143 isEqualToString:@"null"]){
                [button128 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button128 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp144 isEqualToString:@"null"]){
                [button132 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button132 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp145 isEqualToString:@"null"]){
                [button138 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button138 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp146 isEqualToString:@"null"]){
                [button144 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button144 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp147 isEqualToString:@"null"]){
                [button150 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button150 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp148 isEqualToString:@"null"]){
                [button156 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button156 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp149 isEqualToString:@"null"]){
                [button129 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button129 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp150 isEqualToString:@"null"]){
                [button133 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button133 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp151 isEqualToString:@"null"]){
                [button139 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button139 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp152 isEqualToString:@"null"]){
                [button145 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button145 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp153 isEqualToString:@"null"]){
                [button151 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button151 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp154 isEqualToString:@"null"]){
                [button157 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button157 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp155 isEqualToString:@"null"]){
                [button130 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button130 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp156 isEqualToString:@"null"]){
                [button134 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button134 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp157 isEqualToString:@"null"]){
                [button140 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button140 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp158 isEqualToString:@"null"]){
                [button146 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button146 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp159 isEqualToString:@"null"]){
                [button152 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button152 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp160 isEqualToString:@"null"]){
                [button158 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button158 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp162 isEqualToString:@"null"]){
                [button135 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button135 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp163 isEqualToString:@"null"]){
                [button141 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button141 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp164 isEqualToString:@"null"]){
                [button147 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button147 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp165 isEqualToString:@"null"]){
                [button153 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button153 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp166 isEqualToString:@"null"]){
                [button159 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button159 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp168 isEqualToString:@"null"]){
                [button136 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button136 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
            if([temp169 isEqualToString:@"null"]){
                [button142 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button142 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp170 isEqualToString:@"null"]){
                [button148 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button148 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp171 isEqualToString:@"null"]){
                [button154 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button154 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            if([temp172 isEqualToString:@"null"]){
                [button160 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                
            }
            else{
                [button160 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                
            }
            
        }
        update.hidden=NO;
        reset1.hidden=YES;
        delete.hidden=NO;
        submit.hidden=YES;
        reset.hidden=NO;
        cancel1.hidden=YES;
        cancel2.hidden=NO;
        //         NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
    }
    else
    {
        update.hidden=YES;
        reset1.hidden=NO;
        delete.hidden=YES;
        submit.hidden=NO;
        reset.hidden=YES;
        cancel1.hidden=NO;
        cancel2.hidden=YES;
    }
    
    
}
- (IBAction)delete:(id)sender {
    HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
    HUD.mode=MBProgressHUDModeIndeterminate;
    HUD.delegate = self;
    HUD.labelText = @"Deleting";
    [HUD show:YES];
    //        [self updatedata];
    if ([[self submitvalues]isEqualToString:@"success"])
    {
        NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
        NSString *response=[self HttpPostEntityFirst1delete:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
        NSError *error;
        SBJSON *json = [[SBJSON new] autorelease];
        NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
        
        //NSLog(@"%@ lucky numbers",luckyNumbers);
        if (luckyNumbers == nil)
        {
            
            //NSLog(@"luckyNumbers == nil");
            
        }
        else
        {
            
            NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
            // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"dutiesunderduress Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form deletion successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                    [self dismissModalViewControllerAnimated:YES];
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form Deletion Failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    [self dismissModalViewControllerAnimated:YES];
                }
            }
        }
        
    }
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"DutiesUnderDuress.php?service=dutiesunderduressinsert";
    //    NSLog(@"first entity value:%@",firstEntity);
    //    NSLog(@"value1 entity value:%@",value1);
    //
    //    NSLog(@"second entity value:%@",secondEntity);
    //
    //    NSLog(@"value2 entity value:%@",value2);
    
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    // NSString *post=[[NSString alloc]initWithFormat:@"%@=%@&pname=%@&date=%@&jobdescription=%@&lifting1=%@&incresedpain1=%@&restrictedmovement1=%@&weekness1=%@&sincemva1=%@&ongoing1=%@&bending1=%@&incresedpain2=%@&restrictedmovement2=%@&weekness2=%@&sincemva2=%@&ongoing2=%@&sitting1=%@&incresedpain3=%@&restrictedmovement3=%@&weekness3=%@&sincemva3=%@&ongoing3=%@&walking1=%@&incresedpain4=%@&restrictedmovement4=%@&weekness4=%@&sincemva4=%@&ongoing4=%@&computerduties1=%@&incresedpain5=%@&restrictedmovement5=%@&weekness5=%@&sincemva5=%@&ongoing5=%@&other1=%@&incresedpain6=%@&restrictedmovement6=%@&weekness6=%@&sincemva6=%@&ongoing6=%@&other2=%@&incresedpain7=%@&restrictedmovement7=%@&weekness7=%@&sincemva7=%@&ongoing7=%@&lifting2=%@&incresedpain8=%@&restrictedmovement8=%@&weekness8=%@&sincemva8=%@&ongoing8=%@&bending2=%@&incresedpain9=%@&restrictedmovement9=%@&weekness9=%@&sincemva9=%@&ongoing9=%@&sitting2=%@&incresedpain10=%@&restrictedmovement10=%@&weekness10=%@&sincemva10=%@&ongoing10=%@&walking2=%@&incresedpain11=%@&restrictedmovement11=%@&weekness11=%@&sincemva11=%@&ongoing11=%@&computerduties2=%@&incresedpain12=%@&restrictedmovement12=%@&weekness12=%@&sincemva12=%@&ongoing12=%@&studying=%@&incresedpainstudy=%@&restrictedmovementstudy=%@&weeknessstudy=%@&sincemvastudy=%@&ongoingstudy=%@&concentrating=%@&incresedpainconcentrate=%@&restrictedmovementconcentrate=%@&weeknessconcentrate=%@&sincemvaconcentrate=%@&ongoingconcentrate=%@&other3=%@&incresedpain13=%@&restrictedmovement13=%@&weekness13=%@&sincemva13=%@&ongoing13=%@&other4=%@&incresedpain14=%@&restrictedmovement14=%@&weekness14=%@&sincemva14=%@&ongoing14=%@&vacumming=%@&incresedpain15=%@&restrictedmovement15=%@&weekness15=%@&sincemva15=%@&ongoing15=%@&takingcareofkids=%@&incresedpain16=%@&restrictedmovement16=%@&weekness16=%@&sincemva16=%@&ongoing16=%@&cleaning=%@&incresedpain17=%@&restrictedmovement17=%@&weekness17=%@&sincemva17=%@&ongoing17=%@&preparingmeals=%@&incresedpain18=%@&restrictedmovement18=%@&weekness18=%@&sincemva18=%@&ongoing18=%@&other5=%@&%@=%@",firstEntity,value1,patientname.text,date.text,jobdescription.text,_1,_6,_13,_20,_27,_34,_2,_7,_14,_21,_28,_35,_3,_8,_15,_22,_29,_36,_4,_9,_16,_23,_30,_37,_5,_10,_17,_24,_31,_38,other.text,_11,_18,_25,_32,_39,other1.text,_12,_19,_26,_33,_40,_41,_48,_57,_66,_75,_84,_42,_49,_58,_67,_76,_85,_43,_50,_59,_68,_77,_86,_44,_51,_60,_69,_78,_87,_45,_52,_61,_70,_79,_88,_46,_53,_62,_71,_80,_89,_47,_54,_63,_72,_81,_90,other2.text,_55,_64,_73,_82,_91,other3.text,_56,_65,_74,_83,_92,_93,_97,_103,_109,_115,_121,_94,_98,_104,_110,_116,_122,_95,_99,_105,_111,_117,_123,_96,_100,_106,_112,_118,_124,other4.text,secondEntity,value2];
    
    /*NSString *post=[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&jobdescription=%@&lifting1=%@&incresedpain1=%@&restrictedmovement1=%@&weekness1=%@&sincemva1=%@&ongoing1=%@&bending1=%@&incresedpain2=%@&restrictedmovement2=%@&weekness2=%@&sincemva2=%@&ongoing2=%@&sitting1=%@&incresedpain3=%@&restrictedmovement3=%@&weekness3=%@&sincemva3=%@&ongoing3=%@&walking1=%@&incresedpain4=%@&restrictedmovement4=%@&weekness4=%@&sincemva4=%@&ongoing4=%@&computerduties1=%@&incresedpain5=%@&restrictedmovement5=%@&weekness5=%@&sincemva5=%@&ongoing5=%@&other1=%@&incresedpain6=%@&restrictedmovement6=%@&weekness6=%@&sincemva6=%@&ongoing6=%@&other2=%@&incresedpain7=%@&restrictedmovement7=%@&weekness7=%@&sincemva7=%@&ongoing7=%@&lifting2=%@&incresedpain8=%@&restrictedmovement8=%@&weekness8=%@&sincemva8=%@&ongoing8=%@&bending2=%@&incresedpain9=%@&restrictedmovement9=%@&weekness9=%@&sincemva9=%@&ongoing9=%@&sitting2=%@&incresedpain10=%@&restrictedmovement10=%@&weekness10=%@&sincemva10=%@&ongoing10=%@&walking2=%@&incresedpain11=%@&restrictedmovement11=%@&weekness11=%@&sincemva11=%@&ongoing11=%@&computerduties2=%@&incresedpain12=%@&restrictedmovement12=%@&weekness12=%@&sincemva12=%@&ongoing12=%@&studying=%@&incresedpainstudy=%@&restrictedmovementstudy=%@&weeknessstudy=%@&sincemvastudy=%@&ongoingstudy=%@&concentrating=%@&incresedpainconcentrate=%@&restrictedmovementconcentrate=%@&weeknessconcentrate=%@&sincemvaconcentrate=%@&ongoingconcentrate=%@&other3=%@&incresedpain13=%@&restrictedmovement13=%@&weekness13=%@&sincemva13=%@&ongoing13=%@&other4=%@&incresedpain14=%@&restrictedmovement14=%@&weekness14=%@&sincemva14=%@&ongoing14=%@&vacumming=%@&incresedpain15=%@&restrictedmovement15=%@&weekness15=%@&sincemva15=%@&ongoing15=%@&takingcareofkids=%@&incresedpain16=%@&restrictedmovement16=%@&weekness16=%@&sincemva16=%@&ongoing16=%@&cleaning=%@&incresedpain17=%@&restrictedmovement17=%@&weekness17=%@&sincemva17=%@&ongoing17=%@&preparingmeals=%@&incresedpain18=%@&restrictedmovement18=%@&weekness18=%@&sincemva18=%@&ongoing18=%@&other5=%@&incresedpain20=%@&restrictedmovement20=%@&weekness20=%@&sincemva20=%@&ongoing20=%@&other6=%@&incresedpain21=%@&restrictedmovement21=%@&weekness21=%@&sincemva21=%@&ongoing21=%@&yardwork=%@&incresedpain22=%@&restrictedmovement22=%@&weekness22=%@&sincemva22=%@&ongoing22=%@&transportation=%@&incresedpain23=%@&restrictedmovement23=%@&weekness23=%@&sincemva23=%@&ongoing23=%@&shopping=%@&incresedpain24=%@&restrictedmovement24=%@&weekness24=%@&sincemva24=%@&ongoing24=%@&takingouttrash=%@&incresedpain25=%@&restrictedmovement25=%@&weekness25=%@&sincemva25=%@&ongoing25=%@&other7=%@&incresedpain27=%@&restrictedmovement27=%@&weekness27=%@&sincemva27=%@&ongoing27=%@&other8=%@&incresedpain28=%@&restrictedmovement28=%@&weekness28=%@&sincemva28=%@&ongoing28=%@&%@=%@",firstEntity,value1,patientname.text,date.text,jobdescription.text,_1,_6,_13,_20,_27,_34,_2,_7,_14,_21,_28,_35,_3,_8,_15,_22,_29,_36,_4,_9,_16,_23,_30,_37,_5,_10,_17,_24,_31,_38,other.text,_11,_18,_25,_32,_39,other1.text,_12,_19,_26,_33,_40,_41,_48,_57,_66,_75,_84,_42,_49,_58,_67,_76,_85,_43,_50,_59,_68,_77,_86,_44,_51,_60,_69,_78,_87,_45,_52,_61,_70,_79,_88,_46,_53,_62,_71,_80,_89,_47,_54,_63,_72,_81,_90,other2.text,_55,_64,_73,_82,_91,other3.text,_56,_65,_74,_83,_92,_93,_97,_103,_109,_115,_121,_94,_98,_104,_110,_116,_122,_95,_99,_105,_111,_117,_123,_96,_100,_106,_112,_118,_124,other4.text,_101,_107,_113,_119,_125,other5.text,_102,_108,_114,_120,_126,_127,_131,_137,_143,_149,_155,_128,_132,_138,_144,_150,_156,_129,_133,_139,_145,_151,_157,_130,_134,_140,_146,_152,_158,other6.text,_135,_141,_147,_153,_159,other7.text,_136,_142,_148,_154,_160,secondEntity,value2];*/
    
    
    NSString *post=[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&jobdescription=%@&lifting1=%@&incresedpain1=%@&restrictedmovement1=%@&weekness1=%@&sincemva1=%@&ongoing1=%@&bending1=%@&incresedpain2=%@&restrictedmovement2=%@&weekness2=%@&sincemva2=%@&ongoing2=%@&sitting1=%@&incresedpain3=%@&restrictedmovement3=%@&weekness3=%@&sincemva3=%@&ongoing3=%@&walking1=%@&incresedpain4=%@&restrictedmovement4=%@&weekness4=%@&sincemva4=%@&ongoing4=%@&computerduties1=%@&incresedpain5=%@&restrictedmovement5=%@&weekness5=%@&sincemva5=%@&ongoing5=%@&other1=%@&incresedpain6=%@&restrictedmovement6=%@&weekness6=%@&sincemva6=%@&ongoing6=%@&other2=%@&incresedpain7=%@&restrictedmovement7=%@&weekness7=%@&sincemva7=%@&ongoing7=%@&lifting2=%@&incresedpain8=%@&restrictedmovement8=%@&weekness8=%@&sincemva8=%@&ongoing8=%@&bending2=%@&incresedpain9=%@&restrictedmovement9=%@&weekness9=%@&sincemva9=%@&ongoing9=%@&sitting2=%@&incresedpain10=%@&restrictedmovement10=%@&weekness10=%@&sincemva10=%@&ongoing10=%@&walking2=%@&incresedpain11=%@&restrictedmovement11=%@&weekness11=%@&sincemva11=%@&ongoing11=%@&computerduties2=%@&incresedpain12=%@&restrictedmovement12=%@&weekness12=%@&sincemva12=%@&ongoing12=%@&studying=%@&incresedpainstudy=%@&restrictedmovementstudy=%@&weeknessstudy=%@&sincemvastudy=%@&ongoingstudy=%@&concentrating=%@&incresedpainconcentrate=%@&restrictedmovementconcentrate=%@&weeknessconcentrate=%@&sincemvaconcentrate=%@&ongoingconcentrate=%@&other3=%@&incresedpain13=%@&restrictedmovement13=%@&weekness13=%@&sincemva13=%@&ongoing13=%@&other4=%@&incresedpain14=%@&restrictedmovement14=%@&weekness14=%@&sincemva14=%@&ongoing14=%@&vacumming=%@&incresedpain15=%@&restrictedmovement15=%@&weekness15=%@&sincemva15=%@&ongoing15=%@&takingcareofkids=%@&incresedpain16=%@&restrictedmovement16=%@&weekness16=%@&sincemva16=%@&ongoing16=%@&cleaning=%@&incresedpain17=%@&restrictedmovement17=%@&weekness17=%@&sincemva17=%@&ongoing17=%@&preparingmeals=%@&incresedpain18=%@&restrictedmovement18=%@&weekness18=%@&sincemva18=%@&ongoing18=%@&",firstEntity,value1,patientname.text,date.text,jobdescription.text,_1,_6,_13,_20,_27,_34,_2,_7,_14,_21,_28,_35,_3,_8,_15,_22,_29,_36,_4,_9,_16,_23,_30,_37,_5,_10,_17,_24,_31,_38,other.text,_11,_18,_25,_32,_39,other1.text,_12,_19,_26,_33,_40,_41,_48,_57,_66,_75,_84,_42,_49,_58,_67,_76,_85,_43,_50,_59,_68,_77,_86,_44,_51,_60,_69,_78,_87,_45,_52,_61,_70,_79,_88,_46,_53,_62,_71,_80,_89,_47,_54,_63,_72,_81,_90,other2.text,_55,_64,_73,_82,_91,other3.text,_56,_65,_74,_83,_92,_93,_97,_103,_109,_115,_121,_94,_98,_104,_110,_116,_122,_95,_99,_105,_111,_117,_123,_96,_100,_106,_112,_118,_124];
    
    NSString *post1=[[NSString alloc]initWithFormat:@"other5=%@&incresedpain20=%@&restrictedmovement20=%@&weekness20=%@&sincemva20=%@&ongoing20=%@&other6=%@&incresedpain21=%@&restrictedmovement21=%@&weekness21=%@&sincemva21=%@&ongoing21=%@&yardwork=%@&incresedpain22=%@&restrictedmovement22=%@&weekness22=%@&sincemva22=%@&ongoing22=%@&transportation=%@&incresedpain23=%@&restrictedmovement23=%@&weekness23=%@&sincemva23=%@&ongoing23=%@&shopping=%@&incresedpain24=%@&restrictedmovement24=%@&weekness24=%@&sincemva24=%@&ongoing24=%@&takingouttrash=%@&incresedpain25=%@&restrictedmovement25=%@&weekness25=%@&sincemva25=%@&ongoing25=%@&other7=%@&incresedpain27=%@&restrictedmovement27=%@&weekness27=%@&sincemva27=%@&ongoing27=%@&other8=%@&incresedpain28=%@&restrictedmovement28=%@&weekness28=%@&sincemva28=%@&ongoing28=%@&%@=%@",other4.text,_101,_107,_113,_119,_125,other5.text,_102,_108,_114,_120,_126,_127,_131,_137,_143,_149,_155,_128,_132,_138,_144,_150,_156,_129,_133,_139,_145,_151,_157,_130,_134,_140,_146,_152,_158,other6.text,_135,_141,_147,_153,_159,other7.text,_136,_142,_148,_154,_160,secondEntity,value2];
    
    
    //NSString *post =[[NSString alloc] initWithFormat:@"%%@&"
    // NSLog(@"POSToone:%@",post1);
    
    
    NSURL *url = [NSURL URLWithString:url2];
    
    //  NSLog(post);
    NSString *postfull=[NSString stringWithFormat:@"%@%@", post, post1];
    // NSLog(@"post full text::%@",postfull);
    
    
    NSData *postData = [postfull dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
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
    //    NSLog(@"data %@",data);
    
    return data;
    
}
-(void)updatedata
{
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *response=[self HttpPostEntityFirst1update:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    NSDictionary *luckyNumbers = [json objectWithString:response error:&error];
    
    //NSLog(@"%@ lucky numbers",luckyNumbers);
    if (luckyNumbers == nil)
    {
        
        //NSLog(@"luckyNumbers == nil");
        
    }
    else
    {
        
        NSDictionary* menu = [luckyNumbers objectForKey:@"serviceresponse"];
        // NSLog(@"Menu id: %@", [menu objectForKey:@"servicename"]);
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"dutiesunderduress Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form updation successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                [self dismissModalViewControllerAnimated:YES];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form Updation Failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                [self dismissModalViewControllerAnimated:YES];
            }
        }
    }
}


- (void)dealloc {
    [_1 release];
    [_2 release];
    [_3 release];
    [_4 release];
    [_5 release];
    [_6 release];
    [_7 release];
    [_8 release];
    [_9 release];
    [_10 release];
    [_11 release];
    [_12 release];
    [_13 release];
    [_14 release];
    [_15 release];
    [_16 release];
    [_17 release];
    [_18 release];
    [_19 release];
    [_20 release];
    [_21 release];
    [_22 release];
    [_23 release];
    [_24 release];
    [_25 release];
    [_26 release];
    [_27 release];
    [_28 release];
    [_29 release];
    [_30 release];
    [_31 release];
    [_32 release];
    [_33 release];
    [_34 release];
    [_35 release];
    [_36 release];
    [_37 release];
    [_38 release];
    [_39 release];
    [_40 release];
    [_41 release];
    [_42 release];
    [_43 release];
    [_44 release];
    [_45 release];
    [_46 release];
    [_47 release];
    [_48 release];
    [_49 release];
    [_50 release];
    [_51 release];
    [_52 release];
    [_53 release];
    [_54 release];
    [_55 release];
    [_56 release];
    [_57 release];
    [_58 release];
    [_59 release];
    [_60 release];
    [_61 release];
    [_62 release];
    [_63 release];
    [_64 release];
    [_65 release];
    [_66 release];
    [_67 release];
    [_68 release];
    [_69 release];
    [_70 release];
    [_71 release];
    [_72 release];
    [_73 release];
    [_74 release];
    [_75 release];
    [_76 release];
    [_77 release];
    [_78 release];
    [_79 release];
    [_80 release];
    [_81 release];
    [_82 release];
    [_83 release];
    [_84 release];
    [_85 release];
    [_86 release];
    [_87 release];
    [_88 release];
    [_89 release];
    [_90 release];
    [_91 release];
    [_92 release];
    [_93 release];
    [_94 release];
    [_95 release];
    [_96 release];
    [_97 release];
    [_98 release];
    [_99 release];
    [_100 release];
    [_101 release];
    [_102 release];
    [_103 release];
    [_104 release];
    [_105 release];
    [_106 release];
    [_107 release];
    [_108 release];
    [_109 release];
    [_110 release];
    [_111 release];
    [_112 release];
    [_113 release];
    [_114 release];
    [_115 release];
    [_116 release];
    [_117 release];
    [_118 release];
    [_119 release];
    [_120 release];
    [_121 release];
    [_122 release];
    [_123 release];
    [_124 release];
    [_125 release];
    [_126 release];
    [_127 release];
    [_128 release];
    [_129 release];
    [_130 release];
    [_131 release];
    [_132 release];
    [_133 release];
    [_134 release];
    [_135 release];
    [_136 release];
    [_137 release];
    [_138 release];
    [_139 release];
    [_140 release];
    [_141 release];
    [_142 release];
    [_143 release];
    [_144 release];
    [_145 release];
    [_146 release];
    [_147 release];
    [_148 release];
    [_149 release];
    [_150 release];
    [_151 release];
    [_152 release];
    [_153 release];
    [_154 release];
    [_155 release];
    [_156 release];
    [_157 release];
    [_158 release];
    [_159 release];
    [_160 release];
    
    [button1 release];
    [button2 release];
    [button3 release];
    [button4 release];
    [button5 release];
    [button6 release];
    [button7 release];
    [button8 release];
    [button9 release];
    [button10 release];
    [button11 release];
    [button12 release];
    [button13 release];
    [button14 release];
    [button15 release];
    [button16 release];
    [button17 release];
    [button18 release];
    [button19 release];
    [button20 release];
    [button21 release];
    [button22 release];
    [button23 release];
    [button24 release];
    [button25 release];
    [button26 release];
    [button27 release];
    [button28 release];
    [button29 release];
    [button30 release];
    [button31 release];
    [button32 release];
    [button33 release];
    [button34 release];
    [button35 release];
    [button36 release];
    [button37 release];
    [button38 release];
    [button39 release];
    [button40 release];
    [button41 release];
    [button42 release];
    [button43 release];
    [button44 release];
    [button45 release];
    [button46 release];
    [button47 release];
    [button48 release];
    [button49 release];
    [button50 release];
    [button51 release];
    [button52 release];
    [button53 release];
    [button54 release];
    [button55 release];
    [button56 release];
    [button57 release];
    [button58 release];
    [button59 release];
    [button60 release];
    [button61 release];
    [button62 release];
    [button63 release];
    [button64 release];
    [button65 release];
    [button66 release];
    [button67 release];
    [button68 release];
    [button69 release];
    [button70 release];
    [button71 release];
    [button72 release];
    [button73 release];
    [button74 release];
    [button75 release];
    [button76 release];
    [button77 release];
    [button78 release];
    [button79 release];
    [button80 release];
    [button81 release];
    [button82 release];
    [button83 release];
    [button84 release];
    [button85 release];
    [button86 release];
    [button87 release];
    [button88 release];
    [button89 release];
    [button90 release];
    [button91 release];
    [button92 release];
    [button93 release];
    [button94 release];
    [button95 release];
    [button96 release];
    [button97 release];
    [button98 release];
    [button99 release];
    [button100 release];
    [button101 release];
    [button102 release];
    [button103 release];
    [button104 release];
    [button105 release];
    [button106 release];
    [button107 release];
    [button108 release];
    [button109 release];
    [button110 release];
    [button111 release];
    [button112 release];
    [button113 release];
    [button114 release];
    [button115 release];
    [button116 release];
    [button117 release];
    [button118 release];
    [button119 release];
    [button120 release];
    [button121 release];
    [button122 release];
    [button123 release];
    [button124 release];
    [button125 release];
    [button126 release];
    [button127 release];
    [button128 release];
    [button129 release];
    [button130 release];
    [button131 release];
    [button132 release];
    [button133 release];
    [button134 release];
    [button135 release];
    [button136 release];
    [button137 release];
    [button138 release];
    [button139 release];
    [button140 release];
    [button141 release];
    [button142 release];
    [button143 release];
    [button144 release];
    [button145 release];
    [button146 release];
    [button147 release];
    [button148 release];
    [button149 release];
    [button150 release];
    [button151 release];
    [button152 release];
    [button153 release];
    [button154 release];
    [button155 release];
    [button156 release];
    [button157 release];
    [button158 release];
    [button159 release];
    [button160 release];
    [other release];
    [other1 release];
    [other2 release];
    [other3 release];
    [other4 release];
    [other5 release];
    [other6 release];
    [other7 release];
    
    
    
    [super dealloc];
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"DutiesUnderDuress.php?service=dutiesunderduressedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    // NSString *post=[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&jobdescription=%@&lifting1=%@&incresedpain1=%@&restrictedmovement1=%@&weekness1=%@&sincemva1=%@&ongoing1=%@&bending1=%@&incresedpain2=%@&restrictedmovement2=%@&weekness2=%@&sincemva2=%@&ongoing2=%@&sitting1=%@&incresedpain3=%@&restrictedmovement3=%@&weekness3=%@&sincemva3=%@&ongoing3=%@&walking1=%@&incresedpain4=%@&restrictedmovement4=%@&weekness4=%@&sincemva4=%@&ongoing4=%@&computerduties1=%@&incresedpain5=%@&restrictedmovement5=%@&weekness5=%@&sincemva5=%@&ongoing5=%@&other1=%@&incresedpain6=%@&restrictedmovement6=%@&weekness6=%@&sincemva6=%@&ongoing6=%@&other2=%@&incresedpain7=%@&restrictedmovement7=%@&weekness7=%@&sincemva7=%@&ongoing7=%@&lifting2=%@&incresedpain8=%@&restrictedmovement8=%@&weekness8=%@&sincemva8=%@&ongoing8=%@&bending2=%@&incresedpain9=%@&restrictedmovement9=%@&weekness9=%@&sincemva9=%@&ongoing9=%@&sitting2=%@&incresedpain10=%@&restrictedmovement10=%@&weekness10=%@&sincemva10=%@&ongoing10=%@&walking2=%@&incresedpain11=%@&restrictedmovement11=%@&weekness11=%@&sincemva11=%@&ongoing11=%@&computerduties2=%@&incresedpain12=%@&restrictedmovement12=%@&weekness12=%@&sincemva12=%@&ongoing12=%@&studying=%@&incresedpainstudy=%@&restrictedmovementstudy=%@&weeknessstudy=%@&sincemvastudy=%@&ongoingstudy=%@&concentrating=%@&incresedpainconcentrate=%@&restrictedmovementconcentrate=%@&weeknessconcentrate=%@&sincemvaconcentrate=%@&ongoingconcentrate=%@&other3=%@&incresedpain13=%@&restrictedmovement13=%@&weekness13=%@&sincemva13=%@&ongoing13=%@&other4=%@&incresedpain14=%@&restrictedmovement14=%@&weekness14=%@&sincemva14=%@&ongoing14=%@&vacumming=%@&incresedpain15=%@&restrictedmovement15=%@&weekness15=%@&sincemva15=%@&ongoing15=%@&takingcareofkids=%@&incresedpain16=%@&restrictedmovement16=%@&weekness16=%@&sincemva16=%@&ongoing16=%@&cleaning=%@&incresedpain17=%@&restrictedmovement17=%@&weekness17=%@&sincemva17=%@&ongoing17=%@&preparingmeals=%@&incresedpain18=%@&restrictedmovement18=%@&weekness18=%@&sincemva18=%@&ongoing18=%@&%@=%@",firstEntity,value1,patientname.text,date.text,jobdescription.text,_1,_6,_13,_20,_27,_34,_2,_7,_14,_21,_28,_35,_3,_8,_15,_22,_29,_36,_4,_9,_16,_23,_30,_37,_5,_10,_17,_24,_31,_38,other.text,_11,_18,_25,_32,_39,other1.text,_12,_19,_26,_33,_40,_41,_48,_57,_66,_75,_84,_42,_49,_58,_67,_76,_85,_43,_50,_59,_68,_77,_86,_44,_51,_60,_69,_78,_87,_45,_52,_61,_70,_79,_88,_46,_53,_62,_71,_80,_89,_47,_54,_63,_72,_81,_90,other2.text,_55,_64,_73,_82,_91,other3.text,_56,_65,_74,_83,_92,_93,_97,_103,_109,_115,_121,_94,_98,_104,_110,_116,_122,_95,_99,_105,_111,_117,_123,_96,_100,_106,_112,_118,_124,secondEntity,value2];
    
    // NSString *post1=[[NSString alloc]initWithFormat:@"other5=%@&incresedpain20=%@&restrictedmovement20=%@&weekness20=%@&sincemva20=%@&ongoing20=%@&other6=%@&incresedpain21=%@&restrictedmovement21=%@&weekness21=%@&sincemva21=%@&ongoing21=%@&yardwork=%@&incresedpain22=%@&restrictedmovement22=%@&weekness22=%@&sincemva22=%@&ongoing22=%@&transportation=%@&incresedpain23=%@&restrictedmovement23=%@&weekness23=%@&sincemva23=%@&ongoing23=%@&shopping=%@&incresedpain24=%@&restrictedmovement24=%@&weekness24=%@&sincemva24=%@&ongoing24=%@&takingouttrash=%@&incresedpain25=%@&restrictedmovement25=%@&weekness25=%@&sincemva25=%@&ongoing25=%@&other7=%@&incresedpain27=%@&restrictedmovement27=%@&weekness27=%@&sincemva27=%@&ongoing27=%@&other8=%@&incresedpain28=%@&restrictedmovement28=%@&weekness28=%@&sincemva28=%@&ongoing28=%@",other4.text,_101,_107,_113,_119,_125,other5.text,_102,_108,_114,_120,_126,_127,_131,_137,_143,_149,_155,_128,_132,_138,_144,_150,_156,_129,_133,_139,_145,_151,_157,_130,_134,_140,_146,_152,_158,other6.text,_135,_141,_147,_153,_159,other7.text,_136,_142,_148,_154,_160 ];
    
    
    //  NSLog(@"post one value::%@",post1);
    //  NSString *post=[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&jobdescription=%@&lifting1=%@&incresedpain1=%@&restrictedmovement1=%@&weekness1=%@&sincemva1=%@&ongoing1=%@&bending1=%@&incresedpain2=%@&restrictedmovement2=%@&weekness2=%@&sincemva2=%@&ongoing2=%@&sitting1=%@&incresedpain3=%@&restrictedmovement3=%@&weekness3=%@&sincemva3=%@&ongoing3=%@&walking1=%@&incresedpain4=%@&restrictedmovement4=%@&weekness4=%@&sincemva4=%@&ongoing4=%@&computerduties1=%@&incresedpain5=%@&restrictedmovement5=%@&weekness5=%@&sincemva5=%@&ongoing5=%@&other1=%@&incresedpain6=%@&restrictedmovement6=%@&weekness6=%@&sincemva6=%@&ongoing6=%@&other2=%@&incresedpain7=%@&restrictedmovement7=%@&weekness7=%@&sincemva7=%@&ongoing7=%@&lifting2=%@&incresedpain8=%@&restrictedmovement8=%@&weekness8=%@&sincemva8=%@&ongoing8=%@&bending2=%@&incresedpain9=%@&restrictedmovement9=%@&weekness9=%@&sincemva9=%@&ongoing9=%@&sitting2=%@&incresedpain10=%@&restrictedmovement10=%@&weekness10=%@&sincemva10=%@&ongoing10=%@&walking2=%@&incresedpain11=%@&restrictedmovement11=%@&weekness11=%@&sincemva11=%@&ongoing11=%@&computerduties2=%@&incresedpain12=%@&restrictedmovement12=%@&weekness12=%@&sincemva12=%@&ongoing12=%@&studying=%@&incresedpainstudy=%@&restrictedmovementstudy=%@&weeknessstudy=%@&sincemvastudy=%@&ongoingstudy=%@&concentrating=%@&incresedpainconcentrate=%@&restrictedmovementconcentrate=%@&weeknessconcentrate=%@&sincemvaconcentrate=%@&ongoingconcentrate=%@&other3=%@&incresedpain13=%@&restrictedmovement13=%@&weekness13=%@&sincemva13=%@&ongoing13=%@&other4=%@&incresedpain14=%@&restrictedmovement14=%@&weekness14=%@&sincemva14=%@&ongoing14=%@&vacumming=%@&incresedpain15=%@&restrictedmovement15=%@&weekness15=%@&sincemva15=%@&ongoing15=%@&takingcareofkids=%@&incresedpain16=%@&restrictedmovement16=%@&weekness16=%@&sincemva16=%@&ongoing16=%@&cleaning=%@&incresedpain17=%@&restrictedmovement17=%@&weekness17=%@&sincemva17=%@&ongoing17=%@&preparingmeals=%@&incresedpain18=%@&restrictedmovement18=%@&weekness18=%@&sincemva18=%@&ongoing18=%@&%@=%@",firstEntity,value1,patientname.text,date.text,jobdescription.text,_1,_6,_13,_20,_27,_34,_2,_7,_14,_21,_28,_35,_3,_8,_15,_22,_29,_36,_4,_9,_16,_23,_30,_37,_5,_10,_17,_24,_31,_38,other.text,_11,_18,_25,_32,_39,other1.text,_12,_19,_26,_33,_40,_41,_48,_57,_66,_75,_84,_42,_49,_58,_67,_76,_85,_43,_50,_59,_68,_77,_86,_44,_51,_60,_69,_78,_87,_45,_52,_61,_70,_79,_88,_46,_53,_62,_71,_80,_89,_47,_54,_63,_72,_81,_90,other2.text,_55,_64,_73,_82,_91,other3.text,_56,_65,_74,_83,_92,_93,_97,_103,_109,_115,_121,_94,_98,_104,_110,_116,_122,_95,_99,_105,_111,_117,_123,_96,_100,_106,_112,_118,_124,secondEntity,value2];
    
    // NSString *post=[[NSString alloc]initWithFormat:@"%@=%@&pname=%@&date=%@&jobdescription=%@&lifting1=%@&incresedpain1=%@&restrictedmovement1=%@&weekness1=%@&sincemva1=%@&ongoing1=%@&bending1=%@&incresedpain2=%@&restrictedmovement2=%@&weekness2=%@&sincemva2=%@&ongoing2=%@&sitting1=%@&incresedpain3=%@&restrictedmovement3=%@&weekness3=%@&sincemva3=%@&ongoing3=%@&walking1=%@&incresedpain4=%@&restrictedmovement4=%@&weekness4=%@&sincemva4=%@&ongoing4=%@&computerduties1=%@&incresedpain5=%@&restrictedmovement5=%@&weekness5=%@&sincemva5=%@&ongoing5=%@&other1=%@&incresedpain6=%@&restrictedmovement6=%@&weekness6=%@&sincemva6=%@&ongoing6=%@&other2=%@&incresedpain7=%@&restrictedmovement7=%@&weekness7=%@&sincemva7=%@&ongoing7=%@&lifting2=%@&incresedpain8=%@&restrictedmovement8=%@&weekness8=%@&sincemva8=%@&ongoing8=%@&bending2=%@&incresedpain9=%@&restrictedmovement9=%@&weekness9=%@&sincemva9=%@&ongoing9=%@&sitting2=%@&incresedpain10=%@&restrictedmovement10=%@&weekness10=%@&sincemva10=%@&ongoing10=%@&walking2=%@&incresedpain11=%@&restrictedmovement11=%@&weekness11=%@&sincemva11=%@&ongoing11=%@&computerduties2=%@&incresedpain12=%@&restrictedmovement12=%@&weekness12=%@&sincemva12=%@&ongoing12=%@&studying=%@&incresedpainstudy=%@&restrictedmovementstudy=%@&weeknessstudy=%@&sincemvastudy=%@&ongoingstudy=%@&concentrating=%@&incresedpainconcentrate=%@&restrictedmovementconcentrate=%@&weeknessconcentrate=%@&sincemvaconcentrate=%@&ongoingconcentrate=%@&other3=%@&incresedpain13=%@&restrictedmovement13=%@&weekness13=%@&sincemva13=%@&ongoing13=%@&other4=%@&incresedpain14=%@&restrictedmovement14=%@&weekness14=%@&sincemva14=%@&ongoing14=%@&vacumming=%@&incresedpain15=%@&restrictedmovement15=%@&weekness15=%@&sincemva15=%@&ongoing15=%@&takingcareofkids=%@&incresedpain16=%@&restrictedmovement16=%@&weekness16=%@&sincemva16=%@&ongoing16=%@&cleaning=%@&incresedpain17=%@&restrictedmovement17=%@&weekness17=%@&sincemva17=%@&ongoing17=%@&preparingmeals=%@&incresedpain18=%@&restrictedmovement18=%@&weekness18=%@&sincemva18=%@&ongoing18=%@&other5=%@&incresedpain20=%@&%@=%@",firstEntity,value1,patientname.text,date.text,jobdescription.text,_1,_6,_13,_20,_27,_34,_2,_7,_14,_21,_28,_35,_3,_8,_15,_22,_29,_36,_4,_9,_16,_23,_30,_37,_5,_10,_17,_24,_31,_38,other.text,_11,_18,_25,_32,_39,other1.text,_12,_19,_26,_33,_40,_41,_48,_57,_66,_75,_84,_42,_49,_58,_67,_76,_85,_43,_50,_59,_68,_77,_86,_44,_51,_60,_69,_78,_87,_45,_52,_61,_70,_79,_88,_46,_53,_62,_71,_80,_89,_47,_54,_63,_72,_81,_90,other2.text,_55,_64,_73,_82,_91,other3.text,_56,_65,_74,_83,_92,_93,_97,_103,_109,_115,_121,_94,_98,_104,_110,_116,_122,_95,_99,_105,_111,_117,_123,_96,_100,_106,_112,_118,_124,other4.text,_3,secondEntity,value2];
    //  NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&patientsname=%@&patientssign=%@&todaydate=%@&witness=%@&%@=%@",firstEntity,value1,value1,sign.text,date.text,name.text,secondEntity,value2];    //    NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    
    NSString *post=[[NSString alloc] initWithFormat:@"%@=%@&pname=%@&date=%@&jobdescription=%@&lifting1=%@&incresedpain1=%@&restrictedmovement1=%@&weekness1=%@&sincemva1=%@&ongoing1=%@&bending1=%@&incresedpain2=%@&restrictedmovement2=%@&weekness2=%@&sincemva2=%@&ongoing2=%@&sitting1=%@&incresedpain3=%@&restrictedmovement3=%@&weekness3=%@&sincemva3=%@&ongoing3=%@&walking1=%@&incresedpain4=%@&restrictedmovement4=%@&weekness4=%@&sincemva4=%@&ongoing4=%@&computerduties1=%@&incresedpain5=%@&restrictedmovement5=%@&weekness5=%@&sincemva5=%@&ongoing5=%@&other1=%@&incresedpain6=%@&restrictedmovement6=%@&weekness6=%@&sincemva6=%@&ongoing6=%@&other2=%@&incresedpain7=%@&restrictedmovement7=%@&weekness7=%@&sincemva7=%@&ongoing7=%@&lifting2=%@&incresedpain8=%@&restrictedmovement8=%@&weekness8=%@&sincemva8=%@&ongoing8=%@&bending2=%@&incresedpain9=%@&restrictedmovement9=%@&weekness9=%@&sincemva9=%@&ongoing9=%@&sitting2=%@&incresedpain10=%@&restrictedmovement10=%@&weekness10=%@&sincemva10=%@&ongoing10=%@&walking2=%@&incresedpain11=%@&restrictedmovement11=%@&weekness11=%@&sincemva11=%@&ongoing11=%@&computerduties2=%@&incresedpain12=%@&restrictedmovement12=%@&weekness12=%@&sincemva12=%@&ongoing12=%@&studying=%@&incresedpainstudy=%@&restrictedmovementstudy=%@&weeknessstudy=%@&sincemvastudy=%@&ongoingstudy=%@&concentrating=%@&incresedpainconcentrate=%@&restrictedmovementconcentrate=%@&weeknessconcentrate=%@&sincemvaconcentrate=%@&ongoingconcentrate=%@&other3=%@&incresedpain13=%@&restrictedmovement13=%@&weekness13=%@&sincemva13=%@&ongoing13=%@&other4=%@&incresedpain14=%@&restrictedmovement14=%@&weekness14=%@&sincemva14=%@&ongoing14=%@&vacumming=%@&incresedpain15=%@&restrictedmovement15=%@&weekness15=%@&sincemva15=%@&ongoing15=%@&takingcareofkids=%@&incresedpain16=%@&restrictedmovement16=%@&weekness16=%@&sincemva16=%@&ongoing16=%@&cleaning=%@&incresedpain17=%@&restrictedmovement17=%@&weekness17=%@&sincemva17=%@&ongoing17=%@&preparingmeals=%@&incresedpain18=%@&restrictedmovement18=%@&weekness18=%@&sincemva18=%@&ongoing18=%@&",firstEntity,value1,patientname.text,date.text,jobdescription.text,_1,_6,_13,_20,_27,_34,_2,_7,_14,_21,_28,_35,_3,_8,_15,_22,_29,_36,_4,_9,_16,_23,_30,_37,_5,_10,_17,_24,_31,_38,other.text,_11,_18,_25,_32,_39,other1.text,_12,_19,_26,_33,_40,_41,_48,_57,_66,_75,_84,_42,_49,_58,_67,_76,_85,_43,_50,_59,_68,_77,_86,_44,_51,_60,_69,_78,_87,_45,_52,_61,_70,_79,_88,_46,_53,_62,_71,_80,_89,_47,_54,_63,_72,_81,_90,other2.text,_55,_64,_73,_82,_91,other3.text,_56,_65,_74,_83,_92,_93,_97,_103,_109,_115,_121,_94,_98,_104,_110,_116,_122,_95,_99,_105,_111,_117,_123,_96,_100,_106,_112,_118,_124];
    
    NSString *post1=[[NSString alloc]initWithFormat:@"other5=%@&incresedpain20=%@&restrictedmovement20=%@&weekness20=%@&sincemva20=%@&ongoing20=%@&other6=%@&incresedpain21=%@&restrictedmovement21=%@&weekness21=%@&sincemva21=%@&ongoing21=%@&yardwork=%@&incresedpain22=%@&restrictedmovement22=%@&weekness22=%@&sincemva22=%@&ongoing22=%@&transportation=%@&incresedpain23=%@&restrictedmovement23=%@&weekness23=%@&sincemva23=%@&ongoing23=%@&shopping=%@&incresedpain24=%@&restrictedmovement24=%@&weekness24=%@&sincemva24=%@&ongoing24=%@&takingouttrash=%@&incresedpain25=%@&restrictedmovement25=%@&weekness25=%@&sincemva25=%@&ongoing25=%@&other7=%@&incresedpain27=%@&restrictedmovement27=%@&weekness27=%@&sincemva27=%@&ongoing27=%@&other8=%@&incresedpain28=%@&restrictedmovement28=%@&weekness28=%@&sincemva28=%@&ongoing28=%@&%@=%@",other4.text,_101,_107,_113,_119,_125,other5.text,_102,_108,_114,_120,_126,_127,_131,_137,_143,_149,_155,_128,_132,_138,_144,_150,_156,_129,_133,_139,_145,_151,_157,_130,_134,_140,_146,_152,_158,other6.text,_135,_141,_147,_153,_159,other7.text,_136,_142,_148,_154,_160,secondEntity,value2];
    //////NSLog(post);
    NSString *postfull=[NSString stringWithFormat:@"%@%@", post, post1];
    // NSLog(@"post full text::%@",postfull);
    NSData *postData = [postfull dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
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
    //    NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"DutiesUnderDuress.php?service=dutiesunderduressdelete";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    //    NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    //////NSLog(post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
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
    //    NSLog(@"data %@",data);
    
    return data;
    
}
-(IBAction)reset:(id)sender
{
    patientname.text=@"";
    date.text=@"";
    jobdescription.text=@"";
    date.text=@"";
    other.text=@"";
    other1.text=@"";
    other2.text=@"";
    other3.text=@"";
    other4.text=@"";
    other5.text=@"";
    other6.text=@"";
    other7.text=@"";
    
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
    [button47 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button48 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button49 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button50 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button51 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button52 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button53 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button54 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button55 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button56 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button57 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button58 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button59 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button60 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button61 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button62 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button63 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button64 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button65 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button66 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button67 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button68 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button69 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button70 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button71 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button72 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button73 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button74 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button75 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button76 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button77 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button78 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button79 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button80 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button81 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button82 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button83 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button84 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button85 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button86 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button87 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button88 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button89 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button90 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button91 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button92 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button93 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button94 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button95 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button96 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button97 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button98 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button99 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button100 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button101 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button102 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button103 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button104 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button105 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button106 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button107 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button108 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button109 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button110 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button111 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button112 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button113 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button114 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button115 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button116 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button117 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button118 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button119 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button120 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button121 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button122 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button123 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button124 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button125 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button126 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button127 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button128 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button129 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button130 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button131 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button132 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button133 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button134 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button135 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button136 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button137 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button138 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button139 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button140 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
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
    [button47 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button48 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button49 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button50 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button51 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button52 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button53 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button54 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button55 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button56 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button57 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button58 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button59 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button60 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button61 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button62 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button63 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button64 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button65 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button66 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button67 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button68 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button69 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button70 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button71 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button72 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button73 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button74 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button75 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button76 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button77 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button78 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button79 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button80 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button81 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button82 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button83 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button84 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button85 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button86 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button87 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button88 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button89 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button90 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button91 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button92 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button93 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button94 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button95 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button96 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button97 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button98 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button99 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button100 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button101 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button102 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button103 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button104 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button105 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button106 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button107 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button108 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button109 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button110 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button111 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button112 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button113 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button114 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button115 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button116 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button117 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button118 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button119 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button120 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button121 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button122 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button123 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button124 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button125 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button126 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button127 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button128 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button129 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button130 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button131 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button132 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button133 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button134 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button135 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button136 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button137 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button138 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button139 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button140 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button141 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button142 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button143 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button144 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button145 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button146 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button147 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button148 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button149 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button150 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button151 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button152 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button153 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button154 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button155 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button156 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button157 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button158 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button159 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button160 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button141 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button142 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button143 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button144 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button145 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button146 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button147 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button148 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button149 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button150 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button151 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button152 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button153 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button154 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button155 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button156 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button157 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button158 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button159 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [button160 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    
    
}

-(IBAction)cancel1:(id)sender
{
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"DutiesUnderDuress.php?service=dutiesunderduressselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    //    NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    //////NSLog(post);
    
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
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
    //    NSLog(@"data %@",data);
    
    return data;
    
}
@end
