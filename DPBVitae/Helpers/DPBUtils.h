//
//  DPBUtils.h
//  DPBVitae
//
//  Created by David Pedrosa on 01/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DPBUtils : NSObject

/**
 *  <#Description#>
 *
 *  @param hex <#hex description#>
 *
 *  @return <#return value description#>
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

/**
 *  <#Description#>
 *
 *  @param color <#color description#>
 *
 *  @return <#return value description#>
 */
+ (NSString *)hexStringFromColor:(UIColor *)color;

@end
