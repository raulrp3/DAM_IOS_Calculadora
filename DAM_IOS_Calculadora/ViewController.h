//
//  ViewController.h
//  DAM_IOS_Calculadora
//
//  Created by Raul Ramirez on 16/10/2019.
//  Copyright © 2019 Raul Ramirez. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *operator = @"";

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *screen;

- (IBAction)actionOperator:(id)sender;

@end

