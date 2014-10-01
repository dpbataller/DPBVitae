//
//  ProfileViewController.m
//  DPBVitae
//
//  Created by David Pedrosa on 27/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//
#import "UINavigationBar+Addition.h"
#import "ProfileViewController.h"
#import "APIManager.h"
#import "CustomProfileCell.h"
#import "ProfileModel.h"

static NSString *CellIdentifier = @"ProfileCell";

@interface ProfileViewController ()

@property(nonatomic, strong) NSArray *items;
@property(nonatomic, strong) NSArray *content;
@property(nonatomic, strong) ProfileModel *profileUser;

@end

@implementation ProfileViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    [[APIManager sharedAPIManager] getProfileDataUsingKey:@"profile" completionHandler:^(ProfileModel *profile, NSError *error) {
        self.profileUser = profile;
    }];
    
    self.title = self.profileUser.fullName;
    self.profileImage.image = [UIImage imageNamed:self.profileUser.profile];

    
    self.items = @[@"Edad",@"Fecha de nacimiento",@"Dirección",@"Email",@"Teléfono",@"Ciudad",@"Código Postal",@"País"];
    
    // This will remove extra separators from tableview
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    self.tableView.delegate     = self;
    self.tableView.dataSource   = self;
    
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    [self.navigationController.navigationBar hideBottomHairline];
    
    self.navigationController.navigationBar.barTintColor = [DPBUtils colorWithHexString:@"2980b9" alpha:1.0];
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
    return self.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomProfileCell *cell = (CustomProfileCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    // Configure the cell...
    cell.itemLabel.text     = self.items[indexPath.row];
    cell.contentLabel.text  = [self setContentforRowAtIndexPath:indexPath];
    
    return cell;
}

#pragma mark - Table view delegates

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Change the selected background view of the cell.
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


#pragma mark - Table view Helpers

- (NSString *)setContentforRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *content = nil;
    switch (indexPath.row) {
        case 0:
            content = self.profileUser.age;
            break;
        case 1:
            content = self.profileUser.birthday;
            break;
        case 2:
            content = self.profileUser.address;
            break;
        case 3:
            content = self.profileUser.email;
            break;
        case 4:
            content = self.profileUser.phone;
            break;
        case 5:
            content = self.profileUser.city;
            break;
        case 6:
            content = self.profileUser.zip;
            break;
        case 7:
            content = self.profileUser.country;
            break;
            
        default:
            break;
    }

    return content;
}

#pragma mark - UIAlertView delegates

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if (buttonIndex == 0) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"telprompt://%@",self.profileUser.phone]]];
    }else {

        [TSMessage showNotificationInViewController:self
                                              title:@"Llamada no realizada"
                                           subtitle:@"Replantéatelo, David es una buena opción ;)"
                                               type:TSMessageNotificationTypeWarning
                                           duration:4.0
                               canBeDismissedByUser:YES];
    }
}

#pragma mark - MFMailComposeViewController Delegate

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}


#pragma mark - IBActions

- (IBAction)callDavid:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Atención"
                                                    message:@"Vas a llamar a David para oferecerle trabajo."
                                                   delegate:self
                                          cancelButtonTitle:@"Sí, lo sé."
                                          otherButtonTitles:@"Cancelar", nil];
    [alert show];
    
}

- (IBAction)emailToDavid:(id)sender {

    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"dpbataller@gmail.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
   
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}


@end
