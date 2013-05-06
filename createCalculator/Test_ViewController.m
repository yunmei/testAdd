//
//  Test_ViewController.m
//  createCalculator
//
//  Created by ken on 13-5-6.
//  Copyright (c) 2013年 maimaicha. All rights reserved.
//

#import "Test_ViewController.h"

@interface Test_ViewController ()

@end

@implementation Test_ViewController
@synthesize display;
@synthesize pressedNumber;
@synthesize numberArray;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)digitPress:(id)sender {
    UIButton *pressedButton = sender;
    self.pressedNumber = [pressedButton.titleLabel.text intValue];
}

- (IBAction)add:(id)sender {
    if([self.numberArray count]==2)
    {
        int firstNumber = [[self.numberArray objectAtIndex:0] intValue];
        int secondNumber = [[self.numberArray objectAtIndex:1] intValue];
        int addNumber = firstNumber + secondNumber;
        self.display.text = [NSString stringWithFormat:@"%i",addNumber];
        [self.numberArray removeAllObjects];
    }
}

- (IBAction)minus:(id)sender {
    int firstNumber = [[self.numberArray objectAtIndex:0] intValue];
    int secondNumber = [[self.numberArray objectAtIndex:1] intValue];
    int addNumber = firstNumber - secondNumber;
    self.display.text = [NSString stringWithFormat:@"%i",addNumber];
    [self.numberArray removeAllObjects];

}

- (IBAction)input:(id)sender {
    self.display.text = [NSString stringWithFormat:@"%i",self.pressedNumber];
    NSNumber *number = [NSNumber numberWithInt:self.pressedNumber];
    [self.numberArray addObject:number];
    self.pressedNumber = 0;
}


- (IBAction)clean:(id)sender {
    [self.numberArray removeAllObjects];
    self.pressedNumber = 0;
    self.display.text = [NSString stringWithFormat:@"%i",self.pressedNumber];
    
}


- (NSMutableArray *)numberArray
{
    if(numberArray == nil)
    {
        numberArray = [[NSMutableArray alloc]init];
    }
    return numberArray;
}
@end
