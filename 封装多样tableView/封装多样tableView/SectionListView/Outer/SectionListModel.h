//
//  SectionListModel.h
//  封装多样tableView
//
//  Created by qianfeng on 15/8/11.
//  Copyright (c) 2015年 小太爷. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, SectionListType)
{
    SectionListTypeListen=1,
    SectionListTypeSpeak,
    SectionListTypeRead

};



@interface SectionListModel : NSObject
/*
 1.1个分组代表一个model
 2.这些model可以组装成一个数组
 
 */

@property (nonatomic,strong)NSString *sectionTitle;

@property (nonatomic,assign)float cellHeight;

@property (nonatomic,assign)int cellCount;
@property (nonatomic,strong)NSArray *dataArray;
@property (nonatomic,assign,readonly)SectionListType type;
+(instancetype)createWithType:(SectionListType)type;
@end
