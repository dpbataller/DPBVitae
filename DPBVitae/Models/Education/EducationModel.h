//
//  EducationModel.h
//  DPBVitae
//
//  Created by David Pedrosa on 30/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel/JSONModel.h>


//@protocol AdditionalQualification
//@end

// ----------------------------------------------------------------------------
//
//  EducationModel
//
@interface EducationModel : JSONModel

// Fecha de incio de los estudios.
@property (strong, nonatomic) NSString *startDate;

// Fecha de finalización de los estudios.
@property (strong, nonatomic) NSString *endDate;

// Centro dónde se cursaron los estudios.
@property (strong, nonatomic) NSString *location;

// Nombre de los estudios cursados.
@property (strong, nonatomic) NSString *course;

// Breve descripción de los estudios cursados.
@property (strong, nonatomic) NSString *courseDescription;

@end
