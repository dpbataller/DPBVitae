//
//  PortfolioModel.h
//  DPBVitae
//
//  Created by David Pedrosa on 08/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "JSONModel.h"

// ----------------------------------------------------------------------------
//
//  PortfolioModel
//
@interface PortfolioModel : JSONModel

// Icono de la aplicación
@property (strong, nonatomic) NSString *icon;

// Nombre de la aplicación en la App Store
@property (strong, nonatomic) NSString *name;

// Descripción de la aplicación en la App Store
@property (strong, nonatomic) NSString *projectDescription;

// Versión de la aplicación en la App Store
@property (strong, nonatomic) NSString *version;

// Plataforma para la que está desarrollada (App Store, Google Play o ambas) true == Ambas, false == solo web
@property (nonatomic, assign) BOOL platform;

// Lenguaje de programación usado para programar la app
@property (strong, nonatomic) NSString *language;

// Lenguaje de programación usado en el backend (si lo hubiera)
@property (strong, nonatomic) NSString *backend;

// Descargas de la aplicación
@property (strong, nonatomic) NSString *downloads;

// Indica si la aplicación está actualmente publicada
@property (nonatomic, assign) BOOL isActive;

@end
