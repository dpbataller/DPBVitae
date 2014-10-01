//
//  User.h
//  DPBVitae
//
//  Created by David Pedrosa on 27/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ProfileModel : NSObject

// ----------------------------------------------------------------------------
//
//  EducationModel
//

//
@property(nonatomic,strong) NSString *fullName;

//
@property(nonatomic,strong) NSString *age;

//
@property(nonatomic,strong) NSString *birthday;

//
@property(nonatomic,strong) NSString *address;

//
@property(nonatomic,strong) NSString *email;

//
@property(nonatomic,strong) NSString *phone;

//
@property(nonatomic,strong) NSString *city;

//
@property(nonatomic,strong) NSString *zip;

//
@property(nonatomic,strong) NSString *country;

//
@property(nonatomic,strong) NSString *profile;

/**
 *  Método constructor que crea una instancia de la clase User Model con los parámetros ....
 *
 *  @param data Diccionario con los datos del perfil
 *
 *  @return <#return value description#>
 */
- (id)initUserWithDictionary:(NSDictionary *)data;

/**
 *  <#Description#>
 *
 *  @param file <#file description#>
 *
 *  @return <#return value description#>
 */
+ (NSDictionary *)getUserDataFromJSONFIle:(NSString *)file;

@end
