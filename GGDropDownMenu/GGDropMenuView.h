//
//  GGDropMenuView.h
//  MobileCooperativeOffice
//
//  Created by Nile on 2016/12/6.
//  Copyright © 2016年 pcitc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GGDropMenuView : UIView
@property(nonatomic,strong)UIImage * dropButtonNormalImage;
@property(nonatomic,strong)UIImage * dropButtonSelectedImage;
@property(nonatomic,strong)NSArray<NSString *> * titles;

+ (instancetype)dropMenuViewWithFrame:(CGRect)frame andTitles:(NSArray<NSString *> *)titles andNorImage:(UIImage *)norImage andSelImage:(UIImage *)selImage;

- (instancetype)initWithFrame:(CGRect)frame andTitles:(NSArray<NSString *> *)titles andNorImage:(UIImage *)norImage andSelImage:(UIImage *)selImage;

@end
