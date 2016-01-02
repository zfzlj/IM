//
//  LoginViewController.m
//  IM
//
//  Created by mac on 16/1/2.
//  Copyright © 2016年 ZF. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"

@interface LoginViewController ()



@property (nonatomic, strong) UIImageView *iconView;

@property (nonatomic, strong) UITextField *username;

@property (nonatomic, strong) UITextField *password;

@property (nonatomic, strong) UIButton *loginButton;

@property (nonatomic, strong) UIButton *unLoginButton;

@property (nonatomic, strong) UIButton *registerButton;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}


- (void)setupUI{
    
    //隐藏导航条
    self.navigationController.navigationBar.hidden = YES;
    
    self.view.layer.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"login_bg"]].CGColor;
    //头像
    UIImageView *iconView = [[UIImageView alloc] init];
    iconView.image = [UIImage imageNamed:@"login_avatar_default"];
    [self.view addSubview:iconView];
    self.iconView = iconView;
    
    //用户名
    UITextField *username = [[UITextField alloc] init];
    username.backgroundColor = [UIColor colorWithRed:224 / 255.0 green:224 / 255.0 blue:224 / 255.0 alpha:1];
    username.placeholder = @"username";
    username.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:username];
    self.username = username;
    
    //密码
    UITextField *password = [[UITextField alloc] init];
    password.backgroundColor = [UIColor colorWithRed:224 / 255.0 green:224 / 255.0 blue:224 / 255.0 alpha:1];
    password.placeholder = @"password";
    password.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:password];
    self.password =  password;
    
    //登录按钮
    UIButton *loginButton = [[UIButton alloc] init];
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [loginButton setBackgroundImage:[UIImage imageNamed:@"login_btn_blue_nor"] forState:UIControlStateNormal];
    [loginButton setBackgroundImage:[UIImage imageNamed:@"login_btn_blue_press"] forState:UIControlStateHighlighted];
    [self.view addSubview:loginButton];
    self.loginButton = loginButton;
    
    
    //无法登录按钮
    UIButton *unLoginButton = [[UIButton alloc] init];
    [unLoginButton setTitle:@"无法登录?" forState:UIControlStateNormal];
    [unLoginButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [unLoginButton sizeToFit];
    unLoginButton.backgroundColor = [UIColor clearColor];
    [unLoginButton addTarget:self action:@selector(cliclkUnLoginButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:unLoginButton];
    self.unLoginButton = unLoginButton;
    
    
    //新用户按钮
    UIButton *registerButton = [[UIButton alloc] init];
    [registerButton setTitle:@"新用户" forState:UIControlStateNormal];
    [registerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [registerButton sizeToFit];
    registerButton.backgroundColor = [UIColor clearColor];
    [registerButton addTarget:self action:@selector(cliclkNewUserButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registerButton];
    self.registerButton = registerButton;
    
    
    
    //布局
    [iconView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.width.equalTo(@80);
        make.height.equalTo(@80);
        make.top.equalTo(self.view).offset(120);
    }];
    
    [username mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(iconView.mas_bottom).offset(16);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.equalTo(@44);
    }];
    
    [password mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(username);
        make.height.equalTo(username);
        make.leading.equalTo(username);
        make.top.equalTo(username.mas_bottom).offset(4);
    }];
    
    [loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(password.mas_bottom).offset(16);
        make.centerX.equalTo(self.view);
        make.width.equalTo(@(self.view.frame.size.width - 2 * 24));
        make.height.equalTo(@44);
    }];
    
    
    [unLoginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(16);
        make.bottom.equalTo(self.view.mas_bottom).offset(-16);
    }];
    
    [registerButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.view).offset(-16);
        make.bottom.equalTo(self.view.mas_bottom).offset(-16);
    }];
}

- (void)cliclkUnLoginButton{
    NSLog(@"cliclkUnLoginButton");
}

- (void)cliclkNewUserButton{

    RegisterViewController *registerVC = [[RegisterViewController alloc] init];
    
    [self.navigationController pushViewController:registerVC animated:YES];
    
}
@end
