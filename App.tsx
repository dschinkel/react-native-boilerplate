import React from 'react';
import {SafeAreaView, Text, StyleSheet} from 'react-native';

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});


const App = () => {
  return <Header/>
};

class Header extends React.Component {
  render() {
    return <SafeAreaView style={styles.container}>
      <Text testID="greeting">Hello World</Text>
    </SafeAreaView>;
  }
}

export default App;
