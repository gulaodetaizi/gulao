//
//  SectionTableView.m
//  UITableView多样练习
//
//  Created by qianfeng on 15/8/11.
//  Copyright (c) 2015年 小太爷. All rights reserved.
//

#import "SectionTableView.h"
#import "SectionModel.h"


@interface SectionTableView ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *_tableView;

}

@end

@implementation SectionTableView
-(void)createCustomTableView
{
    _tableView=[[UITableView alloc]initWithFrame:self.bounds style:UITableViewStylePlain];
    _tableView.delegate=self;
    _tableView.dataSource=self;
    [self addSubview:_tableView];
    
    SectionModel *listenModel=[[SectionModel alloc]init];
    listenModel.type=SectionCellTypeListen;
    listenModel.nameArray=@[@"2",@"3",@"7",@"4"];
    
    SectionModel * speakModel=[[SectionModel alloc]init];
    speakModel.type=SectionCellTypeSpeak;
    speakModel.nameArray=@[@"2H",@"3G"];
    
    SectionModel *readModel=[[SectionModel alloc]init];
    readModel.type=SectionCellTypeRead;
    readModel.nameArray=@[@"POST"];
    
    
    
}
#pragma mark UITableViewDataSource,UITableViewDelegate-----------------------------------
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
SectionModel *model=

return model
}

@end
