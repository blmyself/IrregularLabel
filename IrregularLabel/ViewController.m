//
//  ViewController.m
//  IrregularLabel
//
//  Created by 蔡强 on 2018/3/30.
//  Copyright © 2018年 kuaijiankang. All rights reserved.
//

#import "ViewController.h"
#import "IrregularLabel.h"

@interface ViewController ()

@property (nonatomic, strong) IrregularLabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label = [[IrregularLabel alloc] initWithFrame:CGRectMake(90, 200, 200, 40)];
    [self.view addSubview:self.label];
    self.label.text = @"这是一个不规则label";
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.backgroundColor = [UIColor redColor];
    self.label.textColor = [UIColor whiteColor];
    self.label.font = [UIFont boldSystemFontOfSize:16];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.label.frame = CGRectMake(100, 90, 200, 70);
}

@end
