//
//  ViewController.m
//  IADisplayButton
//
//  Created by JinFeng on 2019/4/22.
//  Copyright © 2019 Netease. All rights reserved.
//

#import "ViewController.h"
#import "IADisplayButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupButton];
}

- (void)setupButton {
    IADisplayButton *button = [IADisplayButton button];
    [button setTitle:@"请点击按钮标题" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    [button setBackgroundColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [button setImage:[UIImage imageNamed:@"icon_more_recast"] forState:UIControlStateNormal];
    button.layer.borderColor = [UIColor redColor].CGColor;
    button.layer.borderWidth = 1;
    button.contentEdgeInsets = UIEdgeInsetsMake(0, 20, 0, 20);
    button.titleLabel.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:button];
    
    button.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:40];
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1.0 constant:20];
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:80];
    [self.view addConstraints:@[top, left, height]];
}



@end
