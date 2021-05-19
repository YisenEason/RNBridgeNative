//
//  CSView.h
//  RNBridgeNative
//
//  Created by easonyi on 19/5/2021.
//

#import <UIKit/UIKit.h>
#import <React/RCTViewManager.h>

NS_ASSUME_NONNULL_BEGIN

@interface CSView : UIView

@property (nonatomic, copy) RCTBubblingEventBlock onCancel;

@end

NS_ASSUME_NONNULL_END
