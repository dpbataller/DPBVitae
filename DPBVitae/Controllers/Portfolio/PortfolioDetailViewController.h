//
//  PortfolioDetailViewController.h
//  DPBVitae
//
//  Created by David Pedrosa on 10/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppNameLabel.h"
#import "AppDescriptionLabel.h"
#import "AppVersionLabel.h"
#import "AppLanguageLabel.h"
#import "AppDowloadsLabel.h"
#import "AppStatusLabel.h"

@interface PortfolioDetailViewController : UIViewController

//
@property (weak, nonatomic) IBOutlet AppNameLabel *nameLabel;

//
@property (weak, nonatomic) IBOutlet AppDescriptionLabel *descriptionLabel;

//
@property (weak, nonatomic) IBOutlet AppVersionLabel *versionLabel;

//
@property (weak, nonatomic) IBOutlet AppLanguageLabel *languageLabel;

//
@property (weak, nonatomic) IBOutlet AppDowloadsLabel *downloadsLabel;

//
@property (weak, nonatomic) IBOutlet AppStatusLabel *statusLabel;

//
@property (weak, nonatomic) IBOutlet UIImageView *platformImage;

//
@property (strong, nonatomic) NSString *nameString;



//
@property (strong, nonatomic) NSString *descriptionString;

//
@property (strong, nonatomic) NSString *versiontring;

//
@property (strong, nonatomic) NSString *languageString;

//
@property (strong, nonatomic) NSString *downloadsString;

//
@property (strong, nonatomic) NSString *statusString;

//
@property (strong, nonatomic) NSString *platformString;
@end
