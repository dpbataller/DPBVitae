//
//  CustomSkillCell.m
//  DPBVitae
//
//  Created by David Pedrosa on 02/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "CustomSkillCell.h"

@implementation CustomSkillCell

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
    
    // Language Label
    self.languageLabel.textColor = [DPBUtils colorWithHexString:@"2c3e50" alpha:1.0];
    self.languageLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:14];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
