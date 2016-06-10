//
//  ViewController.m
//  SGLoggingExample
//
//  Created by Igor Anany on 11/06/16.
//  Copyright © 2016 Igor Anany. All rights reserved.
//

#import "ViewController.h"
#import "SGLogging.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SGLogInfo(@"Information!");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
