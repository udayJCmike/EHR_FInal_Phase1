//
//  HipKneeViewController.m
//  HipKneeQuestionnaire
//
//  Created by deemsys on 3/4/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "HipKneeViewController.h"
#import "HipKneeViewController1.h"
#import "Reachability.h"
#import "MBProgressHUD.h"
#import "databaseurl.h"
#import "JSON.h"
#import "staffautocheckViewController.h"
@interface HipKneeViewController ()

@end

@implementation HipKneeViewController
@synthesize recorddict;
@synthesize resultset;
@synthesize reset;
@synthesize cancel;
@synthesize staff;

- (void)viewDidLoad
{
    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    texty1=@"null";
    texty2=@"null";
    texty3=@"null";
    texty4=@"null";
    texty5=@"null";
    texty6=@"null";
    
    recorddict=[[NSMutableDictionary alloc]init];
    resultset=[[NSMutableDictionary alloc]init];
    [super viewDidLoad];
    [self Getdata];
	// Do any additional setup after loading the view, typically from a nib.
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"HipKneeQuestionnaire.php?service=hipkneeselect";
    
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

-(void)Getdata
{
    //    to read whether participant already submitted the data or not
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
    NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
    NSError *error;
    SBJSON *json = [[SBJSON new] autorelease];
    // NSLog(@"response %@",resultResponse);
	NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
    NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
    NSArray *items1App=[itemsApp objectForKey:@"hipkneeuser List"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    //   NSLog(@"items1app %d",[items1App count]);
    
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            //        NSLog(@"arraylist count %d",[arrayList1 count]);
            temp=[arrayList1 objectForKey:@"hipquestionno"];
            temp1 =[arrayList1 objectForKey:@"username"];
            temp2 =[arrayList1 objectForKey:@"stiff"];
            temp3 =[arrayList1 objectForKey:@"swollen"];
            temp4 =[arrayList1 objectForKey:@"flatrighthip"];
            
            temp6=[arrayList1 objectForKey:@"flatlefthip"];
            temp7=[arrayList1 objectForKey:@"flatrightknee"];
            temp8=[arrayList1 objectForKey:@"flatleftknee"];
            temp9=[arrayList1 objectForKey:@"stairsrighthip"];
            temp10=[arrayList1 objectForKey:@"stairslefthip"];
            temp11=[arrayList1 objectForKey:@"stairsrightknee"];
            temp12=[arrayList1 objectForKey:@"stairsleftknee"];
            temp13=[arrayList1 objectForKey:@"bedrighthip"];
            temp14=[arrayList1 objectForKey:@"bedlefthip"];
            temp15=[arrayList1 objectForKey:@"bedrightknee"];
            temp16=[arrayList1 objectForKey:@"bedleftknee"];
            temp17=[arrayList1 objectForKey:@"best"];
            temp18=[arrayList1 objectForKey:@"socks"];
            temp19=[arrayList1 objectForKey:@"date"];
            
            temp20=[arrayList1 objectForKey:@"birthdate"];
            temp21=[arrayList1 objectForKey:@"security"];
            
            
            [self setdatas];//set database values
            
            [resultset setObject:temp9  forKey:@"stairsrighthip"];
            [resultset setObject:temp10  forKey:@"stairslefthip"];
            [resultset setObject:temp11  forKey:@"stairsrightknee"];
            [resultset setObject:temp12  forKey:@"stairsleftknee"];
            [resultset setObject:temp13  forKey:@"bedrighthip"];
            [resultset setObject:temp14  forKey:@"bedlefthip"];
            [resultset setObject:temp15  forKey:@"bedrightknee"];
            [resultset setObject:temp16  forKey:@"bedleftknee"];
            [resultset setObject:temp17  forKey:@"best"];
            [resultset setObject:temp18  forKey:@"socks"];
            [resultset setObject:temp19  forKey:@"date"];
            [resultset setObject:temp20  forKey:@"birthdate"];
            [resultset setObject:temp21  forKey:@"security"];
            //            NSLog(@"result esr %@",resultset);
            
            
            
            
            
            
            
        }
        [[NSUserDefaults standardUserDefaults]setObject:@"Datas read" forKey:@"status"];
        //         NSLog(@"temp ===%@,temp1==%@,temp2===%@,temp3===%@",temp,temp1,temp2,temp3);
    }
    else
    {
        [[NSUserDefaults standardUserDefaults]setObject:@"Datas not read" forKey:@"status"];
    }
    [[NSUserDefaults standardUserDefaults]synchronize];
    
}
-(void)setdatas
{
    
    if ([temp2 length]>0)
    {
        if ([temp2 isEqualToString:@"Not at all"])
        {
            [seg1 setSelectedSegmentIndex:0];
            texty1=@"Not at all";
            
            
        }
        else if ([temp2 isEqualToString:@"Mildly"]) {
            [seg1 setSelectedSegmentIndex:1];
            texty1=@"Mildly";
            
        }
        else if ([temp2 isEqualToString:@"Moderately"])
        {
            [seg1 setSelectedSegmentIndex:2];
            texty1=@"Moderately";
            
        }
        else if ([temp2 isEqualToString:@"Very"]) {
            [seg1 setSelectedSegmentIndex:3];
            texty1=@"Very";
            
        }
        else if ([temp2 isEqualToString:@"Extremely"]) {
            [seg1 setSelectedSegmentIndex:4];
            texty1=@"Extremely";
        }
        else {
            //no matches found
        }
        
    }
    else
    {
        //no value for segment 1
    }
    
    if ([temp3 length]>0)
    {
        if ([temp3 isEqualToString:@"Not at all"])
        {
            [seg2 setSelectedSegmentIndex:0];
            texty2=@"Not at all";
        }
        else if ([temp3 isEqualToString:@"Mildly"]) {
            [seg2 setSelectedSegmentIndex:1];
            texty2=@"Mildly";
            
            
            
        }
        else if ([temp3 isEqualToString:@"Moderately"])
        {
            [seg2 setSelectedSegmentIndex:2];
            texty2=@"Moderately";
            
            
        }
        else if ([temp3 isEqualToString:@"Very"]) {
            [seg2 setSelectedSegmentIndex:3];
            texty2=@"Very";
        }
        else if ([temp3 isEqualToString:@"Extremely"]) {
            [seg2 setSelectedSegmentIndex:4];
            texty2=@"Extremely";
            
        }
        else {
            //no matches found
        }
        
    }
    else
    {
        //no value for segment
    }
    
    if ([temp4 length]>0)
    {
        if ([temp4 isEqualToString:@"1"])
        {
            [seg3 setSelectedSegmentIndex:0];
            texty3=@"1";
            
            
            
        }
        else if ([temp4 isEqualToString:@"2"]) {
            [seg3 setSelectedSegmentIndex:1];
            texty3=@"2";
            
        }
        else if ([temp4 isEqualToString:@"3"])
        {
            [seg3 setSelectedSegmentIndex:2];
            texty3=@"3";
        }
        else if ([temp4 isEqualToString:@"4"]) {
            [seg3 setSelectedSegmentIndex:3];
            texty3=@"4";
        }
        else if ([temp4 isEqualToString:@"5"]) {
            [seg3 setSelectedSegmentIndex:4];
            texty3=@"5";
        }
        else if ([temp4 isEqualToString:@"6"]) {
            [seg3 setSelectedSegmentIndex:5];
            texty3=@"6";
        }
        else if ([temp4 isEqualToString:@"7"]) {
            [seg3 setSelectedSegmentIndex:6];
            texty3=@"7";
        }
        else
        {
            //no matches found
        }
        
        
    }
    else
    {
        //no value for segment
    }
    if ([temp6 length]>0)
    {
        if ([temp6 isEqualToString:@"1"])
        {
            [seg4 setSelectedSegmentIndex:0];
            texty4=@"1";
            
        }
        else if ([temp6 isEqualToString:@"2"]) {
            [seg4 setSelectedSegmentIndex:1];
            texty4=@"2";
        }
        else if ([temp6 isEqualToString:@"3"])
        {
            [seg4 setSelectedSegmentIndex:2];
            texty4=@"3";
            
        }
        else if ([temp6 isEqualToString:@"4"]) {
            [seg4 setSelectedSegmentIndex:3];
            texty4=@"4";
        }
        else if ([temp6 isEqualToString:@"5"]) {
            [seg4 setSelectedSegmentIndex:4];
            texty4=@"5";
        }
        else if ([temp6 isEqualToString:@"6"]) {
            [seg4 setSelectedSegmentIndex:5];
            texty4=@"6";
        }
        else if ([temp6 isEqualToString:@"7"]) {
            [seg4 setSelectedSegmentIndex:6];
            texty4=@"7";
        }
        else
        {
            //no matches found
        }
        
        
    }
    else
    {
        //no value for segment
    }
    if ([temp7 length]>0)
    {
        if ([temp7 isEqualToString:@"1"])
        {
            [seg5 setSelectedSegmentIndex:0];
            texty5=@"1";
            
        }
        else if ([temp7 isEqualToString:@"2"]) {
            [seg5 setSelectedSegmentIndex:1];
            texty5=@"2";
        }
        else if ([temp7 isEqualToString:@"3"])
        {
            texty5=@"3";
            [seg5 setSelectedSegmentIndex:2];
            
        }
        else if ([temp7 isEqualToString:@"4"])
        {
            texty5=@"4";
            [seg5 setSelectedSegmentIndex:3];
        }
        else if ([temp7 isEqualToString:@"5"]) {
            [seg5 setSelectedSegmentIndex:4];
            texty5=@"5";
        }
        else if ([temp7 isEqualToString:@"6"]) {
            [seg5 setSelectedSegmentIndex:5];
            
            texty5=@"6";
        }
        else if ([temp7 isEqualToString:@"7"]) {
            [seg5 setSelectedSegmentIndex:6];
            texty5=@"7";
        }
        else
        {
            //no matches found
        }
        
        
    }
    else
    {
        //no value for segment
    }
    
    if ([temp8 length]>0)
    {
        if ([temp8 isEqualToString:@"1"])
        {
            [seg6 setSelectedSegmentIndex:0];
            texty6=@"1";
            
        }
        else if ([temp8 isEqualToString:@"2"]) {
            texty6=@"2";
            [seg6 setSelectedSegmentIndex:1];
        }
        else if ([temp8 isEqualToString:@"3"])
        {
            texty6=@"3";
            [seg6 setSelectedSegmentIndex:2];
            
        }
        else if ([temp8 isEqualToString:@"4"])
        {
            texty6=@"4";
            [seg6 setSelectedSegmentIndex:3];
        }
        else if ([temp8 isEqualToString:@"5"])
        {
            texty6=@"5";
            [seg6 setSelectedSegmentIndex:4];
        }
        else if ([temp8 isEqualToString:@"6"])
        {
            texty6=@"6";
            [seg6 setSelectedSegmentIndex:5];
        }
        else if ([temp8 isEqualToString:@"7"])
        {
            texty6=@"7";
            [seg6 setSelectedSegmentIndex:6];
        }
        else
        {
            //no matches found
        }
        
        
    }
    else
    {
        //no value for segment
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)next:(id)sender {
    suc=1;
    [recorddict setObject:texty1 forKey:@"seg1"];
    [recorddict setObject:texty2 forKey:@"seg2"];
    [recorddict setObject:texty3 forKey:@"seg3"];
    [recorddict setObject:texty4 forKey:@"seg4"];
    [recorddict setObject:texty5 forKey:@"seg5"];
    [recorddict setObject:texty6 forKey:@"seg6"];
    
    //    NSLog(@"Record dict in hipkneequestionnaire form::%@",recorddict);
    if(suc==1){
        [self performSegueWithIdentifier:@"hipknee1" sender:self];
    }
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"hipknee1"])
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
    
    
    if ([segue.identifier isEqualToString:@"hipknee1"])
    {
        
        HipKneeViewController1 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        destViewController.staff=staff;
        
        
    }
    
    
    
}

- (IBAction)segbut1:(id)sender {
    if(seg1.selectedSegmentIndex==0){
        texty1=@"Not at all";
    }
    else if(seg1.selectedSegmentIndex==1){
        texty1=@"Mildly";
    }
    else if(seg1.selectedSegmentIndex==2){
        texty1=@"Moderately";
    }
    else if(seg1.selectedSegmentIndex==3){
        texty1=@"Very";
    }
    else if(seg1.selectedSegmentIndex==4){
        texty1=@"Extremely";
    }
    
}

- (IBAction)segbut2:(id)sender {
    if(seg2.selectedSegmentIndex==0){
        texty2=@"Not at all";
    }
    else if(seg2.selectedSegmentIndex==1){
        texty2=@"Mildly";
    }
    else if(seg2.selectedSegmentIndex==2){
        texty2=@"Moderately";
    }
    else if(seg2.selectedSegmentIndex==3){
        texty2=@"Very";
    }
    else if(seg2.selectedSegmentIndex==4){
        texty2=@"Extremely";
    }
}

- (IBAction)segbut3:(id)sender {
    if(seg3.selectedSegmentIndex==0){
        texty3=@"1";
    }
    else if(seg3.selectedSegmentIndex==1){
        texty3=@"2";
    }
    else if(seg3.selectedSegmentIndex==2){
        texty3=@"3";
    }
    else if(seg3.selectedSegmentIndex==3){
        texty3=@"4";
    }
    else if(seg3.selectedSegmentIndex==4){
        texty3=@"5";
    }
    else if(seg3.selectedSegmentIndex==5){
        texty3=@"6";
    }
    else if(seg3.selectedSegmentIndex==6){
        texty3=@"7";
    }
}

- (IBAction)segbut4:(id)sender {
    if(seg4.selectedSegmentIndex==0){
        texty4=@"1";
    }
    else if(seg4.selectedSegmentIndex==1){
        texty4=@"2";
    }
    else if(seg4.selectedSegmentIndex==2){
        texty4=@"3";
    }
    else if(seg4.selectedSegmentIndex==3){
        texty4=@"4";
    }
    else if(seg4.selectedSegmentIndex==4){
        texty4=@"5";
    }
    else if(seg4.selectedSegmentIndex==5){
        texty4=@"6";
    }
    else if(seg4.selectedSegmentIndex==6){
        texty4=@"7";
    }
    
    
}

- (IBAction)segbut5:(id)sender {
    if(seg5.selectedSegmentIndex==0){
        texty5=@"1";
    }
    else if(seg5.selectedSegmentIndex==1){
        texty5=@"2";
    }
    else if(seg5.selectedSegmentIndex==2){
        texty5=@"3";
    }
    else if(seg5.selectedSegmentIndex==3){
        texty5=@"4";
    }
    else if(seg5.selectedSegmentIndex==4){
        texty5=@"5";
    }
    else if(seg5.selectedSegmentIndex==5){
        texty5=@"6";
    }
    else if(seg5.selectedSegmentIndex==6){
        texty5=@"7";
    }
    
}

- (IBAction)segbut6:(id)sender {
    if(seg6.selectedSegmentIndex==0){
        texty6=@"1";
    }
    else if(seg6.selectedSegmentIndex==1){
        texty6=@"2";
    }
    else if(seg6.selectedSegmentIndex==2){
        texty6=@"3";
    }
    else if(seg6.selectedSegmentIndex==3){
        texty6=@"4";
    }
    else if(seg6.selectedSegmentIndex==4){
        texty6=@"5";
    }
    else if(seg6.selectedSegmentIndex==5){
        texty6=@"6";
    }
    else if(seg6.selectedSegmentIndex==6){
        texty6=@"7";
    }
    
}
- (void)dealloc {
    
    
    [super dealloc];
}
-(IBAction)cancel:(id)sender
{
    
    if ([[staff objectForKey:@"staff"]isEqualToString:@"1"]) {
        
        
        for(UIViewController *controller in self.navigationController.viewControllers)
        {
            if ([controller isKindOfClass:[staffautocheckViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
    }
    else
        
    {
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
        
    }
    
    
}


- (IBAction)reset:(id)sender
{
    texty1=@"null";
    texty2=@"null";
    texty3=@"null";
    texty4=@"null";
    texty5=@"null";
    texty6=@"null";
    
    
    [seg1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg5 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [seg6 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    
}
@end
