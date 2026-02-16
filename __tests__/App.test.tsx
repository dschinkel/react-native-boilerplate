import 'react-native';
import React from 'react';
import App from '../App';
import {render} from '@testing-library/react-native';

it('shows a hello world greeting', () => {
  const {getByText} = render(<App />);
  expect(getByText('Hello World')).toBeTruthy();
});
