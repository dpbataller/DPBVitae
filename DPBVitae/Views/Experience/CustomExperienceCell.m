//
//  CustomExperienceCell.m
//  DPBVitae
//
//  Created by David Pedrosa on 27/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "CustomExperienceCell.h"

@implementation CustomExperienceCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
    self.backgroundView.backgroundColor = [UIColor colorWithRed:242.0/255.0 green:242.0/255.0 blue:240.0/255.0 alpha:1.0];
    self.backgroundColor = [UIColor colorWithRed:242.0/255.0 green:242.0/255.0 blue:240.0/255.0 alpha:1.0];
    
    // Date Label
    self.dateLabel.textColor = [UIColor colorWithRed:128.0/255.0 green:128.0/255.0 blue:128.0/255.0 alpha:1.0];
    self.dateLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:12];
    
    
    // Company Label
    self.companyName.textColor = [DPBUtils colorWithHexString:@"c0392b" alpha:1.0];
    self.companyName.font = [UIFont fontWithName:@"Montserrat-Regular" size:17];

    // Department Label
    self.departmentLabel.textColor = [UIColor colorWithRed:63.0/255.0 green:62/255.0 blue:59/255.0 alpha:1.0];
    self.departmentLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:12];

    
    // Description Label
    self.jobDescription.textColor = [UIColor colorWithRed:52.0/255.0 green:73/255.0 blue:94/255.0 alpha:1.0];
    self.jobDescription.font = [UIFont fontWithName:@"Montserrat-Regular" size:15];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
