//
//  MASViewController.m
//  Challenge 13 - Custom Views
//
//  Created by Mark Stuver on 11/29/13.
//  Copyright (c) 2013 Halo International Corp. All rights reserved.
//

#import "MASViewController.h"

@interface MASViewController ()

@property (strong, nonatomic) UILabel *label;
@property (strong, nonatomic) UITextField *textField;

@end

@implementation MASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
/// Problem 1: CREATING UILabel IN CODE
    CGRect labelFrame = CGRectMake(20, 60, 280, 22);
    self.label = [[UILabel alloc] initWithFrame:labelFrame];
    self.label.text = @"Label";
    self.label.textColor = [UIColor redColor];
    [self.view addSubview:self.label];
    
/// Problem 2: CREATING UITextField IN CODE
    CGRect textFieldFrame = CGRectMake(20, 110, 280, 30);
    self.textField = [[UITextField alloc] initWithFrame:textFieldFrame];
    self.textField.placeholder = @"Enter Text Here!";
    self.textField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.textField];
    
/// Problem 3: CREATING UIButton IN CODE
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(20, 160, 280, 30);
    [button setTitle:@"press me" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(didEnterText:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)didEnterText:(UIButton *)sender
{
    self.label.text = self.textField.text;
    [self.textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
