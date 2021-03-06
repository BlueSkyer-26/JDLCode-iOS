//
//  JDLCodeCommonSetup.h
//  JDLCode-iOS
//
//  Created by 胜炫电子 on 2018/1/3.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#ifndef JDLCodeCommonSetup_h
#define JDLCodeCommonSetup_h

#pragma mark ------ 屏幕 -------
#define KScreenWidth   [[UIScreen mainScreen] bounds].size.width
#define KScreenHeight  [[UIScreen mainScreen] bounds].size.height

#define KSCALE_WIDTH [UIScreen mainScreen].bounds.size.width/375
#define KSCALE_HEIGHT [UIScreen mainScreen].bounds.size.height/667

#define KLeftPadding KAdaptX(15)
#define KTwoMultiplication(padding)  2 * padding
#define KTwoHalfMultiplication(padding)  0.5 * padding

#define KAdaptX(x) KSCALE_WIDTH * x
#define KAdaptY(y) KSCALE_HEIGHT * y
#define KHAdaptX(x) KSCALE_HEIGHT * x
#define KHAdaptY(y) KSCALE_WIDTH * y

#pragma mark ===========颜色区===========--BlueSkyer25
//主题色 导航栏颜色
#define KThemeColor KRGBColor(251, 89, 85)
#define KVCBackgroundColor ([UIColor colorWithRed:240.0/255.0 green:240.0/255.0 blue:240.0/255.0 alpha:1.0])
#define KNAVColor ([UIColor colorWithRed:252.0/255.0 green:104.0/255.0 blue:34.0/255.0 alpha:1.0])
#define KTabbarColor ([UIColor colorWithRed:246.0/255.0 green:246.0/255.0 blue:246.0/255.0 alpha:1.0])
#define KTextColor KRGBColor(63, 63, 63)
#define KTextDetailColor KRGBColor(163, 163, 163)
#define KBottomLineColor KRGBColor(245, 247, 245)
#define KTextPlaceHolderColor KRGBColor(200, 200, 200)

#define KTabbarTextSelColor ([UIColor colorWithRed:252.0/255.0 green:104.0/255.0 blue:34.0/255.0 alpha:1.0])
#define KTabbarTextNorColor ([UIColor colorWithRed:146.0/255.0 green:146.0/255.0 blue:146.0/255.0 alpha:1.0])
//16进制颜色设置
#define KHEXColor(HexColor) [UIColor colorWithHexString:HexColor]

#define KButtonThemeColor KRGBColor(55, 188, 119)

#define KClearColor  [UIColor clearColor]
#define KWhiteColor  [UIColor whiteColor]
#define KBlackColor  [UIColor blackColor]
#define KGrayColor   [UIColor grayColor]
#define KGray2Color  [UIColor lightGrayColor]
#define KBlueColor   [UIColor blueColor]
#define KRedColor    [UIColor redColor]
#define KGreenColor  [UIColor greenColor]
#define KYellowColor [UIColor yellowColor]
#define KPurpleColor [UIColor purpleColor]
#define KOrangeColor [UIColor orangeColor]
#define KCyanColor   [UIColor cyanColor]

#define KRGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define KRGBAlphaColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
#define KWhiteAlphaColor(a) [[UIColor whiteColor] colorWithAlphaComponent:a]
#define KBlackAlphaColor(a) [[UIColor blackColor] colorWithAlphaComponent:a]
//home scrollview bgcolor
#define KAdvertScrollviewColor ([UIColor colorWithRed:226.0/255.0 green:80.0/255.0 blue:76.0/255.0 alpha:1.0])


//随机色
#define KRANDOM_COLOR [UIColor colorWithHue: (arc4random() % 256 / 256.0) saturation:((arc4random()% 128 / 256.0 ) + 0.5) brightness:(( arc4random() % 128 / 256.0 ) + 0.5) alpha:1.0]


#pragma mark ------- 机型判断 -------
//是否是iPhone X
#define KIS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define KIS_IPHONE_X (KIS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 812.0f)

// 判断是否是iPhone X
#define iPhoneX ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)
// 状态栏高度
#define KStatusHeight (KIS_IPHONE_X ? 44.f : 20.f)
// 导航栏高度
#define KNavbarHeight (KIS_IPHONE_X ? 88.f : 64.f)
// tabBar高度
#define KTabBarHeight (KIS_IPHONE_X ? (49.f+34.f) : 49.f)
// bottom 安全高度
#define KSafeHeight  (KIS_IPHONE_X ? 34.f: 0)
// segment height 选项卡高度
#define KSegmentHeight  44.f


#define KIS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define KIS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

#define KSCREEN_MAX_LENGTH (MAX(KScreenWidth, KScreenHeight))
#define KSCREEN_MIN_LENGTH (MIN(KScreenWidth, KScreenHeight))

#define IS_IPHONE4 (KIS_IPHONE && KSCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE5 (KIS_IPHONE && KSCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE6 (KIS_IPHONE && KSCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE6P (KIS_IPHONE && KSCREEN_MAX_LENGTH == 736.0)


#pragma mark ===========设置图片===========--BlueSkyer25
#define KImageName(imageName) [UIImage imageNamed:[NSString stringWithFormat:@"%@",imageName]]

#pragma mark ===========弱引用===========--BlueSkyer25
#define WEAKSELF __weak typeof(self) weakSelf = self

#pragma mark ===========字符串===========--BlueSkyer25
#define KNSStringFormat(format,...) [NSString stringWithFormat:format,##__VA_ARGS__]















#endif /* JDLCodeCommonSetup_h */
