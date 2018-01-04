//
//  JDLNewerGuideViewController.m
//  JDLCode-iOS
//
//  Created by 胜炫电子 on 2018/1/3.
//  Copyright © 2018年 BlueSkyer-25. All rights reserved.
//

#import "JDLNewerGuideViewController.h"
#import "JDLRegisterViewController.h"
#import "JDLLoginViewController.h"

@interface JDLNewerGuideViewController ()<UIScrollViewDelegate>
@property (nonatomic,strong) UIScrollView *scrollview;

@property (nonatomic,strong) JDLAnimationButton *registerButton;
@property (nonatomic,strong) JDLAnimationButton *loginButton;

@property (nonatomic,strong) IFTTTAnimator *animation;

@property (nonatomic,strong) NSArray *topIconArray;
@property (nonatomic,strong) NSArray *bottomIconArray;

@property (nonatomic,strong) UIImageView *topImageView;
@property (nonatomic,strong) UIImageView *bottomImageView;
@property (nonatomic,strong) EllipsePageControl *pageControl;

@property (nonatomic,strong) NSMutableArray *topViewArray;
@property (nonatomic,strong) NSMutableArray *bottomViewArray;

@end

@implementation JDLNewerGuideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createView];          //创建视图
    [self createAnimation];     //创建帧动画
}

#pragma mark ------ 创建视图 -------
-(void)createView{
    
    [self.view addSubview:self.scrollview];
    [self.view addSubview:self.registerButton];
    [self.view addSubview:self.loginButton];
    
    CGFloat remainHeight =self.registerButton.top -2 *KNavbarHeight;
    CGFloat topImageViewHeight =remainHeight *2/3;
    CGFloat bottomImageHeight =remainHeight *1/3;
    
    self.topViewArray =[NSMutableArray array];
    self.bottomViewArray =[NSMutableArray array];
    for (int i=0; i < self.topIconArray.count; i ++) {
        _topImageView =[[UIImageView alloc] initWithFrame:CGRectMake(KLeftPadding*2.5 +KScreenWidth*i, KNavbarHeight, KScreenWidth -5*KLeftPadding, topImageViewHeight)];
        _topImageView.image =KImageName(self.topIconArray[i]);
        _topImageView.contentMode =UIViewContentModeScaleAspectFit;
        [self.scrollview addSubview:_topImageView];
        [self.topViewArray addObject:_topImageView];
        
        _bottomImageView =[[UIImageView alloc] initWithFrame:CGRectMake(KLeftPadding*3 +KScreenWidth*i, _topImageView.bottom, KScreenWidth -6*KLeftPadding, bottomImageHeight)];
        _bottomImageView.image =KImageName(self.bottomIconArray[i]);
        _bottomImageView.contentMode =UIViewContentModeScaleAspectFit;
        [self.scrollview addSubview:_bottomImageView];
        [self.bottomViewArray addObject:_bottomImageView];
    }
    
    EllipsePageControl *pageControl = [[EllipsePageControl alloc] initWithFrame:CGRectMake(0, self.registerButton.top -KAdaptY(60), KScreenWidth, KAdaptY(20))];
    pageControl.numberOfPages = self.topIconArray.count;
    pageControl.controlSize=8;
    pageControl.controlSpacing=10;
    pageControl.currentColor =KButtonThemeColor;
    pageControl.otherColor =KBlackAlphaColor(0.2);
    pageControl.enabled =NO;
//    pageControl.currentBkImg=KImageName(@"intro_tip_0");
    [self.view addSubview:pageControl];
    self.pageControl =pageControl;
}

-(void)createAnimation{
    
//    IFTTTColorAnimation *backgroundColorAnimation = [IFTTTColorAnimation animationWithView:self.scrollview];
//    [backgroundColorAnimation addKeyframeForTime:-0.5*KScreenWidth color:KVCBackgroundColor];
//    [backgroundColorAnimation addKeyframeForTime:KScreenWidth color:KOrangeColor];
//    [backgroundColorAnimation addKeyframeForTime: 0.5*KScreenWidth color:KVCBackgroundColor];
//    [self.animation addAnimation:backgroundColorAnimation];
    
    for (int i=0; i < self.topIconArray.count; i ++) {
        UIImageView *topImageView =self.topViewArray[i];
        IFTTTAlphaAnimation *alphaTopAnimation =[IFTTTAlphaAnimation animationWithView:topImageView];
        [alphaTopAnimation addKeyframeForTime:(i -0.5) *KScreenWidth alpha:0.f];
        [alphaTopAnimation addKeyframeForTime:i *KScreenWidth alpha:1.f];
        [alphaTopAnimation addKeyframeForTime:(i +0.5) *KScreenWidth alpha:0.f];
        [self.animation addAnimation:alphaTopAnimation];
        
        //旋转
//        IFTTTRotationAnimation *rotationTopAnimation =[IFTTTRotationAnimation animationWithView:topImageView];
//        [rotationTopAnimation addKeyframeForTime:(i -0.5) *KScreenWidth rotation:-100.f];
//        [rotationTopAnimation addKeyframeForTime:i *KScreenWidth rotation:0.f];
//        [rotationTopAnimation addKeyframeForTime:(i +0.5) *KScreenWidth rotation:100.f];
//        [self.animation addAnimation:rotationTopAnimation];
        
        UIImageView *bottomImageView =self.bottomViewArray[i];
        IFTTTScaleAnimation *scaleBottomAnimation =[IFTTTScaleAnimation animationWithView:bottomImageView];
        [scaleBottomAnimation addKeyframeForTime:(i -0.5) *KScreenWidth scale:0.5f];
        [scaleBottomAnimation addKeyframeForTime:i *KScreenWidth scale:1.f];
        [scaleBottomAnimation addKeyframeForTime:(i +0.5) *KScreenWidth scale:0.5f];
        [self.animation addAnimation:scaleBottomAnimation];
        
        IFTTTAlphaAnimation *alphaBottomAnimation =[IFTTTAlphaAnimation animationWithView:bottomImageView];
        [alphaBottomAnimation addKeyframeForTime:(i -0.5) *KScreenWidth alpha:0.f];
        [alphaBottomAnimation addKeyframeForTime:i *KScreenWidth alpha:1.f];
        [alphaBottomAnimation addKeyframeForTime:(i +0.5) *KScreenWidth alpha:0.f];
        [self.animation addAnimation:alphaBottomAnimation];
        
//        IFTTTFrameAnimation *frameBottomAnimation =[IFTTTFrameAnimation animationWithView:bottomImageView];
//        [frameBottomAnimation addKeyframeForTime:(i -0.5) *KScreenWidth frame:bottomImageView.frame];
//        [frameBottomAnimation addKeyframeForTime:i *KScreenWidth frame:CGRectMake(KScreenWidth *i, 20, KScreenWidth, KAdaptY(200))];
//        [frameBottomAnimation addKeyframeForTime:(i +0.5) *KScreenWidth frame:bottomImageView.frame];
//        [self.animation addAnimation:frameBottomAnimation];
    }
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat offsetX =scrollView.contentOffset.x;
    [self.animation animate:offsetX];
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    CGFloat offsetX =scrollView.contentOffset.x;
    NSInteger nearestPage = offsetX/KScreenWidth;
    self.pageControl.currentPage =nearestPage;
}

-(UIScrollView *)scrollview{
    
    if (!_scrollview) {
        _scrollview =[[UIScrollView alloc] initWithFrame:self.view.bounds];
        _scrollview.backgroundColor =KVCBackgroundColor;
        _scrollview.pagingEnabled =YES;
        _scrollview.delegate =self;
        _scrollview.showsHorizontalScrollIndicator =NO;
        _scrollview.contentSize =CGSizeMake(KScreenWidth *self.topIconArray.count, 0);
    }
    return _scrollview;
}

-(IFTTTAnimator *)animation{
    
    if (!_animation) {
        _animation =[IFTTTAnimator new];
    }
    return _animation;
}

-(JDLAnimationButton *)registerButton{
    
    WEAKSELF;
    if (!_registerButton) {
        _registerButton =[JDLAnimationButton buttonWithType:UIButtonTypeCustom frame:CGRectMake(0, 0, KScreenWidth *0.38, KAdaptY(40)) title:@"注册" titleColor:KWhiteColor backgroundColor:KButtonThemeColor imageName:nil andBlock:^{
            
            JDLRegisterViewController *vc = [[JDLRegisterViewController alloc] init];
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
            [weakSelf presentViewController:nav animated:YES completion:nil];
        }];
        _registerButton.center =CGPointMake(KScreenWidth*0.27, KScreenHeight -KAdaptY(50));
        [_registerButton JDL_setCornerRadiusFlout:KAdaptY(20)];
    }
    return _registerButton;
}

-(JDLAnimationButton *)loginButton{
    
    WEAKSELF;
    if (!_loginButton) {
        _loginButton =[JDLAnimationButton buttonWithType:UIButtonTypeCustom frame:CGRectMake(0, 0, KScreenWidth *0.38, KAdaptY(40)) title:@"登录" titleColor:KButtonThemeColor backgroundColor:KVCBackgroundColor imageName:nil andBlock:^{
            
            JDLLoginViewController *vc = [[JDLLoginViewController alloc] init];
            UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
            [weakSelf presentViewController:nav animated:YES completion:nil];
        }];
        _loginButton.center =CGPointMake(KScreenWidth*0.73, KScreenHeight -KAdaptY(50));
        [_loginButton JDL_setCornerRadiusFlout:KAdaptY(20)];
        [_loginButton JDL_setBorder:1 color:KButtonThemeColor];
    }
    return _loginButton;
}

-(NSArray *)topIconArray{

    if (!_topIconArray) {
        _topIconArray = [NSMutableArray arrayWithObjects:@"intro_icon_6",@"intro_icon_0",@"intro_icon_1",@"intro_icon_2",@"intro_icon_3",@"intro_icon_4",@"intro_icon_5", nil];
        
        self.bottomIconArray =@[@"",@"intro_tip_0",@"intro_tip_1",@"intro_tip_2",@"intro_tip_3",@"intro_tip_4",@"intro_tip_5"];
    }
    return _topIconArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
