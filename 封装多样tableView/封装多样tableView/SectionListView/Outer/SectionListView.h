//
//  SectionListView.h
//  封装多样tableView
//
//  Created by qianfeng on 15/8/11.
//  Copyright (c) 2015年 小太爷. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SectionListView : UIView
//通过类方法创建控件,唯一确定程序的创建入口
//目的:控制程序的运行逻辑
+(instancetype)createWithFrame:(CGRect)frame;
//刷新数据
-(void)reloadDataWithArray:(NSArray*)sectionArray;
@end
