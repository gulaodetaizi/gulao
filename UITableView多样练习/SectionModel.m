//
//  SectionModel.m
//  UITableView多样练习
//
//  Created by qianfeng on 15/8/11.
//  Copyright (c) 2015年 小太爷. All rights reserved.
//

#import "SectionModel.h"


@implementation SectionModel
+(SectionModel*)createModelWithType:(SectionCellType)type
{
    SectionModel *model=[[SectionModel alloc]init];
    
    switch (type) {
        case SectionCellTypeListen:
        {
            model.headTitle=@"Listen";
            model.cellHeight=100;
            
        }
            break;
        case SectionCellTypeRead:
        {
            model.headTitle=@"Read";
            model.cellHeight=100;
            
        }
            break;
        case SectionCellTypeSpeak:
        {
            model.headTitle=@"Speak";
            model.cellHeight=100;
            
        }
            break;
        default:
            break;
    }
    
    return model;
}
@end
