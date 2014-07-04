//
//  TestMoreViewController3.m
//  TestMore
//
//  Created by deemsys on 5/12/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "TestMoreViewController3.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "hamil2ViewController.h"
#import "hamil3ViewController.h"
#import "hamil4ViewController.h"
#import "hamil5ViewController.h"

#import "StringConstants.h"
#import "TWMessageBarManager.h"


@interface TestMoreViewController3 ()

@end

@implementation TestMoreViewController3
@synthesize recorddict;
@synthesize moretestdict;
NSString *classfname;


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

int a;
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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
-(IBAction)next:(id)sender{
   // recorddict=[[NSMutableDictionary alloc]init];

    if(button1.selected){
        
        [recorddict setValue:@"Homans' Sign" forKey:@"homans"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"homans"];
    }
    if(button2.selected){
        
        [recorddict setValue:@"Anterior Drawer Test" forKey:@"anteriorh"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"anteriorh"];
    }
    
    if(button3.selected){
        
        [recorddict setValue:@"Talar Tilt Test (Inversion)" forKey:@"talarinversion"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"talarinversion"];
    }
    
    if(button4.selected){
        
        [recorddict setValue:@"Talar Tilt Test (Eversion)" forKey:@"talareversion"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"talareversion"];
    }
    
    if(button5.selected){
        
        [recorddict setValue:@"Thompson Test" forKey:@"thompson"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"thompson"];
    }
    
    if(button6.selected){
        
        [recorddict setValue:@"Tap or Percussion Test" forKey:@"tap"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"tap"];
    }
    
    if(button7.selected){
        
        [recorddict setValue:@"Feiss Line 30" forKey:@"feiss"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"feiss"];
    }
    
    if(button8.selected){
        
        [recorddict setValue:@"Interdigital Neuroma Test" forKey:@"interdigital"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"interdigital"];
    }
    
    if(button9.selected){
        
        [recorddict setValue:@"Compression Test" forKey:@"compressiontest"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"compressiontest"];
    }
    if(button10.selected){
        
        [recorddict setValue:@"Long Bone Compression Test" forKey:@"longbone"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"longbone"];
    }

    if(button11.selected){
        
        [recorddict setValue:@"Swing Test" forKey:@"swingtest"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"swingtest"];
    }
    if(button12.selected){
        
        [recorddict setValue:@"Kleiger's Test" forKey:@"kleiger"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"kleiger"];
    }
    
    if(button13.selected){
        
        [recorddict setValue:@"Tinel's Sign" forKey:@"tinelsignk"];
    }
    else{
        [recorddict setValue:@"null" forKey:@"tinelsignk"];
    }
    a=1;
    
  //  [self performSegueWithIdentifier:@"moretest3" sender:self];
    NSLog(@"recoed dict in final:::%@",recorddict);
    NSLog(@"size of record dict in final:::%d",[recorddict count]);
    HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
    HUD.mode=MBProgressHUDModeIndeterminate;
    HUD.delegate = self;
    HUD.labelText = @"Submitting";
    [HUD show:YES];
    //        [self updatedata];
    if ([[self submitvalues]isEqualToString:@"success"])
    {
        [self insertdata];
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
    NSString *response=[self HttpPostEntityFirst1:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"moretest Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle
                                                               description:@"Form submission successful."
                                                                      type:TWMessageBarMessageTypeSuccess
                                                            statusBarStyle:UIStatusBarStyleDefault
                                                                  callback:nil];
                
               
                classfname=[moretestdict objectForKey:@"fromclass"];
                if([classfname isEqualToString:@"hamil2ViewController"])
                {
                    for (id controller in [self.navigationController viewControllers])
                    {
                        if ([controller isKindOfClass:[hamil2ViewController class]])
                        {
                            [self.navigationController popToViewController:controller animated:YES];
                            break;
                        }
                    }
                    
                    
                }
                if([classfname isEqualToString:@"hamil3ViewController"])
                {
                    for (id controller in [self.navigationController viewControllers])
                    {
                        if ([controller isKindOfClass:[hamil3ViewController class]])
                        {
                            [self.navigationController popToViewController:controller animated:YES];
                            break;
                        }
                    }
                    
                    
                }
                if([classfname isEqualToString:@"hamil4ViewController"])
                {
                    for (id controller in [self.navigationController viewControllers])
                    {
                        if ([controller isKindOfClass:[hamil4ViewController class]])
                        {
                            [self.navigationController popToViewController:controller animated:YES];
                            break;
                        }
                    }
                    
                    
                }
                if([classfname isEqualToString:@"hamil5ViewController"])
                {
                    for (id controller in [self.navigationController viewControllers])
                    {
                        if ([controller isKindOfClass:[hamil5ViewController class]])
                        {
                            [self.navigationController popToViewController:controller animated:YES];
                            break;
                        }
                    }
                    
                    
                }
              //  [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Form submission failed."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];

                
               
                
                classfname=[moretestdict objectForKey:@"fromclass"];
                if([classfname isEqualToString:@"hamil2ViewController"])
                {
                    for (id controller in [self.navigationController viewControllers])
                    {
                        if ([controller isKindOfClass:[hamil2ViewController class]])
                        {
                            [self.navigationController popToViewController:controller animated:YES];
                            break;
                        }
                    }
                    
                    
                }
                if([classfname isEqualToString:@"hamil3ViewController"])
                {
                    for (id controller in [self.navigationController viewControllers])
                    {
                        if ([controller isKindOfClass:[hamil3ViewController class]])
                        {
                            [self.navigationController popToViewController:controller animated:YES];
                            break;
                        }
                    }
                    
                    
                }
                if([classfname isEqualToString:@"hamil4ViewController"])
                {
                    for (id controller in [self.navigationController viewControllers])
                    {
                        if ([controller isKindOfClass:[hamil4ViewController class]])
                        {
                            [self.navigationController popToViewController:controller animated:YES];
                            break;
                        }
                    }
                    
                    
                }
                if([classfname isEqualToString:@"hamil5ViewController"])
                {
                    for (id controller in [self.navigationController viewControllers])
                    {
                        if ([controller isKindOfClass:[hamil5ViewController class]])
                        {
                            [self.navigationController popToViewController:controller animated:YES];
                            break;
                        }
                    }
                    
                    
                }
                //[self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
                
                
            }
        }
    }
    
}
-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"MoreTests.php?service=moretestinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    NSLog(@"values in record dictionaries::%@",recorddict);
    // NSLog(@"recorddict values::%@",recorddict);
    NSLog(@"value of georges si:%@",[recorddict objectForKey:@"L_hyper"]);
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&emptycan=%@&yergason=%@&speed=%@&ludington=%@&droparm=%@&apley=%@&crossover=%@&neerimpingement=%@&hawkinskennedy=%@&sternoclavicular=%@&acjdtest=%@&acjctest=%@&piano=%@&apprehensiona=%@&apprehensionp=%@&sulcus=%@&anterior=%@&posterior=%@&jobe=%@&feagin=%@&loadshift=%@&grind=%@&clunk=%@&obrien=%@&brachial=%@&shoulder=%@&adson=%@&allen=%@&roos=%@&military=%@&pectoralis=%@&chvostek=%@&loadingtest=%@&palpation=%@&vertebral=%@&foraminalct=%@&foraminaldt=%@&valsalva=%@&swallowing=%@&tinelsign=%@&cozen=%@&resistive=%@&passive=%@&golfer=%@&hyperextension=%@&elbowflexion=%@&varus=%@&valgus=%@&tinel=%@&pinchgrip=%@&percussion=%@&compression=%@&longfinger=%@&finkelstein=%@&phalen=%@&tinelp=%@&froment=%@&wrinkle=%@&digital=%@&bunnel=%@&murphy=%@&watson=%@&valgusst=%@&varusst=%@&selectionvi=%@&kernig=%@&lateral=%@&anteriorl=%@&inspiration=%@&kernigt=%@&lateralt=%@&anteriort=%@&inspirationt=%@&valsalvat=%@&stoop=%@&hoover=%@&kernigl=%@&straight=%@&bowstring=%@&sitting=%@&unilateral=%@&bilateral=%@&wellstraight=%@&slump=%@&thomas=%@&spring=%@&trendelenburg=%@&stork=%@&sijft=%@&gillet=%@&sijst=%@&squish=%@&yeoman=%@&gaenslen=%@&patrick=%@&longsitting=%@&hipscouring=%@&nelaton=%@&craig=%@&straightc=%@&fabertest=%@&trendelenburgf=%@&ober=%@&piriformis=%@&thomasp=%@&trueleg=%@&",firstEntity,value1,[recorddict objectForKey:@"emptycan"],[recorddict objectForKey:@"yergason"],[recorddict objectForKey:@"speed"],[recorddict objectForKey:@"ludington"],[recorddict objectForKey:@"droparm"],[recorddict objectForKey:@"apley"],[recorddict objectForKey:@"crossover"],[recorddict objectForKey:@"neerimpingement"],[recorddict objectForKey:@"hawkinskennedy"],[recorddict objectForKey:@"sternoclavicular"],[recorddict objectForKey:@"acjdtest"],[recorddict objectForKey:@"acjctest"],[recorddict objectForKey:@"piano"],[recorddict objectForKey:@"apprehensiona"],[recorddict objectForKey:@"apprehensionp"],[recorddict objectForKey:@"sulcus"],[recorddict objectForKey:@"anterior"],[recorddict objectForKey:@"posterior"],[recorddict objectForKey:@"jobe"],[recorddict objectForKey:@"feagin"],[recorddict objectForKey:@"loadshift"],[recorddict objectForKey:@"grind"],[recorddict objectForKey:@"clunk"],[recorddict objectForKey:@"obrien"],[recorddict objectForKey:@"brachial"],[recorddict objectForKey:@"shoulder"],[recorddict objectForKey:@"adson"],[recorddict objectForKey:@"allen"],[recorddict objectForKey:@"roos"],[recorddict objectForKey:@"military"],[recorddict objectForKey:@"pectoralis"],[recorddict objectForKey:@"chvostek"],[recorddict objectForKey:@"loadingtest"],[recorddict objectForKey:@"palpation"],[recorddict objectForKey:@"vertebral"],[recorddict objectForKey:@"foraminalct"],[recorddict objectForKey:@"foraminaldt"],[recorddict objectForKey:@"valsalva"],[recorddict objectForKey:@"swallowing"],[recorddict objectForKey:@"tinelsign"],[recorddict objectForKey:@"cozen"],[recorddict objectForKey:@"resistive"],[recorddict objectForKey:@"passive"],[recorddict objectForKey:@"golfer"],[recorddict objectForKey:@"hyperextension"],[recorddict objectForKey:@"elbowflexion"],[recorddict objectForKey:@"varus"],[recorddict objectForKey:@"valgus"],[recorddict objectForKey:@"tinel"],[recorddict objectForKey:@"pinchgrip"],[recorddict objectForKey:@"percussion"],[recorddict objectForKey:@"compression"],[recorddict objectForKey:@"longfinger"],[recorddict objectForKey:@"finkelstein"],[recorddict objectForKey:@"phalen"],[recorddict objectForKey:@"tinelp"],[recorddict objectForKey:@"froment"],[recorddict objectForKey:@"wrinkle"],[recorddict objectForKey:@"digital"],[recorddict objectForKey:@"bunnel"],[recorddict objectForKey:@"murphy"],[recorddict objectForKey:@"watson"],[recorddict objectForKey:@"valgusst"],[recorddict objectForKey:@"varusst"],[recorddict objectForKey:@"selectionvi"],[recorddict objectForKey:@"kernig"],[recorddict objectForKey:@"lateral"],[recorddict objectForKey:@"anteriorl"],[recorddict objectForKey:@"inspiration"],[recorddict objectForKey:@"kernigt"],[recorddict objectForKey:@"lateralt"],[recorddict objectForKey:@"anteriort"],[recorddict objectForKey:@"inspirationt"],[recorddict objectForKey:@"valsalvat"],[recorddict objectForKey:@"stoop"],[recorddict objectForKey:@"hoover"],[recorddict objectForKey:@"kernigl"],[recorddict objectForKey:@"straight"],[recorddict objectForKey:@"bowstring"],[recorddict objectForKey:@"sitting"],[recorddict objectForKey:@"unilateral"],[recorddict objectForKey:@"bilateral"],[recorddict objectForKey:@"wellstraight"],[recorddict objectForKey:@"slump"],[recorddict objectForKey:@"thomas"],[recorddict objectForKey:@"spring"],[recorddict objectForKey:@"trendelenburg"],[recorddict objectForKey:@"stork"],[recorddict objectForKey:@"sijft"],[recorddict objectForKey:@"gillet"],[recorddict objectForKey:@"sijst"],[recorddict objectForKey:@"squish"],[recorddict objectForKey:@"yeoman"],[recorddict objectForKey:@"gaenslen"],[recorddict objectForKey:@"patrick"],[recorddict objectForKey:@"longsitting"],[recorddict objectForKey:@"hipscouring"],[recorddict objectForKey:@"nelaton"],[recorddict objectForKey:@"craig"],[recorddict objectForKey:@"straightc"],[recorddict objectForKey:@"fabertest"],[recorddict objectForKey:@"trendelenburgf"],[recorddict objectForKey:@"ober"],[recorddict objectForKey:@"piriformis"],[recorddict objectForKey:@"thomasp"],[recorddict objectForKey:@"trueleg"]];
    
    NSString *post1=[[NSString alloc] initWithFormat:@"apparentleg=%@&ely=%@&tripod=%@&femoral=%@&patella=%@&patellarp=%@&ballotable=%@&sweep=%@&quadriceps=%@&medial=%@&bounce=%@&patellar=%@&renne=%@&noble=%@&hughston=%@&godfrey=%@&posteriorg=%@&reverse=%@&anteriorlt=%@&anteriordt=%@&slocuminternal=%@&slocumexternal=%@&pivot=%@&jerk=%@&posteriordt=%@&hughstonposteromedial=%@&hughstonposterolateral=%@&posteriorlt=%@&externalrotation=%@&valgusstt=%@&varusstt=%@&mcmurray=%@&apleyct=%@&steinmann=%@&rectus=%@&homans=%@&anteriorh=%@&talarinversion=%@&talareversion=%@&thompson=%@&tap=%@&feiss=%@&interdigital=%@&compressiontest=%@&longbone=%@&swingtest=%@&kleiger=%@&tinelsignk=%@&%@=%@",[recorddict objectForKey:@"apparentleg"],[recorddict objectForKey:@"ely"],[recorddict objectForKey:@"tripod"],[recorddict objectForKey:@"femoral"],[recorddict objectForKey:@"patella"],[recorddict objectForKey:@"patellarp"],[recorddict objectForKey:@"ballotable"],[recorddict objectForKey:@"sweep"],[recorddict objectForKey:@"quadriceps"],[recorddict objectForKey:@"medial"],[recorddict objectForKey:@"bounce"],[recorddict objectForKey:@"patellar"],[recorddict objectForKey:@"renne"],[recorddict objectForKey:@"noble"],[recorddict objectForKey:@"hughston"],[recorddict objectForKey:@"godfrey"],[recorddict objectForKey:@"posteriorg"],[recorddict objectForKey:@"reverse"],[recorddict objectForKey:@"anteriorlt"],[recorddict objectForKey:@"anteriordt"],[recorddict objectForKey:@"slocuminternal"],[recorddict objectForKey:@"slocumexternal"],[recorddict objectForKey:@"pivot"],[recorddict objectForKey:@"jerk"],[recorddict objectForKey:@"posteriordt"],[recorddict objectForKey:@"hughstonposteromedial"],[recorddict objectForKey:@"hughstonposterolateral"],[recorddict objectForKey:@"posteriorlt"],[recorddict objectForKey:@"externalrotation"],[recorddict objectForKey:@"valgusstt"],[recorddict objectForKey:@"varusstt"],[recorddict objectForKey:@"mcmurray"],[recorddict objectForKey:@"apleyct"],[recorddict objectForKey:@"steinmann"],[recorddict objectForKey:@"rectus"],[recorddict objectForKey:@"homans"],[recorddict objectForKey:@"anteriorh"],[recorddict objectForKey:@"talarinversion"],[recorddict objectForKey:@"talareversion"],[recorddict objectForKey:@"thompson"],[recorddict objectForKey:@"tap"],[recorddict objectForKey:@"feiss"],[recorddict objectForKey:@"interdigital"],[recorddict objectForKey:@"compressiontest"],[recorddict objectForKey:@"longbone"],[recorddict objectForKey:@"swingtest"],[recorddict objectForKey:@"kleiger"],[recorddict objectForKey:@"tinelsignk"],secondEntity,value2];
    
    NSString *str = [NSString stringWithFormat: @"%@%@", post, post1];
   // NSLog(@"POST:%@",str);
    //[recorddict objectForKey:@"ml4left"],[recorddict objectForKey:@"Physician signature"]
    NSURL *url = [NSURL URLWithString:url2];
    
    //NSLog(post);
    
    NSData *postData = [str dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
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


- (IBAction)cancel:(id)sender {
    classfname=[moretestdict objectForKey:@"fromclass"];
    if([classfname isEqualToString:@"hamil2ViewController"])
    {
        for (id controller in [self.navigationController viewControllers])
        {
            if ([controller isKindOfClass:[hamil2ViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
        
        
    }
    if([classfname isEqualToString:@"hamil3ViewController"])
    {
        for (id controller in [self.navigationController viewControllers])
        {
            if ([controller isKindOfClass:[hamil3ViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
        
        
    }
    if([classfname isEqualToString:@"hamil4ViewController"])
    {
        for (id controller in [self.navigationController viewControllers])
        {
            if ([controller isKindOfClass:[hamil4ViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
        
        
    }
    if([classfname isEqualToString:@"hamil5ViewController"])
    {
        for (id controller in [self.navigationController viewControllers])
        {
            if ([controller isKindOfClass:[hamil5ViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
        
        
    }

  // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
  //  [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)reset:(id)sender {
    button1.selected=NO;
    button2.selected=NO;
    button3.selected=NO;
    button4.selected=NO;
    button5.selected=NO;
    button6.selected=NO;
    button7.selected=NO;
    button8.selected=NO;
    button9.selected=NO;
    button10.selected=NO;
    button11.selected=NO;
    button12.selected=NO;
    button13.selected=NO;
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
    
}

@end
