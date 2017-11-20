//
//  RedPacketCell.h
//  HelloanNative
//
//  Created by admin on 2017/11/9.
//  Copyright © 2017年 admin. All rights reserved.
// 1. 解决了uiimageview加载图片 使整个cell高度拉大的问题\
content hugging 和 compressive resistance的优先级都设置成250，也就是低优先级\
让imageview的高度 去适应右边文字内容高度来
//

#import <UIKit/UIKit.h>

typedef void(^ClickMoreBlock)(void);

@interface RedPacketCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lbAmount;
@property (weak, nonatomic) IBOutlet UILabel *lbName;
@property (weak, nonatomic) IBOutlet UILabel *lbLimitAmount;
@property (weak, nonatomic) IBOutlet UILabel *lbMonth;
@property (weak, nonatomic) IBOutlet UILabel *lbModelType;
@property (weak, nonatomic) IBOutlet UILabel *lbBidType;
@property (weak, nonatomic) IBOutlet UILabel *lbDate;
@property (weak, nonatomic) IBOutlet UIView *vBottomLine;
@property (weak, nonatomic) IBOutlet UILabel *lbYuan;
@property (weak, nonatomic) IBOutlet UIView *vXxLine;
//- (void)configWithModel:(redGiftItemModel*)model;
//若产品需求需要，这里可以定义一个红包model属性（setModel），当select某个红包的时候，使用block回调相应红包model信息，非常方便！
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (copy, nonatomic) ClickMoreBlock blockBtn;
@end
