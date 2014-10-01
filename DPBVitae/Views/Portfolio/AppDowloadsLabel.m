//
//  AppDowloadsLabel.m
//  DPBVitae
//
//  Created by David Pedrosa on 10/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "AppDowloadsLabel.h"

@implementation AppDowloadsLabel

- (void)awakeFromNib {
    self.textColor = [DPBUtils colorWithHexString:@"F9690E" alpha:1.0];
    self.font = [UIFont fontWithName:@"Montserrat-Regular" size:13];
}
@end
