//
//  NSNumber+Helpers.m
//  NSNumberHelpersExamples
//
//  Created by Bogdan Stasjuk on 5/12/14.
//  Copyright (c) 2014 Bogdan Stasjuk. All rights reserved.
//

#import "NSNumber+Helpers.h"


#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#define EmptyString @""


@implementation NSNumber (Helpers)

#pragma mark - Public methods

#pragma mark -Static

+ (BOOL)isDouble:(NSNumber *)number
{
    if (![number isKindOfClass:[NSNumber class]])
        return NO;

    return !strcmp([number objCType], @encode(double));
}

#pragma mark -Nonstatic

- (NSString *)doubleToStringWithFormat:(NSNumberFormat)format
{
    NSString *formatStr = [self formatString:format];
    NSString *result = [NSString stringWithFormat:formatStr, self.doubleValue];
    
    return result;
}


#pragma mark - Private methods

- (NSString *)formatString:(NSNumberFormat)format
{
    switch (format) {
        case NSNumberFormatP2f:
            return @"%.2f";
            
        default:
            ALog("There is no string for NSNumberFormat enum's value %lu", (unsigned long)format);
            return EmptyString;
    }
}

@end