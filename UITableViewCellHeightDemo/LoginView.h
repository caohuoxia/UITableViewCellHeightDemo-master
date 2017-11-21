//
//  LoginView.h
//  UITableViewCellHeightDemo
//
//  Created by admin on 2017/11/20.
//  Copyright © 2017年 lisong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginView : UIView
@property (weak, nonatomic) IBOutlet UITextField *tfUsername;
@property (weak, nonatomic) IBOutlet UITextField *tfPwd;
@property (weak, nonatomic) IBOutlet UIButton *btnLogin;
+(LoginView *)loadLoginView;
@end
