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
    operator = [[NSString alloc] init];
}


- (IBAction)actionOperator:(id)sender {
    firstNumber = [_screen.text floatValue];
    operator = [(UIButton*) sender currentTitle];
    _screen.text = @"";
}

- (IBAction)actionNumber:(id)sender {
    _screen.text = [[NSString alloc] initWithFormat:@"%@%@", _screen.text, [(UIButton*) sender currentTitle]];
}

- (IBAction)actionEqual:(id)sender {
    NSNumber *result = [[NSNumber alloc] init];
    secondNumber = [_screen.text floatValue];
    if ([operator isEqualToString:@"+"]){
        result = @(firstNumber + secondNumber);
        _screen.text = [[NSString alloc] initWithFormat:@"%@", result];
    }else if ([operator isEqualToString:@"-"]){
        result = @(firstNumber - secondNumber);
        _screen.text = [[NSString alloc] initWithFormat:@"%@", result];
    }else if ([operator isEqualToString:@"X"]){
        result = @(firstNumber * secondNumber);
        _screen.text = [[NSString alloc] initWithFormat:@"%@", result];
    }else if ([operator isEqualToString:@"/"]){
        result = @(firstNumber / secondNumber);
        _screen.text = [[NSString alloc] initWithFormat:@"%@", result];
    }else if ([operator isEqualToString:@"%"]){
        firstNumber /= 100;
        result = @(firstNumber * secondNumber);
        _screen.text = [[NSString alloc] initWithFormat:@"%@", result];
    }else{
        firstNumber = 0;
        secondNumber = 0;
        _screen.text = @"";
    }
}

- (IBAction)actionChange:(id)sender {
    secondNumber = [_screen.text floatValue];
    NSNumber *result = [[NSNumber alloc] init];
    result = @(- secondNumber);
    _screen.text = [[NSString alloc] initWithFormat:@"%@", result];
}
@end
