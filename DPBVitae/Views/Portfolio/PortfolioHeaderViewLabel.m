//
//  PortfolioHeaderViewLabel.m
//  DPBVitae
//
//  Created by David Pedrosa on 10/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "PortfolioHeaderViewLabel.h"

@implementation PortfolioHeaderViewLabel


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        // Color de la fuenta y tipografía
        self.font =  [UIFont fontWithName:@"Montserrat-Regular" size:17];
        self.textColor = [DPBUtils colorWithHexString:@"336E7B" alpha:1.0];
    }
    return self;
}


@end
