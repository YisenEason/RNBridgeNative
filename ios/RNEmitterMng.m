//
//  RNEmitterMng.m
//  RNBridgeNative
//
//  Created by easonyi on 19/5/2021.
//

#import "RNEmitterMng.h"

@implementation RNEmitterMng

RCT_EXPORT_MODULE();

- (NSArray<NSString *> *)supportedEvents {
  return @[@"selectItem"];
}

- (void)sendSelectItem:(NSDictionary *)obj {
  [self sendEventWithName:@"selectItem" body:obj];
}

//.m文件
+ (id)allocWithZone:(NSZone *)zone {
  static RNEmitterMng *sharedInstance = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedInstance = [super allocWithZone:zone];
  });
  return sharedInstance;
}

@end
