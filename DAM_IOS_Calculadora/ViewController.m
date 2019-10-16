//
//  ViewController.m
//  DAM_IOS_Calculadora
//
//  Created by Raul Ramirez on 16/10/2019.
//  Copyright © 2019 Raul Ramirez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)actionOperator:(id)sender {
    operator = [(UIButton*)sender currentTitle];
    NSLog(@"%@", operator);
}
@end
