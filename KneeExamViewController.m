//
//  KneeExamViewController.m
//  EHR
//
//  Created by deemsys on 2/20/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "KneeExamViewController.h"
#import "KneeExamViewController1.h"
#import "hamilViewController.h"
#import "databaseurl.h"
#import "StringConstants.h"
#import "TWMessageBarManager.h"

@interface KneeExamViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}

@end

@implementation KneeExamViewController
@synthesize check4;
@synthesize check4lab;
@synthesize datefield;
@synthesize segment4;
@synthesize segment7;
@synthesize segment6;
@synthesize semimem;
@synthesize recorddict;

@synthesize gaitpicker;

@synthesize gaitlabel;


@synthesize gaitarray;

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



NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39;
int suc;
NSString *seg1,*seg2,*seg3,*seg4,*seg5,*seg6,*seg7,*seg8,*segnew1,*segnew2;
NSString *check1,*check2,*check3,*checky4,*check5,*check6;
#pragma mark - UIPickerView DataSource
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)dismissKeyboard {
    printView.hidden = YES;
    [datefield resignFirstResponder];
    [patname resignFirstResponder];
    [check1text resignFirstResponder];
    [check2text resignFirstResponder];
    [ antleft resignFirstResponder];
    [antright resignFirstResponder];
    [flexion resignFirstResponder];
    [extension resignFirstResponder];
    [postleft resignFirstResponder];
    [postright resignFirstResponder];
    [internalleft resignFirstResponder];
    [externalleft resignFirstResponder];
    [externalright resignFirstResponder];
    [internalright resignFirstResponder];
    [lclleft resignFirstResponder];
    [lclright resignFirstResponder];
    [right1 resignFirstResponder];
    [right2 resignFirstResponder];
    [right3 resignFirstResponder];
    [right4 resignFirstResponder];
    [left1 resignFirstResponder];
    [left2 resignFirstResponder];
    [left3 resignFirstResponder];
    [left4 resignFirstResponder];
    [patright resignFirstResponder];
    [patleft resignFirstResponder];
    [ cmpright resignFirstResponder];
    [cmpleft resignFirstResponder];
    [corleft resignFirstResponder];
    [corright resignFirstResponder];
    [menisleft resignFirstResponder];
    [menisright resignFirstResponder];
    [medleft resignFirstResponder];
    [medright resignFirstResponder];
    [mclleft resignFirstResponder];
    [mclright resignFirstResponder];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    check1text.hidden=YES;
    gaitpicker.hidden=YES;
    check2text.hidden=YES;
    pelvicpicker.hidden=YES;
    gaitlabel.text=@"Normal";
    pelviclabel.text=@"None";
    anqlabel.text=@"Excellent";
    check1=@"null";
    check2=@"null";
    segnew1=@"None";
    segnew2=@"Excellent";
    check3=@"null";
    checky4=@"null";
    
    check6=@"null";
    check5=@"null";
    
    seg1=@"null";
    seg2=@"null";
    
    seg3=@"null";
    seg4=@"null";
    
    seg6=@"null";
    seg5=@"null";
    
    seg7=@"null";
    
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
    
    seg8=@"null";
    anqpicker.hidden=YES;
    recorddict=[[NSMutableDictionary alloc]init];
    [gaitpicker setBackgroundColor:([UIColor whiteColor])];
    [pelvicpicker setBackgroundColor:([UIColor whiteColor])];
    [anqpicker setBackgroundColor:([UIColor whiteColor])];
    
    gaitarray=[[NSMutableArray alloc] initWithObjects:@"Normal", @"Antalgic", @"Shuffling", @"Limp", @"Stagger",@"Cane Assisted",@"Wheel Chair",nil];
    
    
    
    //UITapGestureRecognizer *tapGR1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerViewTapped1)];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    patname.text=username;
    
    resultset=[[NSMutableDictionary alloc]init];
    [self Getdata];
    for (UIView *v in [self.view subviews]) {
        if ([v isKindOfClass:[UITextField class]]) {
            UITextField *textfield=(UITextField*)v;
            textfield.clearButtonMode = UITextFieldViewModeWhileEditing;
        }
    }
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
    NSArray *items1App=[itemsApp objectForKey:@"kneeexamuserList"];
    
    NSDictionary *arrayList1;
    //     To check whether its having data or not
    ////NSLog(@"lucky %d",[luckyNumbers count]);
    //NSLog(@"items1app %@",items1App);
    if ([items1App count]>0)
    {
        
        for (id anUpdate1 in items1App)
        {
            NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
            
            temp1  =[arrayList1 objectForKey:@"pname"];
            temp2 =[arrayList1 objectForKey:@"date"];
            temp3  =[arrayList1 objectForKey:@"gait"];
            temp4  =[arrayList1 objectForKey:@"pelvicunleveling"];
            temp5  =[arrayList1 objectForKey:@"ao"];
            temp6  =[arrayList1 objectForKey:@"allsoft"];
            temp7 =[arrayList1 objectForKey:@"leglengthl"];
            temp8  =[arrayList1 objectForKey:@"leglengthtextl"];
            temp9 =[arrayList1 objectForKey:@"leglengthr"];
            temp10  =[arrayList1 objectForKey:@"leglengthtextr"];
            temp11  =[arrayList1 objectForKey:@"vmo"];
            temp12  =[arrayList1 objectForKey:@"quads"];
            temp13  =[arrayList1 objectForKey:@"semimemb"];
            temp14  =[arrayList1 objectForKey:@"semitend"];
            temp15  =[arrayList1 objectForKey:@"gastroc"];
            temp16  =[arrayList1 objectForKey:@"soleus"];
            temp17  =[arrayList1 objectForKey:@"iliotibband"];
            temp18  =[arrayList1 objectForKey:@"bicepsfem"];
            temp19  =[arrayList1 objectForKey:@"functionalrangeofmotion"];
            temp20  =[arrayList1 objectForKey:@"orthopedic"];
            temp21  =[arrayList1 objectForKey:@"flexion"];
            temp22  =[arrayList1 objectForKey:@"acll"];
            temp23  =[arrayList1 objectForKey:@"aclr"];
            temp24  =[arrayList1 objectForKey:@"extension"];
            temp25  =[arrayList1 objectForKey:@"pcll"];
            temp26  =[arrayList1 objectForKey:@"pclr"];
            temp27  =[arrayList1 objectForKey:@"internalrotationl"];
            temp28  =[arrayList1 objectForKey:@"internalrotationr"];
            temp29  =[arrayList1 objectForKey:@"lcll"];
            temp30  =[arrayList1 objectForKey:@"lclr"];
            temp31  =[arrayList1 objectForKey:@"externalrotationl"];
            temp32  =[arrayList1 objectForKey:@"externalrotationr"];
            temp33  =[arrayList1 objectForKey:@"mcll"];
            temp34  =[arrayList1 objectForKey:@"mclr"];
            temp35  =[arrayList1 objectForKey:@"circumferential"];
            temp36  =[arrayList1 objectForKey:@"meniscusl"];
            temp37  =[arrayList1 objectForKey:@"meniscusr"];
            temp38  =[arrayList1 objectForKey:@"apleysl"];
            temp39  =[arrayList1 objectForKey:@"apleysr"];
            temp40  =[arrayList1 objectForKey:@"cmabovel"];
            temp41  =[arrayList1 objectForKey:@"suprapatellarl"];
            temp42  =[arrayList1 objectForKey:@"infrapatellarl"];
            temp43  =[arrayList1 objectForKey:@"belowl"];
            temp44  =[arrayList1 objectForKey:@"distractionl"];
            temp45  =[arrayList1 objectForKey:@"distractionr"];
            temp46  =[arrayList1 objectForKey:@"cmabover"];
            temp47 =[arrayList1 objectForKey:@"suprapatellarr"];
            temp48  =[arrayList1 objectForKey:@"infrapatellarr"];
            temp49  =[arrayList1 objectForKey:@"belowr"];
            temp50  =[arrayList1 objectForKey:@"cmpl"];
            temp51  =[arrayList1 objectForKey:@"cmpr"];
            temp52  =[arrayList1 objectForKey:@"patdll"];
            temp53  =[arrayList1 objectForKey:@"patdlr"];
            temp54  =[arrayList1 objectForKey:@"neurologicaltest"];
            
            
            temp55  =[arrayList1 objectForKey:@"l1l"];
            temp56  =[arrayList1 objectForKey:@"l1r"];
            temp57  =[arrayList1 objectForKey:@"l15l"];
            temp58  =[arrayList1 objectForKey:@"l15r"];
            temp59  =[arrayList1 objectForKey:@"l2l"];
            temp60  =[arrayList1 objectForKey:@"l2r"];
            temp61  =[arrayList1 objectForKey:@"l25l"];
            temp62  =[arrayList1 objectForKey:@"l25r"];
            temp63  =[arrayList1 objectForKey:@"l3l"];
            temp64  =[arrayList1 objectForKey:@"l3r"];
            temp65  =[arrayList1 objectForKey:@"l35l"];
            temp66  =[arrayList1 objectForKey:@"l35r"];
            temp67  =[arrayList1 objectForKey:@"l4l"];
            temp68  =[arrayList1 objectForKey:@"l4r"];
            temp69  =[arrayList1 objectForKey:@"l45l"];
            temp70  =[arrayList1 objectForKey:@"l45r"];
            temp71  =[arrayList1 objectForKey:@"l4l3"];
            temp72  =[arrayList1 objectForKey:@"l4r3"];
            temp73  =[arrayList1 objectForKey:@"l5l"];
            temp74  =[arrayList1 objectForKey:@"l5r"];
            temp75  =[arrayList1 objectForKey:@"l55l"];
            temp76  =[arrayList1 objectForKey:@"l55r"];
            temp77  =[arrayList1 objectForKey:@"l5l3"];
            temp78  =[arrayList1 objectForKey:@"l5r3"];
            temp79  =[arrayList1 objectForKey:@"sl"];
            temp80  =[arrayList1 objectForKey:@"sr"];
            temp81  =[arrayList1 objectForKey:@"s5l"];
            temp82  =[arrayList1 objectForKey:@"s5r"];
            temp83  =[arrayList1 objectForKey:@"sil"];
            temp84  =[arrayList1 objectForKey:@"sir"];
            temp85  =[arrayList1 objectForKey:@"walking"];
            temp86  =[arrayList1 objectForKey:@"standing"];
            temp87  =[arrayList1 objectForKey:@"stairs"];
            temp88  =[arrayList1 objectForKey:@"otherfunctional"];
            temp89  =[arrayList1 objectForKey:@"break_text3"];
            temp90  =[arrayList1 objectForKey:@"assessment"];
            temp91  =[arrayList1 objectForKey:@"patientstatus"];
            temp92  =[arrayList1 objectForKey:@"diagnosis1"];
            temp93  =[arrayList1 objectForKey:@"diagnosis2"];
            temp94  =[arrayList1 objectForKey:@"diagnosis3"];
            temp95  =[arrayList1 objectForKey:@"diagnosis4"];
            temp96  =[arrayList1 objectForKey:@"diagnosis5"];
            temp97  =[arrayList1 objectForKey:@"diagnosis6"];
            temp98  =[arrayList1 objectForKey:@"times"];
            temp99  =[arrayList1 objectForKey:@"week"];
            temp100  =[arrayList1 objectForKey:@"spinal"];
            temp101  =[arrayList1 objectForKey:@"chiropractic"];
            temp102  =[arrayList1 objectForKey:@"physical"];
            temp103  =[arrayList1 objectForKey:@"orthotics"];
            temp104  =[arrayList1 objectForKey:@"modalities"];
            temp105  =[arrayList1 objectForKey:@"supplementation"];
            temp106  =[arrayList1 objectForKey:@"hep"];
            temp107  =[arrayList1 objectForKey:@"radiographic"];
            temp108  =[arrayList1 objectForKey:@"mri"];
            temp109  =[arrayList1 objectForKey:@"ctscan"];
            temp110  =[arrayList1 objectForKey:@"nerve"];
            temp111  =[arrayList1 objectForKey:@"emg"];
            temp112  =[arrayList1 objectForKey:@"outside"];
            temp113 =[arrayList1 objectForKey:@"dc"];
            
            temp114=[arrayList1 objectForKey:@"otheraddress"];
            temp115  =[arrayList1 objectForKey:@"break_text4"];
            temp116  =[arrayList1 objectForKey:@"sign"];
            
            [resultset setValue:[arrayList1 objectForKey:@"neurologicaltest"]forKey:@"neurologicaltest"];
            [resultset setValue:[arrayList1 objectForKey:@"l1l"]forKey:@"l1l"];
            [resultset setValue:[arrayList1 objectForKey:@"l1r"]forKey:@"l1r"];
            [resultset setValue:[arrayList1 objectForKey:@"l15l"]forKey:@"l15l"];
            [resultset setValue:[arrayList1 objectForKey:@"l15r"]forKey:@"l15r"];
            [resultset setValue:[arrayList1 objectForKey:@"l2l"]forKey:@"l2l"];
            [resultset setValue:[arrayList1 objectForKey:@"l2r"]forKey:@"l2r"];
            [resultset setValue:[arrayList1 objectForKey:@"l25l"]forKey:@"l25l"];
            [resultset setValue:[arrayList1 objectForKey:@"l25r"]forKey:@"l25r"];
            [resultset setValue:[arrayList1 objectForKey:@"l3l"]forKey:@"l3l"];
            [resultset setValue:[arrayList1 objectForKey:@"l3r"]forKey:@"l3r"];
            [resultset setValue:[arrayList1 objectForKey:@"l35l"]forKey:@"l35l"];
            [resultset setValue:[arrayList1 objectForKey:@"l35r"]forKey:@"l35r"];
            [resultset setValue:[arrayList1 objectForKey:@"l4l"]forKey:@"l4l"];
            [resultset setValue:[arrayList1 objectForKey:@"l4r"]forKey:@"l4r"];
            [resultset setValue:[arrayList1 objectForKey:@"l45l"]forKey:@"l45l"];
            [resultset setValue:[arrayList1 objectForKey:@"l45r"]forKey:@"l45r"];
            [resultset setValue:[arrayList1 objectForKey:@"l4l3"]forKey:@"l4l3"];
            [resultset setValue:[arrayList1 objectForKey:@"l4r3"]forKey:@"l4r3"];
            [resultset setValue:[arrayList1 objectForKey:@"l5l"]forKey:@"l5l"];
            [resultset setValue:[arrayList1 objectForKey:@"l5r"]forKey:@"l5r"];
            [resultset setValue:[arrayList1 objectForKey:@"l55l"]forKey:@"l55l"];
            [resultset setValue:[arrayList1 objectForKey:@"l55r"]forKey:@"l55r"];
            [resultset setValue:[arrayList1 objectForKey:@"l5l3"]forKey:@"l5l3"];
            [resultset setValue:[arrayList1 objectForKey:@"l5r3"]forKey:@"l5r3"];
            [resultset setValue:[arrayList1 objectForKey:@"sl"]forKey:@"sl"];
            [resultset setValue:[arrayList1 objectForKey:@"sr"]forKey:@"sr"];
            [resultset setValue:[arrayList1 objectForKey:@"s5l"]forKey:@"s5l"];
            [resultset setValue:[arrayList1 objectForKey:@"s5r"]forKey:@"s5r"];
            [resultset setValue:[arrayList1 objectForKey:@"sil"]forKey:@"sil"];
            [resultset setValue:[arrayList1 objectForKey:@"sir"]forKey:@"sir"];
            [resultset setValue:[arrayList1 objectForKey:@"walking"]forKey:@"walking"];
            [resultset setValue:[arrayList1 objectForKey:@"standing"]forKey:@"standing"];
            [resultset setValue:[arrayList1 objectForKey:@"stairs"]forKey:@"stairs"];
            [resultset setValue:[arrayList1 objectForKey:@"otherfunctional"]forKey:@"otherfunctional"];
            [resultset setValue:[arrayList1 objectForKey:@"break_text3"]forKey:@"break_text3"];
            [resultset setValue:[arrayList1 objectForKey:@"assessment"]forKey:@"assessment"];
            [resultset setValue:[arrayList1 objectForKey:@"patientstatus"]forKey:@"patientstatus"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis1"]forKey:@"diagnosis1"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis2"]forKey:@"diagnosis2"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis3"]forKey:@"diagnosis3"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis4"]forKey:@"diagnosis4"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis5"]forKey:@"diagnosis5"];
            [resultset setValue:[arrayList1 objectForKey:@"diagnosis6"]forKey:@"diagnosis6"];
            [resultset setValue:[arrayList1 objectForKey:@"times"]forKey:@"times"];
            [resultset setValue:[arrayList1 objectForKey:@"week"]forKey:@"week"];
            [resultset setValue:[arrayList1 objectForKey:@"spinal"]forKey:@"spinal"];
            [resultset setValue:[arrayList1 objectForKey:@"chiropractic"]forKey:@"chiropractic"];
            [resultset setValue:[arrayList1 objectForKey:@"physical"]forKey:@"physical"];
            [resultset setValue:[arrayList1 objectForKey:@"orthotics"]forKey:@"orthotics"];
            [resultset setValue:[arrayList1 objectForKey:@"modalities"]forKey:@"modalities"];
            [resultset setValue:[arrayList1 objectForKey:@"supplementation"]forKey:@"supplementation"];
            [resultset setValue:[arrayList1 objectForKey:@"hep"]forKey:@"hep"];
            [resultset setValue:[arrayList1 objectForKey:@"radiographic"]forKey:@"radiographic"];
            [resultset setValue:[arrayList1 objectForKey:@"mri"]forKey:@"mri"];
            [resultset setValue:[arrayList1 objectForKey:@"ctscan"]forKey:@"ctscan"];
            [resultset setValue:[arrayList1 objectForKey:@"nerve"]forKey:@"nerve"];
            [resultset setValue:[arrayList1 objectForKey:@"emg"]forKey:@"emg"];
            [resultset setValue:[arrayList1 objectForKey:@"outside"]forKey:@"outside"];
            [resultset setValue:[arrayList1 objectForKey:@"dc"]forKey:@"dc"];
            
            [resultset setValue:[arrayList1 objectForKey:@"otheraddress"]forKey:@"otheraddress"];
            [resultset setValue:[arrayList1 objectForKey:@"break_text4"]forKey:@"break_text4"];
            [resultset setValue:[arrayList1 objectForKey:@"sign"]forKey:@"sign"];
            
            patname.text=temp1;
            datefield.text=temp2;
            if ([temp6 isEqualToString:@"All Soft Tissue Unremarkable"]) {
                check11.selected=YES;
                [check11 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                check1=@"All Soft Tissue Unremarkable";
                
            }
            else
            {
                check11.selected=NO;
                [check11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                check1=@"null";
                
            }
            if ([temp7 isEqualToString:@"Left"]) {
                check22.selected=YES;
                [check22 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                check2=@"Left";
                check1text.hidden=NO;
                check1text.text=temp8;
                
            }
            else
            {
                check1text.hidden=YES;
                check1text.text=@"";
                check22.selected=NO;
                [check22 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                check2=@"null";
            }
            if ([temp9 isEqualToString:@"Right"]) {
                check33.selected=YES;
                [check33 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                check3=@"Right";
                check2text.hidden=NO;
                check2text.text=temp8;
            }
            else
            {
                check2text.hidden=YES;
                check2text.text=@"";
                check33.selected=NO;
                [check33 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                check3=@"null";
            }
            
            
            if ([temp19 isEqualToString:@"Unremarkable"]) {
                //NSLog(@"value of temp19:::%@",temp19);
                check44.selected=YES;
                [check44 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                checky4=@"Unremarkable";
                
            }
            else
            {
                check44.selected=NO;
                [check44 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                checky4=@"null";
            }
            if ([temp20 isEqualToString:@"Unremarkable"]) {
                check55.selected=YES;
                [check55 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                check5=@"Unremarkable";
            }
            else
            {
                check55.selected=NO;
                [check55 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                check5=@"null";
            }
            if ([temp35 isEqualToString:@"Circumferential Measures are Unremarkable"]) {
                check66.selected=YES;
                [check66 setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
                check6=@"Circumferential Measures are Unremarkable";
            }
            else
            {
                check66.selected=NO;
                [check66 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
                check6=@"null";
            }
            gaitlabel.text=temp3;
            
            
            if ([temp4 isEqualToString:@"None"] ) {
                [segmentnew1 setSelectedSegmentIndex:0];
                segnew1=@"None";
            }
            else if ([temp4 isEqualToString:@"Superior Illiac crest right"] ) {
                [segmentnew1 setSelectedSegmentIndex:1];
                segnew1=@"Superior Illiac crest right";
            }
            else if ([temp4 isEqualToString:@"Superior Illiac crest left"] ) {
                [segmentnew1 setSelectedSegmentIndex:2];
                segnew1=@"Superior Illiac crest left";
            }
            
            else
            {
                [segmentnew1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                segnew1=@"null";
            }
            
            if([temp8 isEqualToString:@"null"]){
                check1text.text=@"";
            }
            else{
                check1text.text=temp8;
            }
            if([temp10 isEqualToString:@"null"]){
                check2text.text=@"";
            }
            else{
                check2text.text=temp10;
            }
            
            if ([temp11 isEqualToString:@"Left"] ) {
                [segment1 setSelectedSegmentIndex:0];
                seg1=@"Left";
            }
            else if ([temp11 isEqualToString:@"Right"] ) {
                [segment1 setSelectedSegmentIndex:1];
                seg1=@"Right";
            }
            else
            {
                [segment1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                seg1=@"null";
            }
            
            
            if ([temp12 isEqualToString:@"Left"] ) {
                [segment2 setSelectedSegmentIndex:0];
                seg2=@"Left";
            }
            else if ([temp12 isEqualToString:@"Right"] ) {
                [segment2 setSelectedSegmentIndex:1];
                seg2=@"Right";
            }
            else
            {
                [segment2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                seg2=@"null";
            }
            
            if ([temp13 isEqualToString:@"Left"] ) {
                [segment3 setSelectedSegmentIndex:0];
                seg3=@"Left";
            }
            else if ([temp13 isEqualToString:@"Right"] ) {
                [segment3 setSelectedSegmentIndex:1];
                seg3=@"Right";
            }
            else
            {
                [segment3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                seg3=@"null";
            }
            if ([temp14 isEqualToString:@"Left"] ) {
                [segment4 setSelectedSegmentIndex:0];
                seg4=@"Left";
            }
            else if ([temp14 isEqualToString:@"Right"] ) {
                [segment4 setSelectedSegmentIndex:1];
                seg4=@"Right";
            }
            else
            {
                [segment4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                seg4=@"null";
            }
            
            if ([temp15 isEqualToString:@"Left"] ) {
                [segment5 setSelectedSegmentIndex:0];
                seg5=@"Left";
            }
            else if ([temp15 isEqualToString:@"Right"] ) {
                [segment5 setSelectedSegmentIndex:1];
                seg5=@"Right";
            }
            else
            {
                [segment5 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                seg5=@"null";
            }
            if ([temp16 isEqualToString:@"Left"] ) {
                [segment6 setSelectedSegmentIndex:0];
                seg6=@"Left";
            }
            else if ([temp16 isEqualToString:@"Right"] ) {
                [segment6 setSelectedSegmentIndex:1];
                seg6=@"Right";
            }
            else
            {
                [segment6 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                seg6=@"null";
            }
            
            if ([temp17 isEqualToString:@"Left"] ) {
                [segment7 setSelectedSegmentIndex:0];
                seg7=@"Left";
            }
            else if ([temp17 isEqualToString:@"Right"] ) {
                [segment7 setSelectedSegmentIndex:1];
                seg7=@"Right";
            }
            else
            {
                [segment7 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                seg7=@"null";
            }
            
            if ([temp5 isEqualToString:@"Excellent"] ) {
                [segmentnew2 setSelectedSegmentIndex:0];
                segnew2=@"Excellent";
            }
            else if ([temp5 isEqualToString:@"Good"] ) {
                [segmentnew2 setSelectedSegmentIndex:1];
                segnew2=@"Good";
            }
            else if ([temp5 isEqualToString:@"Fair"] ) {
                [segmentnew2 setSelectedSegmentIndex:2];
                segnew2=@"Fair";
            }
            else if ([temp6 isEqualToString:@"Severe"] ) {
                [segmentnew2 setSelectedSegmentIndex:3];
                segnew2=@"Severe";
            }
            
            if ([temp18 isEqualToString:@"Left"] ) {
                [segment8 setSelectedSegmentIndex:0];
                seg8=@"Left";
            }
            else if ([temp18 isEqualToString:@"Right"] ) {
                [segment8 setSelectedSegmentIndex:1];
                seg8=@"Right";
            }
            else
            {
                [segment8 setSelectedSegmentIndex:UISegmentedControlNoSegment];
                seg8=@"null";
            }
            
            if([temp21 isEqualToString:@"null"]){
                
                
                flexion.text=@"";
            }
            else{
                
                flexion.text=temp21;
            }
            
            if([temp22 isEqualToString:@"null"]){
                
                
                antleft.text=@"";
            }
            else{
                
                antleft.text=temp22;
            }
            
            if([temp23 isEqualToString:@"null"]){
                
                
                antright.text=@"";
            }
            else{
                
                antright.text=temp23;
            }
            if([temp24 isEqualToString:@"null"]){
                
                
                extension.text=@"";
            }
            else{
                
                extension.text=temp24;
            }
            if([temp25 isEqualToString:@"null"]){
                
                
                postleft.text=@"";
            }
            else{
                
                postleft.text=temp25;
            }
            if([temp26 isEqualToString:@"null"]){
                
                
                postright.text=@"";
            }
            else{
                
                postright.text=temp26;
            }
            if([temp27 isEqualToString:@"null"]){
                
                
                internalleft.text=@"";
            }
            else{
                
                internalleft.text=temp27;
            }
            if([temp28 isEqualToString:@"null"]){
                
                
                internalright.text=@"";
            }
            else{
                
                internalright.text=temp28;
            }
            
            if([temp29 isEqualToString:@"null"]){
                
                
                lclleft.text=@"";
            }
            else{
                
                lclleft.text=temp29;
            }
            if([temp30 isEqualToString:@"null"]){
                
                
                lclright.text=@"";
            }
            else{
                
                lclright.text=temp30;
            }
            if([temp31 isEqualToString:@"null"]){
                
                
                externalleft.text=@"";
            }
            else{
                
                externalleft.text=temp31;
            }
            if([temp32 isEqualToString:@"null"]){
                
                
                externalright.text=@"";
            }
            else{
                
                externalright.text=temp32;
            }
            if([temp33 isEqualToString:@"null"]){
                
                
                mclleft.text=@"";
            }
            else{
                
                mclleft.text=temp33;
            }
            if([temp34 isEqualToString:@"null"]){
                
                
                mclright.text=@"";
            }
            else{
                
                mclright.text=temp34;
            }
            if([temp36 isEqualToString:@"null"]){
                
                
                medleft.text=@"";
            }
            else{
                
                medleft.text=temp36;
            }
            if([temp37 isEqualToString:@"null"]){
                
                
                medright.text=@"";
            }
            else{
                
                medright.text=temp37;
            }
            if([temp38 isEqualToString:@"null"]){
                
                
                menisleft.text=@"";
            }
            else{
                
                menisleft.text=temp38;
            }
            if([temp39 isEqualToString:@"null"]){
                
                
                menisright.text=@"";
            }
            else{
                
                menisright.text=temp39;
            }
            if([temp40 isEqualToString:@"null"]){
                
                
                left1.text=@"";
            }
            else{
                
                left1.text=temp40;
            }
            if([temp41 isEqualToString:@"null"]){
                
                
                left2.text=@"";
            }
            else{
                
                left2.text=temp41;
            }
            if([temp42 isEqualToString:@"null"]){
                
                
                left3.text=@"";
            }
            else{
                
                left3.text=temp42;
            }
            if([temp43 isEqualToString:@"null"]){
                
                
                left4.text=@"";
            }
            else{
                
                left4.text=temp43;
            }
            if([temp44 isEqualToString:@"null"]){
                
                
                corleft.text=@"";
            }
            else{
                
                corleft.text=temp44;
            }
            if([temp45 isEqualToString:@"null"]){
                
                
                corright.text=@"";
            }
            else{
                
                corright.text=temp45;
            }
            if([temp46 isEqualToString:@"null"]){
                
                
                right1.text=@"";
            }
            else{
                
                right1.text=temp46;
            }
            if([temp47 isEqualToString:@"null"]){
                
                
                right2.text=@"";
            }
            else{
                
                right2.text=temp47;
            }
            if([temp48 isEqualToString:@"null"]){
                
                
                right3.text=@"";
            }
            else{
                
                right3.text=temp48;
            }
            if([temp49 isEqualToString:@"null"]){
                
                
                right4.text=@"";
            }
            else{
                
                right4.text=temp49;
            }
            
            
            
            
            
            if([temp50 isEqualToString:@"null"]){
                
                
                cmpleft.text=@"";
            }
            else{
                
                cmpleft.text=temp50;
            }
            
            if([temp51 isEqualToString:@"null"]){
                
                
                cmpright.text=@"";
            }
            else{
                
                cmpright.text=temp51;
            }
            
            
            if([temp52 isEqualToString:@"null"]){
                
                
                patleft.text=@"";
            }
            else{
                
                patleft.text=temp52;
            }
            
            if([temp53 isEqualToString:@"null"]){
                
                
                patright.text=@"";
            }
            else{
                
                patright.text=temp53;
            }
            
            
            //NSLog(@"resultset value::%@",resultset);
            
            
            
            
        }
    }
}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"KneeExam.php?service=kneeexamselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    //    //NSLog(@"POST:%@",post);
    NSURL *url = [NSURL URLWithString:url2];
    
    ////////NSLog(post);
    
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
    // //NSLog(@"data %@",data);
    
    return data;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}
- (void)pickerViewTapped1
{
    gaitpicker.hidden=YES;
}

- (void)dealloc {
    [segmentnew1 release];
    [segmentnew2 release];
    [super dealloc];
    
    
}

#pragma mark - UIPickerView DataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(pickerView.tag==1)
        
        return [gaitarray count];
    
    else
        return 1;
}
#pragma mark - UIPickerView Delegate
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 30.0;
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(pickerView.tag==1)
        
        return [gaitarray objectAtIndex:row];
    
    
    else
        return
        [gaitarray objectAtIndex:row];
}

- (IBAction)checkChanged:(UIButton *)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(check22.selected){
        check2=@"Left";
        check1text.hidden=FALSE;
    }
    else{
        check2=@"null";
        check1text.hidden=TRUE;
        check1text.text=NULL;
    }
    if(check33.selected){
        check3=@"Right";
        check2text.hidden=FALSE;
    }
    else{
        check3=@"null";
        check2text.hidden=TRUE;
        check2text.text=NULL;
    }
    if(check11.selected){
        check1=@"All Soft Tissue Unremarkable";
    }
    else
        check1=@"null";
    
    if(check44.selected){
        checky4=@"Unremarkable";
    }
    else
        checky4=@"null";
    if(check55.selected){
        check5=@"Unremarkable";
    }
    else
        check5=@"null";
    if(check66.selected){
        check6=@"Circumferential Measures are Unremarkable";
    }
    else
        check6=@"null";
    
    
    
}

- (IBAction)pelseg:(id)sender {
    if(segmentnew1.selectedSegmentIndex==0)
    {
        segnew1=@"None";
    }
    else if (segmentnew1.selectedSegmentIndex==1)
    {
        segnew1=@"Superior Illiac crest right";
    }
    else if (segmentnew1.selectedSegmentIndex==2)
    {
        segnew1=@"Superior Illiac crest left";
    }
    
    
    
}

- (IBAction)anqseg:(id)sender {
    
    if(segmentnew2.selectedSegmentIndex==0)
    {
        segnew2=@"Excellent";
    }
    else if (segmentnew2.selectedSegmentIndex==1)
    {
        segnew2=@"Good";
    }
    else if (segmentnew2.selectedSegmentIndex==2)
    {
        segnew2=@"Fair";
    }
    else if (segmentnew2.selectedSegmentIndex==3)
    {
        segnew2=@"Severe";
    }
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(gaitpicker.hidden==NO)
    {
        gaitpicker.hidden=YES;
    }
    if (pelvicpicker.hidden==NO) {
        pelvicpicker.hidden=YES;
    }
    if (anqpicker.hidden==NO) {
        anqpicker.hidden=YES;
    }
    
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if(pickerView.tag==1)
        
        gaitlabel.text=[gaitarray objectAtIndex:row];
    
    pickerView.hidden=YES;
    
}

- (IBAction)segment2:(id)sender {
    if(segment2.selectedSegmentIndex==0)
    {
        seg2=@"Left";
    }
    else if (segment2.selectedSegmentIndex==1)
    {
        seg2=@"Right";
    }
    else seg2=@"null";
    
}

- (IBAction)segment3:(id)sender {
    if(segment3.selectedSegmentIndex==0)
    {
        seg3=@"Left";
    }
    else if (segment3.selectedSegmentIndex==1)
    {
        seg3=@"Right";
    }
    else seg3=@"null";
    
}
- (IBAction)segment5:(id)sender {
    if(segment5.selectedSegmentIndex==0)
    {
        seg5=@"Left";
    }
    else if (segment5.selectedSegmentIndex==1)
    {
        seg5=@"Right";
    }
    else seg5=@"null";
    
}

- (IBAction)segment4:(id)sender {
    if(segment4.selectedSegmentIndex==0)
    {
        seg4=@"Left";
    }
    else if (segment4.selectedSegmentIndex==1)
    {
        seg4=@"Right";
    }
    else seg4=@"null";
    
}

- (IBAction)segement1:(id)sender {
    
    if(segment1.selectedSegmentIndex==0)
    {
        seg1=@"Left";
    }
    else if (segment1.selectedSegmentIndex==1)
    {
        seg1=@"Right";
    }
    else seg1=@"null";
    
}
- (IBAction)segment8:(id)sender {
    if(segment8.selectedSegmentIndex==0)
    {
        seg8=@"Left";
    }
    else if (segment8.selectedSegmentIndex==1)
    {
        seg8=@"Right";
    }
    else seg8=@"null";
}

- (IBAction)segment7:(id)sender {
    if(segment7.selectedSegmentIndex==0)
    {
        seg7=@"Left";
    }
    else if (segment7.selectedSegmentIndex==1)
    {
        seg7=@"Right";
    }
    else seg7=@"null";
}

- (IBAction)segment6:(id)sender {
    if(segment6.selectedSegmentIndex==0)
    {
        seg6=@"Left";
    }
    else if (segment6.selectedSegmentIndex==1)
    {
        seg6=@"Right";
    }
    else seg6=@"null";
}

-(BOOL)validateUsernumber:(NSString *)user

{
    NSString *userFormat1 =@"[0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}


-(BOOL)validateUsername:(NSString *)user

{
    NSString *userFormat1 =@"[0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateUsername2:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateUsername1:(NSString *)user

{
    NSString *userFormat1 =@"[A-Za-z0-9@_]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}


- (IBAction)changeanq:(id)sender {
    if (anqpicker.hidden==YES)
    {
        anqpicker.hidden=NO;
        
    }
}

- (IBAction)changegait:(id)sender {
    if (gaitpicker.hidden==YES)
    {
        gaitpicker.hidden=NO;
        
    }
}

- (IBAction)next:(id)sender {
    if(!check22.selected){
        check1text.text=@"";
    }
    if(!check33.selected){
        check2text.text=@"";
    }
    texty1=patname.text;
    texty2=datefield.text;
    texty3=flexion.text;
    texty4=antleft.text;
    texty5=antright.text;
    texty6=extension.text;
    texty7=postleft.text;
    texty8=postright.text;
    texty9=internalleft.text;
    texty10=internalright.text;
    texty11=lclleft.text;
    texty12=lclright.text;
    texty13=mclleft.text;
    texty14=mclright.text;
    texty15=externalleft.text;
    texty16=externalright.text;
    texty17=medleft.text;
    texty18=medright.text;
    texty19=menisleft.text;
    texty20=menisright.text;
    texty21=corleft.text;
    texty22=corright.text;
    texty23=cmpleft.text;
    texty24=cmpright.text;
    texty25=patleft.text;
    texty26=patright.text;
    texty27=left1.text;
    texty28=left2.text;
    texty29=left3.text;
    texty30=left4.text;
    texty31=right1.text;
    texty32=right2.text;
    texty33=right3.text;
    
    texty34=right4.text;
    texty35=check1text.text;
    texty36=check2text.text;
    //  texty37=[patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    // texty35=[check1text.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    // //NSLog(@"String in checktextfields  one::%@",[check1text text]);
    // //NSLog(@"String in checktextfields   two ::%@",[check2text text]);
    if(([patname.text length]!=0)&&([datefield.text length]!=0))
    {
        if([du patname:texty1]==1)
        {
            if([self validateDate:texty2]==1)
            {
                // //NSLog(@"check one text %@",[check1text text]);
                // //NSLog(@"Succes 1");
                // //NSLog(@"check two texty%@",[check2text text]);
                ////NSLog(@"checktets chanracters::%i",[check1text.text length]);
                ////NSLog(@"checktets chanracters::%i",[check2text.text length]);
                if([check1text.text length]==0||([du otherfields:texty35]==1)||[check1text text]==NULL)
                {
                    
                    if([check2text.text length]==0||([du otherfields:texty36]==1)||[check2text text]==NULL)
                    {
                        
                        
                        if([flexion.text length]==0||[du date:texty3]==1)
                        {
                            
                            if([antleft.text length]==0||[du date:texty4]==1)
                            {
                                //NSLog(@"%@",[antleft text]);
                                
                                if([antright.text length]==0||[du date:texty5]==1)
                                {
                                    //NSLog(@"ant right %@",[antright text]);
                                    
                                    if([extension.text length]==0||[du date:texty6]==1)
                                    {
                                        //NSLog(@"extension %@",[extension text]);
                                        
                                        if([postleft.text length]==0||[du date:texty7]==1)
                                        {
                                            //NSLog(@"post left %@",[postleft text]);
                                            
                                            if([postright.text length]==0||[du date:texty8]==1)
                                            {
                                                
                                                //NSLog(@"post rght%@",[postright text]);
                                                
                                                if([internalleft.text length]==0||[du date:texty9]==1)
                                                {
                                                    
                                                    //NSLog(@"inter left %@",[internalleft text]);
                                                    
                                                    if([internalright.text length]==0||[du date:texty10]==1)
                                                    {
                                                        
                                                        //NSLog(@"internal right %@",[internalright text]);
                                                        
                                                        if([lclleft.text length]==0||[du date:texty11]==1)
                                                        {
                                                            
                                                            //NSLog(@"lcl left %@",[lclleft text]);
                                                            
                                                            if([lclright.text length]==0||[du date:texty12]==1)
                                                            {
                                                                
                                                                //NSLog(@"Lcl right %@",[lclright text]);
                                                                
                                                                if([mclleft.text length]==0||[du date:texty13]==1)
                                                                {
                                                                    
                                                                    //NSLog(@"mcl left %@",[mclleft text]);
                                                                    
                                                                    if([mclright.text length]==0||[du date:texty14]==1)
                                                                    {
                                                                        
                                                                        //NSLog(@"mcl right %@",[mclright text]);
                                                                        
                                                                        if([externalleft.text length]==0||[du date:texty15]==1)
                                                                        {
                                                                            
                                                                            if([externalright.text length]==0||[du date:texty16]==1)
                                                                                
                                                                            {
                                                                                
                                                                                if([medleft.text length]==0||[du date:texty17]==1)
                                                                                {
                                                                                    
                                                                                    if([medright.text length]==0||[du date:texty18]==1)
                                                                                    {
                                                                                        
                                                                                        if([menisleft.text length]==0||[du date:texty19]==1)
                                                                                        {
                                                                                            
                                                                                            if([menisright.text length]==0||[du date:texty20]==1)
                                                                                            {
                                                                                                
                                                                                                if([corleft.text length]==0||[du date:texty21]==1)
                                                                                                {
                                                                                                    
                                                                                                    if([corright.text length]==0||[du date:texty22]==1)
                                                                                                    {
                                                                                                        
                                                                                                        if([cmpleft.text length]==0||[du date:texty23]==1)
                                                                                                        {
                                                                                                            
                                                                                                            if([cmpright.text length]==0||[du date:texty24]==1)
                                                                                                            {
                                                                                                                
                                                                                                                if([patleft.text length]==0||[du date:texty25]==1)
                                                                                                                {
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    if([patright.text length]==0||[du date:texty26]==1)
                                                                                                                    {
                                                                                                                        
                                                                                                                        
                                                                                                                        if([left1.text length]==0||[du date:texty27]==1)
                                                                                                                        {
                                                                                                                            
                                                                                                                            
                                                                                                                            if([left2.text length]==0||[du date:texty28]==1)
                                                                                                                            {
                                                                                                                                
                                                                                                                                
                                                                                                                                if([left3.text length]==0||[du date:texty29]==1)
                                                                                                                                {
                                                                                                                                    
                                                                                                                                    if([left4.text length]==0||[du date:texty30]==1)
                                                                                                                                    {
                                                                                                                                        
                                                                                                                                        if([right1.text length]==0||[du date:texty31]==1)
                                                                                                                                        {
                                                                                                                                            
                                                                                                                                            if([right2.text length]==0||[du date:texty32]==1)
                                                                                                                                            {
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                if([right3.text length]==0||[du date:texty33]==1)
                                                                                                                                                {
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    if([right4.text length]==0||[du date:texty34]==1){
                                                                                                                                                        
                                                                                                                                                        //NSLog(@"Succes Finall");
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        [recorddict setValue:check1 forKey:@"firstcheck"];
                                                                                                                                                        [recorddict setValue:check2 forKey:@"secondcheck"];
                                                                                                                                                        [recorddict setValue:check3 forKey:@"thirdcheck"];
                                                                                                                                                        [recorddict setValue:checky4 forKey:@"fourthcheck"];
                                                                                                                                                        [recorddict setValue:check5 forKey:@"fifthcheck"];
                                                                                                                                                        [recorddict setValue:check6 forKey:@"sixthcheck"];
                                                                                                                                                        [recorddict setValue:seg1 forKey:@"firstseg"];
                                                                                                                                                        [recorddict setValue:seg2 forKey:@"secondseg"];
                                                                                                                                                        [recorddict setValue:seg3 forKey:@"thirdseg"];
                                                                                                                                                        [recorddict setValue:seg4 forKey:@"fourthseg"];
                                                                                                                                                        [recorddict setValue:seg5 forKey:@"fifthseg"];
                                                                                                                                                        [recorddict setValue:seg6 forKey:@"sixthseg"];
                                                                                                                                                        [recorddict setValue:seg7 forKey:@"seventhseg"];
                                                                                                                                                        [recorddict setValue:seg8 forKey:@"eigthseg"];
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        [recorddict setValue:gaitlabel.text forKey:@"gait"];
                                                                                                                                                        [recorddict setValue:segnew1 forKey:@"pelvic seg one"];
                                                                                                                                                        [recorddict setValue:segnew2 forKey:@"anq seg two"];
                                                                                                                                                        [recorddict setValue:datefield.text forKey:@"datey"];
                                                                                                                                                        [recorddict setValue:patname.text forKey:@"patname"];
                                                                                                                                                        [recorddict setValue:check1text.text forKey:@"leftcheck"];
                                                                                                                                                        [recorddict setValue:check2text.text forKey:@"rightcheck"];
                                                                                                                                                        [recorddict setValue:flexion.text forKey:@"flexion"];
                                                                                                                                                        [recorddict setValue:antleft.text forKey:@"antleft"];
                                                                                                                                                        [recorddict setValue:antright.text forKey:@"antright"];
                                                                                                                                                        [recorddict setValue:extension.text forKey:@"extension"];
                                                                                                                                                        [recorddict setValue:postleft.text forKey:@"postleft"];
                                                                                                                                                        [recorddict setValue:postright.text forKey:@"postright"];
                                                                                                                                                        [recorddict setValue:internalleft.text forKey:@"internalleft"];
                                                                                                                                                        [recorddict setValue:internalright.text forKey:@"internalright"];
                                                                                                                                                        [recorddict setValue:lclleft.text forKey:@"lclleft"];
                                                                                                                                                        [recorddict setValue:lclright.text forKey:@"lclright"];
                                                                                                                                                        [recorddict setValue:mclleft.text forKey:@"mclleft"];
                                                                                                                                                        [recorddict setValue:mclright.text forKey:@"mclright"];
                                                                                                                                                        [recorddict setValue:externalleft.text forKey:@"externalleft"];
                                                                                                                                                        [recorddict setValue:externalright.text forKey:@"externalright"];
                                                                                                                                                        [recorddict setValue:medleft.text forKey:@"medleft"];
                                                                                                                                                        [recorddict setValue:medright.text forKey:@"medright"];
                                                                                                                                                        [recorddict setValue:menisleft.text forKey:@"menisleft"];
                                                                                                                                                        [recorddict setValue:menisright.text forKey:@"menisright"];
                                                                                                                                                        [recorddict setValue:corleft.text forKey:@"corleft"];
                                                                                                                                                        [recorddict setValue:corright.text forKey:@"corright"];
                                                                                                                                                        [recorddict setValue:cmpleft.text forKey:@"cmpleft"];
                                                                                                                                                        [recorddict setValue:cmpright.text forKey:@"cmpright"];
                                                                                                                                                        [recorddict setValue:patleft.text forKey:@"patleft"];
                                                                                                                                                        
                                                                                                                                                        [recorddict setValue:patright.text forKey:@"patright"];
                                                                                                                                                        [recorddict setValue:left1.text forKey:@"left1"];
                                                                                                                                                        [recorddict setValue:left2.text forKey:@"left2"];
                                                                                                                                                        [recorddict setValue:left3.text forKey:@"left3"];
                                                                                                                                                        [recorddict setValue:left4.text forKey:@"left4"];
                                                                                                                                                        [recorddict setValue:right1.text forKey:@"right1"];
                                                                                                                                                        [recorddict setValue:right2.text forKey:@"right2"];
                                                                                                                                                        [recorddict setValue:right3.text forKey:@"right3"];
                                                                                                                                                        [recorddict setValue:right4.text forKey:@"right4"];
                                                                                                                                                        //NSLog(@"succc value %i",suc);
                                                                                                                                                        //NSLog(@"recorddict in knee exam controller %@",recorddict);
                                                                                                                                                        suc=1;
                                                                                                                                                    }else{
                                                                                                                                                        suc=0;
                                                                                                                                                        
                                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                       description:@"Please enter valid right4  value."
                                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                          callback:nil];
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                        
                                                                                                                                                    }
                                                                                                                                                }else{
                                                                                                                                                    suc=0;
                                                                                                                                                    
                                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                                   description:@"Please enter valid right3  value."
                                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                      callback:nil];
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                }
                                                                                                                                            }else{
                                                                                                                                                suc=0;
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                               description:@"Please enter valid right2  value."
                                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                                  callback:nil];
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                            }
                                                                                                                                        }else{
                                                                                                                                            suc=0;
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                           description:@"Please enter valid right value."
                                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                              callback:nil];
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                    }else{
                                                                                                                                        suc=0;
                                                                                                                                        
                                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                       description:@"Please enter valid left4  value."
                                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                          callback:nil];
                                                                                                                                        
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                }else{
                                                                                                                                    suc=0;
                                                                                                                                    
                                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                                   description:@"Please enter valid left 3  value."
                                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                      callback:nil];
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                            }else{
                                                                                                                                suc=0;
                                                                                                                                
                                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                               description:@"Please enter valid left 2 value."
                                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                                  callback:nil];
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                        }else{
                                                                                                                            suc=0;
                                                                                                                            
                                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                           description:@"Please enter valid left1 value."
                                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                              callback:nil];
                                                                                                                            
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                    }else{
                                                                                                                        suc=0;
                                                                                                                        
                                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                       description:@"Please enter valid acl  value."
                                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                          callback:nil];
                                                                                                                        
                                                                                                                        
                                                                                                                        
                                                                                                                    }
                                                                                                                }else{
                                                                                                                    suc=0;
                                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                                   description:@"Please enter valid pat left value."
                                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                      callback:nil];
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                }
                                                                                                                
                                                                                                            }else{
                                                                                                                suc=0;
                                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                               description:@"Please enter valid cmp right value."
                                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                                  callback:nil];
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                            
                                                                                                        }else{
                                                                                                            suc=0;
                                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                           description:@"Please enter valid cmp left Value."
                                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                              callback:nil];
                                                                                                            
                                                                                                            
                                                                                                            
                                                                                                        }
                                                                                                        
                                                                                                    }else{
                                                                                                        suc=0;
                                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                       description:@"Please enter valid cor right value."
                                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                          callback:nil];
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                    }
                                                                                                }else{
                                                                                                    suc=0;
                                                                                                    
                                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                                   description:@"Please enter valid cor left value."
                                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                      callback:nil];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            else{
                                                                                                suc=0;
                                                                                                
                                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                               description:@"Please enter valid menis right value."
                                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                                  callback:nil];
                                                                                                
                                                                                                
                                                                                                
                                                                                            }
                                                                                        }else{
                                                                                            suc=0;
                                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                           description:@"Please enter valid menis left value."
                                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                              callback:nil];
                                                                                            
                                                                                            
                                                                                            
                                                                                        }
                                                                                        
                                                                                    }else{
                                                                                        suc=0;
                                                                                        
                                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                       description:@"Please enter valid med right value."
                                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                          callback:nil];
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                    }
                                                                                    
                                                                                }else{
                                                                                    suc=0;
                                                                                    
                                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                                   description:@"Please enter valid med left value."
                                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                      callback:nil];
                                                                                    
                                                                                    
                                                                                    
                                                                                    
                                                                                }
                                                                                
                                                                            }else{
                                                                                suc=0;
                                                                                
                                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                               description:@"Please enter valid external right value."
                                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                                  callback:nil];
                                                                                
                                                                                
                                                                                
                                                                            }
                                                                        }else{
                                                                            suc=0;
                                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                           description:@"Please enter valid external left value."
                                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                              callback:nil];
                                                                            
                                                                            
                                                                            
                                                                        }
                                                                        
                                                                    }else{
                                                                        suc=0;
                                                                        
                                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                       description:@"Please enter valid MCL Right  Value."
                                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                          callback:nil];
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                    
                                                                }else{
                                                                    suc=0;
                                                                    
                                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                                   description:@"Please enter valid mcl left value."
                                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                      callback:nil];
                                                                    
                                                                }
                                                                
                                                            }else{
                                                                suc=0;
                                                                
                                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                               description:@"Please enter valid lcl right value."
                                                                                                                      type:TWMessageBarMessageTypeError
                                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                                  callback:nil];
                                                                
                                                                
                                                                
                                                            }
                                                            
                                                        }else{
                                                            suc=0;
                                                            
                                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                           description:@"Please enter valid lcl value."
                                                                                                                  type:TWMessageBarMessageTypeError
                                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                                              callback:nil];
                                                            
                                                            
                                                            
                                                            
                                                        }
                                                    }else{
                                                        suc=0;
                                                        
                                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                       description:@"Please enter valid internal right value."
                                                                                                              type:TWMessageBarMessageTypeError
                                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                                          callback:nil];
                                                        
                                                        
                                                        
                                                        
                                                    }
                                                }else{
                                                    suc=0;
                                                    
                                                    
                                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                                   description:@"Please enter valid internal left value."
                                                                                                          type:TWMessageBarMessageTypeError
                                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                                      callback:nil];
                                                    
                                                    
                                                    
                                                }
                                                
                                            }else{
                                                suc=0;
                                                
                                                
                                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                               description:@"Please enter valid post right value."
                                                                                                      type:TWMessageBarMessageTypeError
                                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                                  callback:nil];
                                                
                                                
                                                
                                            }
                                            
                                        }else{
                                            suc=0;
                                            
                                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                           description:@"Please enter valid post left value."
                                                                                                  type:TWMessageBarMessageTypeError
                                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                                              callback:nil];
                                            
                                            
                                            
                                        }
                                        
                                    }else{
                                        suc=0;
                                        
                                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                       description:@"Please enter valid extension actual value."
                                                                                              type:TWMessageBarMessageTypeError
                                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                                          callback:nil];
                                        
                                        
                                        
                                    }
                                    
                                }else{
                                    suc=0;
                                    
                                    
                                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                                   description:@"Please enter valid acl right value."
                                                                                          type:TWMessageBarMessageTypeError
                                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                                      callback:nil];
                                    
                                    
                                    
                                    
                                }
                                
                            }else{
                                suc=0;
                                
                                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                               description:@"Please enter valid acl left value."
                                                                                      type:TWMessageBarMessageTypeError
                                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                                  callback:nil];
                                
                                
                                
                            }
                            
                            
                        }else{
                            suc=0;
                            
                            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                           description:@"Please enter valid flexion actual value."
                                                                                  type:TWMessageBarMessageTypeError
                                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                                              callback:nil];
                            
                            
                            
                        }
                        
                        
                    }else{
                        suc=0;
                        
                        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                       description:@"Please enter valid check2 textfield."
                                                                              type:TWMessageBarMessageTypeError
                                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                                          callback:nil];
                        
                        
                    }
                    
                }else{
                    suc=0;
                    
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                                   description:@"Please enter valid check1 textfield."
                                                                          type:TWMessageBarMessageTypeError
                                                                statusBarStyle:UIStatusBarStyleLightContent
                                                                      callback:nil];
                    
                    
                    
                }
                
                
            }
            else{
                suc=0;
                
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                               description:@"Please enter valid date."
                                                                      type:TWMessageBarMessageTypeError
                                                            statusBarStyle:UIStatusBarStyleLightContent
                                                                  callback:nil];
                
                
                
                
            }
            
        }else{
            suc=0;
            
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                           description:@"Please enter valid username."
                                                                  type:TWMessageBarMessageTypeError
                                                        statusBarStyle:UIStatusBarStyleLightContent
                                                              callback:nil];
            
            
            
            
        }
        
    }else{
        suc=0;
        
        
        
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle
                                                       description:@"Required field should not be empty."
                                                              type:TWMessageBarMessageTypeError
                                                    statusBarStyle:UIStatusBarStyleLightContent
                                                          callback:nil];
        
        
    }
    if(suc==1){
        [self performSegueWithIdentifier:@"kneeexam" sender:self];
    }
}

- (IBAction)changepelvic:(id)sender {
    if (pelvicpicker.hidden==YES)
    {
        pelvicpicker.hidden=NO;
        
    }
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	//NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	//NSLog(@"begin editing");
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    //NSLog(@"succc value in perform segue %i",suc);
    ////NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"kneeexam"])
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
    
    
    if ([segue.identifier isEqualToString:@"kneeexam"])
    {
        
        //NSLog(@"succc value in prepre segue %i ",suc);
        KneeExamViewController1 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        destViewController.resultset=resultset;
        //NSLog(@"recorddict in knee exam controller one %@",recorddict);
        // destViewController.delegate=self;
        
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
    // [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:2] animated:YES];
}

- (IBAction)reset:(id)sender {
    check11.selected=NO;
    check22.selected=NO;
    check33.selected=NO;
    check44.selected=NO;
    check55.selected=NO;
    
    
    [check22 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check33 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check11 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check44 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check55 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [check66 setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    [segment1 setSelectedSegmentIndex:0];
    [segment2 setSelectedSegmentIndex:0];
    [segment3 setSelectedSegmentIndex:0];
    [segment4 setSelectedSegmentIndex:0];
    [segment5 setSelectedSegmentIndex:0];
    [segment6 setSelectedSegmentIndex:0];
    [segment7 setSelectedSegmentIndex:0];
    [segment8 setSelectedSegmentIndex:0];
    
    [ segment1 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ segment2 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ segment3 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ segment4 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ segment5 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ segment6 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ segment7 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    [ segment8 setSelectedSegmentIndex:UISegmentedControlNoSegment];
    /* seg1=@"Left";
     seg2=@"Left";
     seg3=@"Left";
     seg4=@"Left";
     seg5=@"Left";
     seg6=@"Left";
     seg7=@"Left";
     seg8=@"Left";
     */
    
    [segmentnew1 setSelectedSegmentIndex:0];
    [segmentnew2 setSelectedSegmentIndex:0];
    
    check1text.hidden=YES;
    gaitpicker.hidden=YES;
    check2text.hidden=YES;
    pelvicpicker.hidden=YES;
    gaitlabel.text=@"Normal";
    pelviclabel.text=@"None";
    anqlabel.text=@"Excellent";
    check1=@"null";
    check2=@"null";
    segnew1=@"None";
    segnew2=@"Excellent";
    check3=@"null";
    checky4=@"null";
    
    check6=@"null";
    check5=@"null";
    
    seg1=@"null";
    seg2=@"null";
    
    seg3=@"null";
    seg4=@"null";
    
    seg6=@"null";
    seg5=@"null";
    
    seg7=@"null";
    seg8=@"null";
    anqpicker.hidden=YES;
    
    patname.text=@"";
    datefield.text=@"";
    flexion.text=@"";
    antleft.text=@"";
    antright.text=@"";
    extension.text=@"";
    postleft.text=@"";
    postright.text=@"";
    internalleft.text=@"";
    internalright.text=@"";
    lclleft.text=@"";
    lclright.text=@"";
    mclleft.text=@"";
    mclright.text=@"";
    externalleft.text=@"";
    externalright.text=@"";
    medleft.text=@"";
    medright.text=@"";
    menisleft.text=@"";
    menisright.text=@"";
    corleft.text=@"";
    corright.text=@"";
    cmpleft.text=@"";
    cmpright.text=@"";
    patleft.text=@"";
    patright.text=@"";
    left1.text=@"";
    left2.text=@"";
    left3.text=@"";
    left4.text=@"";
    right1.text=@"";
    right2.text=@"";
    right3.text=@"";
    
    right4.text=@"";
    check1text.text=@"";
    check2text.text=@"";
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


