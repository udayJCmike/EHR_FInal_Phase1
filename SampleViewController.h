//
//  sampleViewController.h
//  sample
//
//  Created by DeemsysInc on 29/05/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SampleViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UISearchDisplayDelegate,UISearchBarDelegate>
{
    NSString *typesearchvalue;
    NSMutableArray *resultset;
}
@property (strong, nonatomic) IBOutlet UITableView *tableview;
@property (retain, nonatomic) IBOutlet UISegmentedControl *typeofsearch;
@property(nonatomic,retain)NSMutableArray *resultset;
@property(nonatomic,retain)NSMutableDictionary *staff;
@property(nonatomic,retain)NSString *from;
@end
