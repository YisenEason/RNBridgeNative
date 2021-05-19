//
//  RNManager.m
//  RNBridgeNative
//
//  Created by easonyi on 19/5/2021.
//

#import "RNCallNativeMng.h"
#import "RNEmitterMng.h"
#import "AppDelegate.h"
#import "TmpVC.h"

@implementation RNCallNativeMng

RCT_EXPORT_MODULE() // 导出桥接模块   默认模块名为当前class类名即TakeViewManager

RCT_EXPORT_METHOD(printMsg:(NSString*)message){
  NSLog(@"RN调用了原生Function: %@",message);
  
  RNEmitterMng *mng = [[RNEmitterMng alloc]init];
  [mng sendSelectItem:@{@"item":@"data"}];

}

RCT_EXPORT_METHOD(navToNativeVC){
  NSLog(@"RN调用跳转到原生VC.");
  dispatch_sync(dispatch_get_main_queue(), ^{
    TmpVC *vc = [TmpVC new];
    AppDelegate *app = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [app.navVC pushViewController:vc animated:YES];
  });
}

@end
