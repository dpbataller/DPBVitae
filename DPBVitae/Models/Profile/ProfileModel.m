//
//  User.m
//  DPBVitae
//
//  Created by David Pedrosa on 27/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "ProfileModel.h"

@implementation ProfileModel

- (id)initUserWithDictionary:(NSDictionary *)data {
    ProfileModel *userObject = [[ProfileModel alloc] init];
    
    if (self == [super init]) {
        userObject.fullName = data[@"fullName"];
        userObject.age      = data[@"age"];
        userObject.birthday = data[@"birthday"];
        userObject.address  = data[@"address"];
        userObject.email    = data[@"email"];
        userObject.phone    = data[@"phone"];
        userObject.city     = data[@"city"];
        userObject.zip      = data[@"zip"];
        userObject.country  = data[@"county"];
        userObject.profile  = data[@"profile"];
    }
    
    return userObject;
}

+ (NSDictionary *)getUserDataFromJSONFIle:(NSString *)file {
    // Retrieve local JSON file called example.json
    NSString *filePath = [[NSBundle mainBundle] pathForResource:file ofType:@"json"];
    
    // Load the file into an NSData object called JSONData
    NSError *error = nil;
    
    NSData *JSONData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];
    
    // Create an Objective-C Dictionary from JSON Data
    NSDictionary *JSONDict = (NSDictionary*)[NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingAllowFragments error:&error];
    
    return JSONDict;
}

@end
