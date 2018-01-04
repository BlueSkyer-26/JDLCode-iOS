//
//  AppDelegate+JDLAppService.h
//  Coding_iOS
//
//  Created by 胜炫电子 on 2018/1/3.
//  Copyright © 2018年 Coding. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (JDLAppService)

//统一配置导航栏 状态栏
-(void)setNavBarAppearence;

//适配iOS11
-(void)adaptationNewIOS;

//键盘弹起收回统一处理
-(void)configureBoardManager;
@end
