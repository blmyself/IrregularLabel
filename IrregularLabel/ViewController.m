//
//  ViewController.m
//  IrregularLabel
//
//  Created by 蔡强 on 2018/3/30.
//  Copyright © 2018年 kuaijiankang. All rights reserved.
//

#import "ViewController.h"
#import "IrregularLabel.h"
#import "ArrowLabel.h"

@interface ViewController ()

@property (nonatomic, strong) IrregularLabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label = [[IrregularLabel alloc] initWithFrame:CGRectMake(90, 90, 200, 40)];
    [self.view addSubview:self.label];
    self.label.text = @"这是一个不规则label";
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.backgroundColor = [UIColor redColor];
    self.label.textColor = [UIColor whiteColor];
    self.label.font = [UIFont boldSystemFontOfSize:16];
    
    // 箭头label
    ArrowLabel *arrowLabel = [[ArrowLabel alloc] initWithFrame:CGRectMake(150, 200, 80, 80)];
    [self.view addSubview:arrowLabel];
    arrowLabel.textAlignment = NSTextAlignmentCenter;
    arrowLabel.font = [UIFont systemFontOfSize:14];
    arrowLabel.text = @"箭头label";
    arrowLabel.backgroundColor = [UIColor orangeColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.label.frame = CGRectMake(100, 150, 222, 70);
}

@end
