/**
 * 原生组件的再封装
 */
import React from 'react';
import { NativeSyntheticEvent, NativeTouchEvent, requireNativeComponent, View, ViewProps, ViewStyle } from 'react-native';

const CSView = requireNativeComponent('CSView');

interface Props {
  onCancel: (event:NativeSyntheticEvent<NativeTouchEvent>)=>void
}

export default class RNTCSView extends React.Component <Props & ViewProps> {
  render () {
    return (
      <CSView {...this.props} />
    );
  }
}