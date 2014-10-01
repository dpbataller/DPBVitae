//
//  PortfolioCollectionLabel.m
//  DPBVitae
//
//  Created by David Pedrosa on 10/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "PortfolioCollectionLabel.h"

@implementation PortfolioCollectionLabel

- (void)awakeFromNib
{
    // Color de la fuenta y tipografía
    self.font =  [UIFont fontWithName:@"Montserrat-Regular" size:12];
    self.textColor = [DPBUtils colorWithHexString:@"34495e" alpha:1.0];
}

@end
