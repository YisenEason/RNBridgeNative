//
//  RNEmitterMng.h
//  RNBridgeNative
//
//  Created by easonyi on 19/5/2021.
//

#import <Foundation/Foundation.h>
#import <React/RCTEventEmitter.h>
#import <React/RCTBridgeModule.h>

NS_ASSUME_NONNULL_BEGIN

@interface RNEmitterMng : RCTEventEmitter<RCTBridgeModule>

- (void)sendSelectItem:(NSDictionary *)obj;

@end

NS_ASSUME_NONNULL_END
