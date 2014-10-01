//
//  DetailEducationViewController.h
//  DPBVitae
//
//  Created by David Pedrosa on 09/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DateLabel.h"
#import "CourseLabel.h"
#import "DescriptionLabel.h"
#import "LocationLabel.h"

@interface DetailEducationViewController : UIViewController

@property (weak, nonatomic) IBOutlet DateLabel *detailDateLabel;

@property (weak, nonatomic) IBOutlet CourseLabel *detailCourseLabel;


@property (weak, nonatomic) IBOutlet LocationLabel *detailLocationLabel;

@property (weak, nonatomic) IBOutlet DescriptionLabel *detailDescriptionLabel;

@property (nonatomic, strong) NSString *dateString;

@property (nonatomic, strong) NSString *courseString;

@property (nonatomic, strong) NSString *locationString;

@property (nonatomic, strong) NSString *descriptionString;

@end
