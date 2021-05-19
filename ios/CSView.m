//
//  CSView.m
//  RNBridgeNative
//
//  Created by easonyi on 19/5/2021.
//

#import "CSView.h"

@implementation CSView

- (instancetype)init
{
  self = [super init];
  if (self) {
    [self setupUI];
  }
  return self;
}

- (void)setupUI {
  UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
  btn.frame = CGRectMake(0, 0, 100, 50);
  [btn setTitle:@"原生端自定义组件" forState:UIControlStateNormal];
  btn.backgroundColor = [UIColor grayColor];
  [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
  [self addSubview:btn];
}

- (void)btnAction:(id)sender {
  if (_onCancel) {
    _onCancel(@{@"abc": @"_onCancel"});
  }
}

@end
