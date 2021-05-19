/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * Generated with the TypeScript template
 * https://github.com/react-native-community/react-native-template-typescript
 *
 * @format
 */

import React from 'react';
import {
  Button,
  NativeModules,
  SafeAreaView,
  NativeEventEmitter,
  requireNativeComponent,
  View,
  NativeSyntheticEvent,
  NativeTouchEvent,
} from 'react-native';
import RNTCSView from './src/Component/RNTCSView';

const { RNCallNativeMng, RNEmitterMng} = NativeModules;
const rmitterMngEmitter = new NativeEventEmitter(RNEmitterMng);



class App extends React.Component {

  subscription:any;

  componentDidMount() {
    this.subscription = rmitterMngEmitter.addListener(
      'selectItem',
      (reminder) => {
          console.log('RN收到iOS发送的消息', reminder);
      }
    );
  }

  componentWillUnmount () {
    this.subscription.remove();
  }

  render () {
    return (
      <SafeAreaView>
        {/* RN端调用iOS端的方法 */}
        <Button title="call Native Function" onPress={()=>{
          RNCallNativeMng.printMsg('abcdbdef');
        }}></Button>
        <RNTCSView 
          style={{height: 200, width: 200, backgroundColor: 'red'}} 
          onCancel={(event:NativeSyntheticEvent<NativeTouchEvent>)=>{
            console.log('data: ', event.nativeEvent);
            RNCallNativeMng.navToNativeVC();
          }} 
        />
      </SafeAreaView>
    );
  }
};

export default App;
