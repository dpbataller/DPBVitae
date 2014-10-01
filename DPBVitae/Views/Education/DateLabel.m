//
//  DateLabel.m
//  DPBVitae
//
//  Created by David Pedrosa on 09/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "DateLabel.h"

@implementation DateLabel

-(void)awakeFromNib {
    self.textColor = [DPBUtils colorWithHexString:@"8f9091" alpha:1.0];
    self.font = [UIFont fontWithName:@"Montserrat-Regular" size:13];
}

@end
