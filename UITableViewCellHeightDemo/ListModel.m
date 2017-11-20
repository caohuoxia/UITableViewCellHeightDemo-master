//
//  ListModel.m
//  UITableViewCellHeightDemo
//
//  Created by lisong on 2016/10/8.
//  Copyright © 2016年 lisong. All rights reserved.
//

#import "ListModel.h"

@implementation ListModel
//手动计算高度
- (CGFloat)cellHeight{
    // 文字的最大尺寸(设置内容label的最大size，这样才可以计算label的实际高度，需要设置最大宽度，但是最大高度不需要设置，只需要设置为最大浮点值即可)，53为内容label到cell左边的距离
    CGSize maxSize = CGSizeMake([UIScreen mainScreen].bounds.size.width - 100, MAXFLOAT);

    // 计算内容label的高度
    CGFloat textH = [self.desc boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:17]} context:nil].size.height;

    /*
     昵称label和cell的顶部为0
     17为昵称label的高度
     8.5为昵称label和内容label的间距
     textH为内容label的高度
     304为内容image的高度
     */
    if (textH > 80) {
        _cellHeight =  textH ;
    }else{
        _cellHeight = 10 +80 +10;
    }

    return _cellHeight;
}

@end
