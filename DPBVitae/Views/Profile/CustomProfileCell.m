//
//  CustomProfileCell.m
//  DPBVitae
//
//  Created by David Pedrosa on 27/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "CustomProfileCell.h"

@implementation CustomProfileCell

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
    
    // Blue View
    self.backgroundView.backgroundColor = [UIColor colorWithRed:242.0/255.0 green:242.0/255.0 blue:240.0/255.0 alpha:1.0];
    self.backgroundColor = [UIColor colorWithRed:242.0/255.0 green:242.0/255.0 blue:240.0/255.0 alpha:1.0];
    
    self.itemLabel.textColor = [UIColor colorWithRed:70.0/255.0 green:192.0/255.0 blue:242.0/255.0 alpha:1.0];
    self.itemLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:14];
    
    self.contentLabel.textColor = [UIColor colorWithRed:97.0/255.0 green:97/255.0 blue:97/255.0 alpha:1.0];
    self.contentLabel.font = [UIFont fontWithName:@"Montserrat-Regular" size:15];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
