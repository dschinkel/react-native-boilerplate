import 'react-native';
import React from 'react';
import App from '../App';
import {render} from '@testing-library/react-native';

it('renders hello world greeting', () => {
  const {getByTestId} = render(<App />);
  expect(getByTestId('greeting')).toBeTruthy();
});
