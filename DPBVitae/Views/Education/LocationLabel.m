//
//  LocationLabel.m
//  DPBVitae
//
//  Created by David Pedrosa on 09/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "LocationLabel.h"

@implementation LocationLabel

-(void)awakeFromNib {
    self.textColor = [DPBUtils colorWithHexString:@"343533" alpha:1.0];
    self.font = [UIFont fontWithName:@"Montserrat-Regular" size:14];
}

@end
