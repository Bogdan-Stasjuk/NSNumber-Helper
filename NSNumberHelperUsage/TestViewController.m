//
//  TestViewController.m
//  NSNumberHelpersExamples
//
//  Created by Bogdan Stasjuk on 5/12/14.
//  Copyright (c) 2014 Bogdan Stasjuk. All rights reserved.
//

#import "TestViewController.h"

#import "NSNumber+Helper.h"


@interface TestViewController ()

@end


@implementation TestViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    NSNumber *numberDouble = @(2.54);
    NSLog(@"is %@ double: %@", numberDouble.stringValue, [NSNumber isDouble:numberDouble] ? @"YES" : @"NO");

    NSNumber *numberInt = @(2);
    NSLog(@"is %@ integer: %@", numberInt.stringValue, [NSNumber isInteger:numberInt] ? @"YES" : @"NO");

    NSString *string = @"some string";
    NSLog(@"is %@ integer: %@", string, [NSNumber isInteger:string] ? @"YES" : @"NO");

    id object = nil;
    NSLog(@"is %@ integer: %@", object, [NSNumber isInteger:object] ? @"YES" : @"NO");
    
    NSLog(@"Price: %@", [numberDouble currencyStyleWithLocale:[NSLocale localeWithLocaleIdentifier:@"en_US"]]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
