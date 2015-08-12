//
//  SectionModel.h
//  UITableView多样练习
//
//  Created by qianfeng on 15/8/11.
//  Copyright (c) 2015年 小太爷. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,SectionCellType)
{
    SectionCellTypeListen=1,
    SectionCellTypeSpeak,
    SectionCellTypeRead

};


@interface SectionModel : NSObject

@property (nonatomic,strong)NSString *headTitle;
@property (nonatomic,assign)NSInteger cellHeight;
@property (nonatomic,assign)NSInteger cellCount;
@property (nonatomic,assign)SectionCellType type;
@property (nonatomic,strong)NSArray *nameArray;

+(SectionModel*)createModelWithType:(SectionCellType)type;
@end
