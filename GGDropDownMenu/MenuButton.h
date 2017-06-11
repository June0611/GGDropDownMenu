

#import <UIKit/UIKit.h>

@interface MenuButton : UIView

/** 当按钮标题改变时，要触发`setTitle:`这个方法 */
@property (nonatomic, copy) NSString *title;

@property (nonatomic, assign) BOOL isSeled;


@property (nonatomic, copy) void (^clickMenuButton) (MenuButton *button, NSString *title, BOOL selected);


- (instancetype)initWithFrame:(CGRect)frame
                        title:(NSString *)title
                     defImage:(UIImage *)defImage
                     selImage:(UIImage *)selImage;

- (void)resetStatus:(MenuButton *)button;

@end
