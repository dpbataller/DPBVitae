//
//  AppLanguageLabel.m
//  DPBVitae
//
//  Created by David Pedrosa on 10/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "AppLanguageLabel.h"

@implementation AppLanguageLabel

- (void)awakeFromNib {
    self.textColor = [DPBUtils colorWithHexString:@"67809F" alpha:1.0];
    self.font = [UIFont fontWithName:@"Montserrat-Regular" size:13];
}

@end
