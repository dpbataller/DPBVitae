//
//  EducationTableViewController.m
//  DPBVitae
//
//  Created by David Pedrosa on 01/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "EducationTableViewController.h"
#import "CustomEducationCell.h"
#import "DetailEducationViewController.h"
#import "EducationModel.h"
#import "APIManager.h"

static NSString *CellIdentifier = @"EducationCell";

@interface EducationTableViewController ()
@property(nonatomic,strong) NSDictionary *educationDict;
@end

@implementation EducationTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self configureTableView];
    
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];

    self.title = @"Formación Académica";
    
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:159/255.0 green:88/255.0 blue:199.0/255 alpha:1.0];
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
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
    return self.educationDict.allKeys.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSString *titleHeader;
    if (section == 0) {
        titleHeader = @"Educación";
    }else {
        titleHeader = @"Formación Complementaria";
    }
    
    return titleHeader;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *items;
    if (section == 0) {
        items = self.educationDict[@"education"];
    }else {
        items = self.educationDict[@"additional"];
    }

    return items.count;
}


#pragma mark - Table view delegates

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.frame        = CGRectMake(20, 8, 320, 20);
    titleLabel.font         = [UIFont fontWithName:@"Montserrat-Regular" size:16];
    titleLabel.textColor    = [DPBUtils colorWithHexString:@"34495e" alpha:1.0];
    titleLabel.text         = [self tableView:tableView titleForHeaderInSection:section];
    
    UIView *headerView = [[UIView alloc] init];
    [headerView addSubview:titleLabel];
    
    return headerView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomEducationCell *cell = (CustomEducationCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    EducationModel *model;
    if (indexPath.section == 0) {
        model = self.educationDict[@"education"][indexPath.row];
    } else {
        model = self.educationDict[@"additional"][indexPath.row];
    }
    
    cell.dateLabel.text         = [NSString stringWithFormat:@"%@ - %@",model.startDate,model.endDate];
    cell.courseLabel.text       = model.course;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Change the selected background view of the cell.
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    EducationModel *model;
    
    if (indexPath.section == 0) {
        model = self.educationDict[@"education"][indexPath.row];
    }else {
        model = self.educationDict[@"additional"][indexPath.row];
    }
    
    [self performSegueWithIdentifier:@"detailEducationInfo" sender:model];
}

#pragma mark - TableView Navigation Delegates

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detailEducationInfo"]) {
        
        EducationModel *model = (EducationModel *)sender;
        
        DetailEducationViewController *detail = segue.destinationViewController;
        
        // Navigation Title
        detail.title = model.course;
        
        // Detail Date String
        detail.dateString = [NSString stringWithFormat:@"%@ - %@",model.startDate,model.endDate];
        
        // Detail Course String
        detail.courseString = model.course;
        
        // Detail Description String
        detail.descriptionString = model.courseDescription;
        
        // Detail Location String
        detail.locationString = model.location;
    }
}

#pragma mark - Custom Methods

- (void)configureTableView {
    // This will remove extra separators from tableview
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    // Data sources
    [[APIManager sharedAPIManager] getEducationDataWithcompletionHandler:^(NSDictionary *education, NSError *error) {
        self.educationDict = education;
    }];
}

@end
