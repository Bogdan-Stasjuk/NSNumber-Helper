//
//  NSNumber+Helpers.m
//  NSNumberHelpersExamples
//
//  Created by Bogdan Stasjuk on 5/12/14.
//  Copyright (c) 2014 Bogdan Stasjuk. All rights reserved.
//

#import "NSNumber+Helpers.h"


@implementation NSNumber (Helpers)

#pragma mark - Public methods

#pragma mark -Static

+ (BOOL)isDouble:(NSNumber *)number
{
    if (![number isMemberOfClass:[NSNumber class]])
        return NO;

    return !strcmp([number objCType], @encode(double));
}

@end