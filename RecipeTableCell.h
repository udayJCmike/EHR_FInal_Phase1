//
//  RecipeTableCell.h
//  RecipeApp
//
//  Created by Simon on 11/12/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecipeTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;

@property (nonatomic, weak) IBOutlet UIImageView *image;
@property (strong, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *attorney;
@property (weak, nonatomic) IBOutlet UILabel *healthinsurance;

@end
