//
//  CustomFeaturedSkillCell.m
//  DPBVitae
//
//  Created by David Pedrosa on 09/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "CustomFeaturedSkillCell.h"

@implementation CustomFeaturedSkillCell

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
 
    // featuredSkillDescription Label
    self.featuredSkillDescription.textColor = [DPBUtils colorWithHexString:@"1abc9c" alpha:1.0];
    self.featuredSkillDescription.font = [UIFont fontWithName:@"Montserrat-Regular" size:14];
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
