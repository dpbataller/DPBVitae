//
//  SkillModel.h
//  DPBVitae
//
//  Created by David Pedrosa on 30/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel/JSONModel.h>
#import "FeaturedSkillModel.h"

// ----------------------------------------------------------------------------
//
//  SkillModel
//
@interface SkillModel : JSONModel

// Nombre de la habilidad
@property (strong, nonatomic) NSString *name;

// Descripción de la habilidad
@property (strong, nonatomic) NSString *skillDescription;

// Nivel de destreza
@property (strong, nonatomic) NSString *skillLevel;

// Habilidades a desctacar
@property (strong, nonatomic) NSArray<FeaturedSkillModel> *featuredSkills;

@end

