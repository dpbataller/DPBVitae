//
//  PortfolioCollectionCell.h
//  DPBVitae
//
//  Created by David Pedrosa on 08/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PortfolioCollectionLabel.h"

@interface PortfolioCollectionCell : UICollectionViewCell

//
@property (weak, nonatomic) IBOutlet UIImageView *appImage;

//
@property (weak, nonatomic) IBOutlet PortfolioCollectionLabel *appNameLabel;

@end
