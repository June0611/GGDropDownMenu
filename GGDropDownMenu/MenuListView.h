

#import <UIKit/UIKit.h>


#define kS_W [UIScreen mainScreen].bounds.size.width
#define kS_H [UIScreen mainScreen].bounds.size.height

@interface ListCell : UITableViewCell
@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) BOOL isSelected;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end


@class MenuButton;

@interface MenuListView : UIView

/**
 *  数据源
 */
@property (nonatomic, strong) NSArray *dataSource;


@property (nonatomic, copy) void (^clickMenuButton) (MenuButton *button, NSInteger index, BOOL selected);



@property (nonatomic, copy) void (^clickListView) ( NSInteger index, NSString *title);


- (instancetype)initWithFrame:(CGRect)frame
                       Titles:(NSArray <NSString *>*)titles
                     defImage:(UIImage *)defImage
                     selImage:(UIImage *)selImage;

@end
