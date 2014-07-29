NSNumber-Helper
===============

A cetogory on NSNumber that extends standard Foundation class functionality.


##Validation methods

```objc
+ (BOOL)isInteger:(NSNumber *)number;
+ (BOOL)isDouble:(NSNumber *)number;
```


##Manipulation methods

```objc
- (NSString *)doubleToStringWithFormat:(NSNumberFormat)format;
```


##Enums

```objc
typedef NS_ENUM(NSUInteger, NSNumberFormat) {
    NSNumberFormatP2f,
};
```


Demo
====

Clone project and run it. You can find examples of usage at `TestViewController.m`.


Compatibility
=============

This class has been tested back to iOS 6.0.

Installation
============

__Cocoapods__: `pod 'NSNumber+Helper'`<br />
__Manual__: Copy the __NSNumber+Helper__ folder in your project<br />

Import header in your project. .pch is a good place ;)

    #import "NSNumber+Helper.h"

License
=======

This code is released under the MIT License. See the LICENSE file for
details.


