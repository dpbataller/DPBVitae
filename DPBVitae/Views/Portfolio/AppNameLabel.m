//
//  AppNameLabel.m
//  DPBVitae
//
//  Created by David Pedrosa on 10/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "AppNameLabel.h"

@implementation AppNameLabel

-(void)awakeFromNib {
    self.textColor = [DPBUtils colorWithHexString:@"34495E" alpha:1.0];
    self.font = [UIFont fontWithName:@"Montserrat-Regular" size:16];
}

@end
