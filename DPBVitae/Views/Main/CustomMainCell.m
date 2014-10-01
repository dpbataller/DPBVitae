//
//  MainTableViewCell.m
//  DPBVitae
//
//  Created by David Pedrosa on 26/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "CustomMainCell.h"

@implementation CustomMainCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Configuración de la celda
        //self.contentView.backgroundColor = [UIColor yellowColor];
        
        // Configuración Label text
        //self.title.textColor = [UIColor colorWithRed:19.0/255.0 green:27.0/255.0 blue:60.0/255.0 alpha:1.0];
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code

    self.backgroundView.backgroundColor = [UIColor colorWithRed:242.0/255.0 green:242.0/255.0 blue:240.0/255.0 alpha:1.0];
    self.backgroundColor = [UIColor colorWithRed:242.0/255.0 green:242.0/255.0 blue:240.0/255.0 alpha:1.0];
    
    self.title.textColor = [UIColor colorWithRed:41.0/255.0 green:128.0/255.0 blue:185.0/255.0 alpha:1.0];
    self.title.font = [UIFont fontWithName:@"Montserrat-Regular" size:13];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"right-indicator"]];
    self.accessoryView = imageView;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
