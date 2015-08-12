//
//  SectionListModel.m
//  封装多样tableView
//
//  Created by qianfeng on 15/8/11.
//  Copyright (c) 2015年 小太爷. All rights reserved.
//

#import "SectionListModel.h"

@implementation SectionListModel

-(void)makeContentWithType:(SectionListType)type
{
    _type=type;
    switch (type) {
        case SectionListTypeListen:
        {
            _sectionTitle=@"Listent";
            _cellHeight=100;
        }
            break;
        case SectionListTypeSpeak:
        {
            
            _sectionTitle=@"Speak";
            _cellHeight=30;
        }
            break;
        case SectionListTypeRead:
        {
        _sectionTitle=@"Read";
            _cellHeight=200;
        }
            break;
       
            
        default:
            break;
    }


}

+(instancetype)createWithType:(SectionListType)type
{
    SectionListModel *model=[[SectionListModel alloc]init];
    [model makeContentWithType:type];
    return model;



}
@end
