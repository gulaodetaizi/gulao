//
//  SectionListView.m
//  封装多样tableView
//
//  Created by qianfeng on 15/8/11.
//  Copyright (c) 2015年 小太爷. All rights reserved.
//

#import "SectionListView.h"
#import "SectionListModel.h"
@interface SectionListView ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong)UITableView *tableView;
@property (nonatomic,strong)NSArray *sectionArray;

@end

@implementation SectionListView

//暴力屏蔽
/*
 1.封装控件时,最后是继承UIView
 2.例如:如果继承 UITableview;注意是否需要屏蔽delegate属性
 */

//-(void)setDelegate:(id<UITableViewDelegate>)delegate
//{
//    _delegate=self;(1方法)
//    [super setDelegate:self];(2方法)
//
//}
#pragma mark Inter--------------------------
-(void)makeContentView:(CGRect)hostViewBounds
{
    self.tableView=[[UITableView alloc]initWithFrame:hostViewBounds style:UITableViewStylePlain];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    [self addSubview:self.tableView];
    
    self.tableView.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;

    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellId"];
    self.tableView.tableFooterView=[[UIView alloc]init];
}
-(void)reloadDataWithArray:(NSArray*)sectionArray
{
    self.sectionArray=sectionArray;
    
    NSIndexSet *indexSet=[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0,3)];
    [self.tableView insertSections:indexSet withRowAnimation:UITableViewRowAnimationTop];
    
//    [self.tableView reloadData];


}
#pragma mark UITableViewDataSource,UITableViewDelegate---
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _sectionArray.count;

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    SectionListModel *model=self.sectionArray[section];
    return model.cellCount;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SectionListModel *model=self.sectionArray[indexPath.section];
    return model.cellHeight;

}
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    SectionListModel *model=self.sectionArray[section];
    return model.sectionTitle;

}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cellId" forIndexPath:indexPath];
    SectionListModel *model=self.sectionArray[indexPath.section];
    cell.textLabel.text=model.dataArray[indexPath.row];
    return cell;


}
#pragma mark Outer--------------------------
+(instancetype)createWithFrame:(CGRect)frame
{
    
    SectionListView *hostView=[[SectionListView alloc]initWithFrame:frame];
    [hostView makeContentView:hostView.bounds];
    return hostView;

}
@end
