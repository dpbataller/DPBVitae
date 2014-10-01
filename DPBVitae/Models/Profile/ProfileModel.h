//
//  ProfileModel.h
//  DPBVitae
//
//  Created by David Pedrosa on 27/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JSONModel/JSONModel.h>

// ----------------------------------------------------------------------------
//
//  ProfileModel
//

@interface ProfileModel : JSONModel

// Nombre completo de la pesona.
@property(nonatomic,strong) NSString *fullName;

// Edad de la persona.
@property(nonatomic,strong) NSString *age;

// Fecha de nacimiento de la persona.
@property(nonatomic,strong) NSString *birthday;

// Dirección de la persona.
@property(nonatomic,strong) NSString *address;

// Dirección de correo de la persona.
@property(nonatomic,strong) NSString *email;

// Número de teléfono de la persona.
@property(nonatomic,strong) NSString *phone;

// Ciudad dónde vive la persona.
@property(nonatomic,strong) NSString *city;

// Código postal perteneciente al áera del usuario.
@property(nonatomic,strong) NSString *zip;

// Páis donde reside.
@property(nonatomic,strong) NSString *country;

// Imágen de perfil de la persona.
@property(nonatomic,strong) NSString *profile;

@end
