//
//  RedPacketCell.m
//  HelloanNative
//
//  Created by admin on 2017/11/9.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "RedPacketCell.h"

@interface RedPacketCell()
{
    bool flag;
}
@end

@implementation RedPacketCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.lbBidType.text = @"";
    self.lbModelType.text = @"";
    [self.btn setImage:[UIImage imageNamed:@"arrowDown"] forState:UIControlStateNormal];
    [self.btn setImage:[UIImage imageNamed:@"arrowUp"] forState:UIControlStateSelected];
}
//2.类似玖富我的卡券cell收缩展开效果：默认收缩，点击展开，再一次点击的话 又收缩（使用block告诉vc让tableview更新内容和高度）
- (IBAction)btnMore:(id)sender {
    UIButton *btn = sender;
    
    flag = !flag;
    btn.selected = flag;
    if (flag) {
        //展开
        self.lbBidType.text = @"• 限房标使用";
        self.lbModelType.text = @"• 限pc端使用";
    }else{
        //收缩
        self.lbBidType.text = @"";
        self.lbModelType.text = @"";
    }
    //block通知vc里tableview刷新cell（重新载入cell---reloadData）
    if (self.blockBtn) {
        self.blockBtn();
    }
}

@end
