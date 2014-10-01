//
//  DetailSkillViewController.m
//  DPBVitae
//
//  Created by David Pedrosa on 09/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "DetailSkillViewController.h"
#import "CustomFeaturedSkillCell.h"
#import "FeaturedSkillModel.h"

static NSString *CellIdentifier = @"FeaturedSkillCell";

@interface DetailSkillViewController ()

@end

@implementation DetailSkillViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.skillDescriptionLabel.text = self.skillDescriptionString;
    
    self.view.backgroundColor = [DPBUtils colorWithHexString:@"f2f2f2" alpha:1.0];
    
    self.tableView.backgroundColor = [DPBUtils colorWithHexString:@"f2f2f2" alpha:1.0];
    self.tableView.contentInset = UIEdgeInsetsMake(-70, 0, 0, 0);
    self.tableView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;

}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return @"Habilidades a destacar";
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.featuredSkills.count;
}


#pragma mark - Table view delegates

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomFeaturedSkillCell *cell = (CustomFeaturedSkillCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    FeaturedSkillModel *featureSkillModel = (FeaturedSkillModel*) self.featuredSkills[indexPath.row];
    cell.featuredSkillDescription.text = featureSkillModel.featuredDescription;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Change the selected background view of the cell.
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}

#pragma mark - TableView Navigation Delegates

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
}



@end
