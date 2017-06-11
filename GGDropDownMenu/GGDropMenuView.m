//
//  GGDropMenuView.m
//  MobileCooperativeOffice
//
//  Created by Nile on 2016/12/6.
//  Copyright © 2016年 pcitc. All rights reserved.
//

#import "GGDropMenuView.h"
#import "NSString+ZF.h"
#import "UIView+Frame.h"



#pragma mark - 
#pragma mark - private class
#define kFontSize 13.f
#define kTriangleWH 20.f
#define kDefTitleCor [UIColor colorWithRed:0.560 green:0.550 blue:0.520 alpha:1.000]
#define kSelTitleCor [UIColor colorWithRed:0.100 green:0.700 blue:0.610 alpha:1.000]
@interface GGDropMenuButton : UIView
@property (nonatomic,   copy) NSString    *title;
@property (nonatomic, assign) BOOL        isSelected;
@property (nonatomic,   weak) UILabel     *titLabel;
@property (nonatomic,   weak) UIImageView *imgView;
@property (nonatomic, strong) UIImage     *norImage;
@property (nonatomic, strong) UIImage     *selImage;


- (void)addTarget:(nullable id)target action:(SEL)action;
- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title norImage:(UIImage *)norImage selImage:(UIImage *)selImage;

@end


@implementation GGDropMenuButton


- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title norImage:(UIImage *)norImage selImage:(UIImage *)selImage{
    if (self = [super initWithFrame:frame]) {
        self.title    = title;
        self.norImage = norImage;
        self.selImage = selImage;
        [self initAllSubView];
    }
    return self;
}

- (void)initAllSubView{
    //创建label
    UILabel * titLabel = [[UILabel alloc] init];
    titLabel.text = self.title;
    titLabel.textColor = kDefTitleCor;
    UIFont *font = [UIFont systemFontOfSize:kFontSize];
    titLabel.font = font;
    CGSize size = [self.title sizeWithFont:font maxSize:CGSizeMake(self.width, self.height)];
    titLabel.center = CGPointMake(self.width/2 - kTriangleWH/2, self.height/2);
    titLabel.bounds = CGRectMake(0, 0, size.width, size.height);
    [self addSubview:titLabel];
    self.titLabel = titLabel;
    
    //创建imageView
    
    UIImageView * imgView = [[UIImageView alloc] init];
    imgView.image = self.norImage;
    imgView.highlightedImage = self.selImage;
    imgView.contentMode = UIViewContentModeCenter;
    imgView.frame = CGRectMake(CGRectGetMaxX(self.titLabel.frame), (self.height-kTriangleWH)/2, kTriangleWH, kTriangleWH);
    [self addSubview:imgView];
    self.imgView = imgView;
}

- (void)addGesture{
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(menuButtonClicked)];
    [self addGestureRecognizer:tap];
}


- (void)menuButtonClicked{
    
}
- (void)addTarget:(nullable id)target action:(SEL)action{
    
}
@end













@implementation GGDropMenuView

+ (instancetype)dropMenuViewWithFrame:(CGRect)frame andTitles:(NSArray<NSString *> *)titles andNorImage:(UIImage *)norImage andSelImage:(UIImage *)selImage{
    return [[self alloc]initWithFrame:frame andTitles:titles andNorImage:norImage andSelImage:selImage];
}

- (instancetype)initWithFrame:(CGRect)frame andTitles:(NSArray<NSString *> *)titles andNorImage:(UIImage *)norImage andSelImage:(UIImage *)selImage{
    if (self = [super initWithFrame:frame]) {
        self.titles = titles;
        self.dropButtonSelectedImage = selImage;
        self.dropButtonNormalImage = norImage;
    }
    return self;
}

@end



