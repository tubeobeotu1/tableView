//
//  BoxAppToAppAnnotationBuilder.h
//  BoxSDK
//
//  Copyright (c) 2015 Box. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BoxAppToAppApplication;

@interface BoxAppToAppAnnotationBuilder : NSObject

+ (NSURL *)actionURLWithAction:(NSString *)action
                     urlScheme:(NSString *)urlScheme
                      metadata:(NSDictionary *)metadata
             sourceApplication:(BoxAppToAppApplication *)app;

+ (NSDictionary *)annotationDictionaryWithAction:(NSString *)action
                                        metadata:(NSDictionary *)metadata
                               sourceApplication:(BoxAppToAppApplication *)app;

// this method parses the value out, handles the percent encoding, and then removes it from the info dictionary
+ (NSString *)stringByDestructivelyParsingInfo:(NSMutableDictionary *)info forKey:(NSString *)key;
+ (NSURL *)urlByDestructivelyParsingInfo:(NSMutableDictionary *)info forKey:(NSString *)key;

+ (NSString *)stringFromAnnotationString:(NSString *)string;

@end
