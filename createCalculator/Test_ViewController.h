//
//  Test_ViewController.h
//  createCalculator
//
//  Created by ken on 13-5-6.
//  Copyright (c) 2013年 maimaicha. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Test_ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *display;
@property int pressedNumber;
@property (strong, nonatomic) NSMutableArray *numberArray;
- (IBAction)digitPress:(id)sender;

@end
