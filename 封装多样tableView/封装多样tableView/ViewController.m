//
//  ViewController.m
//  封装多样tableView
//
//  Created by qianfeng on 15/8/11.
//  Copyright (c) 2015年 小太爷. All rights reserved.
//

#import "ViewController.h"
#import "SectionListView.h"
#import "SectionListModel.h"

@interface ViewController ()
{

    SectionListView *_listView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    _listView=[SectionListView createWithFrame:self.view.bounds];
    [self.view addSubview:_listView];
    _listView.autoresizingMask=UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    
    UIBarButtonItem *barBtn=[[UIBarButtonItem alloc]initWithTitle:@"数据回来了" style:UIBarButtonItemStyleDone target:self action:@selector(barBtnClicked)];
    
    self.navigationItem.rightBarButtonItem=barBtn;
}
-(void)barBtnClicked
{
        SectionListModel *listen=[SectionListModel createWithType:SectionListTypeListen];
        listen.dataArray=@[@"1",@"2",@"3"];
        listen.cellCount=(int)listen.dataArray.count;
    
        SectionListModel *speak=[SectionListModel createWithType:SectionListTypeSpeak];
        speak.dataArray=@[@"2B",@"2C",@"2D"];
        speak.cellCount=(int)speak.dataArray.count;
    
        SectionListModel *read=[SectionListModel createWithType:SectionListTypeRead];
        read.dataArray=@[@"K",@"H"];
        read.cellCount=(int)read.dataArray.count;
    
    [_listView reloadDataWithArray:@[listen,speak,read]];



}
@end
