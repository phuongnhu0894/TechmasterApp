//
//  DemoArray.m
//  TechmasterApp
//
//  Created by student on 11/5/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "DemoArrayViewController.h"

@interface DemoArrayViewController ()


@end

@implementation DemoArrayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSBundle* bundle = [NSBundle mainBundle];
    NSString* plistPath = [bundle pathForResource:@"data" ofType:@"plist"];
    NSArray *players = [NSArray arrayWithContentsOfFile:plistPath];


    for (int i = 0; i<= 11; i++) {
        NSDictionary *player = [players objectAtIndex:i];
        [self writeln:[NSString stringWithFormat:@"player: %@.%@ (%@)", [player objectForKey:@"Number"], [player objectForKey:@"Name"],[player objectForKey:@"Position"] ]];
    }
}




@end
