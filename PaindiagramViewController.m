//
//  PaindiagramViewController.m
//  EHR
//
//  Created by DeemsysInc on 13/06/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "PaindiagramViewController.h"
#import "DragDropManager.h"
#import "SBJSON.h"
#import "Reachability.h"
#import "databaseurl.h"
#import "staffautocheckViewController.h"
#import "WelcomeViewController.h"
@interface PaindiagramViewController ()
{
    databaseurl *du;
    UIView *printView;
    UIBarButtonItem *barButton;
    UIButton *button;
}
@end

@implementation PaindiagramViewController
@synthesize staff;
UIColor *ache1;
UIColor *numb;

UIColor *pin;

UIColor *burn;
UIColor *stab;
NSMutableArray *draggableSubjects;
NSMutableArray *droppableAreas;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

@synthesize recorddict;
@synthesize reset1;
@synthesize reset2;
@synthesize sace;
@synthesize cancel1;
@synthesize cancel2;
@synthesize update;
@synthesize deleteform;
@synthesize viewA = _viewA;
@synthesize viewB = _viewB;
@synthesize viewC = _viewC;
@synthesize viewD = _viewD;
@synthesize viewE = _viewE;
@synthesize viewF = _viewF;

@synthesize viewY = _viewY;
@synthesize viewZ = _viewZ;



@synthesize  dragdroppin1=_dragdroppin1;
@synthesize  dragdroppin2=_dragdroppin2;
@synthesize  dragdroppin3=_dragdroppin3;
@synthesize  dragdroppin4=_dragdroppin4;
@synthesize dragDropManager = _dragDropManager;

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

NSString *namey,*numbyr,*datey;
float *_1,*_2,*_3,*_4;
int suc;



-(void)dismissKeyboard {
    printView.hidden = YES;
    [name resignFirstResponder];
    [number resignFirstResponder];
    [date resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


-(BOOL)validateString1:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z@_]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateString2:(NSString *)user

{
    NSString *userFormat1 =@"[0-9]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[/]+[0-9]{1,2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
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

    self.navigationItem.backBarButtonItem = [[[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil] autorelease];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    name.text=[[NSUserDefaults standardUserDefaults]objectForKey:@"patientname"];
    _viewA = [[UIView alloc] initWithFrame:CGRectMake(118,274,200,30)];
    [_viewA setBackgroundColor:[UIColor greenColor]];
    _viewA.tag = 1;
    _viewB = [[UIView alloc] initWithFrame:CGRectMake(38,439,257,377)];
    UIImageView *image=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 257, 377)];
    [image setImage:[UIImage imageNamed:@"bodyfront.png"]];
    [_viewB addSubview:image];
    
    
//    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"bodyfront.png"]];
//    self.viewB.backgroundColor = background;
    _viewB.tag = 2;
    _viewC = [[UIView alloc] initWithFrame:CGRectMake(480, 274, 200, 30)];
    [_viewC setBackgroundColor:[UIColor greenColor]];
    _viewC.tag = 3;
    
    _viewD = [[UIView alloc] initWithFrame:CGRectMake(118, 322, 200, 30)];
    [_viewD setBackgroundColor:[UIColor greenColor]];
    _viewD.tag = 4;
    
    _viewE = [[UIView alloc] initWithFrame:CGRectMake(480, 322, 200, 30)];
    [_viewE setBackgroundColor:[UIColor greenColor]];
    _viewE.tag = 5;
    
    _viewF = [[UIView alloc] initWithFrame:CGRectMake(118, 368, 200, 30)];
    [_viewF setBackgroundColor:[UIColor greenColor]];
    _viewF.tag = 6;
    

    _viewY = [[UIView alloc] initWithFrame:CGRectMake(469, 439, 257, 377)];
   // UIColor *bodyfront = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"bodyback.png"]];
    UIImageView *image1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 257, 377)];
    [image1 setImage:[UIImage imageNamed:@"bodyback.png"]];
    [_viewY addSubview:image1];
    _viewY.tag = 9;
    
    _viewZ = [[UIView alloc] initWithFrame:CGRectMake(315, 439, 143, 146)];
  //  UIColor *face = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"face.png"]];
    UIImageView *image2=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 143, 146)];
    [image2 setImage:[UIImage imageNamed:@"face.png"]];
    [_viewZ addSubview:image2];
    _viewZ.tag = 10;
    
    [[self view] addSubview:_viewA];
    [[self view] addSubview:_viewB];
    [[self view] addSubview:_viewC];
    [[self view] addSubview:_viewD];
    [[self view] addSubview:_viewE];
    [[self view] addSubview:_viewF];
    [[self view] addSubview:_viewZ];
    [[self view] addSubview:_viewY];
    
    
    
    ache1 = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"aches.jpg"]];

    numb = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"numb.png"]];
    
    pin = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"pin.png"]];
    burn = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"burn.png"]];
    
    stab = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"stabbing.png"]];
 
    
  
    UIView *dragDropView1 = [[[UIView alloc] initWithFrame:CGRectMake(0, 5, 20, 20)] autorelease];
    
    UIView *dragDropView2 = [[[UIView alloc] initWithFrame:CGRectMake(20, 5, 20, 20)] autorelease];
    
    UIView *dragDropView3 = [[[UIView alloc] initWithFrame:CGRectMake(40, 5, 20, 20)] autorelease];
    
    UIView *dragDropView4 = [[[UIView alloc] initWithFrame:CGRectMake(60, 5, 20, 20)] autorelease];
    
    UIView *dragDropView5 = [[[UIView alloc] initWithFrame:CGRectMake(80, 5, 20, 20)] autorelease];
    
    UIView *dragDropView6 = [[[UIView alloc] initWithFrame:CGRectMake(100, 5, 20, 20)] autorelease];
    
    UIView *dragDropView7 = [[[UIView alloc] initWithFrame:CGRectMake(120, 5, 20, 20)] autorelease];
    
    UIView *dragDropView8 = [[[UIView alloc] initWithFrame:CGRectMake(140, 5, 20, 20)] autorelease];
    
    UIView *dragDropView9 = [[[UIView alloc] initWithFrame:CGRectMake(160, 5, 20, 20)] autorelease];
    
    UIView *dragDropView10 = [[[UIView alloc] initWithFrame:CGRectMake(180, 5, 20, 20)] autorelease];

    
    
    [_viewA addSubview:dragDropView1];
    [_viewA addSubview:dragDropView2];
    [_viewA addSubview:dragDropView3];
    [_viewA addSubview:dragDropView4];
    [_viewA addSubview:dragDropView5];
    [_viewA addSubview:dragDropView6];
    [_viewA addSubview:dragDropView7];
    [_viewA addSubview:dragDropView8];
    [_viewA addSubview:dragDropView9];
    [_viewA addSubview:dragDropView10];
    
    
    [dragDropView1 setBackgroundColor:ache1];
    [dragDropView2 setBackgroundColor:ache1];
    [dragDropView3 setBackgroundColor:ache1];
    [dragDropView4 setBackgroundColor:ache1];
    
    [dragDropView5 setBackgroundColor:ache1];
    [dragDropView6 setBackgroundColor:ache1];
    
    [dragDropView7 setBackgroundColor:ache1];
    [dragDropView8 setBackgroundColor:ache1];
    
    [dragDropView9 setBackgroundColor:ache1];
    [dragDropView10 setBackgroundColor:ache1];
    
    
    dragDropView1.tag=11;
    dragDropView2.tag=12;
    dragDropView3.tag=13;
    dragDropView4.tag=14;
    dragDropView5.tag=15;
    dragDropView6.tag=16;
    dragDropView7.tag=17;
    dragDropView8.tag=18;
    dragDropView9.tag=19;
    dragDropView10.tag=20;
   
    
    UIView *dragDropView11 = [[[UIView alloc] initWithFrame:CGRectMake(0, 5, 20, 20)] autorelease];
    
    UIView *dragDropView12 = [[[UIView alloc] initWithFrame:CGRectMake(20, 5, 20, 20)] autorelease];
    
    UIView *dragDropView13 = [[[UIView alloc] initWithFrame:CGRectMake(40, 5, 20, 20)] autorelease];
    
    UIView *dragDropView14 = [[[UIView alloc] initWithFrame:CGRectMake(60, 5, 20, 20)] autorelease];
    
    UIView *dragDropView15 = [[[UIView alloc] initWithFrame:CGRectMake(80, 5, 20, 20)] autorelease];
    
    UIView *dragDropView16 = [[[UIView alloc] initWithFrame:CGRectMake(100, 5, 20, 20)] autorelease];
    
    UIView *dragDropView17 = [[[UIView alloc] initWithFrame:CGRectMake(120, 5, 20, 20)] autorelease];
    
    UIView *dragDropView18 = [[[UIView alloc] initWithFrame:CGRectMake(140, 5, 20, 20)] autorelease];
    
    UIView *dragDropView19 = [[[UIView alloc] initWithFrame:CGRectMake(160, 5, 20, 20)] autorelease];
    
    UIView *dragDropView20 = [[[UIView alloc] initWithFrame:CGRectMake(180, 5, 20, 20)] autorelease];
    
    dragDropView11.tag=21;
    dragDropView12.tag=22;
    dragDropView13.tag=23;
    dragDropView14.tag=24;
    dragDropView15.tag=25;
    dragDropView16.tag=26;
    dragDropView17.tag=27;
    dragDropView18.tag=28;
    dragDropView19.tag=29;
    dragDropView20.tag=30;
    
    
    _dragdroppin1 = [[UIView alloc] initWithFrame:CGRectMake(0, 5, 20, 20)] ;
    
    _dragdroppin2 = [[[UIView alloc] initWithFrame:CGRectMake(20, 5, 20, 20)] autorelease];
    
    _dragdroppin3 = [[[UIView alloc] initWithFrame:CGRectMake(40, 5, 20, 20)] autorelease];
    
    _dragdroppin4 = [[[UIView alloc] initWithFrame:CGRectMake(60, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin5 = [[[UIView alloc] initWithFrame:CGRectMake(80, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin6 = [[[UIView alloc] initWithFrame:CGRectMake(100, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin7 = [[[UIView alloc] initWithFrame:CGRectMake(120, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin8 = [[[UIView alloc] initWithFrame:CGRectMake(140, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin9 = [[[UIView alloc] initWithFrame:CGRectMake(160, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin10 = [[[UIView alloc] initWithFrame:CGRectMake(180, 5, 20, 20)] autorelease];
    
    _dragdroppin1.tag=31;
    _dragdroppin2.tag=32;
    _dragdroppin3.tag=33;
    _dragdroppin4.tag=34;
    dragdroppin5.tag=35;
    dragdroppin6.tag=36;
    dragdroppin7.tag=37;
    dragdroppin8.tag=38;
    dragdroppin9.tag=39;
    dragdroppin10.tag=40;
    
    
    
    UIView *dragdroppin11 = [[[UIView alloc] initWithFrame:CGRectMake(0, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin12 = [[[UIView alloc] initWithFrame:CGRectMake(20, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin13 = [[[UIView alloc] initWithFrame:CGRectMake(40, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin14 = [[[UIView alloc] initWithFrame:CGRectMake(60, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin15 = [[[UIView alloc] initWithFrame:CGRectMake(80, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin16 = [[[UIView alloc] initWithFrame:CGRectMake(100, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin17 = [[[UIView alloc] initWithFrame:CGRectMake(120, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin18 = [[[UIView alloc] initWithFrame:CGRectMake(140, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin19 = [[[UIView alloc] initWithFrame:CGRectMake(160, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin20 = [[[UIView alloc] initWithFrame:CGRectMake(180, 5, 20, 20)] autorelease];
    
    dragdroppin11.tag=41;
    dragdroppin12.tag=42;
    dragdroppin13.tag=43;
    dragdroppin14.tag=44;
    dragdroppin15.tag=45;
    dragdroppin16.tag=46;
    dragdroppin17.tag=47;
    dragdroppin18.tag=48;
    dragdroppin19.tag=49;
    dragdroppin20.tag=50;
    
    
    
    
    UIView *dragdropstab1 = [[[UIView alloc] initWithFrame:CGRectMake(0, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab2 = [[[UIView alloc] initWithFrame:CGRectMake(20, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab3 = [[[UIView alloc] initWithFrame:CGRectMake(40, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab4 = [[[UIView alloc] initWithFrame:CGRectMake(60, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab5 = [[[UIView alloc] initWithFrame:CGRectMake(80, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab6 = [[[UIView alloc] initWithFrame:CGRectMake(100, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab7 = [[[UIView alloc] initWithFrame:CGRectMake(120, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab8 = [[[UIView alloc] initWithFrame:CGRectMake(140, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab9 = [[[UIView alloc] initWithFrame:CGRectMake(160, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab10 = [[[UIView alloc] initWithFrame:CGRectMake(180, 5, 20, 20)] autorelease];
    
    dragdropstab1.tag=51;
    dragdropstab2.tag=52;
    dragdropstab3.tag=53;
    dragdropstab4.tag=54;
    dragdropstab5.tag=55;
    dragdropstab6.tag=56;
    dragdropstab7.tag=57;
    dragdropstab8.tag=58;
    dragdropstab9.tag=59;
    dragdropstab10.tag=60;
    
    
    
    [_viewA addSubview:dragDropView1];
    [_viewA addSubview:dragDropView2];
    [_viewA addSubview:dragDropView3];
    [_viewA addSubview:dragDropView4];
    [_viewA addSubview:dragDropView5];
    [_viewA addSubview:dragDropView6];
    [_viewA addSubview:dragDropView7];
    [_viewA addSubview:dragDropView8];
    [_viewA addSubview:dragDropView9];
    [_viewA addSubview:dragDropView10];
    
    [_viewC addSubview:dragDropView11];
    [_viewC addSubview:dragDropView12];
    [_viewC addSubview:dragDropView13];
    [_viewC addSubview:dragDropView14];
    [_viewC addSubview:dragDropView15];
    [_viewC addSubview:dragDropView16];
    [_viewC addSubview:dragDropView17];
    [_viewC addSubview:dragDropView18];
    [_viewC addSubview:dragDropView19];
    [_viewC addSubview:dragDropView20];
    
    [_viewD addSubview:_dragdroppin1];
    [_viewD addSubview:_dragdroppin2];
    [_viewD addSubview:_dragdroppin3];
    [_viewD addSubview:_dragdroppin4];
    [_viewD addSubview:dragdroppin5];
    [_viewD addSubview:dragdroppin6];
    [_viewD addSubview:dragdroppin7];
    [_viewD addSubview:dragdroppin8];
    [_viewD addSubview:dragdroppin9];
    [_viewD addSubview:dragdroppin10];
    
    [_viewE addSubview:dragdroppin11];
    [_viewE addSubview:dragdroppin12];
    [_viewE addSubview:dragdroppin13];
    [_viewE addSubview:dragdroppin14];
    [_viewE addSubview:dragdroppin15];
    [_viewE addSubview:dragdroppin16];
    [_viewE addSubview:dragdroppin17];
    [_viewE addSubview:dragdroppin18];
    [_viewE addSubview:dragdroppin19];
    [_viewE addSubview:dragdroppin20];
    
    
    [_viewF addSubview:dragdropstab1];
    [_viewF addSubview:dragdropstab2];
    [_viewF addSubview:dragdropstab3];
    [_viewF addSubview:dragdropstab4];
    [_viewF addSubview:dragdropstab5];
    [_viewF addSubview:dragdropstab6];
    [_viewF addSubview:dragdropstab7];
    [_viewF addSubview:dragdropstab8];
    [_viewF addSubview:dragdropstab9];
    [_viewF addSubview:dragdropstab10];

    
    
    [dragDropView1 setBackgroundColor:ache1];
    [dragDropView2 setBackgroundColor:ache1];
    [dragDropView3 setBackgroundColor:ache1];
    [dragDropView4 setBackgroundColor:ache1];
    
    [dragDropView5 setBackgroundColor:ache1];
    [dragDropView6 setBackgroundColor:ache1];
    
    [dragDropView7 setBackgroundColor:ache1];
    [dragDropView8 setBackgroundColor:ache1];
    
    [dragDropView9 setBackgroundColor:ache1];
    [dragDropView10 setBackgroundColor:ache1];
    
    [dragDropView11 setBackgroundColor:numb];
    [dragDropView12 setBackgroundColor:numb];
    [dragDropView13 setBackgroundColor:numb];
    [dragDropView14 setBackgroundColor:numb];
    
    [dragDropView15 setBackgroundColor:numb];
    [dragDropView16 setBackgroundColor:numb];
    
    [dragDropView17 setBackgroundColor:numb];
    [dragDropView18 setBackgroundColor:numb];
    
    [dragDropView19 setBackgroundColor:numb];
    [dragDropView20 setBackgroundColor:numb];
    
    
    [_dragdroppin1 setBackgroundColor:pin];
    [_dragdroppin2 setBackgroundColor:pin];
    [_dragdroppin3 setBackgroundColor:pin];
    [_dragdroppin4 setBackgroundColor:pin];
    
    [dragdroppin5 setBackgroundColor:pin];
    [dragdroppin6 setBackgroundColor:pin];
    
    [dragdroppin7 setBackgroundColor:pin];
    [dragdroppin8 setBackgroundColor:pin];
    
    [dragdroppin9 setBackgroundColor:pin];
    [dragdroppin10 setBackgroundColor:pin];
    
    [dragdroppin11 setBackgroundColor:burn];
    [dragdroppin12 setBackgroundColor:burn];
    [dragdroppin13 setBackgroundColor:burn];
    [dragdroppin14 setBackgroundColor:burn];
    
    [dragdroppin15 setBackgroundColor:burn];
    [dragdroppin16 setBackgroundColor:burn];
    
    [dragdroppin17 setBackgroundColor:burn];
    [dragdroppin18 setBackgroundColor:burn];
    
    [dragdroppin19 setBackgroundColor:burn];
    [dragdroppin20 setBackgroundColor:burn];
    
    
    [dragdropstab1 setBackgroundColor:stab];
    [dragdropstab2 setBackgroundColor:stab];
    [dragdropstab3 setBackgroundColor:stab];
    [dragdropstab4 setBackgroundColor:stab];
    
    [dragdropstab5 setBackgroundColor:stab];
    [dragdropstab6 setBackgroundColor:stab];
    
    [dragdropstab7 setBackgroundColor:stab];
    [dragdropstab8 setBackgroundColor:stab];
    
    [dragdropstab9 setBackgroundColor:stab];
    [dragdropstab10 setBackgroundColor:stab];
    
    
    draggableSubjects = [[NSMutableArray alloc] initWithObjects:dragDropView1, dragDropView2, dragDropView3, dragDropView4,dragDropView5, dragDropView6,dragDropView7, dragDropView8,dragDropView9, dragDropView10,dragDropView11, dragDropView12, dragDropView13, dragDropView14,dragDropView15, dragDropView16,dragDropView17, dragDropView18,dragDropView19, dragDropView20,_dragdroppin1, _dragdroppin2, _dragdroppin3, _dragdroppin4,dragdroppin5, dragdroppin6,dragdroppin7, dragdroppin8,dragdroppin9, dragdroppin10,dragdroppin11, dragdroppin12, dragdroppin13, dragdroppin14,dragdroppin15, dragdroppin16,dragdroppin17, dragdroppin18,dragdroppin19, dragdroppin20,dragdropstab1, dragdropstab2, dragdropstab3, dragdropstab4,dragdropstab5, dragdropstab6,dragdropstab7, dragdropstab8,dragdropstab9, dragdropstab10,nil];
    
    
    
    droppableAreas = [[NSMutableArray alloc] initWithObjects:_viewA,_viewB,_viewY,_viewZ,nil];
    _dragDropManager = [[DragDropManager alloc] initWithDragSubjects:draggableSubjects andDropAreas:droppableAreas];
    [draggableSubjects release];
    [droppableAreas release];
    
    UIPanGestureRecognizer * uiTapGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:_dragDropManager action:@selector(dragging:)];
    [[self view] addGestureRecognizer:uiTapGestureRecognizer];
    [uiTapGestureRecognizer release];
    
    
    sace.hidden=NO;
    cancel1.hidden=NO;
    reset1.hidden=NO;
    update.hidden=YES;
    cancel2.hidden=YES;
    reset2.hidden=YES;
    deleteform.hidden=YES;

[self displaydata];
}
-(void)displaydata
{
    
    
        //    to read whether participant already submitted the data or not
        NSString *username=[[NSUserDefaults standardUserDefaults]objectForKey:@"username"];
        
        NSString *resultResponse=[self HttpPostGetdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
        NSError *error;
        SBJSON *json = [[SBJSON new] autorelease];
        // NSLog(@"response %@",resultResponse);
        NSDictionary *luckyNumbers = [json objectWithString:resultResponse error:&error];
        NSDictionary *itemsApp = [luckyNumbers objectForKey:@"serviceresponse"];
        NSArray *items1App=[itemsApp objectForKey:@"symptomuser List"];
        
        NSString *resultResponse1=[self HttpPostGetsymptomdetails:@"username" ForValue1:username  EntitySecond:@"authkey" ForValue2:@"rzTFevN099Km39PV"];
        
//        NSLog(@"datassssss %@",items1App);
        if ([items1App count]>0)
        {
            
            for (id anUpdate1 in items1App)
            {
                NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
                
                //        NSLog(@"arraylist count %d",[arrayList1 count]);
                temp=[arrayList1 objectForKey:@"patient_no"];
                temp1 =[arrayList1 objectForKey:@"username"];
                name.text =[arrayList1 objectForKey:@"name"];
                number.text =[arrayList1 objectForKey:@"number"];
                date.text =[arrayList1 objectForKey:@"date"];
                update.hidden=NO;
                cancel2.hidden=NO;
                reset2.hidden=NO;
                deleteform.hidden=NO;
                sace.hidden=YES;
                cancel1.hidden=YES;
                reset1.hidden=YES;
                
                
            }
            
            
        }
        else
        {
            // resultResponse1=@"";
        }
        @try {
            
            
            NSError *error1;
            SBJSON *json1 = [[SBJSON new] autorelease];
//            NSLog(@"response %@",resultResponse1);
            NSDictionary *luckyNumbers1 = [json1 objectWithString:resultResponse1 error:&error1];
            NSDictionary *itemsApp1 = [luckyNumbers1 objectForKey:@"serviceresponse"];
            NSArray *items1App1=[itemsApp1 objectForKey:@"symptomuser List"];
            
//            NSLog(@"items1app1 %@",items1App1);
            NSMutableArray *image=[[NSMutableArray alloc]init];
             NSMutableArray *tagnum=[[NSMutableArray alloc]init];
             NSMutableArray *xpos=[[NSMutableArray alloc]init];
             NSMutableArray *ypos=[[NSMutableArray alloc]init];
            
            if ([items1App1 count]>0)
            {
                
                for (id anUpdate1 in items1App1)
                {
                    NSDictionary *arrayList1=[(NSDictionary*)anUpdate1 objectForKey:@"serviceresponse"];
                    
                    
                    [image addObject:[arrayList1 objectForKey:@"diag"]];
                    [tagnum addObject:[arrayList1 objectForKey:@"tagnumber"]];
                    [xpos addObject:[arrayList1 objectForKey:@"xpos"]];
                    [ypos addObject:[arrayList1 objectForKey:@"ypos"]];
                    
                    
                }
                NSLog(@"tag values %@",tagnum);
                NSLog(@"x values %@",xpos);
                NSLog(@"y values %@",ypos);
                
                if ([tagnum count]>0)
                {
//                    NSLog(@"called");
                    for (int i=0; i< [tagnum count]; i++)
                    {
                        for (UIView *view in [_viewA subviews])
                        {
                            if ([view isKindOfClass:[UIView class]])
                            {
//                                NSLog(@"called1");
                                if (view.tag==[[tagnum objectAtIndex:i]intValue])
                                {
                                   NSLog(@"called2 in viewa");
                                    float val1= [xpos[i] floatValue];
                                    float val2= [ypos[i] floatValue];
                                   
                                    UIView *dragDropView111 = [[[UIView alloc] initWithFrame:CGRectMake(val1, val2, 20, 20)] autorelease];
                                    dragDropView111.tag=[[tagnum objectAtIndex:i]intValue];
                                    [dragDropView111 setBackgroundColor:ache1];
                                    
                                    [view removeFromSuperview];
                                    
                                    if ([[image objectAtIndex:i]isEqualToString:@"bodyfront.png"]) {
                                        [_viewB addSubview:dragDropView111];
                                       // NSLog(@"assigned");
                                    }
                                    else if ([[image objectAtIndex:i]isEqualToString:@"bodyback.png"]) {
                                        [_viewY addSubview:dragDropView111];
                                    }
                                    else if ([[image objectAtIndex:i]isEqualToString:@"face.png"]) {
                                        [_viewZ addSubview:dragDropView111];
                                    }
                                    [draggableSubjects addObject:dragDropView111];
                                   
                                }
                            }
                            
                        }//end of viewA
                        
                        for (UIView *view in [_viewC subviews])
                        {
                            if ([view isKindOfClass:[UIView class]])
                            {
                                //                                NSLog(@"called1");
                                if (view.tag==[[tagnum objectAtIndex:i]intValue])
                                {
                                    NSLog(@"called2 in viewc");
                                    float val1= [xpos[i] floatValue];
                                    float val2= [ypos[i] floatValue];
                                    
                                    UIView *dragDropView111 = [[[UIView alloc] initWithFrame:CGRectMake(val1, val2, 20, 20)] autorelease];
                                    dragDropView111.tag=[[tagnum objectAtIndex:i]intValue];
                                    [dragDropView111 setBackgroundColor:numb];
                                    
                                    [view removeFromSuperview];
                                    
                                    if ([[image objectAtIndex:i]isEqualToString:@"bodyfront.png"]) {
                                        [_viewB addSubview:dragDropView111];
                                        // NSLog(@"assigned");
                                    }
                                    else if ([[image objectAtIndex:i]isEqualToString:@"bodyback.png"]) {
                                        [_viewY addSubview:dragDropView111];
                                    }
                                    else if ([[image objectAtIndex:i]isEqualToString:@"face.png"]) {
                                        [_viewZ addSubview:dragDropView111];
                                    }
                                    [draggableSubjects addObject:dragDropView111];
                                }
                            }
                            
                        }//end of viewC
                        for (UIView *view in [_viewD subviews])
                        {
                            if ([view isKindOfClass:[UIView class]])
                            {
                                //                                NSLog(@"called1");
                                if (view.tag==[[tagnum objectAtIndex:i]intValue])
                                {
                                   NSLog(@"called2 in viewd");
                                    float val1= [xpos[i] floatValue];
                                    float val2= [ypos[i] floatValue];
                                    
                                    UIView *dragDropView111 = [[[UIView alloc] initWithFrame:CGRectMake(val1, val2, 20, 20)] autorelease];
                                    dragDropView111.tag=[[tagnum objectAtIndex:i]intValue];
                                    [dragDropView111 setBackgroundColor:pin];
                                    
                                    [view removeFromSuperview];
                                    
                                    if ([[image objectAtIndex:i]isEqualToString:@"bodyfront.png"]) {
                                        [_viewB addSubview:dragDropView111];
                                        // NSLog(@"assigned");
                                    }
                                    else if ([[image objectAtIndex:i]isEqualToString:@"bodyback.png"]) {
                                        [_viewY addSubview:dragDropView111];
                                    }
                                    else if ([[image objectAtIndex:i]isEqualToString:@"face.png"]) {
                                        [_viewZ addSubview:dragDropView111];
                                    }
                                    [draggableSubjects addObject:dragDropView111];
                                }
                            }
                            
                        }//end of viewD
                        for (UIView *view in [_viewE subviews])
                        {
                            if ([view isKindOfClass:[UIView class]])
                            {
                                //                                NSLog(@"called1");
                                if (view.tag==[[tagnum objectAtIndex:i]intValue])
                                {
                                   NSLog(@"called2 in viewe");
                                    float val1= [xpos[i] floatValue];
                                    float val2= [ypos[i] floatValue];
                                    
                                    UIView *dragDropView111 = [[[UIView alloc] initWithFrame:CGRectMake(val1, val2, 20, 20)] autorelease];
                                    dragDropView111.tag=[[tagnum objectAtIndex:i]intValue];
                                    [dragDropView111 setBackgroundColor:burn];
                                    
                                    [view removeFromSuperview];
                                    
                                    if ([[image objectAtIndex:i]isEqualToString:@"bodyfront.png"]) {
                                        [_viewB addSubview:dragDropView111];
                                        // NSLog(@"assigned");
                                    }
                                    else if ([[image objectAtIndex:i]isEqualToString:@"bodyback.png"]) {
                                        [_viewY addSubview:dragDropView111];
                                    }
                                    else if ([[image objectAtIndex:i]isEqualToString:@"face.png"]) {
                                        [_viewZ addSubview:dragDropView111];
                                    }
                                    [draggableSubjects addObject:dragDropView111];
                                }
                            }
                            
                        }//end of viewE
                        for (UIView *view in [_viewF subviews])
                        {
                            if ([view isKindOfClass:[UIView class]])
                            {
                                //                                NSLog(@"called1");
                                if (view.tag==[[tagnum objectAtIndex:i]intValue])
                                {
                                    NSLog(@"called2 in vief");
                                    float val1= [xpos[i] floatValue];
                                    float val2= [ypos[i] floatValue];
                                    
                                    UIView *dragDropView111 = [[[UIView alloc] initWithFrame:CGRectMake(val1, val2, 20, 20)] autorelease];
                                    dragDropView111.tag=[[tagnum objectAtIndex:i]intValue];
                                    [dragDropView111 setBackgroundColor:stab];
                                    
                                    [view removeFromSuperview];
                                    
                                    if ([[image objectAtIndex:i]isEqualToString:@"bodyfront.png"]) {
                                        [_viewB addSubview:dragDropView111];
                                        // NSLog(@"assigned");
                                    }
                                    else if ([[image objectAtIndex:i]isEqualToString:@"bodyback.png"]) {
                                        [_viewY addSubview:dragDropView111];
                                    }
                                    else if ([[image objectAtIndex:i]isEqualToString:@"face.png"]) {
                                        [_viewZ addSubview:dragDropView111];
                                    }
                                    [draggableSubjects addObject:dragDropView111];
                                }
                            }
                            
                        }//end of viewF
                        
                    }//end of first for loop
                }//end of tag count condition
                
            }// end of items1app1
            else
            {
                
            }
        }
        @catch (NSException *exception) {
            
        }
        @finally {
            
        }
        
        
 

}
-(NSString *)HttpPostGetdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
   NSString *url1=@"Symptomios.php?service=symptomselect";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
   // NSLog(@"POST:%@ %@",post,url2);
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
    //   NSLog(@"data %@",data);
    
    return data;
    
}
-(NSString *)HttpPostGetsymptomdetails:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
  
    NSString *url1=@"Symptomios.php?service=symptomscaleselect";
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&%@=%@",firstEntity,value1,secondEntity,value2];
    
    // NSLog(@"POST:%@",post);
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
   // NSLog(@"data in scal %@",data);
    
    return data;
    
}



- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [_viewA release];
    [_viewB release];
    [_dragDropManager release];
   
   
    [super dealloc];
}

- (IBAction)save:(id)sender {
    du=[[databaseurl alloc]init];
    namey=[name.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    numbyr=[number.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    datey=[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    suc=1;
    if(([name.text length]!=0)&&([date.text length]!=0))
    {
        if([du patname:name.text]==1)
        {
            if((([du date:number.text]==1)&&([number.text length]>0))||([number.text length]==0))
            {
                if([du dateexpress:date.text]==1)
                {
                    suc=1;
                    recorddict=[[NSMutableDictionary alloc]init];
                    
                    [recorddict setValue:name.text forKey:@"name"];
                    
                    [recorddict setValue:number.text forKey:@"number"];
                    
                    [recorddict setValue:date.text forKey:@"date"];
                    
                    //[recorddict setValue:NSStringFromCGRect(dragdroppin1.frame) forKey:@"date"];
                    
                    // [recorddict setValue: forKey:@"patient name"];
                  
//                    CGPoint cg1=[_dragdroppin1.superview convertPoint:_dragdroppin1.frame.origin toView:_viewD];
//                    CGPoint cg2=[_dragdroppin2.superview convertPoint:_dragdroppin2.frame.origin toView:_viewD];
//                    CGPoint cg3=[_dragdroppin3.superview convertPoint:_dragdroppin1.frame.origin toView:_viewD];
//                    CGPoint cg4=[_dragdroppin4.superview convertPoint:_dragdroppin2.frame.origin toView:nil];
//                    
//                    _1=&cg1.x;
//                    _2=&cg1.y;
//                    _3=&cg2.x;
//                    _4=&cg2.y;
//                    
//                    NSLog(@"UIVIEw of X using convertview ::%f",_1);
//                    NSLog(@"UIVIEw of Y using convertview ::%f",_2);
//                    NSLog(@"UIVIEw of 3 X using convertview ::%f",_3);
//                    NSLog(@"UIVIEw of 4 Y using convertview ::%f",_4);
//                    
//                    NSString *str1=NSStringFromCGRect(_dragdroppin1.frame);
//                    NSString *str2=NSStringFromCGRect(_dragdroppin2.frame);
//                    NSString *str3=NSStringFromCGRect(_dragdroppin3.frame);
//                    NSString *str4=NSStringFromCGRect(_dragdroppin4.frame);
//                    NSLog(@"UIVIEw of 1  ::%@",str1);
//                    NSLog(@"UIVIEw of 2::%@",str2);
//                    NSLog(@"UIVIEw of 3::%@",str3);
//                    NSLog(@"UIVIEw of 4::%@",NSStringFromCGRect(_dragdroppin4.frame));
                    
                    NSLog(@"Record dict Value in symptom diagram::%@",recorddict);
                    
                  
                }
                
                
                else
                {
                    suc=0;
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid date." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                }
            }
            else
            {
                suc=0;
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid number." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
            }
        }
        else{
            suc=0;
            [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Please enter valid name." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
        }
        
    }
    else{
        suc=0;
        [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Required fields should not be empty." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
    }
    if (suc==1)
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"symptom Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form updation successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                // [self performSegueWithIdentifier:@"symptomtoquad" sender:self];
                [self cancel:self];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form updation failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                // [self performSegueWithIdentifier:@"symptomtoquad" sender:self];
                [self cancel:self];
                
                
            }
        }
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
        for (id controller in [self.navigationController viewControllers])
        {
            if ([controller isKindOfClass:[WelcomeViewController class]])
            {
                [self.navigationController popToViewController:controller animated:YES];
                break;
            }
        }
        
    }

   
    
}
-(IBAction)reset:(id)sender
{
    NSArray *viewsToRemove = [_viewB subviews];
    for (UIView *v in viewsToRemove) {
        if (v.tag!=0) {
             [v removeFromSuperview];
        }
       
    }
    NSArray *viewsToRemove1 = [_viewY subviews];
    for (UIView *v in viewsToRemove1) {
        if (v.tag!=0) {
            [v removeFromSuperview];
        }
    }
    NSArray *viewsToRemove2 = [_viewZ subviews];
    for (UIView *v in viewsToRemove2) {
        if (v.tag!=0) {
            [v removeFromSuperview];
        }
    }
    NSArray *viewsToRemove3 = [_viewA subviews];
    for (UIView *v in viewsToRemove3) {
        if (v.tag!=0) {
            [v removeFromSuperview];
        }
        
    }
    NSArray *viewsToRemove4 = [_viewC subviews];
    for (UIView *v in viewsToRemove4) {
        if (v.tag!=0) {
            [v removeFromSuperview];
        }
        
    }
    NSArray *viewsToRemove5 = [_viewD subviews];
    for (UIView *v in viewsToRemove5) {
        if (v.tag!=0) {
            [v removeFromSuperview];
        }
        
    }
    NSArray *viewsToRemove6 = [_viewE subviews];
    for (UIView *v in viewsToRemove6) {
        if (v.tag!=0) {
            [v removeFromSuperview];
        }
        
    }
    NSArray *viewsToRemove7 = [_viewF subviews];
    for (UIView *v in viewsToRemove7) {
        if (v.tag!=0) {
            [v removeFromSuperview];
        }
        
    }
    UIView *dragDropView1 = [[[UIView alloc] initWithFrame:CGRectMake(0, 5, 20, 20)] autorelease];
    
    UIView *dragDropView2 = [[[UIView alloc] initWithFrame:CGRectMake(20, 5, 20, 20)] autorelease];
    
    UIView *dragDropView3 = [[[UIView alloc] initWithFrame:CGRectMake(40, 5, 20, 20)] autorelease];
    
    UIView *dragDropView4 = [[[UIView alloc] initWithFrame:CGRectMake(60, 5, 20, 20)] autorelease];
    
    UIView *dragDropView5 = [[[UIView alloc] initWithFrame:CGRectMake(80, 5, 20, 20)] autorelease];
    
    UIView *dragDropView6 = [[[UIView alloc] initWithFrame:CGRectMake(100, 5, 20, 20)] autorelease];
    
    UIView *dragDropView7 = [[[UIView alloc] initWithFrame:CGRectMake(120, 5, 20, 20)] autorelease];
    
    UIView *dragDropView8 = [[[UIView alloc] initWithFrame:CGRectMake(140, 5, 20, 20)] autorelease];
    
    UIView *dragDropView9 = [[[UIView alloc] initWithFrame:CGRectMake(160, 5, 20, 20)] autorelease];
    
    UIView *dragDropView10 = [[[UIView alloc] initWithFrame:CGRectMake(180, 5, 20, 20)] autorelease];
    
    
    
    [_viewA addSubview:dragDropView1];
    [_viewA addSubview:dragDropView2];
    [_viewA addSubview:dragDropView3];
    [_viewA addSubview:dragDropView4];
    [_viewA addSubview:dragDropView5];
    [_viewA addSubview:dragDropView6];
    [_viewA addSubview:dragDropView7];
    [_viewA addSubview:dragDropView8];
    [_viewA addSubview:dragDropView9];
    [_viewA addSubview:dragDropView10];
    
    
    [dragDropView1 setBackgroundColor:ache1];
    [dragDropView2 setBackgroundColor:ache1];
    [dragDropView3 setBackgroundColor:ache1];
    [dragDropView4 setBackgroundColor:ache1];
    
    [dragDropView5 setBackgroundColor:ache1];
    [dragDropView6 setBackgroundColor:ache1];
    
    [dragDropView7 setBackgroundColor:ache1];
    [dragDropView8 setBackgroundColor:ache1];
    
    [dragDropView9 setBackgroundColor:ache1];
    [dragDropView10 setBackgroundColor:ache1];
    
    
    dragDropView1.tag=11;
    dragDropView2.tag=12;
    dragDropView3.tag=13;
    dragDropView4.tag=14;
    dragDropView5.tag=15;
    dragDropView6.tag=16;
    dragDropView7.tag=17;
    dragDropView8.tag=18;
    dragDropView9.tag=19;
    dragDropView10.tag=20;
    
    
    UIView *dragDropView11 = [[[UIView alloc] initWithFrame:CGRectMake(0, 5, 20, 20)] autorelease];
    
    UIView *dragDropView12 = [[[UIView alloc] initWithFrame:CGRectMake(20, 5, 20, 20)] autorelease];
    
    UIView *dragDropView13 = [[[UIView alloc] initWithFrame:CGRectMake(40, 5, 20, 20)] autorelease];
    
    UIView *dragDropView14 = [[[UIView alloc] initWithFrame:CGRectMake(60, 5, 20, 20)] autorelease];
    
    UIView *dragDropView15 = [[[UIView alloc] initWithFrame:CGRectMake(80, 5, 20, 20)] autorelease];
    
    UIView *dragDropView16 = [[[UIView alloc] initWithFrame:CGRectMake(100, 5, 20, 20)] autorelease];
    
    UIView *dragDropView17 = [[[UIView alloc] initWithFrame:CGRectMake(120, 5, 20, 20)] autorelease];
    
    UIView *dragDropView18 = [[[UIView alloc] initWithFrame:CGRectMake(140, 5, 20, 20)] autorelease];
    
    UIView *dragDropView19 = [[[UIView alloc] initWithFrame:CGRectMake(160, 5, 20, 20)] autorelease];
    
    UIView *dragDropView20 = [[[UIView alloc] initWithFrame:CGRectMake(180, 5, 20, 20)] autorelease];
    
    dragDropView11.tag=21;
    dragDropView12.tag=22;
    dragDropView13.tag=23;
    dragDropView14.tag=24;
    dragDropView15.tag=25;
    dragDropView16.tag=26;
    dragDropView17.tag=27;
    dragDropView18.tag=28;
    dragDropView19.tag=29;
    dragDropView20.tag=30;
    
    
    _dragdroppin1 = [[UIView alloc] initWithFrame:CGRectMake(0, 5, 20, 20)] ;
    
    _dragdroppin2 = [[[UIView alloc] initWithFrame:CGRectMake(20, 5, 20, 20)] autorelease];
    
    _dragdroppin3 = [[[UIView alloc] initWithFrame:CGRectMake(40, 5, 20, 20)] autorelease];
    
    _dragdroppin4 = [[[UIView alloc] initWithFrame:CGRectMake(60, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin5 = [[[UIView alloc] initWithFrame:CGRectMake(80, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin6 = [[[UIView alloc] initWithFrame:CGRectMake(100, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin7 = [[[UIView alloc] initWithFrame:CGRectMake(120, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin8 = [[[UIView alloc] initWithFrame:CGRectMake(140, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin9 = [[[UIView alloc] initWithFrame:CGRectMake(160, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin10 = [[[UIView alloc] initWithFrame:CGRectMake(180, 5, 20, 20)] autorelease];
    
    _dragdroppin1.tag=31;
    _dragdroppin2.tag=32;
    _dragdroppin3.tag=33;
    _dragdroppin4.tag=34;
    dragdroppin5.tag=35;
    dragdroppin6.tag=36;
    dragdroppin7.tag=37;
    dragdroppin8.tag=38;
    dragdroppin9.tag=39;
    dragdroppin10.tag=40;
    
    
    
    UIView *dragdroppin11 = [[[UIView alloc] initWithFrame:CGRectMake(0, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin12 = [[[UIView alloc] initWithFrame:CGRectMake(20, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin13 = [[[UIView alloc] initWithFrame:CGRectMake(40, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin14 = [[[UIView alloc] initWithFrame:CGRectMake(60, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin15 = [[[UIView alloc] initWithFrame:CGRectMake(80, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin16 = [[[UIView alloc] initWithFrame:CGRectMake(100, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin17 = [[[UIView alloc] initWithFrame:CGRectMake(120, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin18 = [[[UIView alloc] initWithFrame:CGRectMake(140, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin19 = [[[UIView alloc] initWithFrame:CGRectMake(160, 5, 20, 20)] autorelease];
    
    UIView *dragdroppin20 = [[[UIView alloc] initWithFrame:CGRectMake(180, 5, 20, 20)] autorelease];
    
    dragdroppin11.tag=41;
    dragdroppin12.tag=42;
    dragdroppin13.tag=43;
    dragdroppin14.tag=44;
    dragdroppin15.tag=45;
    dragdroppin16.tag=46;
    dragdroppin17.tag=47;
    dragdroppin18.tag=48;
    dragdroppin19.tag=49;
    dragdroppin20.tag=50;
    
    
    
    
    UIView *dragdropstab1 = [[[UIView alloc] initWithFrame:CGRectMake(0, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab2 = [[[UIView alloc] initWithFrame:CGRectMake(20, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab3 = [[[UIView alloc] initWithFrame:CGRectMake(40, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab4 = [[[UIView alloc] initWithFrame:CGRectMake(60, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab5 = [[[UIView alloc] initWithFrame:CGRectMake(80, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab6 = [[[UIView alloc] initWithFrame:CGRectMake(100, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab7 = [[[UIView alloc] initWithFrame:CGRectMake(120, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab8 = [[[UIView alloc] initWithFrame:CGRectMake(140, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab9 = [[[UIView alloc] initWithFrame:CGRectMake(160, 5, 20, 20)] autorelease];
    
    UIView *dragdropstab10 = [[[UIView alloc] initWithFrame:CGRectMake(180, 5, 20, 20)] autorelease];
    
    dragdropstab1.tag=51;
    dragdropstab2.tag=52;
    dragdropstab3.tag=53;
    dragdropstab4.tag=54;
    dragdropstab5.tag=55;
    dragdropstab6.tag=56;
    dragdropstab7.tag=57;
    dragdropstab8.tag=58;
    dragdropstab9.tag=59;
    dragdropstab10.tag=60;
    
    
    
    [_viewA addSubview:dragDropView1];
    [_viewA addSubview:dragDropView2];
    [_viewA addSubview:dragDropView3];
    [_viewA addSubview:dragDropView4];
    [_viewA addSubview:dragDropView5];
    [_viewA addSubview:dragDropView6];
    [_viewA addSubview:dragDropView7];
    [_viewA addSubview:dragDropView8];
    [_viewA addSubview:dragDropView9];
    [_viewA addSubview:dragDropView10];
    
    [_viewC addSubview:dragDropView11];
    [_viewC addSubview:dragDropView12];
    [_viewC addSubview:dragDropView13];
    [_viewC addSubview:dragDropView14];
    [_viewC addSubview:dragDropView15];
    [_viewC addSubview:dragDropView16];
    [_viewC addSubview:dragDropView17];
    [_viewC addSubview:dragDropView18];
    [_viewC addSubview:dragDropView19];
    [_viewC addSubview:dragDropView20];
    
    [_viewD addSubview:_dragdroppin1];
    [_viewD addSubview:_dragdroppin2];
    [_viewD addSubview:_dragdroppin3];
    [_viewD addSubview:_dragdroppin4];
    [_viewD addSubview:dragdroppin5];
    [_viewD addSubview:dragdroppin6];
    [_viewD addSubview:dragdroppin7];
    [_viewD addSubview:dragdroppin8];
    [_viewD addSubview:dragdroppin9];
    [_viewD addSubview:dragdroppin10];
    
    [_viewE addSubview:dragdroppin11];
    [_viewE addSubview:dragdroppin12];
    [_viewE addSubview:dragdroppin13];
    [_viewE addSubview:dragdroppin14];
    [_viewE addSubview:dragdroppin15];
    [_viewE addSubview:dragdroppin16];
    [_viewE addSubview:dragdroppin17];
    [_viewE addSubview:dragdroppin18];
    [_viewE addSubview:dragdroppin19];
    [_viewE addSubview:dragdroppin20];
    
    
    [_viewF addSubview:dragdropstab1];
    [_viewF addSubview:dragdropstab2];
    [_viewF addSubview:dragdropstab3];
    [_viewF addSubview:dragdropstab4];
    [_viewF addSubview:dragdropstab5];
    [_viewF addSubview:dragdropstab6];
    [_viewF addSubview:dragdropstab7];
    [_viewF addSubview:dragdropstab8];
    [_viewF addSubview:dragdropstab9];
    [_viewF addSubview:dragdropstab10];
    
    
    
    [dragDropView1 setBackgroundColor:ache1];
    [dragDropView2 setBackgroundColor:ache1];
    [dragDropView3 setBackgroundColor:ache1];
    [dragDropView4 setBackgroundColor:ache1];
    
    [dragDropView5 setBackgroundColor:ache1];
    [dragDropView6 setBackgroundColor:ache1];
    
    [dragDropView7 setBackgroundColor:ache1];
    [dragDropView8 setBackgroundColor:ache1];
    
    [dragDropView9 setBackgroundColor:ache1];
    [dragDropView10 setBackgroundColor:ache1];
    
    [dragDropView11 setBackgroundColor:numb];
    [dragDropView12 setBackgroundColor:numb];
    [dragDropView13 setBackgroundColor:numb];
    [dragDropView14 setBackgroundColor:numb];
    
    [dragDropView15 setBackgroundColor:numb];
    [dragDropView16 setBackgroundColor:numb];
    
    [dragDropView17 setBackgroundColor:numb];
    [dragDropView18 setBackgroundColor:numb];
    
    [dragDropView19 setBackgroundColor:numb];
    [dragDropView20 setBackgroundColor:numb];
    
    
    [_dragdroppin1 setBackgroundColor:pin];
    [_dragdroppin2 setBackgroundColor:pin];
    [_dragdroppin3 setBackgroundColor:pin];
    [_dragdroppin4 setBackgroundColor:pin];
    
    [dragdroppin5 setBackgroundColor:pin];
    [dragdroppin6 setBackgroundColor:pin];
    
    [dragdroppin7 setBackgroundColor:pin];
    [dragdroppin8 setBackgroundColor:pin];
    
    [dragdroppin9 setBackgroundColor:pin];
    [dragdroppin10 setBackgroundColor:pin];
    
    [dragdroppin11 setBackgroundColor:burn];
    [dragdroppin12 setBackgroundColor:burn];
    [dragdroppin13 setBackgroundColor:burn];
    [dragdroppin14 setBackgroundColor:burn];
    
    [dragdroppin15 setBackgroundColor:burn];
    [dragdroppin16 setBackgroundColor:burn];
    
    [dragdroppin17 setBackgroundColor:burn];
    [dragdroppin18 setBackgroundColor:burn];
    
    [dragdroppin19 setBackgroundColor:burn];
    [dragdroppin20 setBackgroundColor:burn];
    
    
    [dragdropstab1 setBackgroundColor:stab];
    [dragdropstab2 setBackgroundColor:stab];
    [dragdropstab3 setBackgroundColor:stab];
    [dragdropstab4 setBackgroundColor:stab];
    
    [dragdropstab5 setBackgroundColor:stab];
    [dragdropstab6 setBackgroundColor:stab];
    
    [dragdropstab7 setBackgroundColor:stab];
    [dragdropstab8 setBackgroundColor:stab];
    
    [dragdropstab9 setBackgroundColor:stab];
    [dragdropstab10 setBackgroundColor:stab];
    
    
    draggableSubjects = [[NSMutableArray alloc] initWithObjects:dragDropView1, dragDropView2, dragDropView3, dragDropView4,dragDropView5, dragDropView6,dragDropView7, dragDropView8,dragDropView9, dragDropView10,dragDropView11, dragDropView12, dragDropView13, dragDropView14,dragDropView15, dragDropView16,dragDropView17, dragDropView18,dragDropView19, dragDropView20,_dragdroppin1, _dragdroppin2, _dragdroppin3, _dragdroppin4,dragdroppin5, dragdroppin6,dragdroppin7, dragdroppin8,dragdroppin9, dragdroppin10,dragdroppin11, dragdroppin12, dragdroppin13, dragdroppin14,dragdroppin15, dragdroppin16,dragdroppin17, dragdroppin18,dragdroppin19, dragdroppin20,dragdropstab1, dragdropstab2, dragdropstab3, dragdropstab4,dragdropstab5, dragdropstab6,dragdropstab7, dragdropstab8,dragdropstab9, dragdropstab10,nil];
    droppableAreas = [[NSMutableArray alloc] initWithObjects:_viewA,_viewB,_viewY,_viewZ,nil];
    _dragDropManager = [[DragDropManager alloc] initWithDragSubjects:draggableSubjects andDropAreas:droppableAreas];
    [draggableSubjects release];
    [droppableAreas release];
    name.text = @"";
    number.text=@"";
    date.text=@"";
    UIPanGestureRecognizer * uiTapGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:_dragDropManager action:@selector(dragging:)];
    [[self view] addGestureRecognizer:uiTapGestureRecognizer];
    [uiTapGestureRecognizer release];

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
            
            
            
            if ([[menu objectForKey:@"servicename"] isEqualToString:@"symptom Data"])
            {
                if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form deletion successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                    // [self performSegueWithIdentifier:@"symptomtoquad" sender:self];
                    [self cancel:self];
                    
                    
                }
                else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                    
                {
                    [HUD hide:YES];
                    [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form deletion failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                    // [self performSegueWithIdentifier:@"symptomtoquad" sender:self];
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
        
        
        
        if ([[menu objectForKey:@"servicename"] isEqualToString:@"symptom Data"])
        {
            if ([[menu objectForKey:@"success"] isEqualToString:@"Yes"])
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarSuccessTitle description:@"Form submission successful." type:TWMessageBarMessageTypeSuccess statusBarStyle:UIStatusBarStyleDefault callback:nil];
                // [self performSegueWithIdentifier:@"symptomtoquad" sender:self];
                [self cancel:self];
                
                
            }
            else if ([[menu objectForKey:@"success"] isEqualToString:@"No"])
                
            {
                [HUD hide:YES];
                [[TWMessageBarManager sharedInstance] showMessageWithTitle:kStringMessageBarErrorTitle description:@"Form submission failed." type:TWMessageBarMessageTypeError statusBarStyle:UIStatusBarStyleLightContent callback:nil];
                // [self performSegueWithIdentifier:@"symptomtoquad" sender:self];
                [self cancel:self];
                
                
            }
        }
    }
    
}


-(NSString *)HttpPostEntityFirst1:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    int i=0,j=0,k=0;
    NSString *fronttext=@"";
    NSString *headtext=@"";
     NSString *backtext=@"";
    for (UIView *view in [_viewB subviews]) {
        if ([view isKindOfClass:[UIView class]]) {
            if (view.tag!=0)
            {
                
            NSLog(@"Front Body views tag number %d and view %f",view.tag,view.frame.origin.x);
            fronttext=[NSString stringWithFormat:@"%@&fronttag%d=%d&frontx%d=%f&fronty%d=%f",fronttext,i,view.tag,i,view.frame.origin.x,i,view.frame.origin.y];
                i++;
            }
        }
        
    }
    fronttext=[NSString stringWithFormat:@"frontcount=%d%@",i,fronttext];
    NSLog(@"text %@",fronttext);
   
    for (UIView *view in [_viewY subviews]) {
        if ([view isKindOfClass:[UIView class]]) {
            
            if (view.tag!=0)
            {
                
                NSLog(@"back body views tag number %d and view %@",view.tag,NSStringFromCGRect(view.frame));
                backtext=[NSString stringWithFormat:@"%@&backtag%d=%d&backx%d=%f&backy%d=%f",backtext,j,view.tag,j,view.frame.origin.x,j,view.frame.origin.y];
                j++;
            }

        }
        
    }
    backtext=[NSString stringWithFormat:@"backcount=%d%@",j,backtext];
     NSLog(@"text %@",backtext);
    for (UIView *view in [_viewZ subviews]) {
        if ([view isKindOfClass:[UIView class]]) {
           
            if (view.tag!=0)
            {
                
                 NSLog(@"face views tag number %d and view %@",view.tag,NSStringFromCGRect(view.frame));
                headtext=[NSString stringWithFormat:@"%@&headtag%d=%d&headx%d=%f&heady%d=%f",headtext,k,view.tag,k,view.frame.origin.x,k,view.frame.origin.y];
                k++;
            }
        }
        
    }
    headtext=[NSString stringWithFormat:@"headcount=%d%@",k,headtext];
     NSLog(@"text %@",headtext);
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Symptomios.php?service=symptominsert";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
   NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&name=%@&number=%@&date=%@",firstEntity,value1,[recorddict objectForKey:@"name"],[recorddict objectForKey:@"number"],[recorddict objectForKey:@"date"]];
    
    post=[NSString stringWithFormat:@"%@&%@&%@&%@&%@=%@",post,fronttext,backtext,headtext,secondEntity,value2];
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
    
    
    int i=0,j=0,k=0;
    NSString *fronttext=@"";
    NSString *headtext=@"";
    NSString *backtext=@"";
    for (UIView *view in [_viewB subviews]) {
        if ([view isKindOfClass:[UIView class]]) {
            if (view.tag!=0)
            {
                
                NSLog(@"Front Body views tag number %d and view %f",view.tag,view.frame.origin.x);
                fronttext=[NSString stringWithFormat:@"%@&fronttag%d=%d&frontx%d=%f&fronty%d=%f",fronttext,i,view.tag,i,view.frame.origin.x,i,view.frame.origin.y];
                i++;
            }
        }
        
    }
    fronttext=[NSString stringWithFormat:@"frontcount=%d%@",i,fronttext];
    NSLog(@"text %@",fronttext);
    
    for (UIView *view in [_viewY subviews]) {
        if ([view isKindOfClass:[UIView class]]) {
            
            if (view.tag!=0)
            {
                
                NSLog(@"back body views tag number %d and view %@",view.tag,NSStringFromCGRect(view.frame));
                backtext=[NSString stringWithFormat:@"%@&backtag%d=%d&backx%d=%f&backy%d=%f",backtext,j,view.tag,j,view.frame.origin.x,j,view.frame.origin.y];
                j++;
            }
            
        }
        
    }
    backtext=[NSString stringWithFormat:@"backcount=%d%@",j,backtext];
    NSLog(@"text %@",backtext);
    for (UIView *view in [_viewZ subviews]) {
        if ([view isKindOfClass:[UIView class]]) {
            
            if (view.tag!=0)
            {
                
                NSLog(@"face views tag number %d and view %@",view.tag,NSStringFromCGRect(view.frame));
                headtext=[NSString stringWithFormat:@"%@&headtag%d=%d&headx%d=%f&heady%d=%f",headtext,k,view.tag,k,view.frame.origin.x,k,view.frame.origin.y];
                k++;
            }
        }
        
    }
    headtext=[NSString stringWithFormat:@"headcount=%d%@",k,headtext];
    NSLog(@"text %@",headtext);
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Symptomios.php?service=symptomedit";
    
    NSString *url2=[NSString stringWithFormat:@"%@%@",urltemp,url1];
    
    
    NSString *post =[[NSString alloc] initWithFormat:@"%@=%@&name=%@&number=%@&date=%@",firstEntity,value1,[recorddict objectForKey:@"name"],[recorddict objectForKey:@"number"],[recorddict objectForKey:@"date"]];
    
    post=[NSString stringWithFormat:@"%@&%@&%@&%@&%@=%@",post,fronttext,backtext,headtext,secondEntity,value2];
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
-(NSString *)HttpPostEntityFirst1delete:(NSString*)firstEntity ForValue1:(NSString*)value1 EntitySecond:(NSString*)secondEntity ForValue2:(NSString*)value2
{
    
    
    NSString *urltemp=[[databaseurl sharedInstance]DBurl];
    NSString *url1=@"Symptomios.php?service=symptomdelete";
    
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