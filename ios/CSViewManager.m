//
//  CSViewManager.m
//  RNBridgeNative
//
//  Created by easonyi on 19/5/2021.
//

#import "CSViewManager.h"
#import "CSView.h"

@implementation CSViewManager

RCT_EXPORT_MODULE(CSView)
RCT_EXPORT_VIEW_PROPERTY(onCancel, RCTBubblingEventBlock)

- (CSView *)view {
  NSLog(@"view init");
  CSView *view = [[CSView alloc] init];
  return view;
}

@end
