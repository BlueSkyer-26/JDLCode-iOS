//
//  JDLLoginViewController.m
//  JDLCode-iOS
//
//  Created by 胜炫电子 on 2018/1/3.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "JDLLoginViewController.h"



@interface JDLLoginViewController ()


@end

@implementation JDLLoginViewController

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =KVCBackgroundColor;
    
    self.navigationItem.title =@"Coding";
    [self JDL_setStatusBarStyle:UIStatusBarStyleDefault];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
