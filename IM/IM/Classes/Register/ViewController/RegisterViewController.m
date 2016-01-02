//
//  RegisterViewController.m
//  IM
//
//  Created by mac on 16/1/2.
//  Copyright © 2016年 ZF. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI{
    //显示导航条
    self.navigationController.navigationBar.hidden = NO;
    self.navigationController.navigationBar.backgroundColor = [UIColor colorWithRed:224 / 255.0 green:224 / 255.0 blue:224 / 255.0 alpha:1];
    self.navigationItem.title = @"注册";
    
    //背景
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *chooseCityButton = [[UIButton alloc] init];
    [chooseCityButton setTitle:@"中国  +86" forState:UIControlStateNormal];
    [chooseCityButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [chooseCityButton addTarget:self action:@selector(clickChooseCityButton) forControlEvents:UIControlEventTouchUpInside];

    //手机号输入框
    UITextField *inputPhoneNumber = [[UITextField alloc] init];
    inputPhoneNumber.placeholder = @"请输入手机号码";
    
    //布局
    [chooseCityButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(120);
        make.leading.equalTo(self.view);
        make.width.equalTo(self.view);
    }];
    
}


- (void)clickChooseCityButton{
    NSLog(@"clickChooseCityButton");
}

@end
