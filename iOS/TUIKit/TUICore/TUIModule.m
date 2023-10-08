//
//  TUIModule.m
//  Gama
//
//  Created by 莫锹文 on 2023/9/8.
//  Copyright © 2023 Juying. All rights reserved.
//

#import "TUIModule.h"

@implementation TUIModule

+ (void)commitInit
{
    [BeeHive registerDynamicModule:[self class]];
}


#pragma mark - BHModuleProtocol

- (void)modInit:(BHContext *)context
{
    [[BeeHive shareInstance] registerService:@protocol(TUIModuleProtocol) service:[self class]];
}

#pragma mark - TUIModuleProtocol

- (UIViewController *)test111
{
    return [[UIViewController alloc] init];
}

@end
