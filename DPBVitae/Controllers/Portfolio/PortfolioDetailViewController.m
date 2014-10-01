//
//  PortfolioDetailViewController.m
//  DPBVitae
//
//  Created by David Pedrosa on 10/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "PortfolioDetailViewController.h"

@interface PortfolioDetailViewController ()

@end

@implementation PortfolioDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.nameLabel.text         = self.nameString;
    self.descriptionLabel.text  = self.descriptionString;
    self.versionLabel.text      = self.versiontring;
    self.languageLabel.text     = self.languageString;
    self.downloadsLabel.text    = self.downloadsString;
    self.statusLabel.text       = self.statusString;
    self.platformImage.image    = [UIImage imageNamed:self.platformString];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    NSDictionary *textAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                    [UIColor whiteColor],NSForegroundColorAttributeName,
                                    [UIColor whiteColor],NSBackgroundColorAttributeName,
                                    [UIFont fontWithName:@"Montserrat-Regular" size:16.0], NSFontAttributeName,nil];
    
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = [DPBUtils colorWithHexString:@"34495e" alpha:1.0];
    self.navigationController.navigationBar.titleTextAttributes = textAttributes;
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
