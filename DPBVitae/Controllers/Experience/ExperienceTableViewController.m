//
//  ExperienceTableViewController.m
//  DPBVitae
//
//  Created by David Pedrosa on 27/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "ExperienceTableViewController.h"
#import "CustomExperienceCell.h"

#import "APIManager.h"
#import "ExperienceModel.h"

static NSString *CellIdentifier = @"ExperienceCell";

@interface ExperienceTableViewController ()
@property(nonatomic,strong) NSArray *experienceArray;
@end

@implementation ExperienceTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self configureTableView];
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    self.navigationController.topViewController.title = @"Experiencia Profesional";
    self.navigationController.navigationBar.barTintColor = [DPBUtils colorWithHexString:@"e74c3c" alpha:1.0];
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
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return self.experienceArray.count;

}

#pragma mark - Table view delegates

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomExperienceCell *cell = (CustomExperienceCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    ExperienceModel *model = self.experienceArray[indexPath.row];
    
    cell.dateLabel.text         = [NSString stringWithFormat:@"%@ - %@",model.startActiviy,model.endActivity];
    cell.companyName.text       = model.companyName;
    cell.departmentLabel.text   = [NSString stringWithFormat:@"[%@]",model.department];
    cell.jobDescription.text    = model.jobDescription;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Change the selected background view of the cell.
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - Custom Methods

- (void)configureTableView {
    // This will remove extra separators from tableview
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    // Data sources
    [[APIManager sharedAPIManager] getExperienceDataUsingKey:@"experience" completionHandler:^(NSArray *experience, NSError *error) {
        self.experienceArray = experience;
    }];
}

@end
