import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

document.addEventListener("DOMContentLoaded", () => {
  let root = document.getElementById("root");
  const preloadedState = {session: {currentUser: window.currentUser, errors: []}};
  let store = configureStore(preloadedState);
  window.store = store;
  ReactDOM.render(<Root store={store} />, root)
});
