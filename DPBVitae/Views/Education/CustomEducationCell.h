//
//  CustomEducationCell.h
//  DPBVitae
//
//  Created by David Pedrosa on 01/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DateLabel.h"
#import "CourseLabel.h"
#import "DescriptionLabel.h"
#import "LocationLabel.h"

@interface CustomEducationCell : UITableViewCell

//
@property (weak, nonatomic) IBOutlet DateLabel *dateLabel;

//
@property (weak, nonatomic) IBOutlet CourseLabel *courseLabel;

@end
