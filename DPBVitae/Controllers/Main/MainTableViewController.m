//
//  MainTableViewController.m
//  DPBVitae
//
//  Created by David Pedrosa on 26/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "MainTableViewController.h"
#import "CustomMainCell.h"


static NSString *CellIdentifier = @"MainCell";

@interface MainTableViewController ()

//
@property(nonatomic, strong) NSArray *dataSource;

//
@property(nonatomic, strong) NSArray *iconsSource;

@end

@implementation MainTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Ajustes del TableView
    [self configureTableView];
    
    // Ajusto el Status bar en blanco (light)
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];

}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    NSDictionary *textAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                    [UIColor whiteColor],NSForegroundColorAttributeName,
                                    [UIColor whiteColor],NSBackgroundColorAttributeName,
                                    [UIFont fontWithName:@"Montserrat-Regular" size:16.0], NSFontAttributeName,nil];
    
    self.navigationController.topViewController.title = @"Currículum Vitae";
    self.navigationController.navigationBar.barTintColor = [DPBUtils colorWithHexString:@"34495e" alpha:1.0];
    self.navigationController.navigationBar.titleTextAttributes = textAttributes;

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
    return self.dataSource.count;
}

#pragma mark - Table view delegates

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomMainCell *cell = (CustomMainCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    

    // Configure the cell...
    
    cell.title.text = self.dataSource[indexPath.row];
    
    cell.icon.image = [UIImage imageNamed:self.iconsSource[indexPath.row]];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        [self performSegueWithIdentifier:@"profileSegue" sender:nil];
    }else if (indexPath.row == 1){
        [self performSegueWithIdentifier:@"experienceSegue" sender:nil];
    }else if (indexPath.row == 2){
        [self performSegueWithIdentifier:@"educationSegue" sender:nil];
    }else if (indexPath.row == 3){
        [self performSegueWithIdentifier:@"skillsSegue" sender:nil];
    }else if (indexPath.row == 4){
        [self performSegueWithIdentifier:@"socialSegue" sender:nil];
    }
}


#pragma mark - Custom Methods

- (void)configureTableView {
    // Inicializo los arrays con los datos
    self.dataSource = @[@"PERFIL",@"EXPERIENCIA",@"EDUCACIÓN",@"HABILIDADES",@"PERFIL SOCIAL"];
    self.iconsSource = @[@"profile-icon",@"experience-icon",@"education-icon",@"skills-icon",@"social-icon"];
    
    // Ajusto el color del fondo de la tabla
    self.tableView.backgroundColor = [UIColor colorWithRed:242.0/255.0 green:242.0/255.0 blue:240.0/255.0 alpha:1.0];
    
    // This will remove extra separators from tableview
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    // Eliminio las líneas que separan las celdas
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //self.tableView.separatorColor = [UIColor colorWithRed:233.0/255.0 green:233.0/255.0 blue:229.0/255.0 alpha:1.0];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
