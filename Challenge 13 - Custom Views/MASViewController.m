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
    /// Create CGRect with the coordinates and size of the label
    CGRect labelFrame = CGRectMake(20, 60, 280, 22);
    /// alloc & init label instance with custom init with above CGRect
    self.label = [[UILabel alloc] initWithFrame:labelFrame];
    /// Set label text
    self.label.text = @"Label";
    /// Set label text color
    self.label.textColor = [UIColor redColor];
    /// add the label as a subview of view
    [self.view addSubview:self.label];
    
/// Problem 2: CREATING UITextField IN CODE
    /// Create CGRect with the coordinates and size of the textField
    CGRect textFieldFrame = CGRectMake(20, 110, 280, 30);
    /// alloc instance of textField with custom initWithFrame
    self.textField = [[UITextField alloc] initWithFrame:textFieldFrame];
    /// set placeholder text for textField
    self.textField.placeholder = @"Enter Text Here!";
    /// set textField background color
    self.textField.backgroundColor = [UIColor lightGrayColor];
    /// add textField as a subview of view
    [self.view addSubview:self.textField];
    
/// Problem 3: CREATING UIButton IN CODE
    /// Create instance of UIButton with buttonType RoundedRect
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    /// set button's frame's coordinate and size
    button.frame = CGRectMake(20, 160, 280, 30);
    /// set button title and controlState
    [button setTitle:@"press me" forState:UIControlStateNormal];
    /// set button as a subview of view
    [self.view addSubview:button];
    
    /// call UIButton method to addTarget:action:forControlEvents:
    [button addTarget:self
                /// set action to call didEnterText: method
               action:@selector(didEnterText:)
                /// set event that will trigger the action
                forControlEvents:UIControlEventTouchUpInside];
}


/// Method called when button pressed
-(void)didEnterText:(UIButton *)sender
{
    /// set label text equal to the textField text
    self.label.text = self.textField.text;
    /// dismiss keyboard
    [self.textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
