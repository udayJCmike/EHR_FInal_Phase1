//
//  sampleViewController.m
//  sample
//
//  Created by DeemsysInc on 29/05/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "SampleViewController.h"
#import "RecipeTableCell.h"
#import "Recipe.h"
#import "databaseurl.h"
#import "SBJSON.h"
#import "PatientInfoViewController.h"
@interface SampleViewController ()
{
    NSArray *recipes;
    NSArray *searchResults;
}
@end

@implementation     SampleViewController
@synthesize typeofsearch;
@synthesize resultset;
@synthesize staff;
@synthesize from;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    typesearchvalue=@"Last Name";
    staff=[[NSMutableDictionary alloc]init];
    
    recipes=resultset;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"topatient"])
    {
        PatientInfoViewController *destViewController = segue.destinationViewController;
        destViewController.staff=staff;
    }
    
    /*   NSIndexPath *indexPath = nil;
     
     if ([self.searchDisplayController isActive]) {
     indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
     destViewController.recipeName = [searchResults objectAtIndex:indexPath.row];
     
     } else {
     indexPath = [self.tableView indexPathForSelectedRow];
     destViewController.recipeName = [recipes objectAtIndex:indexPath.row];
     }
     }
     */
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([from isEqualToString:@"doctor"]) {
        [staff setValue:@"0" forKey:@"buttondisplay"];
    }
    else if ([from isEqualToString:@"admin"]) {
        [staff setValue:@"1" forKey:@"buttondisplay"];
    }
    [staff setValue:@"1" forKey:@"search"];
    
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        //[self performSegueWithIdentifier: @"showRecipeDetail" sender: self];
        indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
        Recipe *recipe=[searchResults objectAtIndex:indexPath.row];
       // NSLog(@"value===%@",recipe.username);
        [[NSUserDefaults standardUserDefaults]setValue:recipe.username forKey:@"username"];
        [[NSUserDefaults standardUserDefaults]synchronize];
        
        
    }
    else
    {
        Recipe *recipe=[recipes objectAtIndex:indexPath.row];
       // NSLog(@"value===%@",recipe.username);
        [[NSUserDefaults standardUserDefaults]setValue:recipe.username forKey:@"username"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }
    [self performSegueWithIdentifier:@"topatient" sender:self];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        return [searchResults count];
        
    } else {
        return [recipes count];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 99;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CustomTableCell";
    RecipeTableCell *cell = (RecipeTableCell *)[self.tableview dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    if (cell == nil) {
        cell = [[RecipeTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Display recipe in the table cell
    Recipe *recipe = nil;
    if (tableView == self.searchDisplayController.searchResultsTableView) {
        recipe = [searchResults objectAtIndex:indexPath.row];
    } else {
        recipe = [recipes objectAtIndex:indexPath.row];
    }
    
    cell.nameLabel.text = recipe.name;
    cell.image.image=[UIImage imageNamed:@"patient.png"];
    cell.typeLabel.text=recipe.type;
    cell.healthinsurance.text=recipe.health;
    cell.attorney.text=recipe.attorney;
    
    return cell;
}


-(IBAction)typesearch:(id)sender
{
    if ([typeofsearch selectedSegmentIndex]==0) {
        typesearchvalue=@"Last Name";
    }
    if ([typeofsearch selectedSegmentIndex]==1) {
        typesearchvalue=@"Attorney";
    }
    if ([typeofsearch selectedSegmentIndex]==2) {
        typesearchvalue=@"Type of Accident";
    }if ([typeofsearch selectedSegmentIndex]==3) {
        typesearchvalue=@"Name of Health Insurance";
    }
    
}
- (void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    if ([typesearchvalue isEqualToString:@"Last Name"]) {
        NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c] %@", searchText];
        
        searchResults = [recipes filteredArrayUsingPredicate:resultPredicate];
    }
    if ([typesearchvalue isEqualToString:@"Attorney"]) {
        NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"attorney contains[c] %@", searchText];
        
        searchResults = [recipes filteredArrayUsingPredicate:resultPredicate];
    }
    if ([typesearchvalue isEqualToString:@"Type of Accident"]) {
        NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"type contains[c] %@", searchText];
        
        searchResults = [recipes filteredArrayUsingPredicate:resultPredicate];
    }
    if ([typesearchvalue isEqualToString:@"Name of Health Insurance"]) {
        NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"health contains[c] %@", searchText];
        
        searchResults = [recipes filteredArrayUsingPredicate:resultPredicate];
    }
    
}

-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
    [self filterContentForSearchText:searchString
                               scope:[[self.searchDisplayController.searchBar scopeButtonTitles]
                                      objectAtIndex:[self.searchDisplayController.searchBar
                                                     selectedScopeButtonIndex]]];
    
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
