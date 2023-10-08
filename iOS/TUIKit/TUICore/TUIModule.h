//
//  TUIModuleh
//  Gama
//
//  Created by 莫锹文 on 2023/9/8.
//  Copyright © 2023 Juying. All rights reserved.
//

#import <BeeHive/BeeHive.h>
#import <Foundation/Foundation.h>

@import GamaUICommon;

@interface TUIModule : NSObject <BHModuleProtocol, TUIModuleProtocol>

+ (void)commitInit;

@end
