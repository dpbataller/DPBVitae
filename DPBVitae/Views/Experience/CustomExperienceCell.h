//
//  CustomExperienceCell.h
//  DPBVitae
//
//  Created by David Pedrosa on 27/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomExperienceCell : UITableViewCell

//
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

//
@property (weak, nonatomic) IBOutlet UILabel *companyName;

//
@property (weak, nonatomic) IBOutlet UILabel *departmentLabel;

//
@property (weak, nonatomic) IBOutlet UILabel *jobDescription;

@end
