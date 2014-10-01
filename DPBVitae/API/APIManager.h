//
//  APIManager.h
//  DPBVitae
//
//  Created by David Pedrosa on 30/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ProfileModel.h"
#import "ExperienceModel.h"
#import "EducationModel.h"
#import "SkillModel.h"

// ----------------------------------------------------------------------------
//
//  Blocks
//

typedef void (^profileCompletionBlock)(ProfileModel *profile, NSError *error);
typedef void (^experienceCompletionBlock)(NSArray *experience, NSError *error);
typedef void (^educationCompletionBlock)(NSDictionary *education, NSError *error);
typedef void (^skillsCompletionBlock)(NSMutableArray *skills, NSError *error);

@interface APIManager : NSObject

// ----------------------------------------------------------------------------
//
//  APIManager
//



// ----------------------------------------------------------------------------
//  Singleton and Initializers
// ----------------------------------------------------------------------------

/**
 *  <#Description#>
 *
 *  @return <#return value description#>
 */
+ (APIManager *)sharedAPIManager;


// ----------------------------------------------------------------------------
//  Helpers
// ----------------------------------------------------------------------------

/**
 *  <#Description#>
 *
 *  @param file <#file description#>
 *
 *  @return <#return value description#>
 */
- (NSDictionary *)getDataFromJSONFIle:(NSString *)file;



// ----------------------------------------------------------------------------
//  API Requests
// ----------------------------------------------------------------------------

/**
 *  <#Description#>
 *
 *  @param completionBlock <#completionBlock description#>
 */
- (void)getProfileDataUsingKey:(NSString *)key completionHandler:(profileCompletionBlock)completionBlock;

/**
 *  <#Description#>
 *
 *  @param completionBlock <#completionBlock description#>
 */
- (void)getExperienceDataUsingKey:(NSString *)key completionHandler:(experienceCompletionBlock)completionBlock;

/**
 *  <#Description#>
 */
- (void)getEducationDataWithcompletionHandler:(educationCompletionBlock)completionBlock;

/**
 *  <#Description#>
 *
 *  @param completionBlock <#completionBlock description#>
 */
- (void)getSkillsDataWithcompletionHandler:(skillsCompletionBlock)completionBlock;

@end
