//
//  FirstViewController.h
//  MyApp
//
//  Created by oren shalev on 19/05/2023.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *screenName;
@property (weak) NSString *screenData;
@end

NS_ASSUME_NONNULL_END
