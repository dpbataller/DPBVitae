//
//  DetailSkillViewController.h
//  DPBVitae
//
//  Created by David Pedrosa on 09/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SkillDescriptionLabel.h"

@interface DetailSkillViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

//
@property (weak, nonatomic) IBOutlet SkillDescriptionLabel *skillDescriptionLabel;

//
@property (weak, nonatomic) IBOutlet UITableView *tableView;

//
@property (nonatomic, strong) NSString *skillDescriptionString;

//
@property (nonatomic, strong) NSArray *featuredSkills;

@end
