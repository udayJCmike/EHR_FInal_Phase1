//
//  lowbackdisability2ViewController.m
//  lowbackdisability
//
//  Created by DeemsysInc on 3/6/14.
//  Copyright (c) 2014 DeemsysInc. All rights reserved.
//

#import "lowbackdisability2ViewController.h"
#import "JSON.h"
#import "Reachability.h"
#import "databaseurl.h"
#import "QuadrupleVisualAnalogueScale.h"

@interface lowbackdisability2ViewController ()

@end

@implementation lowbackdisability2ViewController
@synthesize recorddict;
@synthesize sec101;
@synthesize sec102;
@synthesize sec103;
@synthesize sec104;
@synthesize sec105;
@synthesize sec106;
@synthesize comments;
@synthesize save;
@synthesize calculate;
@synthesize resultset;
@synthesize update;
@synthesize reset1;
@synthesize reset2;
@synthesize deleteform;
@synthesize submit;
@synthesize cancel1;
@synthesize cancel2;
@synthesize disab;

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
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)first:(id)sender {
    
    val10=@"0";
    clicked1=1;
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
    noofattend=noofattend1+1;
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    
    
}
- (IBAction)second:(id)sender {
    val10=@"1";
    clicked1=1;
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
    noofattend=noofattend1+1;
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
}
- (IBAction)third:(id)sender {
    val10=@"2";
    clicked1=1;
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
    noofattend=noofattend1+1;
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    
}
- (IBAction)fourth:(id)sender {
    val10=@"3";
    clicked1=1;
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
    noofattend=noofattend1+1;
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    
}
- (IBAction)fifth:(id)sender {
    val10=@"4";
    clicked1=1;
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
    noofattend=noofattend1+1;
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    
    
}
-(IBAction)sixth:(id)sender {
    val10=@"5";
    clicked1=1;
    [sec106 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    noofattend=noofattend1+1;
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    
    
}

- (IBAction)disact:(id)sender
{
    int t;
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    if(result>0)
    {
        t=(aa+bb+cc)*2;
    result1=noofattend*10;
    exe=(float)(t)/(float)(result1);
    NSLog(@"exe val %f",exe);
    
    if (exe) {
        NSLog(@"nan exe val %f",exe);
        disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    }
    else
    {
        exe=0.000000;
    }
    }
    else
    {
         exe=0.000000;
    }
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
    [recorddict setValue:[NSString stringWithFormat:@"%d",t] forKey:@"part1"];
    [recorddict setValue:[NSString stringWithFormat:@"%d",result1] forKey:@"part2"];
    [recorddict setValue:[NSString stringWithFormat:@"%f",exe] forKey:@"result"];
    [recorddict setValue:[NSString stringWithFormat:@"%d",noofattend] forKey:@"sections"];
    [recorddict setValue:[NSString stringWithFormat:@"%d",result] forKey:@"totalscore"];
}

- (IBAction)save:(id)sender
{
    //    move=0;
    
    //    NSString *temp1=[[comments.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    //if ((temp1.length>0)&&([self validateNames:temp1]==1))
    {
        move=1;
        NSNumber *a=[recorddict objectForKey:@"total1"];
        NSNumber* b=[recorddict objectForKey:@"total2"];
        aa=[a intValue];
        bb=[b intValue];
        cc=[val10 intValue];
        result=aa+bb+cc;
        int t;
        if(result>0)
        {
            t=(aa+bb+cc)*2;
            result1=noofattend*10;
            exe=(float)(t)/(float)(result1);
            //NSLog(@"exe val %f",exe);
            
            if (exe) {
                //NSLog(@"nan exe val %f",exe);
                disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
            }
            else
            {
                exe=0.000000;
            }
        }
        else
        {
            exe=0.000000;
        }

        
        [recorddict setValue:[NSString stringWithFormat:@"%f",exe] forKey:@"result"];
        [recorddict setValue:[NSString stringWithFormat:@"%d",noofattend] forKey:@"sections"];
        [recorddict setValue:[NSString stringWithFormat:@"%d",result] forKey:@"totalscore"];
        [recorddict setValue:comments.text forKey:@"comments"];
        [recorddict setValue:val10 forKey:@"sec10"];
        
        
        //NSLog(@"recorddict %@",recorddict);
        
    }
    /*else
     {
     move=0;
     BlockAlertView *alert=[[BlockAlertView alloc]initWithTitle:@"Oh snap!" message:@"Enter valid comments"];
     [alert setDestructiveButtonWithTitle:@"x" block:nil];
     [alert show];
     
     }*/
    if (move==1)
    {
        UIButton *buton=(UIButton*)sender;
        if(buton.tag==12)
        {
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
        else  if(buton.tag==14)
        {
            HUD = [MBProgressHUD showHUDAddedTo:self.view  animated:YES];
            HUD.mode=MBProgressHUDModeIndeterminate;
            HUD.delegate = self;
            HUD.labelText = @"Submitting";
            [HUD show:YES];
            //                  [self insertdata];
            if ([[self submitvalues]isEqualToString:@"success"]) {
                [self updatedata];
                
            }
            
            
            
            
            
        }
        
    }
    else
    {
        NULL;
    }
    
    
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"Lowback Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form updation successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                // [self performSegueWithIdentifier:@"lowbacktoquad" sender:self];
                [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form updation failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                // [self performSegueWithIdentifier:@"lowbacktoquad" sender:self];
                [self cancel:self];
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
- (IBAction)deleteaction:(id)sender
{
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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"Lowback Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form deletion successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                    // [self performSegueWithIdentifier:@"lowbacktoquad" sender:self];
                    [self cancel:self];
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form deletion failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    // [self performSegueWithIdentifier:@"lowbacktoquad" sender:self];
                    [self cancel:self];
                }
            }
        }
        
    }
    
}

-(void)insertdata
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"Lowback Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form submission successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                // [self performSegueWithIdentifier:@"lowbacktoquad" sender:self];
                [self cancel:self];
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form submission failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                // [self performSegueWithIdentifier:@"lowbacktoquad" sender:self];
                [self cancel:self];
            }
        }
    }
    
}


-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"LowbackDisability.php?service=lowbackinsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&pname=%@&date=%@&tolerate=%@&withoutpain=%@&withoutcausingpain=%@&sleepingwell=%@&canlift=%@&normal=%@&walkingdistance=%@&withoutextrapain=%@&cansit=%@&rapidlybetter=%@&score=%@&section=%@&adl=%@&adl2=%@&comment=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"symptomtext"],[recorddict objectForKey:@"patient name"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"sec1"],[recorddict objectForKey:@"sec2"],[recorddict objectForKey:@"sec3"],[recorddict objectForKey:@"sec4"],[recorddict objectForKey:@"sec5"],[recorddict objectForKey:@"sec6"],[recorddict objectForKey:@"sec7"],[recorddict objectForKey:@"sec8"],[recorddict objectForKey:@"sec9"],[recorddict objectForKey:@"sec10"],[recorddict objectForKey:@"totalscore"],[recorddict objectForKey:@"sections"],[recorddict objectForKey:@"result"],@"",comments.text,secondEntity,value2];
    
    NSLog(@"POST:%@",post);
    
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
    NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostEntityFirst1update:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"LowbackDisability.php?service=lowbackedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&pname=%@&date=%@&tolerate=%@&withoutpain=%@&withoutcausingpain=%@&sleepingwell=%@&canlift=%@&normal=%@&walkingdistance=%@&withoutextrapain=%@&cansit=%@&rapidlybetter=%@&score=%@&section=%@&adl=%@&adl2=%@&comment=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"symptomtext"],[recorddict objectForKey:@"patient name"],[recorddict objectForKey:@"date"],[recorddict objectForKey:@"sec1"],[recorddict objectForKey:@"sec2"],[recorddict objectForKey:@"sec3"],[recorddict objectForKey:@"sec4"],[recorddict objectForKey:@"sec5"],[recorddict objectForKey:@"sec6"],[recorddict objectForKey:@"sec7"],[recorddict objectForKey:@"sec8"],[recorddict objectForKey:@"sec9"],[recorddict objectForKey:@"sec10"],[recorddict objectForKey:@"totalscore"],[recorddict objectForKey:@"sections"],[recorddict objectForKey:@"result"],@"",comments.text,secondEntity,value2];
    
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
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"LowbackDisability.php?service=lowbackdelete";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&symptom=%@&%@=%@",firstEntity,value1,[recorddict objectForKey:@"symptomtext"],secondEntity,value2];
    
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


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    val10=@"null";
    noofattend1=0;
    noofattend=0;
    [self initialset];  //set no of questions answered and disability patient score values
    update.hidden=YES;
    deleteform.hidden=YES;
    reset2.hidden=YES;
    submit.hidden=NO;
    reset1.hidden=NO;
    cancel2.hidden=YES;
    cancel1.hidden=NO;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self displaydata];
	// Do any additional setup after loading the view.
}
-(void)dismissKeyboard

{
    [comments resignFirstResponder];
}
-(void)initialset
{
    if ([[recorddict objectForKey:@"ssec1"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec2"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec3"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec4"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec5"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec6"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec7"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec8"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    if ([[recorddict objectForKey:@"ssec9"]isEqualToString:@"selected"])
    {
        noofattend1+=1;
    }
    noofattend=noofattend1;
    exe=0;
    NSNumber *a=[recorddict objectForKey:@"total1"];
    NSNumber* b=[recorddict objectForKey:@"total2"];
    clicked1=0;
    aa=[a intValue];
    bb=[b intValue];
    cc=[val10 intValue];
    result=aa+bb+cc;
    disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend1,exe];
}
-(void)displaydata
{
    
    if ([resultset count]>0) {
        update.hidden=NO;
        deleteform.hidden=NO;
        reset2.hidden=NO;
        submit.hidden=YES;
        reset1.hidden=YES;
        cancel1.hidden=YES;
        cancel2.hidden=NO;
        
        
        comments.text=[resultset objectForKey:@"comment"];
        
        
        if ([[resultset objectForKey:@"rapidlybetter"]isEqualToString:@"0"])
        {
            [self first:nil];
        }
        else if ([[resultset objectForKey:@"rapidlybetter"]isEqualToString:@"1"])
        {
            [self second:nil];
        }
        else if ([[resultset objectForKey:@"rapidlybetter"]isEqualToString:@"2"])
        {
            [self third:nil];
            
        }
        else if ([[resultset objectForKey:@"rapidlybetter"]isEqualToString:@"3"])
        {
            [self fourth:nil];
        }
        else if ([[resultset objectForKey:@"rapidlybetter"]isEqualToString:@"4"])
        {
            [self fifth:nil];
        }
        else if ([[resultset objectForKey:@"rapidlybetter"]isEqualToString:@"5"])
        {
            [self sixth:nil];
        }
        result=[[resultset objectForKey:@"score"]intValue];
        noofattend=[[resultset objectForKey:@"section"]intValue];
        exe=[[resultset objectForKey:@"adl"]floatValue];
        disab.text=[NSString stringWithFormat:@"( %d * 2) / ( %d * 10 ) = %f %% ADL ",result,noofattend,exe];
        
    }
    
    
}
- (IBAction)reset:(id)sender
{
    val10=@"null";
    
    comments.text=@"";
    if (clicked1==1) {
        clicked1=0;
        noofattend--;
    }
    [sec105 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec101 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec102 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec104 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec103 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [sec106 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [self initialset];
}
-(IBAction)cancel:(id)sender
{
    // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
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

- (void)dealloc {
    [cancel1 release];
    [cancel2 release];
    [super dealloc];
}
@end
