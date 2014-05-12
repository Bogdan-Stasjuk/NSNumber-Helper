//
//  NSNumber+Helpers.h
//  NSNumberHelpersExamples
//
//  Created by Bogdan Stasjuk on 5/12/14.
//  Copyright (c) 2014 Bogdan Stasjuk. All rights reserved.
//

typedef NS_ENUM(NSUInteger, NSNumberFormat)
{
    NSNumberFormatP2f,
};


@interface NSNumber (Helpers)

+ (BOOL)isDouble:(NSNumber *)number;

- (NSString *)doubleToStringWithFormat:(NSNumberFormat)format;

@end
