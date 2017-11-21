//
//  LoginView.m
//  UITableViewCellHeightDemo
//
//  Created by admin on 2017/11/20.
//  Copyright © 2017年 lisong. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    self.backgroundColor = [UIColor clearColor];
    self.tfUsername.layer.borderWidth = 0.6;
    self.tfUsername.layer.borderColor = [UIColor whiteColor].CGColor;
    self.tfPwd.layer.borderWidth = 0.6;
    self.tfPwd.layer.borderColor = [UIColor whiteColor].CGColor;
    self.btnLogin.layer.borderWidth = 0.6;
    self.btnLogin.layer.cornerRadius = 25.0;
    self.btnLogin.layer.borderColor = [UIColor whiteColor].CGColor;
    [self.tfUsername setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    [self.tfUsername setValue:[UIFont systemFontOfSize:16] forKeyPath:@"_placeholderLabel.font"];
    [self.tfPwd setValue:[UIColor whiteColor] forKeyPath:@"_placeholderLabel.textColor"];
    [self.tfPwd setValue:[UIFont systemFontOfSize:16] forKeyPath:@"_placeholderLabel.font"];
}

+ (LoginView *)loadLoginView{
    // lastObject 可改为 firstObject，该数组只有一个元素，写哪个都行，看个人习惯。
    //这里若没有找到xib文件 很容易奔溃
    return [[[NSBundle mainBundle] loadNibNamed:@"LoginView" owner:self options:nil] lastObject];
}

- (IBAction)btnRegister:(id)sender {
    NSLog(@"Register button clicked");
}
- (IBAction)btnLogin:(id)sender {
    NSLog(@"Login button clicked");
}

@end
