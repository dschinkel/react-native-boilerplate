import 'react-native';
import React from 'react';
import App from '../App';
import {render} from '@testing-library/react-native';

it('shows a hello world greeting', () => {
  const {getByTestId} = render(<App />);
  expect(getByTestId('greeting')).toBeTruthy();
});
