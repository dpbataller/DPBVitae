//
//  AppDescriptionLabel.m
//  DPBVitae
//
//  Created by David Pedrosa on 10/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "AppDescriptionLabel.h"

@implementation AppDescriptionLabel

- (void)awakeFromNib {
    self.textColor = [DPBUtils colorWithHexString:@"67809F" alpha:1.0];
    self.font = [UIFont fontWithName:@"Montserrat-Regular" size:13];
}

@end
