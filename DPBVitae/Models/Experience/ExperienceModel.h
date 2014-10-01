//
//  ExperienceModel.h
//  DPBVitae
//
//  Created by David Pedrosa on 30/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel/JSONModel.h>

// ----------------------------------------------------------------------------
//
//  ExperienceModel
//

@interface ExperienceModel : JSONModel

// Nombre la empresa en la que se ha trabajado.
@property (strong, nonatomic) NSString *companyName;

// Cargo en la empresa en la que se ha trabajado.
@property (strong, nonatomic) NSString *rol;

// Fecha de inicio de la actividad laboral.
@property (strong, nonatomic) NSString *startActiviy;

// Fecha de finalización de la actividad laboral.
@property (strong, nonatomic) NSString *endActivity;

// Departamento en el cuál se ejercía la actividad laboral.
@property (strong, nonatomic) NSString *department;

// Descripción del empleo.
@property (strong, nonatomic) NSString *jobDescription;

@end
