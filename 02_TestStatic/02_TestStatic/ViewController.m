//
//  ViewController.m
//  02_TestStatic
//
//  Created by qianfeng on 15/8/10.
//  Copyright (c) 2015年 小太爷. All rights reserved.
//

#import "ViewController.h"
#import "_1_Static.h"
@interface ViewController ()
{
    UIView *_viewRed;

}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _1_Static *first=[[_1_Static alloc]init];
    [first test];
    [first print:@"呵呵"];
    _viewRed=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    _viewRed.backgroundColor=[UIColor redColor];
    [self.view addSubview: _viewRed];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
