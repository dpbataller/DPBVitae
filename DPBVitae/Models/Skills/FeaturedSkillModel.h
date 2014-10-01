//
//  FeaturedSkillModel.h
//  DPBVitae
//
//  Created by David Pedrosa on 09/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "JSONModel.h"

@protocol FeaturedSkillModel @end

// ----------------------------------------------------------------------------
//
//  FeaturedSkillModel
//
@interface FeaturedSkillModel : JSONModel

@property (strong, nonatomic) NSString *featuredDescription;

@end
