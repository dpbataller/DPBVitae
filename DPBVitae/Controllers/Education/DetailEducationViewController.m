//
//  DetailEducationViewController.m
//  DPBVitae
//
//  Created by David Pedrosa on 09/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "DetailEducationViewController.h"

@interface DetailEducationViewController ()

@end

@implementation DetailEducationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.detailDateLabel.text        = self.dateString;
    self.detailCourseLabel.text      = self.courseString;
    self.detailDescriptionLabel.text = self.descriptionString;
    self.detailLocationLabel.text    = self.locationString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
