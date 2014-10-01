//
//  SocialViewController.m
//  DPBVitae
//
//  Created by David Pedrosa on 09/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "SocialViewController.h"

@interface SocialViewController ()

@end

@implementation SocialViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.githubButton.tag   = 0;
    self.linkedinButton.tag = 1;
    
    [self configureView];
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    NSDictionary *textAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                    [UIColor whiteColor],NSForegroundColorAttributeName,
                                    [UIColor whiteColor],NSBackgroundColorAttributeName,
                                    [UIFont fontWithName:@"Montserrat-Regular" size:16.0], NSFontAttributeName,nil];
    
    self.navigationController.topViewController.title = @"Perfiles Sociales";
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = [DPBUtils colorWithHexString:@"3A539B" alpha:1.0];
    self.navigationController.navigationBar.titleTextAttributes = textAttributes;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureView {
    
    // Background View Color
    self.view.backgroundColor = [DPBUtils colorWithHexString:@"eeeeee" alpha:1.0];
    
    // Description Label
    self.descriptionLabel.textColor = [DPBUtils colorWithHexString:@"303030" alpha:1.0];
    self.descriptionLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:15];
    
    // Github Label
    self.githubLabel.textColor = [DPBUtils colorWithHexString:@"4B77BE" alpha:1.0];
    self.githubLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:14];
    
    // Linkedin Label
    self.linkedinLabel.textColor = [DPBUtils colorWithHexString:@"4B77BE" alpha:1.0];
    self.linkedinLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:14];

}

- (IBAction)visitSocialProfile:(id)sender {
    UIButton *senderButton = (UIButton *)sender;
    NSURL *profileURL;
    
    if (senderButton.tag == 0) {
        profileURL = [NSURL URLWithString:@"https://github.com/dpbataller"];
    }else {
        profileURL = [NSURL URLWithString:@"https://www.linkedin.com/profile/view?id=113462412&trk=nav_responsive_tab_profile"];
    }
    
    [[UIApplication sharedApplication] openURL:profileURL];
}

@end
