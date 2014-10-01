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

- (void)getEducationDataWithcompletionHandler:(educationCompletionBlock)completionBlock {
    NSArray *educationModels = [EducationModel arrayOfModelsFromDictionaries:[self getDataFromJSONFIle:@"Education"][@"education"]];

    NSArray *additionalModels = [EducationModel arrayOfModelsFromDictionaries:[self getDataFromJSONFIle:@"Education"][@"additional"]];

    NSDictionary *completeDict = @{
                                   @"education" : educationModels,
                                   @"additional" : additionalModels
    };
    
    NSError *error;
    
    if (educationModels && additionalModels) {
        completionBlock(completeDict,nil);
    }else {
        completionBlock(nil,error);
    }
}

- (void)getSkillsDataWithcompletionHandler:(skillsCompletionBlock)completionBlock {

    NSDictionary *mobileSkillsDict = [self getDataFromJSONFIle:@"Skills"][@"skills"][@"mobile"];
    NSDictionary *webSkillsDict = [self getDataFromJSONFIle:@"Skills"][@"skills"][@"web"];
    NSDictionary *databasesSkillsDict = [self getDataFromJSONFIle:@"Skills"][@"skills"][@"databases"];
    
    NSMutableArray *mutableArray;
    
    NSError *error;
    
    if (mobileSkillsDict) {
        SkillModel *mobileModel = [[SkillModel alloc] initWithDictionary:mobileSkillsDict error:&error];
        SkillModel *webModel = [[SkillModel alloc] initWithDictionary:webSkillsDict error:&error];
        SkillModel *databaselModel = [[SkillModel alloc] initWithDictionary:databasesSkillsDict error:&error];
        
        mutableArray = [NSMutableArray arrayWithObjects:mobileModel,webModel,databaselModel, nil];
        
        completionBlock(mutableArray,nil);
    }else {
        completionBlock(nil,error);
    }
   
}

@end
