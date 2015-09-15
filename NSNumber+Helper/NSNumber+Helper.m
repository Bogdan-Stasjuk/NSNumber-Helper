//
//  NSNumber+Helper.m
//
//  Created by Bogdan Stasjuk on 5/12/14.
//  Copyright (c) 2014 Bogdan Stasjuk. All rights reserved.
//

#import "NSNumber+Helper.h"


#define ALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#define EmptyString @""


@implementation NSNumber (Helper)

#pragma mark - Public methods

#pragma mark -Static

+ (BOOL)isInteger:(id)object {
    return [object isKindOfClass:[NSNumber class]] && !strcmp([object objCType], @encode(int));
}

+ (BOOL)isDouble:(id)object {
    return [object isKindOfClass:[NSNumber class]] && !strcmp([object objCType], @encode(double));
}

#pragma mark -Nonstatic

- (NSString *)doubleToStringWithFormat:(NSNumberFormat)format {
    NSString *formatStr = [self formatString:format];
    NSString *result = [NSString stringWithFormat:formatStr, self.doubleValue];
    
    return result;
}

- (NSString *)currencyStyleWithLocale:(NSLocale *)locale {
    NSNumberFormatter *numberFormatter = [NSNumberFormatter new];
    [numberFormatter setFormatterBehavior:NSNumberFormatterBehavior10_4];
    [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
    [numberFormatter setLocale:locale];
    
    return [numberFormatter stringFromNumber:self];
}


#pragma mark - Private methods

- (NSString *)formatString:(NSNumberFormat)format {
    switch (format) {
        case NSNumberFormatP2f:
            return @"%.2f";
        case NSNumberFormatP3f:
            return @"%.3f";
            
        default:
            ALog("There is no string for NSNumberFormat enum's value %lu", (unsigned long)format);
            return EmptyString;
    }
}

@end
