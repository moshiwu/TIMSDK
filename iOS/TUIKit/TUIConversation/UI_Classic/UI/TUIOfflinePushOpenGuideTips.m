//
//  TUIOfflinePushOpenGuideTips.m
//  TUIConversation
//
//  Created by 莫锹文 on 2023/9/10.
//

#import "TUIOfflinePushOpenGuideTips.h"
#import <Masonry/Masonry.h>
#import <YYKit/YYKit.h>

@import GamaUICommon;

@implementation TUIOfflinePushOpenGuideTips

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        UIView *container = [[UIView alloc] initWithFrame:CGRectMake(16 * wScale, 0, SCREEN_WIDTH - 32 * wScale, 70 * wScale)];
        container.backgroundColor = [UIColor.gama.listBackground colorWithAlphaComponent:0.5];
        container.layer.cornerRadius = 12 * wScale;
        container.clipsToBounds = YES;
        [self addSubview:container];
        
        
        UIButton *closeBtn = [[UIButton alloc] init];
        [closeBtn setBackgroundImage:[UIImage imageNamed:@"icon_common_close"] forState:UIControlStateNormal];
        [container addSubview:closeBtn];
        [closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.height.mas_equalTo(32 * wScale);
            make.centerY.equalTo(container);
            make.right.mas_equalTo(-12 * wScale);
        }];
        
        WeakSelf;
        [closeBtn addBlockForControlEvents:UIControlEventTouchUpInside block:^(id sender) {
            SafeExecuteBlock(weakSelf.onClickClose);
        }];
        
        UIButton *confirmBtn = [[UIButton alloc] init];
        confirmBtn.backgroundColor = UIColor.gama.green;
        confirmBtn.layer.cornerRadius = 16 * wScale;
        confirmBtn.clipsToBounds = YES;
        confirmBtn.contentEdgeInsets = UIEdgeInsetsMake(0, 12 * wScale, 0, 12 * wScale);
        [confirmBtn setTitle:@"loc.message.noti.enable".loc forState:UIControlStateNormal];
        [confirmBtn setTitleColor:UIColor.gama.cardBackground forState:UIControlStateNormal];
        confirmBtn.titleLabel.font = GFONT_SemiBold(16 * wScale);
        [container addSubview:confirmBtn];
        [confirmBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(32 * wScale);
            make.centerY.equalTo(container);
            make.right.equalTo(closeBtn.mas_left).offset(-8 * wScale);
        }];
        
        [confirmBtn addBlockForControlEvents:UIControlEventTouchUpInside block:^(id sender) {
            SafeExecuteBlock(weakSelf.onClickConfirm);
        }];
        
        UILabel *topLabel = [[UILabel alloc] init];
        topLabel.text = @"loc.message.noti.title".loc;
        topLabel.textColor = UIColor.gama.text;
        topLabel.font = GFONT_Bold(16 * wScale);
        [container addSubview:topLabel];
        [topLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(16 * wScale);
            make.top.mas_equalTo(12 * wScale);
            make.height.mas_equalTo(24 * wScale);
            make.right.lessThanOrEqualTo(confirmBtn.mas_left).offset(-8 * wScale);
        }];
        
        UILabel *bottomLabel = [[UILabel alloc] init];
        bottomLabel.text = @"loc.message.noti.tips".loc;
        bottomLabel.textColor = UIColor.gama.lightText;
        bottomLabel.font = GFONT_Bold(14 * wScale);
        [container addSubview:bottomLabel];
        [bottomLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(16 * wScale);
            make.bottom.mas_equalTo(-12 * wScale);
            make.height.mas_equalTo(24 * wScale);
            make.right.lessThanOrEqualTo(confirmBtn.mas_left).offset(-8 * wScale);
        }];
    }
    return self;
}

@end
