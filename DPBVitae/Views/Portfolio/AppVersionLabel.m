//
//  AppVersionLabel.m
//  DPBVitae
//
//  Created by David Pedrosa on 10/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "AppVersionLabel.h"

@implementation AppVersionLabel

- (void)awakeFromNib {
    self.textColor = [DPBUtils colorWithHexString:@"1E824C" alpha:1.0];
    self.font = [UIFont fontWithName:@"Montserrat-Regular" size:16];
}
@end
