import React from 'react';
import { Provider } from 'react-redux';
import App from './app.jsx';

const Root = () => (
  <Provider >
    <App />
  </Provider>
);

export default Root;
