//
//  SkillsTableViewController.m
//  DPBVitae
//
//  Created by David Pedrosa on 02/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "SkillsTableViewController.h"
#import "DetailSkillViewController.h"
#import "CustomSkillCell.h"
#import "SkillModel.h"

static NSString *CellIdentifier = @"SkillsCell";

@interface SkillsTableViewController ()
@property(nonatomic,strong) NSDictionary *skillModels;
@end

@implementation SkillsTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
      
    [self configureTableView];
    
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    self.title = @"Habilidades";
    
    self.navigationController.navigationBar.barTintColor = [DPBUtils colorWithHexString:@"1abc9c" alpha:1.0];
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

    return self.skillModels.count;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSString *titleHeader;
    if (section == 0) {
        titleHeader = @"Desarrollo Móvil";
    }else if (section == 1) {
        titleHeader = @"Desarrollo Web";
    }else if (section == 2) {
        titleHeader = @"Bases de datos";
    }
    
    return titleHeader;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSUInteger rowsInSection;
    NSArray *currentArray;

    if (section == 0) {
        currentArray = self.skillModels[@"mobile"];
        rowsInSection = [currentArray count];
    }else if (section == 1) {
        currentArray = self.skillModels[@"web"];
        rowsInSection = [currentArray count];
    }else {
        currentArray = self.skillModels[@"databases"];
        rowsInSection = [currentArray count];
    }
    
    return rowsInSection;
}

#pragma mark - Table view delegates


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.frame        = CGRectMake(20, 8, 320, 20);
    titleLabel.font         = [UIFont fontWithName:@"Montserrat-Regular" size:15];
    titleLabel.textColor    = [DPBUtils colorWithHexString:@"34495e" alpha:1.0];
    titleLabel.text         = [self tableView:tableView titleForHeaderInSection:section];
    
    UIView *headerView = [[UIView alloc] init];
    [headerView addSubview:titleLabel];
    
    return headerView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomSkillCell *cell = (CustomSkillCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NSString *section;
    if (indexPath.section == 0) {
        section = @"mobile";

    }else if (indexPath.section == 1) {
        section = @"web";
    }else {
        section = @"databases";
    }

    
    SkillModel *skillModel = self.skillModels[section][indexPath.row];
    
    cell.languageLabel.text = skillModel.name;
    cell.skillLevel.image   = [UIImage imageNamed:[NSString stringWithFormat:@"%@-stars",skillModel.skillLevel]];
    
    return cell;
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Change the selected background view of the cell.
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    SkillModel *model;
    
    if (indexPath.section == 0) {
        model = self.skillModels[@"mobile"][indexPath.row];
    }else if(indexPath.section == 1){
        model = self.skillModels[@"web"][indexPath.row];
    }else {
        model = self.skillModels[@"databases"][indexPath.row];
    }
    
    [self performSegueWithIdentifier:@"detailSkillInfo" sender:model];
}

#pragma mark - TableView Navigation Delegates

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detailSkillInfo"]) {
        
        SkillModel *model = (SkillModel *)sender;
        
        DetailSkillViewController *detail = segue.destinationViewController;
        
        // Navigation Title
        detail.title = model.name;
        
        // Detail Description Skill
        detail.skillDescriptionString = model.skillDescription;
        
        // Detail Featured Skills
        NSMutableArray *featuredSkillsArray = [[NSMutableArray alloc] init];
        
        for (NSString *featuredSkill in model.featuredSkills) {
            [featuredSkillsArray addObject:featuredSkill];
        }
        
        detail.featuredSkills = featuredSkillsArray;
    }
}


#pragma mark - Custom Methods

- (void)configureTableView {
    // This will remove extra separators from tableview
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    // Data sources
   [[APIManager sharedAPIManager] getSkillsDataWithcompletionHandler:^(NSDictionary *skills, NSError *error) {
       self.skillModels = skills;
       
   }];
}

@end
