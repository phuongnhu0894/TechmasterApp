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
    NSArray *array1 = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"]];
    for (NSDictionary* item in array1) {
        NSLog(@"%@.%@ (%@)", item[@"Number"], item[@"Name"], item[@"Position"]);
    }
    
    
    

}




@end
