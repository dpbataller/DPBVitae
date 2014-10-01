//
//  APIManager.m
//  DPBVitae
//
//  Created by David Pedrosa on 30/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "APIManager.h"

@implementation APIManager

#pragma mark - Singleton and Initializers

+ (APIManager *)sharedAPIManager {
    static APIManager *sharedManager = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedManager = [[APIManager alloc] init];
    });
    
    return sharedManager;
}

#pragma mark - Helpers

- (NSDictionary *)getDataFromJSONFIle:(NSString *)file {
    // Retrieve local JSON file called example.json
    NSString *filePath = [[NSBundle mainBundle] pathForResource:file ofType:@"json"];
    
    // Load the file into an NSData object called JSONData
    NSError *error = nil;
    
    NSData *JSONData = [NSData dataWithContentsOfFile:filePath options:NSDataReadingMappedIfSafe error:&error];
    
    // Create an Objective-C Dictionary from JSON Data
    NSDictionary *JSONDict = (NSDictionary*)[NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingAllowFragments error:&error];


    return JSONDict;
}

#pragma mark - API Requests

- (void)getProfileDataUsingKey:(NSString *)key completionHandler:(profileCompletionBlock)completionBlock {
    NSDictionary *JSONProfile = [self getDataFromJSONFIle:@"Profile"];
    NSError *error;
    
    if (JSONProfile) {
        ProfileModel *profile = [[ProfileModel alloc] initWithDictionary:JSONProfile[key] error:&error];
        NSLog(@"%@",profile);
        completionBlock(profile,nil);
    }else {
        completionBlock(nil,error);
    }
}


- (void)getExperienceDataUsingKey:(NSString *)key completionHandler:(experienceCompletionBlock)completionBlock {
    
    NSArray *models = [ExperienceModel arrayOfModelsFromDictionaries:[self getDataFromJSONFIle:@"Experience"][key]];

    NSError *error;
    
    if (models) {
        completionBlock(models,nil);
    }else {
        completionBlock(nil,error);
    }
    
}

- (void)getEducationDataUsingKey:(NSString *)key completionHandler:(educationCompletionBlock)completionBlock {
    NSArray *models = [EducationModel arrayOfModelsFromDictionaries:[self getDataFromJSONFIle:@"Education"][key]];
    
    NSError *error;
    
    if (models) {
        completionBlock(models,nil);
    }else {
        completionBlock(nil,error);
    }
}

@end
