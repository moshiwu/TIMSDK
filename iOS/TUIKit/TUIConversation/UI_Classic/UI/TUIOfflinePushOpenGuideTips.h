//
//  TUIOfflinePushOpenGuideTips.h
//  TUIConversation
//
//  Created by 莫锹文 on 2023/9/10.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TUIOfflinePushOpenGuideTips : UIView

@property (nonatomic, copy) void (^onClickConfirm)();
@property (nonatomic, copy) void (^onClickClose)();

@end

NS_ASSUME_NONNULL_END
