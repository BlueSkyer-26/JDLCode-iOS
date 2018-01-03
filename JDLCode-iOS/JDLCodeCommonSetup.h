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
#define KVCBackgroundColor ([UIColor colorWithRed:245.0/255.0 green:247.0/255.0 blue:249.0/255.0 alpha:1.0])
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

#endif /* JDLCodeCommonSetup_h */
