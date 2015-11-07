//
//  DemoArray.m
//  TechmasterApp
//
//  Created by student on 11/5/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "DemoArray.h"

@interface DemoArray ()


@end

@implementation DemoArray

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSArray *array1 = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"]];
//    for (NSDictionary* item in array1) {
//        NSLog(@"%@.%@ (%@)", item[@"Number"], item[@"Name"], item[@"Position"]);
//    }
    
    NSBundle* bundle = [NSBundle mainBundle];
    NSString* plistPath = [bundle pathForResource:@"data" ofType:@"plist"];
    NSDictionary* plisttext2 = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    NSArray* keys = [plisttext2 allKeys];
    int randomIndex = arc4random() % (keys.count);
    NSString* key = [plisttext2 objectForKey:[keys objectAtIndex:randomIndex]];

}




@end
