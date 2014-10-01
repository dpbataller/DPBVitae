//
//  AppStatusLabel.m
//  DPBVitae
//
//  Created by David Pedrosa on 10/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "AppStatusLabel.h"

@implementation AppStatusLabel

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.textColor = [DPBUtils colorWithHexString:@"95A5A6" alpha:1.0];

    self.font = [UIFont fontWithName:@"Montserrat-Regular" size:13];
    
}


@end
