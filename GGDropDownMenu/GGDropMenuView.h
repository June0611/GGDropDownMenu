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


+ (instancetype)dropMenuViewWith;

@end
