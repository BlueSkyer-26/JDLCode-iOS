//
//  JDLRegisterViewController.m
//  JDLCode-iOS
//
//  Created by 胜炫电子 on 2018/1/4.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "JDLRegisterViewController.h"

@interface JDLRegisterViewController ()

@end

@implementation JDLRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =KOrangeColor;
    [self JDL_setStatusBarStyle:UIStatusBarStyleDefault];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
